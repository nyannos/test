--[[
    Translator UI
    Library: IdkThisOne-Modified

    Features:
    - Auto translate CoreGui TextLabel/TextButton/TextBox
    - Google Translate endpoint
    - Translation cache
    - Language dropdown
    - Automatically handles newly added UI
    - Clear cache button
]]

local HttpService = game:GetService("HttpService")
local CoreGui = game:GetService("CoreGui")

_G.AutoTranslate = false
_G.TargetLang = "vi"

local TranslatedCache = {}
local TranslationWatcher = nil

local LanguageList = {
    ["Tiếng Việt"] = "vi",
    ["Tieng Viet"] = "vi-nodau",
    ["English (US)"] = "en-US",

    ["ภาษาไทย"] = "th",
    ["Indonesia"] = "id",
    ["Filipino"] = "tl",
    ["Melayu"] = "ms",
    ["မြန်မာဘာသာ"] = "my",
    ["ខ្មែរ"] = "km",
    ["ລາວ"] = "lo",

    ["日本語"] = "ja",
    ["简体中文"] = "zh-CN",
    ["繁體中文"] = "zh-TW",
    ["한국어"] = "ko",

    ["Português (Brasil)"] = "pt",
    ["Español"] = "es",
    ["Français"] = "fr",
    ["Deutsch"] = "de",
    ["Italiano"] = "it",
    ["Nederlands"] = "nl",
    ["Svenska"] = "sv",
    ["Norsk"] = "no",
    ["Dansk"] = "da",
    ["Suomi"] = "fi",

    ["Русский"] = "ru",
    ["Українська"] = "uk",
    ["Polski"] = "pl",
    ["Türkçe"] = "tr",
    ["Română"] = "ro",
    ["Magyar"] = "hu",
    ["Čeština"] = "cs",
    ["Ελληνικά"] = "el",

    ["العربية"] = "ar",
    ["हिन्दी"] = "hi",
    ["বাংলা"] = "bn",
    ["اردو"] = "ur",
    ["עברית"] = "he",
}

local LanguageOptions = {}

for Name in pairs(LanguageList) do
    table.insert(LanguageOptions, Name)
end

table.sort(LanguageOptions)

--==================================================
-- Translation
--==================================================

local function GoogleTranslate(text)
    if type(text) ~= "string" then
        return text
    end

    if text == "" or tonumber(text) or #text < 2 then
        return text
    end

    local cacheKey = tostring(_G.TargetLang) .. ":" .. text

    if TranslatedCache[cacheKey] then
        return TranslatedCache[cacheKey]
    end

    local url =
        "https://translate.googleapis.com/translate_a/single" ..
        "?client=gtx" ..
        "&sl=auto" ..
        "&tl=" .. HttpService:UrlEncode(_G.TargetLang) ..
        "&dt=t" ..
        "&q=" .. HttpService:UrlEncode(text)

    local success, response = pcall(function()
        return game:HttpGet(url)
    end)

    if not success or type(response) ~= "string" then
        return text
    end

    local decodeSuccess, decoded = pcall(function()
        return HttpService:JSONDecode(response)
    end)

    if not decodeSuccess or not decoded then
        return text
    end

    if decoded[1] and decoded[1][1] and decoded[1][1][1] then
        local result = decoded[1][1][1]

        if type(result) == "string" and result ~= "" then
            TranslatedCache[cacheKey] = result
            return result
        end
    end

    return text
end

local function UpdateUI(obj)
    if not obj
        or not obj.Parent
        or not (
            obj:IsA("TextLabel")
            or obj:IsA("TextButton")
            or obj:IsA("TextBox")
        )
    then
        return
    end

    local rawText = obj:GetAttribute("RawText")

    if rawText == nil then
        rawText = obj.Text
        obj:SetAttribute("RawText", rawText)
    end

    if _G.AutoTranslate then
        task.spawn(function()
            local translated = GoogleTranslate(rawText)

            if obj
                and obj.Parent
                and _G.AutoTranslate
                and obj:GetAttribute("RawText") == rawText
                and obj.Text ~= translated
            then
                obj.Text = translated
            end
        end)
    else
        if obj.Text ~= rawText then
            obj.Text = rawText
        end
    end
end

local function TranslateAll()
    for _, obj in ipairs(CoreGui:GetDescendants()) do
        UpdateUI(obj)
    end
end

local function StartWatcher()
    if TranslationWatcher then
        return
    end

    TranslationWatcher = CoreGui.DescendantAdded:Connect(function(obj)
        task.delay(0.3, function()
            if _G.AutoTranslate then
                UpdateUI(obj)
            end
        end)
    end)
end

local function StopWatcher()
    if TranslationWatcher then
        TranslationWatcher:Disconnect()
        TranslationWatcher = nil
    end
end

--==================================================
-- UI Library
--==================================================

local Library = loadstring(game:HttpGet(
    "https://raw.githubusercontent.com/NIcoGabrielRealYtr/IdkThisOne-Modified/refs/heads/main/Source"
))()

local Window = Library:Window({
    Logo = "123748867365417",
    FadeSpeed = 0.15,
    PagePadding = 19,
    Size = UDim2.new(0, 600, 0, 300)
})

local Pages = {
    Main = Window:Page({
        Icon = "109391165290124"
    })
}

local TranslationSubpage = Pages.Main:SubPage({
    Name = "Translation"
})

local SettingsSubpage = Pages.Main:SubPage({
    Name = "Settings"
})

local TranslationSection = TranslationSubpage:Section({
    Name = "Translator",
    Side = "Left"
})

local LanguageSection = TranslationSubpage:Section({
    Name = "Language",
    Side = "Right"
})

local SettingsSection = SettingsSubpage:Section({
    Name = "Settings",
    Side = "Left"
})

local InfoSection = SettingsSubpage:Section({
    Name = "Information",
    Side = "Right"
})

--==================================================
-- Translation controls
--==================================================

TranslationSection:Toggle({
    Name = "Auto Translation",
    Flag = "AutoTranslation",
    Default = false,

    Callback = function(Value)
        _G.AutoTranslate = Value

        if Value then
            StartWatcher()
            TranslateAll()

            Library:Notification(
                "Automatic translation enabled.",
                "Translator",
                3
            )
        else
            TranslateAll()
            StopWatcher()

            Library:Notification(
                "Automatic translation disabled.",
                "Translator",
                3
            )
        end
    end
})

LanguageSection:Dropdown({
    Name = "Select Language",
    Flag = "TargetLanguage",
    Items = LanguageOptions,
    Multi = false,
    MaxSize = 50,

    Callback = function(Value)
        local languageCode = LanguageList[Value]

        if not languageCode then
            return
        end

        _G.TargetLang = languageCode

        if _G.AutoTranslate then
            TranslateAll()
        end
    end
})

TranslationSection:Button({
    Name = "Clear Translation Cache",

    Callback = function()
        table.clear(TranslatedCache)

        Library:Notification(
            "Translation cache cleared.",
            "Translator",
            3
        )
    end
})

TranslationSection:Button({
    Name = "Translate UI Now",

    Callback = function()
        if not _G.AutoTranslate then
            Library:Notification(
                "Enable Auto Translation first.",
                "Translator",
                3
            )
            return
        end

        TranslateAll()

        Library:Notification(
            "Translation scan started.",
            "Translator",
            3
        )
    end
})

--==================================================
-- Settings
--==================================================

SettingsSection:Toggle({
    Name = "Translate New UI",
    Flag = "TranslateNewUI",
    Default = true,

    Callback = function(Value)
        if Value then
            StartWatcher()
        else
            StopWatcher()
        end
    end
})

SettingsSection:Button({
    Name = "Restore Original Text",

    Callback = function()
        local oldState = _G.AutoTranslate

        _G.AutoTranslate = false

        for _, obj in ipairs(CoreGui:GetDescendants()) do
            if obj:IsA("TextLabel")
                or obj:IsA("TextButton")
                or obj:IsA("TextBox")
            then
                local rawText = obj:GetAttribute("RawText")

                if rawText ~= nil then
                    obj.Text = rawText
                end
            end
        end

        _G.AutoTranslate = oldState

        Library:Notification(
            "Original UI text restored.",
            "Translator",
            3
        )
    end
})

InfoSection:Label("Google Translate")

InfoSection:Label("Target: CoreGui")

InfoSection:Label("Language: " .. tostring(_G.TargetLang))

-- Keep the watcher available for the setting.
StartWatcher()

Library:Notification(
    "Translator loaded successfully.",
    "Translator",
    4
)
