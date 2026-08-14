-- Translator Menu - IdkThisOne Modified UI
local HttpService = game:GetService("HttpService")
local CoreGui = game:GetService("CoreGui")

local ok, Library = pcall(function()
    return loadstring(game:HttpGet(
        "https://raw.githubusercontent.com/NIcoGabrielRealYtr/IdkThisOne-Modified/refs/heads/main/Source"
    ))()
end)

if not ok or not Library then
    warn("[Translator] Failed to load UI Library:", Library)
    return
end

local AutoTranslate = false
local TargetLang = "vi"
local TranslateNewUI = true
local Cache = {}
local Watcher

local Languages = {
    ["Tiếng Việt"]="vi", ["English (US)"]="en-US",
    ["ภาษาไทย"]="th", ["Indonesia"]="id", ["Filipino"]="tl",
    ["Melayu"]="ms", ["မြန်မာဘာသာ"]="my", ["ខ្មែរ"]="km", ["ລາວ"]="lo",
    ["日本語"]="ja", ["简体中文"]="zh-CN", ["繁體中文"]="zh-TW", ["한국어"]="ko",
    ["Português (Brasil)"]="pt", ["Español"]="es", ["Français"]="fr",
    ["Deutsch"]="de", ["Italiano"]="it", ["Nederlands"]="nl",
    ["Svenska"]="sv", ["Norsk"]="no", ["Dansk"]="da", ["Suomi"]="fi",
    ["Русский"]="ru", ["Українська"]="uk", ["Polski"]="pl", ["Türkçe"]="tr",
    ["Română"]="ro", ["Magyar"]="hu", ["Čeština"]="cs", ["Ελληνικά"]="el",
    ["العربية"]="ar", ["हिन्दी"]="hi", ["বাংলা"]="bn", ["اردو"]="ur", ["עברית"]="he",
}

local LanguageOptions = {}
for name in pairs(Languages) do table.insert(LanguageOptions, name) end
table.sort(LanguageOptions)

local function notify(text)
    pcall(function() Library:Notification(text, "Translator", 3) end)
end

local function translate(text)
    if type(text) ~= "string" or text == "" or #text < 2 or tonumber(text) then
        return text
    end

    local key = TargetLang .. ":" .. text
    if Cache[key] then return Cache[key] end

    local url = "https://translate.googleapis.com/translate_a/single?client=gtx&sl=auto&tl="
        .. HttpService:UrlEncode(TargetLang)
        .. "&dt=t&q=" .. HttpService:UrlEncode(text)

    local success, response = pcall(function() return game:HttpGet(url) end)
    if not success then return text end

    local decodedOK, data = pcall(function()
        return HttpService:JSONDecode(response)
    end)

    if decodedOK and data and data[1] and data[1][1] and data[1][1][1] then
        local result = data[1][1][1]
        Cache[key] = result
        return result
    end

    return text
end

local function update(obj)
    if not obj or not obj.Parent then return end
    if not (obj:IsA("TextLabel") or obj:IsA("TextButton") or obj:IsA("TextBox")) then
        return
    end

    local raw = obj:GetAttribute("TranslatorRawText")
    if raw == nil then
        raw = obj.Text
        obj:SetAttribute("TranslatorRawText", raw)
    end

    if AutoTranslate then
        task.spawn(function()
            local result = translate(raw)
            if obj and obj.Parent and AutoTranslate
                and obj:GetAttribute("TranslatorRawText") == raw then
                obj.Text = result
            end
        end)
    else
        obj.Text = raw
    end
end

local function translateAll()
    for _, obj in ipairs(CoreGui:GetDescendants()) do
        update(obj)
    end
end

local function setWatcher(enabled)
    if enabled and not Watcher then
        Watcher = CoreGui.DescendantAdded:Connect(function(obj)
            if TranslateNewUI then
                task.delay(0.3, function()
                    if AutoTranslate then update(obj) end
                end)
            end
        end)
    elseif not enabled and Watcher then
        Watcher:Disconnect()
        Watcher = nil
    end
end

local Window = Library:Window({
    Logo = "123748867365417",
    FadeSpeed = 0.15,
    PagePadding = 19,
    Size = UDim2.new(0, 600, 0, 300)
})

local MainPage = Window:Page({Icon = "109391165290124"})

local TranslationPage = MainPage:SubPage({Name = "Translation"})
local SettingsPage = MainPage:SubPage({Name = "Settings"})

local TranslatorSection = TranslationPage:Section({
    Name = "Translator",
    Side = "Left"
})

local LanguageSection = TranslationPage:Section({
    Name = "Language",
    Side = "Right"
})

local SettingsSection = SettingsPage:Section({
    Name = "Settings",
    Side = "Left"
})

local InfoSection = SettingsPage:Section({
    Name = "Information",
    Side = "Right"
})

TranslatorSection:Toggle({
    Name = "Auto Translation",
    Flag = "AutoTranslation",
    Default = false,
    Callback = function(value)
        AutoTranslate = value
        if value then
            setWatcher(TranslateNewUI)
            translateAll()
            notify("Auto translation enabled.")
        else
            translateAll()
            notify("Auto translation disabled.")
        end
    end
})

LanguageSection:Dropdown({
    Name = "Select Language",
    Flag = "TargetLanguage",
    Items = LanguageOptions,
    Multi = false,
    MaxSize = 50,
    Callback = function(value)
        if Languages[value] then
            TargetLang = Languages[value]
            if AutoTranslate then translateAll() end
            notify("Language: " .. value)
        end
    end
})

TranslatorSection:Button({
    Name = "Translate UI Now",
    Callback = function()
        if not AutoTranslate then
            notify("Enable Auto Translation first.")
            return
        end
        translateAll()
        notify("UI translation started.")
    end
})

TranslatorSection:Button({
    Name = "Clear Cache",
    Callback = function()
        table.clear(Cache)
        notify("Translation cache cleared.")
    end
})

SettingsSection:Toggle({
    Name = "Translate New UI",
    Flag = "TranslateNewUI",
    Default = true,
    Callback = function(value)
        TranslateNewUI = value
        setWatcher(value)
    end
})

SettingsSection:Button({
    Name = "Restore Original Text",
    Callback = function()
        local wasEnabled = AutoTranslate
        AutoTranslate = false
        translateAll()
        AutoTranslate = wasEnabled
        notify("Original text restored.")
    end
})

InfoSection:Label("Google Translate")
InfoSection:Label("Target: CoreGui")
InfoSection:Label("Cache: Enabled")

setWatcher(true)
notify("Translator loaded.")
