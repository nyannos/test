--[[
    nYaNn os {premium}
    Cách dán script: copy nguyên code vào Callback = function() ... end
    Menu: Redz V5
]]

pcall(function()
    if not game:IsLoaded() then game.Loaded:Wait() end
end)
task.wait(1)

local Players = game:GetService("Players")
local StarterGui = game:GetService("StarterGui")
local LocalPlayer = Players.LocalPlayer or Players.PlayerAdded:Wait()
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui", 15)

local function GetGuiParent()
    local list = {}
    pcall(function()
        if typeof(gethui) == "function" then
            local h = gethui()
            if h then table.insert(list, h) end
        end
    end)
    pcall(function() table.insert(list, game:GetService("CoreGui")) end)
    if PlayerGui then table.insert(list, PlayerGui) end
    for _, parent in ipairs(list) do
        local ok = pcall(function()
            local t = Instance.new("Folder")
            t.Parent = parent
            t:Destroy()
        end)
        if ok then return parent end
    end
    return PlayerGui
end

local GuiParent = GetGuiParent()

local function Notify(title, text)
    pcall(function()
        StarterGui:SetCore("SendNotification", {
            Title = tostring(title),
            Text = tostring(text),
            Duration = 4,
        })
    end)
end

-- ===================== KEY =====================
local KEYS = { "AEEhyV01TkiAkZErqZXGN-h4f" }
local KEY_ON = true

if KEY_ON then
    local passed = false
    pcall(function()
        if isfile and isfile("nyann_premium_key.txt") then
            local k = readfile("nyann_premium_key.txt")
            for _, v in ipairs(KEYS) do
                if k == v then passed = true break end
            end
        end
    end)
    if not passed then
        local sg = Instance.new("ScreenGui")
        sg.Name = "NyannKey"
        sg.ResetOnSpawn = false
        sg.Parent = GuiParent
        local frame = Instance.new("Frame")
        frame.Size = UDim2.fromOffset(320, 180)
        frame.Position = UDim2.fromScale(0.5, 0.5)
        frame.AnchorPoint = Vector2.new(0.5, 0.5)
        frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
        frame.Parent = sg
        Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 10)
        local title = Instance.new("TextLabel")
        title.Size = UDim2.new(1, -20, 0, 30)
        title.Position = UDim2.fromOffset(10, 10)
        title.BackgroundTransparency = 1
        title.Font = Enum.Font.GothamBold
        title.TextSize = 16
        title.TextColor3 = Color3.new(1, 1, 1)
        title.Text = "Get key điiii"
        title.Parent = frame
        local box = Instance.new("TextBox")
        box.Size = UDim2.new(1, -20, 0, 36)
        box.Position = UDim2.fromOffset(10, 75)
        box.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
        box.TextColor3 = Color3.new(1, 1, 1)
        box.PlaceholderText = "Nhập key..."
        box.Font = Enum.Font.Gotham
        box.TextSize = 14
        box.Text = ""
        box.Parent = frame
        Instance.new("UICorner", box).CornerRadius = UDim.new(0, 6)
        local btn = Instance.new("TextButton")
        btn.Size = UDim2.new(1, -20, 0, 36)
        btn.Position = UDim2.fromOffset(10, 125)
        btn.BackgroundColor3 = Color3.fromRGB(0, 170, 80)
        btn.TextColor3 = Color3.new(1, 1, 1)
        btn.Font = Enum.Font.GothamBold
        btn.TextSize = 14
        btn.Text = "Xác nhận"
        btn.Parent = frame
        Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 6)
        local done = Instance.new("BindableEvent")
        btn.MouseButton1Click:Connect(function()
            local ok = false
            for _, v in ipairs(KEYS) do
                if box.Text == v then ok = true break end
            end
            if ok then
                pcall(function()
                    if writefile then writefile("nyann_premium_key.txt", box.Text) end
                end)
                Notify("nyann os", "Key đúng ✅")
                sg:Destroy()
                done:Fire()
            else
                Notify("nyann os", "Key sai ❌")
            end
        end)
        done.Event:Wait()
    end
end

-- ===================== LOAD REDZ V5 =====================
local REDZ_URL = "https://raw.githubusercontent.com/id202azh/id_905/refs/heads/main/raw%20(1).txt"
local redzlib
do
    local ok, result = pcall(function()
        local src = game:HttpGet(REDZ_URL)
        local fn = loadstring(src)
        if not fn then error("compile") end
        return fn()
    end)
    if not ok or not result then
        Notify("nyann os", "Không tải được Redz: " .. tostring(result))
        return
    end
    redzlib = result
end

local Window = redzlib:MakeWindow({
    Title = "nYaNn os {premium}",
    SubTitle = "Script by nyann",
})

pcall(function()
    local Minimizer = Window:NewMinimizer({ KeyCode = Enum.KeyCode.LeftControl })
    Minimizer:CreateMobileMinimizer({
        Image = "rbxassetid://86224472741926",
        BackgroundColor3 = Color3.fromRGB(10, 10, 10),
    })
end)

-- ===================== TABS =====================
local TabMain = Window:MakeTab({"Information", ""})
local TabBF = Window:MakeTab({"Blox fruit", ""})
local Tab5 = Window:MakeTab({"Script Fix lag", ""})
local Tab9 = Window:MakeTab({"Script Sailor piece", ""})
local Tab10 = Window:MakeTab({"Script meme sea", ""})
local Tab11 = Window:MakeTab({"Script Dead rails", ""})
local Tab12 = Window:MakeTab({"Script 99 night", ""})
local Tab13 = Window:MakeTab({"Script king legacy", ""})
local Tab14 = Window:MakeTab({"Script grow a garden", ""})
local Tab15 = Window:MakeTab({"Script blue lock", ""})
local Tab16 = Window:MakeTab({"Script the forge", ""})
local Tab17 = Window:MakeTab({"Script rivals", ""})
local TabMisc = Window:MakeTab({"Setting", ""})

-- Gộp tất cả BF vào 1 tab
local Tab1, Tab2, Tab3, Tab4, Tab6, Tab7, Tab8 = TabBF, TabBF, TabBF, TabBF, TabBF, TabBF, TabBF

-- Information
pcall(function()
    TabMain:AddDiscordInvite({
        Name = "Nyann | Community",
        Description = "Vào Discord nhận thông báo nha!",
        Logo = "rbxassetid://86224472741926",
        Invite = "https://discord.gg/HzNaDWHH3",
    })
end)

TabMain:AddSection("Status")
local function FormatTime()
    local t = os.date("*t")
    return string.format("%02d:%02d:%02d  |  %02d/%02d/%04d", t.hour, t.min, t.sec, t.day, t.month, t.year)
end
local StatusTime
pcall(function()
    StatusTime = TabMain:AddParagraph({
        Title = "Thời gian thực",
        Description = FormatTime(),
    })
end)
-- Cập nhật thời gian realtime mỗi 0.25s
task.spawn(function()
    local last = ""
    while task.wait(0.25) do
        pcall(function()
            local text = FormatTime()
            if text == last then return end
            last = text
            if StatusTime then
                if StatusTime.SetDesc then
                    StatusTime:SetDesc(text)
                elseif StatusTime.SetDescription then
                    StatusTime:SetDescription(text)
                elseif StatusTime.Set then
                    StatusTime:Set(text)
                end
            end
        end)
    end
end)

-- =========================================================
-- DÁN SCRIPT VÀO Callback = function() ... end
-- Copy nguyên code, không cần tách config
-- =========================================================

------ Script Farm
TabBF:AddSection("Farm")

Tab1:AddButton({
    Name = "Redz Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/huy384/redzHub/refs/heads/main/redzHub.lua"))()
    end
})

Tab1:AddButton({
    Name = "Quantum hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/flazhy/QuantumOnyx/refs/heads/main/QuantumOnyx.lua"))()
    end
})

Tab1:AddButton({
    Name = "Bear hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Huylovemy/Bearhudz/refs/heads/main/Bearhud.lua"))()
    end
})

Tab1:AddButton({
    Name = "Tubor lite hub farm",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/TurboLite/Script/refs/heads/main/MainV2.lua"))()
    end
})

Tab1:AddButton({
    Name = "NatAov hub",
    Callback = function()
        repeat task.wait() until game:IsLoaded() and game.Players.LocalPlayer
        getgenv().Team = "Marines"
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-AnhTuansitink/NatAov-Hub/refs/heads/main/ILoveYou.lua"))()
    end
})

Tab1:AddButton({
    Name = "Speed hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua"))()
    end
})

Tab1:AddButton({
    Name = "Datthgv3",
    Callback = function()
        getgenv().Team = "Marines"
        loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaCrack/DatThg/refs/heads/main/DatThgV3Eng"))()
    end
})

Tab1:AddButton({
    Name = "Moonlight hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-Moonlight/Moonlight/refs/heads/main/Main"))()
    end
})

Tab1:AddButton({
    Name = "Hao hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/TranGiaHao-source/HaoModHub/refs/heads/main/HUB_VIP_BY_HAO"))()
    end
})

Tab1:AddButton({
    Name = "Khá bảnh hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/longhihilonghihi-hub/KhaBanhHubV2/refs/heads/main/obf_m92m5V2G0rk2XM6IPP1L1O701401kdJLV4V5nEyYclj029p00N3SyRWn7S1ax4Uz.lua.txt"))()
    end
})

Tab1:AddButton({
    Name = "Sigma hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/SigmaHubDangCap/BloxFruit/refs/heads/main/MainBloxFruit.lua"))()
    end
})

Tab1:AddButton({
    Name = "Gravity hub",
    Callback = function()
        repeat task.wait() until game:IsLoaded() and game.Players.LocalPlayer
        getgenv().Version = "V2"
        getgenv().Team = "Pirates"
        getgenv().AutoExecutor = false
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/Main.lua"))()
    end
})

Tab1:AddButton({
    Name = "Andepzai hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AnDepZaiHub/AnDepZaiHubBeta/refs/heads/main/AnDepZaiHubBeta.lua"))()
    end
})

Tab1:AddButton({
    Name = "Tumadam hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/TumadamMod/cwertyur/refs/heads/main/TumadamEng.lua"))()
    end
})

Tab1:AddButton({
    Name = "Annime hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Anniecreate86/BloxFruits/refs/heads/main/BetaHub-BF"))()
    end
})

Tab1:AddButton({
    Name = "Banana hub fake",
    Callback = function()
        repeat task.wait() until game:IsLoaded() and game.Players.LocalPlayer
        getgenv().Key = "XyZpQrStUvWxYzAbCdEfGhIjKl"
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Ohofo2279/Premium/refs/heads/main/BF-BananaCat.lua"))()
    end
})

Tab1:AddButton({
    Name = "Ok hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/fakekuri/Okhubhere/refs/heads/main/MainBloxFruit.lua"))()
    end
})

Tab1:AddButton({
    Name = "Zis hub",
    Callback = function()
        loadstring(game:HttpGet("https://github.com/LuaCrack/Zis/raw/refs/heads/main/ZisBearEnglish"))()
    end
})

Tab1:AddButton({
    Name = "Leaf hub",
    Callback = function()
        repeat task.wait() until game:IsLoaded() and game.Players.LocalPlayer
        loadstring(game:HttpGet("https://github.com/LeafHubAcademy/LeafHub/raw/refs/heads/main/Leaf.lua"))()
    end
})

------ Script cần key
TabBF:AddSection("Cần key")

Tab2:AddButton({
    Name = "Omg hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Omgshit/Scripts/main/MainLoader.lua"))()
    end
})

Tab2:AddButton({
    Name = "Mukuro hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/xQuartyx/QuartyzScript/main/Loader.lua"))()
    end
})

Tab2:AddButton({
    Name = "Trẩu hub v1",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/trungdao2k4/trauroblox/refs/heads/main/traubluev1"))()
    end
})

Tab2:AddButton({
    Name = "Tày hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/VTDROBLOX/Animehub/refs/heads/main/Tayhub.lua"))()
    end
})

Tab2:AddButton({
    Name = "HoHo hub v4",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"))()
    end
})

Tab2:AddButton({
    Name = "Dragon hub premium",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/dragonhubdev/dragonwitheveryone/refs/heads/main/Main-Premium.lua"))()
    end
})

------ Script Kaitun — dán nguyên config + loadstring
TabBF:AddSection("Kaitun")

Tab3:AddButton({
    Name = "Crystal hub kaitun",
    Callback = function()
        getgenv().Configs = {
            ["Quest"] = {
                ["Evo Race V2"] = true;
                ["Evo Race V3"] = true;
                ["RGB Haki"] = true;
                ["Pull Lerver"] = true;
            };
            ["Webhook"] = {
                ["Url Webhook"] = "";
                ["Ping discord"] = "";
                ["Time Send"] = "10m";
            };
            ["Sword"] = {
                "Dual-Headed Blade"; "Smoke Admiral"; "Wardens Sword"; "Cutlass";
                "Katana"; "Dual Katana"; "Triple Katana"; "Iron Mace"; "Saber";
                "Pole (1st Form)"; "Gravity Blade"; "Longsword"; "Rengoku";
                "Midnight Blade"; "Soul Cane"; "Bisento"; "Yama"; "Tushita";
                "Cursed Dual Katana";
            };
            ["Gun"] = {
                "Skull Guitar"; "Kabucha"; "Venom Bow"; "Musket"; "Flintlock";
                "Refined Slingshot"; "Magma Blaster"; "Dual Flintlock"; "Cannon";
                "Bizarre Revolver"; "Bazooka";
            };
            ["FPS Booster"] = true;
        }
        loadstring(game:HttpGet("https://raw.githubusercontent.com/shinichi-dz/phucshinsayhi/refs/heads/main/KaitunBloxFruit.lua"))()
    end
})

Tab3:AddButton({
    Name = "Kaitun teddy hub",
    Callback = function()
        repeat task.wait() until game:IsLoaded() and game.Players.LocalPlayer
        getgenv().Configs = {
            ["Quest"] = {
                ["Evo Race V1"] = true;
                ["Evo Race V2"] = true;
                ["RGB Haki"] = true;
                ["Pull Lerver"] = true;
            };
            Sword = {
                "Dual-Headed Blade"; "Smoke Admiral"; "Wardens Sword"; "Cutlass";
                "Katana"; "Dual Katana"; "Triple Katana"; "Iron Mace"; "Saber";
                "Pole (1st Form)"; "Gravity Blade"; "Longsword"; "Rengoku";
                "Midnight Blade"; "Soul Cane"; "Bisento"; "Yama"; "Tushita";
                "Cursed Dual Katana";
            };
            Gun = {
                "Soul Guitar"; "Kabucha"; "Venom Bow"; "Musket"; "Flintlock";
                "Refined Slingshot"; "Magma Blaster"; "Dual Flintlock"; "Cannon";
                "Bizarre Revolver"; "Bazooka";
            };
            ["FPS Booster"] = false;
        }
        loadstring(game:HttpGet("https://pandadevelopment.net/virtual/file/8cffffd967953fe7"))()
    end
})

Tab3:AddButton({
    Name = "Bacon hub kaitun",
    Callback = function()
        getgenv().SettingFarm = {
            ["Farm"] = {
                ["Team"] = "Pirates",
                ["FPS"] = false,
                ["White Screen"] = false,
            },
            ["Race"] = {
                ["Evo Race V1"] = true,
                ["Evo Race V2"] = true,
                ["RGB Haki"] = true,
                ["Pull Lerver"] = true,
            },
            ["Sword"] = {
                ["Dual-Headed Blade"] = true, ["Smoke Admiral"] = true, ["Wardens Sword"] = true,
                ["Cutlass"] = true, ["Katana"] = true, ["Dual Katana"] = true, ["Triple Katana"] = true,
                ["Iron Mace"] = true, ["Saber"] = true, ["Pole (1st Form)"] = true, ["Gravity Blade"] = true,
                ["Longsword"] = true, ["Rengoku"] = true, ["Midnight Blade"] = true, ["Soul Cane"] = true,
                ["Bisento"] = true, ["Yama"] = true, ["Tushita"] = true, ["Cursed Dual Katana"] = true,
            },
            ["Gun"] = {
                ["Soul Guitar"] = true, ["Kabucha"] = true, ["Venom Bow"] = true, ["Musket"] = true,
                ["Flintlock"] = true, ["Refined Slingshot"] = true, ["Magma Blaster"] = true,
                ["Dual Flintlock"] = true, ["Cannon"] = true, ["Bizarre Revolver"] = true, ["Bazooka"] = true,
            }
        }
        loadstring(game:HttpGet("https://raw.githubusercontent.com/vinh129150/hack/refs/heads/main/KaitunBF.lua"))()
    end
})

Tab3:AddButton({
    Name = "Orange hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/HieuDepTrai-Z/Dev_OrangeVip/refs/heads/main/OrangeKaitun.lua"))()
    end
})

Tab3:AddButton({
    Name = "NatAov hub kaitun",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-AnhTuansitink/NatAov-Hub/refs/heads/main/NatAovKaitunBF.lua"))()
    end
})

Tab3:AddButton({
    Name = "Deltak hub kaitun",
    Callback = function()
        getgenv().Configs = {
            ["Quest"] = {
                ["Evo Race V1"] = true,
                ["Evo Race V2"] = true,
                ["RGB Haki"] = true,
                ["Pull Lerver"] = true
            };
            ["Sword"] = {
                "Dual-Headed Blade", "Smoke Admiral", "Wardens Sword", "Cutlass",
                "Katana", "Dual Katana", "Triple Katana", "Iron Mace", "Saber",
                "Pole (1st Form)", "Gravity Blade", "Longsword", "Rengoku",
                "Midnight Blade", "Soul Cane", "Bisento", "Yama", "Tushita",
                "Cursed Dual Katana"
            };
            ["Gun"] = {
                "Soul Guitar", "Kabucha", "Venom Bow", "Musket", "Flintlock",
                "Refined Slingshot", "Magma Blaster", "Dual Flintlock", "Cannon",
                "Bizarre Revolver", "Bazooka"
            };
            ["FPS Booster"] = true
        }
        loadstring(game:HttpGet("https://raw.githubusercontent.com/traidepthanhhoa/Kaitun/refs/heads/main/deptraivip.txt.lua.txt"))()
    end
})

Tab3:AddButton({
    Name = "Blue x Hub kaitun",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-BlueX/BlueX-Hub/refs/heads/main/KaitunBloxFruits.lua"))()
    end
})

------ Hop
TabBF:AddSection("Hop server")

Tab4:AddButton({
    Name = "Teddy hub hop sv",
    Callback = function()
        repeat task.wait() until game:IsLoaded() and game.Players.LocalPlayer
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Teddyseetink/Haidepzai/refs/heads/main/TEDDYHUB-FREEMIUM"))()
    end
})

Tab4:AddButton({
    Name = "Ok hub hop sv",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/fakekuri/Okhubhere/refs/heads/main/Hopserver.lua"))()
    end
})

Tab4:AddButton({
    Name = "Zis hop sv",
    Callback = function()
        loadstring(game:HttpGet("https://github.com/LuaCrack/Zis/raw/refs/heads/main/HopAllEventZisRoblox"))()
    end
})

Tab4:AddButton({
    Name = "Teddy hub hop sv v2",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/skibiditoiletgojo/Haidepzai/refs/heads/main/Teddy-Premium"))()
    end
})

Tab4:AddButton({
    Name = "Dragon hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/dragonhubdev/dragonwitheveryone/refs/heads/main/Main-Premium.lua"))()
    end
})

Tab4:AddButton({
    Name = "Zis hub hop",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaCrack/Zis/refs/heads/main/ZisRobloxHop"))()
    end
})

------ Fix lag
Tab5:AddSection("Script Fix lag")

Tab5:AddButton({
    Name = "Fix lag grai hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Graihub/graihubfixlagv3/refs/heads/main/fixlagv3"))()
    end
})

Tab5:AddButton({
    Name = "Fix lag tubor lite",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/TurboLite/Script/main/FixLag.lua"))()
    end
})

------ Farm chest
TabBF:AddSection("Farm chest")

Tab6:AddButton({
    Name = "Farm chest Grai hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Graihub/graihubfarmchestv2/refs/heads/main/farmchestv2"))()
    end
})

Tab6:AddButton({
    Name = "Skull hub",
    Callback = function()
        getgenv().SH_Settings = {
            ["MainConfig"] = {
                ["Enable Farm"] = true,
                ["Version Farm"] = "1",
                ["Sniper Legendary Item"] = false
            },
            ["Settings"] = {
                ["Choose Team"] = "Marines",
                ["White Screen"] = false,
                ["Reset Anti Detect"] = true,
                ["Time Checker"] = 300,
                ["Hop 2"] = false,
                ["Webhook"] = {
                    ["Enable Webhook"] = false,
                    ["Link"] = "",
                    ["Thumbnail"] = "",
                    ["Lock Beli"] = 1000000000,
                    ["Ping User ID"] = "everyone"
                }
            },
            ["FruitSniper"] = {
                ["Enable Sniper Fruit"] = false,
                ["Fruit"] = { "Leopard-Leopard", "Kitsune-Kitsune", "Dragon-Dragon", "Yeti-Yeti" }
            },
            ["Legendary Sword"] = { ["Enable Auto Buy"] = false },
            ["Aura Haki"] = { ["Enable Auto Buy"] = false }
        }
        loadstring(game:HttpGet("https://raw.githubusercontent.com/xxhumggxx/SkullHub/refs/heads/main/ChestV2.lua"))()
    end
})

Tab6:AddButton({
    Name = "Trong Nguyen hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/sgrea62-cloud/kaluloo/refs/heads/main/Kalulo"))()
    end
})

Tab6:AddButton({
    Name = "Rương farm",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Giabaozzz/VGBChestFarm-/main/VGBChestFarm.txt"))()
    end
})

------ Farm fruit
TabBF:AddSection("Farm fruit")

Tab7:AddButton({
    Name = "Farm fruit no name",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/marisdeptrai/Script-Free/main/FruitFinder.lua"))()
    end
})

Tab7:AddButton({
    Name = "Hiru hub",
    Callback = function()
        repeat task.wait() until game:IsLoaded() and game.Players.LocalPlayer
        getgenv().Settings = { JoinTeam = true, Team = "Marines" }
        getgenv().AutoRandomFruit = false
        getgenv().AutoStoreFruit = true
        getgenv().EspDevilFruit = true
        getgenv().BoostFps = false
        loadstring(game:HttpGet("https://raw.githubusercontent.com/KiddoHiru/BloxFruits/main/FindDF.lua"))()
    end
})

Tab7:AddButton({
    Name = "Night hub auto fruit",
    Callback = function()
        repeat task.wait() until game:IsLoaded() and game.Players.LocalPlayer
        loadstring(game:HttpGet("https://raw.githubusercontent.com/NguyenAnhKhoaVN/Real_AnhKhoa_2279/refs/heads/main/Main-BloxFruitsNX.lua"))()
    end
})

------ Pvp
TabBF:AddSection("Pvp")

Tab8:AddButton({
    Name = "Lonely hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/LongHip12/LonelyHub/refs/heads/main/LonelyHub-PVP.lua"))()
    end
})

Tab8:AddButton({
    Name = "HermanosDev pvp",
    Callback = function()
        local script_mode = "PVP"
        loadstring(game:HttpGet("https://raw.githubusercontent.com/hermanos-dev/hermanos-hub/refs/heads/main/Loader.lua"))()
    end
})

------ Sailor piece
Tab9:AddSection("Script Sailor piece")

Tab9:AddButton({
    Name = "Cat hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/realcath/lab/refs/heads/main/src/main/loader.lua"))()
    end
})

Tab9:AddButton({
    Name = "Speed hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua"))()
    end
})

Tab9:AddButton({
    Name = "Blue x hub",
    Callback = function()
        _G.AutoTranslate = true
        _G.SaveConfig = true
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-BlueX/BlueX-Hub/refs/heads/main/Main.lua"))()
    end
})

Tab9:AddButton({
    Name = "Solix hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/meobeo8/a/a/a"))()
    end
})

Tab9:AddButton({
    Name = "Sondu hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/canhongson/CanHongSon/refs/heads/main/loader.lua"))()
    end
})

------ Meme sea
Tab10:AddSection("Script meme sea")

Tab10:AddButton({
    Name = "NTT hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/NTT-HUB/Script/refs/heads/main/main"))()
    end
})

------ Dead rails
Tab11:AddSection("Script Dead rails")

Tab11:AddButton({
    Name = "Pink hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ScriptBeLike/Tera-DeadRails/refs/heads/main/Meteor%20V1"))()
    end
})

Tab11:AddButton({
    Name = "Tora hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/gumanba/Scripts/main/DeadRails"))()
    end
})

------ 99 night
Tab12:AddSection("Script 99 night")

Tab12:AddButton({
    Name = "Than Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/thantzy/thanhub/refs/heads/main/thanv1"))()
    end
})

Tab12:AddButton({
    Name = "Soluna hub",
    Callback = function()
        loadstring(game:HttpGet("https://soluna-script.vercel.app/99-Nights-in-the-Forest.lua"))()
    end
})

------ King legacy
Tab13:AddSection("Script king legacy")

Tab13:AddButton({
    Name = "Zee hub",
    Callback = function()
        loadstring(game:HttpGet("https://zuwz.me/Ls-Zee-Hub-KL"))()
    end
})

Tab13:AddButton({
    Name = "Omg hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Omgshit/Scripts/main/MainLoader.lua"))()
    end
})

Tab13:AddButton({
    Name = "ARC hub",
    Callback = function()
        getgenv().CustomDistance = 10
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ChopLoris/ArcHub/main/main.lua"))()
    end
})

Tab13:AddButton({
    Name = "Tsuo hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Tsuo7/TsuoHub/main/king%20legacy"))()
    end
})

Tab13:AddButton({
    Name = "Zenhub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Zenhubtop/zen_hub_pr/main/zennewwwwui.lua"))()
    end
})

------ Grow a garden
Tab14:AddSection("Script grow a garden")

Tab14:AddButton({
    Name = "Bonk hub",
    Callback = function()
        loadstring(game:HttpGet("https://bonkhub.online/loader.lua"))()
    end
})

Tab14:AddButton({
    Name = "Lumin hub",
    Callback = function()
        loadstring(game:HttpGet("https://lumin-hub.lol/loader.lua"))()
    end
})

Tab14:AddButton({
    Name = "Tora hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/gumanba/Scripts/main/GrowaGarden"))()
    end
})

------ Blue lock
Tab15:AddSection("Script blue lock")

Tab15:AddButton({
    Name = "Omg hub",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/UPD-Blue-Lock:-Rivals-OMG-Hub-29091"))()
    end
})

------ The forge
Tab16:AddSection("Script the forge")

Tab16:AddButton({
    Name = "Speed hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua"))()
    end
})

Tab16:AddButton({
    Name = "Solix hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/meobeo8/a/a/a"))()
    end
})

Tab16:AddButton({
    Name = "NS hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/OhhMyGehlee/sh/refs/heads/main/a"))()
    end
})

Tab16:AddButton({
    Name = "Vxeze hub",
    Callback = function()
        loadstring(game:HttpGet("https://pandadevelopment.net/virtual/file/f3e2379f5d38627e"))()
    end
})

Tab16:AddButton({
    Name = "Chiyo hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/kaisenlmao/loader/refs/heads/main/chiyo.lua"))()
    end
})

------ Rivals
Tab17:AddSection("Script rivals")

Tab17:AddButton({
    Name = "Solix hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/meobeo8/a/a/a"))()
    end
})

Tab17:AddButton({
    Name = "Control hub v12",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/aN4VMhvP"))()
    end
})

Tab17:AddButton({
    Name = "Soluna hub",
    Callback = function()
        loadstring(game:HttpGet("https://soluna-script.vercel.app/main.lua"))()
    end
})

Tab17:AddButton({
    Name = "CHP hub",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/7nqF3CKH"))()
    end
})

-- ===================== SETTING =====================
TabMisc:AddSection("Display")

TabMisc:AddToggle({
    Name = "Full Bright",
    Default = false,
    Callback = function(on)
        pcall(function()
            local Lighting = game:GetService("Lighting")
            if on then
                Lighting.Brightness = 2
                Lighting.Ambient = Color3.new(1, 1, 1)
                Lighting.ColorShift_Bottom = Color3.new(1, 1, 1)
                Lighting.ColorShift_Top = Color3.new(1, 1, 1)
                Lighting.FogEnd = 9e9
                Lighting.GlobalShadows = false
            else
                Lighting.Brightness = 1
                Lighting.Ambient = Color3.new(0.5, 0.5, 0.5)
                Lighting.ColorShift_Bottom = Color3.new(0, 0, 0)
                Lighting.ColorShift_Top = Color3.new(0, 0, 0)
                Lighting.FogEnd = 100000
                Lighting.GlobalShadows = true
            end
        end)
    end,
})

TabMisc:AddToggle({
    Name = "No Animation",
    Default = false,
    Callback = function(on)
        pcall(function()
            local function strip(char)
                if not char then return end
                local hum = char:FindFirstChildOfClass("Humanoid")
                if hum then
                    local animator = hum:FindFirstChildOfClass("Animator")
                    if animator then
                        for _, track in ipairs(animator:GetPlayingAnimationTracks()) do
                            pcall(function() track:Stop(0) end)
                        end
                    end
                end
                local animate = char:FindFirstChild("Animate")
                if animate then
                    animate.Disabled = on
                end
            end

            if on then
                strip(game.Players.LocalPlayer.Character)
                -- stop new animations continuously
                if _G.__NyannNoAnim then
                    pcall(function() _G.__NyannNoAnim:Disconnect() end)
                end
                _G.__NyannNoAnim = game:GetService("RunService").Heartbeat:Connect(function()
                    local char = game.Players.LocalPlayer.Character
                    if not char then return end
                    local hum = char:FindFirstChildOfClass("Humanoid")
                    if not hum then return end
                    local animator = hum:FindFirstChildOfClass("Animator")
                    if animator then
                        for _, track in ipairs(animator:GetPlayingAnimationTracks()) do
                            pcall(function() track:Stop(0) end)
                        end
                    end
                end)
            else
                if _G.__NyannNoAnim then
                    pcall(function() _G.__NyannNoAnim:Disconnect() end)
                    _G.__NyannNoAnim = nil
                end
                local char = game.Players.LocalPlayer.Character
                if char then
                    local animate = char:FindFirstChild("Animate")
                    if animate then animate.Disabled = false end
                end
            end
        end)
    end,
})

-- ===================== DONE =====================
pcall(function()
    if Window.SelectTab then Window:SelectTab(1) end -- Information
end)

Notify("nyann os", "Premium menu sẵn sàng")
print("[nyann os] Premium paste-style loaded")
