-- NYANN OS v4 - MIDNIGHT FARM MENU
-- Chỉ giữ menu Farm Level / Bone / Cake Prince.
-- Không dùng ảnh/logo Midnight trong phần UI của script.

local MidnightSource =
    "https://raw.githubusercontent.com/NIcoGabrielRealYtr/Midnight-Hub-Library/refs/heads/main/Source"

local ok, Library = pcall(function()
    local source = game:HttpGet(MidnightSource)
    return loadstring(source)()
end)

if not ok or not Library then
    warn("[nyann os] Không tải được Midnight Library.")
    return
end

-- Không đặt Icon/Background Image cho cửa sổ hoặc Page.
local Window = Library:Window({
    Name = "nyann os v4"
})

local FarmPage = Window:Page({
    Name = "Farming",
    Columns = 1
})

local FarmSection = FarmPage:Section({
    Name = "Auto Farm"
})

_G.SelectedFarmMode = _G.SelectedFarmMode or "Level"
_G.StartFarm = _G.StartFarm or false
_G.Level = _G.Level or false
_G.AutoFarm_Bone = _G.AutoFarm_Bone or false
_G.AutoFarm_Cake = _G.AutoFarm_Cake or false
_G.AcceptQuest = _G.AcceptQuest or false

FarmSection:Dropdown({
    Name = "Farm Mode",
    Items = {
        "Level",
        "Bone",
        "Cake Prince"
    },
    Default = _G.SelectedFarmMode,
    Multi = false,
    Callback = function(Value)
        _G.SelectedFarmMode = Value

        _G.Level = false
        _G.AutoFarm_Bone = false
        _G.AutoFarm_Cake = false

        if _G.StartFarm then
            if Value == "Level" then
                _G.Level = true
            elseif Value == "Bone" then
                _G.AutoFarm_Bone = true
            elseif Value == "Cake Prince" then
                _G.AutoFarm_Cake = true
            end
        end
    end
})

FarmSection:Toggle({
    Name = "Start Farm",
    Default = _G.StartFarm,
    Callback = function(Value)
        _G.StartFarm = Value

        _G.Level = false
        _G.AutoFarm_Bone = false
        _G.AutoFarm_Cake = false

        if Value then
            if _G.SelectedFarmMode == "Level" then
                _G.Level = true
            elseif _G.SelectedFarmMode == "Bone" then
                _G.AutoFarm_Bone = true
            elseif _G.SelectedFarmMode == "Cake Prince" then
                _G.AutoFarm_Cake = true
            end
        end
    end
})

FarmSection:Toggle({
    Name = "Accept Quests",
    Default = _G.AcceptQuest,
    Callback = function(Value)
        _G.AcceptQuest = Value
    end
})

FarmSection:Label("Modes: Level • Bone • Cake Prince")
FarmSection:Label("UI đã bỏ ảnh/logo Midnight.")

-- Lưu ý:
-- Phần tự động tấn công/equip vũ khí từ file cũ không được đưa vào bản này.
-- Các cờ _G.Level / _G.AutoFarm_Bone / _G.AutoFarm_Cake được giữ để
-- phần logic không dùng vũ khí có thể gắn vào sau.
