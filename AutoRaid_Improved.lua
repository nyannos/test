--[[
    ========================================
    AUTO RAID IMPROVED - nyann os
    Version: 2.0 (Display Fixed + Stable)
    ========================================
    Cách dùng:
    1. Copy toàn bộ code này vào tab Raid của script chính
    2. Hoặc load riêng sau khi script chính đã load
]]

-- ========================================
-- DEPENDENCIES CHECK (an toàn)
-- ========================================
local plr = game.Players.LocalPlayer
local replicated = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")

-- World detection
local placeId = game.PlaceId
local World1 = (placeId == 2753915549 or placeId == 85211729168715)
local World2 = (placeId == 4442272183 or placeId == 79091703265657)
local World3 = (placeId == 7449423635 or placeId == 100117331123089)

-- Helper functions (nếu chưa có)
if not GetBP then
    GetBP = function(name)
        return plr.Backpack:FindFirstChild(name) or plr.Character:FindFirstChild(name)
    end
end

if not EquipWeapon then
    EquipWeapon = function(name)
        if not name then return end
        local tool = plr.Backpack:FindFirstChild(name)
        if tool then
            plr.Character.Humanoid:EquipTool(tool)
        end
    end
end

if not _tp then
    _tp = function(cf)
        if plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
            plr.Character.HumanoidRootPart.CFrame = cf
        end
    end
end

-- ========================================
-- RAID STATUS (HIỂN THỊ ỔN ĐỊNH)
-- ========================================
-- Nếu dùng redzlib / v10 tab:
-- v10:AddSection({"Raid Status"})

local RaidTimerStatus, RaidIslandStatus, RaidMobsStatus

-- Tạo Paragraph nếu đang trong UI
if v10 and v10.AddParagraph then
    RaidTimerStatus = v10:AddParagraph({
        Title = "Raid Timer",
        Desc = "Not in raid"
    })
    RaidIslandStatus = v10:AddParagraph({
        Title = "Current Island",
        Desc = "None"
    })
    RaidMobsStatus = v10:AddParagraph({
        Title = "Mobs Remaining",
        Desc = "0"
    })
end

local RaidIslands = {"Island 1", "Island 2", "Island 3", "Island 4", "Island 5"}

local function GetHRP()
    local char = plr.Character
    return char and char:FindFirstChild("HumanoidRootPart")
end

local function GetCurrentIsland()
    local hrp = GetHRP()
    if not hrp then return nil, math.huge end

    local locations = workspace:FindFirstChild("_WorldOrigin") and workspace._WorldOrigin:FindFirstChild("Locations")
    if not locations then return nil, math.huge end

    local closest = math.huge
    local result = nil

    for _, name in ipairs(RaidIslands) do
        local island = locations:FindFirstChild(name)
        if island then
            local dist = (hrp.Position - island.Position).Magnitude
            if dist < closest then
                closest = dist
                result = name
            end
        end
    end
    return result, closest
end

local function CountMobsInIsland(islandName)
    local locations = workspace:FindFirstChild("_WorldOrigin") and workspace._WorldOrigin:FindFirstChild("Locations")
    if not locations then return 0 end

    local island = locations:FindFirstChild(islandName)
    if not island then return 0 end

    local count = 0
    for _, mob in pairs(workspace.Enemies:GetChildren()) do
        local hum = mob:FindFirstChild("Humanoid")
        local root = mob:FindFirstChild("HumanoidRootPart")
        if hum and root and hum.Health > 0 then
            if (root.Position - island.Position).Magnitude < 450 then
                count = count + 1
            end
        end
    end
    return count
end

local function HasMobsInIsland(islandName)
    return CountMobsInIsland(islandName) > 0
end

local function GetNearestMob()
    local hrp = GetHRP()
    if not hrp then return nil end

    local currentIsland = GetCurrentIsland()
    if not currentIsland then return nil end

    local locations = workspace._WorldOrigin.Locations
    local island = locations:FindFirstChild(currentIsland)
    if not island then return nil end

    local closest = nil
    local closestDist = math.huge

    for _, mob in pairs(workspace.Enemies:GetChildren()) do
        local hum = mob:FindFirstChild("Humanoid")
        local root = mob:FindFirstChild("HumanoidRootPart")
        if hum and root and hum.Health > 0 then
            if (root.Position - island.Position).Magnitude < 450 then
                local dist = (root.Position - hrp.Position).Magnitude
                if dist < closestDist then
                    closestDist = dist
                    closest = mob
                end
            end
        end
    end
    return closest
end

local function MoveToNextIsland()
    local current = GetCurrentIsland()
    if not current then return false end

    local idx = table.find(RaidIslands, current)
    if not idx or not RaidIslands[idx + 1] then return false end

    local nextName = RaidIslands[idx + 1]
    local nextIsland = workspace._WorldOrigin.Locations:FindFirstChild(nextName)

    if nextIsland then
        _tp(nextIsland.CFrame * CFrame.new(0, 45, 120))
        return true
    end
    return false
end

-- ========================================
-- STATUS UPDATE LOOP (ỔN ĐỊNH)
-- ========================================
task.spawn(function()
    while task.wait(0.8) do
        pcall(function()
            local timer = plr.PlayerGui:FindFirstChild("Main")
                and plr.PlayerGui.Main:FindFirstChild("TopHUDList")
                and plr.PlayerGui.Main.TopHUDList:FindFirstChild("RaidTimer")

            if timer and timer.Visible then
                if RaidTimerStatus then
                    RaidTimerStatus:SetDesc("Active - " .. (timer.Text or "Running"))
                end

                local current, dist = GetCurrentIsland()
                if current then
                    if RaidIslandStatus then
                        RaidIslandStatus:SetDesc(current .. " (" .. math.floor(dist) .. " studs)")
                    end
                    local mobs = CountMobsInIsland(current)
                    if RaidMobsStatus then
                        RaidMobsStatus:SetDesc(tostring(mobs))
                    end
                else
                    if RaidIslandStatus then RaidIslandStatus:SetDesc("Searching...") end
                    if RaidMobsStatus then RaidMobsStatus:SetDesc("?") end
                end
            else
                if RaidTimerStatus then RaidTimerStatus:SetDesc("Not in raid") end
                if RaidIslandStatus then RaidIslandStatus:SetDesc("None") end
                if RaidMobsStatus then RaidMobsStatus:SetDesc("0") end
            end
        end)
    end
end)

-- ========================================
-- CHIP SELECTION
-- ========================================
if v10 then
    v10:AddSection({"Chip Selection"})
end

local RaidChipList = {
    "Flame", "Ice", "Quake", "Light", "Dark", "String",
    "Rumble", "Magma", "Human: Buddha", "Sand", "Bird: Phoenix", "Dough"
}

_G.SelectChip = _G.SelectChip or "Flame"

if v10 and v10.AddDropdown then
    v10:AddDropdown({
        Name = "Select Chip",
        Options = RaidChipList,
        Default = _G.SelectChip,
        Callback = function(Value)
            _G.SelectChip = Value
            if _G.SaveData then
                _G.SaveData["Raid_SelectChip"] = Value
                if SaveSettings then SaveSettings() end
            end
        end
    })
end

-- ========================================
-- BUY CHIP
-- ========================================
if v10 then
    v10:AddSection({"Buy Chip"})
end

if v10 and v10.AddButton then
    v10:AddButton({
        Name = "Buy Chip with Beli",
        Callback = function()
            if not GetBP("Special Microchip") and _G.SelectChip then
                pcall(function()
                    replicated.Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.SelectChip)
                end)
            end
        end
    })

    v10:AddButton({
        Name = "Buy Chip with Fruit",
        Callback = function()
            if GetBP("Special Microchip") then return end
            pcall(function()
                local fruits = replicated.Remotes.CommF_:InvokeServer("GetFruits")
                for _, fruit in pairs(fruits) do
                    if fruit.Price <= 490000 then
                        replicated.Remotes.CommF_:InvokeServer("LoadFruit", fruit.Name)
                        task.wait(0.4)
                        replicated.Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.SelectChip)
                        break
                    end
                end
            end)
        end
    })
end

-- Auto Buy Chip
_G.AutoChipBeli = _G.AutoChipBeli or false
_G.AutoChipFruit = _G.AutoChipFruit or false

if v10 and v10.AddToggle then
    v10:AddToggle({
        Name = "Auto Buy Chip [Beli]",
        Default = _G.AutoChipBeli,
        Callback = function(Value)
            _G.AutoChipBeli = Value
        end
    })

    v10:AddToggle({
        Name = "Auto Buy Chip [Fruit]",
        Default = _G.AutoChipFruit,
        Callback = function(Value)
            _G.AutoChipFruit = Value
        end
    })
end

task.spawn(function()
    while task.wait(4) do
        if _G.AutoChipBeli and _G.SelectChip then
            pcall(function()
                if not GetBP("Special Microchip") then
                    replicated.Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.SelectChip)
                end
            end)
        end
    end
end)

task.spawn(function()
    while task.wait(5) do
        if _G.AutoChipFruit and _G.SelectChip then
            pcall(function()
                if not GetBP("Special Microchip") then
                    local fruits = replicated.Remotes.CommF_:InvokeServer("GetFruits")
                    for _, fruit in pairs(fruits) do
                        if fruit.Price <= 490000 then
                            replicated.Remotes.CommF_:InvokeServer("LoadFruit", fruit.Name)
                            task.wait(0.5)
                            replicated.Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.SelectChip)
                            break
                        end
                    end
                end
            end)
        end
    end
end)

-- ========================================
-- AUTO START RAID
-- ========================================
if v10 then
    v10:AddSection({"Raid Controls"})
end

_G.AutoStartRaid = _G.AutoStartRaid or false

if v10 and v10.AddToggle then
    v10:AddToggle({
        Name = "Auto Start Raid",
        Default = _G.AutoStartRaid,
        Callback = function(Value)
            _G.AutoStartRaid = Value
        end
    })
end

task.spawn(function()
    while task.wait(1.2) do
        if not _G.AutoStartRaid then continue end

        pcall(function()
            local timer = plr.PlayerGui:FindFirstChild("Main")
                and plr.PlayerGui.Main:FindFirstChild("TopHUDList")
                and plr.PlayerGui.Main.TopHUDList:FindFirstChild("RaidTimer")

            if timer and timer.Visible then return end
            if not GetBP("Special Microchip") then return end

            if World2 then
                local btn = workspace.Map.CircleIsland
                    and workspace.Map.CircleIsland:FindFirstChild("RaidSummon2")
                    and workspace.Map.CircleIsland.RaidSummon2:FindFirstChild("Button")
                    and workspace.Map.CircleIsland.RaidSummon2.Button:FindFirstChild("Main")

                if btn then
                    if btn:FindFirstChild("ProximityPrompt") then
                        fireproximityprompt(btn.ProximityPrompt)
                    elseif btn:FindFirstChild("ClickDetector") then
                        fireclickdetector(btn.ClickDetector)
                    end
                end
            elseif World3 then
                local btn = workspace.Map["Boat Castle"]
                    and workspace.Map["Boat Castle"]:FindFirstChild("RaidSummon2")
                    and workspace.Map["Boat Castle"].RaidSummon2:FindFirstChild("Button")
                    and workspace.Map["Boat Castle"].RaidSummon2.Button:FindFirstChild("Main")

                if btn then
                    if btn:FindFirstChild("ProximityPrompt") then
                        fireproximityprompt(btn.ProximityPrompt)
                    elseif btn:FindFirstChild("ClickDetector") then
                        fireclickdetector(btn.ClickDetector)
                    end
                end
            end
        end)
    end
end)

-- ========================================
-- AUTO FARM DUNGEON + NEXT ISLAND (CẢI THIỆN)
-- ========================================
_G.AutoDungeonFarm = _G.AutoDungeonFarm or false

if v10 and v10.AddToggle then
    v10:AddToggle({
        Name = "Auto Farm Dungeon + Next Island",
        Default = _G.AutoDungeonFarm,
        Callback = function(Value)
            _G.AutoDungeonFarm = Value
            if not Value then
                if RaidIslandStatus then RaidIslandStatus:SetDesc("None") end
                if RaidMobsStatus then RaidMobsStatus:SetDesc("0") end
            end
        end
    })
end

task.spawn(function()
    while task.wait(0.35) do
        if not _G.AutoDungeonFarm then continue end

        pcall(function()
            local timer = plr.PlayerGui:FindFirstChild("Main")
                and plr.PlayerGui.Main:FindFirstChild("TopHUDList")
                and plr.PlayerGui.Main.TopHUDList:FindFirstChild("RaidTimer")

            if not timer or not timer.Visible then return end

            local hrp = GetHRP()
            if not hrp then return end

            local currentIsland = GetCurrentIsland()
            if not currentIsland then return end

            local mob = GetNearestMob()

            if mob then
                local root = mob:FindFirstChild("HumanoidRootPart")
                if root then
                    -- TP gần mob
                    if (hrp.Position - root.Position).Magnitude > 18 then
                        _tp(root.CFrame * CFrame.new(0, 22, 0))
                    end

                    -- Equip weapon
                    if _G.SelectWeapon then
                        EquipWeapon(_G.SelectWeapon)
                    end

                    -- Attack
                    if G and G.Kill then
                        G.Kill(mob, true)
                    elseif Attack and Attack.Kill then
                        Attack.Kill(mob, true)
                    else
                        -- Fallback click
                        game:GetService("VirtualUser"):CaptureController()
                        game:GetService("VirtualUser"):Button1Down(Vector2.new(0, 0))
                    end
                end
            else
                -- Không còn mob → chuyển island
                if not HasMobsInIsland(currentIsland) then
                    MoveToNextIsland()
                    task.wait(1.2)
                end
            end
        end)
    end
end)

-- ========================================
-- AUTO AWAKENING
-- ========================================
_G.AutoAwaken = _G.AutoAwaken or false

if v10 then
    v10:AddSection({"Awakening"})
end

if v10 and v10.AddToggle then
    v10:AddToggle({
        Name = "Auto Awakening",
        Default = _G.AutoAwaken,
        Callback = function(Value)
            _G.AutoAwaken = Value
        end
    })
end

task.spawn(function()
    while task.wait(2.5) do
        if _G.AutoAwaken then
            pcall(function()
                replicated.Remotes.CommF_:InvokeServer("Awakener", "Check")
                task.wait(0.3)
                replicated.Remotes.CommF_:InvokeServer("Awakener", "Awaken")
            end)
        end
    end
end)

-- ========================================
-- LAW / ORDER RAID
-- ========================================
if v10 then
    v10:AddSection({"Law/Order Raid"})
end

if v10 and v10.AddButton then
    v10:AddButton({
        Name = "Buy Law Microchip",
        Callback = function()
            pcall(function()
                replicated.Remotes.CommF_:InvokeServer("BlackbeardReward", "Microchip", "2")
            end)
        end
    })

    v10:AddButton({
        Name = "Start Law Raid",
        Callback = function()
            pcall(function()
                local btn = workspace.Map.CircleIsland
                    and workspace.Map.CircleIsland:FindFirstChild("RaidSummon")
                    and workspace.Map.CircleIsland.RaidSummon:FindFirstChild("Button")
                    and workspace.Map.CircleIsland.RaidSummon.Button:FindFirstChild("Main")
                if btn and btn:FindFirstChild("ClickDetector") then
                    fireclickdetector(btn.ClickDetector)
                end
            end)
        end
    })
end

_G.AutoLawKak = _G.AutoLawKak or false

if v10 and v10.AddToggle then
    v10:AddToggle({
        Name = "Auto Kill Order (Law)",
        Default = _G.AutoLawKak,
        Callback = function(Value)
            _G.AutoLawKak = Value
        end
    })
end

task.spawn(function()
    while task.wait(0.4) do
        if not _G.AutoLawKak then continue end
        pcall(function()
            local order = nil
            for _, v in pairs(workspace.Enemies:GetChildren()) do
                if v.Name == "Order" and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                    order = v
                    break
                end
            end
            if not order then
                for _, v in pairs(replicated:GetChildren()) do
                    if v.Name == "Order" and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                        order = v
                        break
                    end
                end
            end

            if order then
                if G and G.Kill then
                    G.Kill(order, true)
                elseif Attack and Attack.Kill then
                    Attack.Kill(order, true)
                else
                    _tp(order.HumanoidRootPart.CFrame * CFrame.new(0, 25, 0))
                end
            else
                _tp(CFrame.new(-6217.2021484375, 28.047645568848, -5053.1357421875))
            end
        end)
    end
end)

print("[nyann os] Auto Raid Improved loaded successfully!")
