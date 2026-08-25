--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.9) ~  Much Love, Ferib 

]]
--

local players = game:GetService("Players")
local runService = game:GetService("RunService")
local userInputService = game:GetService("UserInputService")
local tweenService = game:GetService("TweenService")
local stats = game:GetService("Stats")
local parent = game:GetService("CoreGui")
local lighting = game:GetService("Lighting")
local workspace = game:GetService("Workspace")
local playerGuiContainer = players.LocalPlayer
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "HI_V12"
screenGui.ResetOnSpawn = false
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
pcall(function()
    screenGui.Parent = parent
end)
if not screenGui.Parent then
    screenGui.Parent = playerGuiContainer:WaitForChild("PlayerGui")
end
local clamp, floor, sqrt, resultCallback, deg, sin, cos, pi, max, min =
    math.clamp, math.floor, math.sqrt, math.atan2, math.deg, math.sin, math.cos, math.pi, math.max, math.min
local function handleSize(sizeNumber, number, quotient)
    return sizeNumber + ((number - sizeNumber) * quotient)
end
local function new(textColor3, secondaryArgument, newNumber)
    return Color3.new(
        handleSize(textColor3.R, secondaryArgument.R, newNumber),
        handleSize(textColor3.G, secondaryArgument.G, newNumber),
        handleSize(textColor3.B, secondaryArgument.B, newNumber)
    )
end
local function secondaryNew(textColor3, newFlag)
    return new(textColor3, Color3.new(0, 0 - 0, 0), newFlag or (741.25 - (575 + 166)))
end
local function fromRgb(fromRgbNumber, secondaryArgument, tertiaryArgument)
    if fromRgbNumber <= secondaryArgument then
        return Color3.fromRGB(1732 - (1400 + 332), 489 - 234, 2088 - (242 + 1666))
    elseif fromRgbNumber <= tertiaryArgument then
        return Color3.fromRGB(255, 230, 9 + 11)
    else
        return Color3.fromRGB(94 + 161, 39 + 6, 45)
    end
end
local function format(resultNumber)
    local formatNumber = 0
    local formatResult
    local result
    local secondaryFormatResult
    while true do
        local FlatIdent_95CAC = 0
        while true do
            if FlatIdent_95CAC == 1 then
                if (1390 - (360 + 1030)) == formatNumber then
                    local number = 0
                    while true do
                        if number == 0 then
                            formatResult = floor(resultNumber / 3600)
                            result = floor((resultNumber % (3186 + 414)) / (169 - 109))
                            number = 1
                        end
                        if number == 1 then
                            formatNumber = 1
                            break
                        end
                    end
                end
                break
            end
            if FlatIdent_95CAC == 0 then
                if formatNumber == 1 then
                    secondaryFormatResult = floor(resultNumber % 60)
                    if formatResult > 0 then
                        return string.format("%d:%02d:%02d", formatResult, result, secondaryFormatResult)
                    end
                    formatNumber = 942 - (850 + 90)
                end
                if formatNumber == (3 - 1) then
                    return string.format("%02d:%02d", result, secondaryFormatResult)
                end
                FlatIdent_95CAC = 1
            end
        end
    end
end
local function create(frame, secondaryArgument, createFlag)
    return tweenService:Create(
        frame,
        TweenInfo.new(createFlag or (0.5 - 0), Enum.EasingStyle.Back, Enum.EasingDirection.Out),
        secondaryArgument
    )
end
local function secondaryCreate(s, secondaryArgument, createFlag)
    return tweenService:Create(
        s,
        TweenInfo.new(createFlag or 0.4, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out),
        secondaryArgument
    )
end
local function alternateCreate(frame, secondaryArgument, createFlag)
    return tweenService:Create(
        frame,
        TweenInfo.new(createFlag or (1661.15 - (909 + 752)), Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
        secondaryArgument
    )
end
local function additionalCreate(createArgument, secondaryArgument, createFlag)
    return tweenService:Create(
        createArgument,
        TweenInfo.new(createFlag or (1223.3 - (109 + 1114)), Enum.EasingStyle.Linear),
        secondaryArgument
    )
end
local function fallbackCreate(frame, secondaryArgument, createFlag)
    return tweenService:Create(
        frame,
        TweenInfo.new(createFlag or (0.5 - 0), Enum.EasingStyle.Sine, Enum.EasingDirection.Out),
        secondaryArgument
    )
end
local textColor3 = Color3.fromRGB(92 + 143, 477 - (6 + 236), 161 + 94)
local capturedTextColor3 = textColor3
local color = Color3.fromRGB(0 + 0, 601 - 346, 314 - 134)
local createFrameFlag = false
local number = 55
local colorSequence = ColorSequence.new({
    ColorSequenceKeypoint.new(0 + 0, Color3.fromRGB(944 - (579 + 110), 20, 20)),
    ColorSequenceKeypoint.new(0.14 + 0, Color3.fromRGB(136 + 119, 120, 427 - (174 + 233))),
    ColorSequenceKeypoint.new(0.28, Color3.fromRGB(712 - 457, 255, 52 - 22)),
    ColorSequenceKeypoint.new(0.42, Color3.fromRGB(9 + 11, 1429 - (663 + 511), 54 + 6)),
    ColorSequenceKeypoint.new(0.57 + 0, Color3.fromRGB(30, 220, 255)),
    ColorSequenceKeypoint.new(0.71, Color3.fromRGB(31 + 19, 188 - 108, 617 - 362)),
    ColorSequenceKeypoint.new(0.85 - 0, Color3.fromRGB(185, 29 + 11, 255)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(24 + 231, 30, 120)),
})
local function alternateNew(textColor3)
    local difference = 722 - (478 + 244)
    local newResult
    local result
    while true do
        local newNumber = 0
        while true do
            if newNumber == 0 then
                if (517 - (440 + 77)) == difference then
                    newResult = secondaryNew(textColor3, 0.08 + 0)
                    result = secondaryNew(textColor3, 0.6 - 0)
                    difference = 1557 - (655 + 901)
                end
                if (1 + 0) == difference then
                    return ColorSequence.new({
                        ColorSequenceKeypoint.new(0, newResult),
                        ColorSequenceKeypoint.new(0.15 - 0, textColor3),
                        ColorSequenceKeypoint.new(0.5, result),
                        ColorSequenceKeypoint.new(0.85, textColor3),
                        ColorSequenceKeypoint.new(3 - 2, newResult),
                    })
                end
                break
            end
        end
    end
end
local createFrameData = {
    { N = "White", C = Color3.fromRGB(547 - 312, 235, 255) },
    { N = "Red", C = Color3.fromRGB(42 + 213, 50, 349 - (176 + 123)) },
    { N = "Orange", C = Color3.fromRGB(255, 61 + 84, 19 + 6) },
    { N = "Gold", C = Color3.fromRGB(70 + 185, 225, 34 + 1) },
    { N = "Green", C = Color3.fromRGB(0, 795 - 540, 175) },
    { N = "Cyan", C = Color3.fromRGB(350 - (306 + 9), 837 - 597, 45 + 210) },
    { N = "Blue", C = Color3.fromRGB(27 + 28, 328 - 213, 255) },
    { N = "Purple", C = Color3.fromRGB(128 + 72, 51 + 4, 66 + 189) },
    { N = "Pink", C = Color3.fromRGB(93 + 162, 164 - 109, 86 + 109) },
    { N = "Rainbow", C = Color3.fromRGB(255, 240 + 15, 944 - (586 + 103)), ["RB"] = true },
}
local updateInstancePropertiesFlag, updateFrameFlag, flag, frameFlag, secondaryCreateFrameFlag =
    true, false, false, false, false
local createFrameText, textFlag, capturedUpdateFrameFlag, textNumber = nil, false, false, tick()
local differenceNumber, sum, updateInstancePropertiesNumber, difference, product =
    0, 0 + 0, 0 - 0, 1488 - (1309 + 179), 0
local secondaryDifferenceNumber, capturedDifferenceNumber, secondaryDifference = 0, tick(), 0 - 0
runService.Heartbeat:Connect(function(textNumber)
    local FlatIdent_89ECE = 0
    local number
    local alternateDifferenceNumber
    local secondaryDifference
    while true do
        if FlatIdent_89ECE == 1 then
            secondaryDifference = nil
            while true do
                if number == 2 then
                    if secondaryDifference >= (0.15 - 0) then
                        local number = 0
                        local secondaryNumber
                        while true do
                            if number == (0 + 0) then
                                secondaryNumber = 0 - 0
                                while true do
                                    if secondaryNumber == (0 - 0) then
                                        differenceNumber = clamp(
                                            floor((secondaryDifferenceNumber / secondaryDifference) + 0.5),
                                            614 - (295 + 314),
                                            368 - 218
                                        )
                                        secondaryDifferenceNumber = 0
                                        secondaryNumber = 1963 - (1300 + 662)
                                    end
                                    if secondaryNumber == (3 - 2) then
                                        local number = 0
                                        while true do
                                            if 1 == number then
                                                secondaryNumber = 2
                                                break
                                            end
                                            if number == 0 then
                                                capturedDifferenceNumber = alternateDifferenceNumber
                                                difference = (
                                                    (difference == (1755 - (1178 + 577))) and differenceNumber
                                                )
                                                    or handleSize(difference, differenceNumber, 0.3 + 0)
                                                number = 1
                                            end
                                        end
                                    end
                                    if secondaryNumber == (5 - 3) then
                                        sum = floor(difference + (1405.5 - (851 + 554)))
                                        break
                                    end
                                end
                                break
                            end
                        end
                    end
                    break
                end
                if number == (0 + 0) then
                    local secondaryNumber = 0
                    while true do
                        if secondaryNumber == 1 then
                            number = 1 - 0
                            break
                        end
                        if secondaryNumber == 0 then
                            secondaryDifferenceNumber += (2 - 1)
                            product = textNumber * 1000
                            secondaryNumber = 1
                        end
                    end
                end
                if number == (303 - (115 + 187)) then
                    local secondaryNumber = 0
                    while true do
                        if secondaryNumber == 1 then
                            number = 2
                            break
                        end
                        if 0 == secondaryNumber then
                            alternateDifferenceNumber = tick()
                            secondaryDifference = alternateDifferenceNumber - capturedDifferenceNumber
                            secondaryNumber = 1
                        end
                    end
                end
            end
            break
        end
        if FlatIdent_89ECE == 0 then
            number = 0 + 0
            alternateDifferenceNumber = nil
            FlatIdent_89ECE = 1
        end
    end
end)
local fogEndData = {}
local function updateFrame(updateFrameFlag)
    capturedUpdateFrameFlag = updateFrameFlag
    if updateFrameFlag then
        local updateFrameNumber = 0 + 0
        while true do
            if updateFrameNumber == (0 + 0) then
                local number = 0
                while true do
                    if 1 == number then
                        updateFrameNumber = 3 - 2
                        break
                    end
                    if number == 0 then
                        fogEndData = {
                            S = lighting.GlobalShadows,
                            F = lighting.FogEnd,
                            B = lighting.Brightness,
                            Q = settings().Rendering.QualityLevel,
                        }
                        lighting.GlobalShadows = false
                        number = 1
                    end
                end
            end
            if 3 == updateFrameNumber then
                for key, item in pairs(game:GetDescendants()) do
                    pcall(function()
                        if
                            item:IsA("ParticleEmitter")
                            or item:IsA("Trail")
                            or item:IsA("Beam")
                            or item:IsA("Fire")
                            or item:IsA("Smoke")
                            or item:IsA("Sparkles")
                        then
                            item.Enabled = false
                        elseif item:IsA("SpotLight") or item:IsA("SurfaceLight") or item:IsA("PointLight") then
                            item.Enabled = false
                        elseif
                            item:IsA("BlurEffect")
                            or item:IsA("SunRaysEffect")
                            or item:IsA("ColorCorrectionEffect")
                            or item:IsA("BloomEffect")
                            or item:IsA("DepthOfFieldEffect")
                        then
                            item.Enabled = false
                        elseif item:IsA("Decal") or item:IsA("Texture") then
                            item.Transparency = 1162 - (160 + 1001)
                        elseif (item:IsA("Part") or item:IsA("MeshPart")) and (item.Material ~= Enum.Material.Neon) then
                            item.Reflectance = 0 + 0
                        end
                    end)
                end
                break
            end
            if updateFrameNumber == 2 then
                local FlatIdent_455BF = 0
                while true do
                    if FlatIdent_455BF == 1 then
                        updateFrameNumber = 900 - (525 + 372)
                        break
                    end
                    if FlatIdent_455BF == 0 then
                        settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
                        pcall(function()
                            local updateFrameNumber = 0
                            local terrain
                            while true do
                                if updateFrameNumber == 2 then
                                    terrain.WaterTransparency = 358 - (237 + 121)
                                    break
                                end
                                if updateFrameNumber == 1 then
                                    terrain.WaterWaveSpeed = 0
                                    terrain.WaterReflectance = 0 - 0
                                    updateFrameNumber = 2
                                end
                                if updateFrameNumber == 0 then
                                    terrain = workspace.Terrain
                                    terrain.WaterWaveSize = 0 + 0
                                    updateFrameNumber = 1
                                end
                            end
                        end)
                        FlatIdent_455BF = 1
                    end
                end
            end
            if updateFrameNumber == (1 - 0) then
                local number = 0
                while true do
                    if number == 1 then
                        updateFrameNumber = 779 - (643 + 134)
                        break
                    end
                    if number == 0 then
                        lighting.FogEnd = 8999999488 - 0
                        lighting.Brightness = 142 - (96 + 46)
                        number = 1
                    end
                end
            end
        end
    elseif fogEndData.S ~= nil then
        local updateFrameNumber = 0 + 0
        while true do
            if updateFrameNumber == (2 - 1) then
                lighting.Brightness = fogEndData.B
                pcall(function()
                    settings().Rendering.QualityLevel = fogEndData.Q
                end)
                break
            end
            if (0 - 0) == updateFrameNumber then
                local number = 0
                while true do
                    if number == 1 then
                        updateFrameNumber = 1
                        break
                    end
                    if number == 0 then
                        lighting.GlobalShadows = fogEndData.S
                        lighting.FogEnd = fogEndData.F
                        number = 1
                    end
                end
            end
        end
    end
end
local updateInstanceProperties, secondaryUpdateFrame, handleFrame, secondaryUpdateInstanceProperties, alternateUpdateInstanceProperties, additionalUpdateInstanceProperties, alternateUpdateFrame, updateInstancePropertiesFrame, handleInstanceProperties, createFrame, handler, secondaryCreateFrame
local updateColorData = {}
local function handleColor(colorArgument)
    local FlatIdent_295EB = 0
    local sum
    while true do
        if FlatIdent_295EB == 0 then
            sum = 0 + 0
            while true do
                if sum == (0 - 0) then
                    table.insert(updateColorData, colorArgument)
                    return colorArgument
                end
            end
            break
        end
    end
end
local frame, secondaryParent, alternateParent, additionalParent, uiStroke, fallbackParent, nestedParent, innerParent, outerParent
local remainder, secondaryRemainder, secondarySum = 0 - 0, 719 - (316 + 403), 0 + 0
runService.RenderStepped:Connect(function(sumNumber)
    secondaryDifference = handleSize(secondaryDifference, sum, clamp(sumNumber * 8, 0 - 0, 1 + 0))
    updateInstancePropertiesNumber = floor(secondaryDifference + 0.5)
    local rotationNumber = (createFrameFlag and number) or (12 - 7)
    for index, item in ipairs(updateColorData) do
        if item and item.Parent then
            item.Rotation = (item.Rotation + (sumNumber * rotationNumber)) % (256 + 104)
        end
    end
    if frame and frame.Visible then
        local sum = 0 + 0
        local quotient
        while true do
            if sum == (6 - 4) then
                alternateParent.Size =
                    UDim2.new(0 - 0, handleSize(18, 53 - 27, quotient), 0 + 0, handleSize(34 - 16, 2 + 24, quotient))
                alternateParent.BackgroundTransparency = handleSize(0.86 - 0, 17.74 - (12 + 5), quotient)
                sum = 3
            end
            if sum == (3 - 2) then
                secondaryParent.Size =
                    UDim2.new(0 - 0, handleSize(21 - 11, 39 - 23, quotient), 0, handleSize(3 + 7, 16, quotient))
                secondaryParent.BackgroundTransparency = handleSize(0.7, 1973.45 - (1656 + 317), quotient)
                sum = 2 + 0
            end
            if sum == (3 + 0) then
                additionalParent.Size =
                    UDim2.new(0, handleSize(10 - 6, 8, quotient), 0 - 0, handleSize(358 - (5 + 349), 37 - 29, quotient))
                uiStroke.Transparency = handleSize(1271.35 - (266 + 1005), 0.1, quotient)
                break
            end
            if sum == 0 then
                remainder = (remainder + (sumNumber * 2)) % (pi * (2 + 0))
                quotient = (sin(remainder) + (3 - 2)) / (2 - 0)
                sum = 1697 - (561 + 1135)
            end
        end
    end
    if fallbackParent and fallbackParent.Visible then
        local number = 0
        local quotient
        while true do
            if number == (1 - 0) then
                nestedParent.Size = UDim2.new(
                    0 - 0,
                    handleSize(10, 18, quotient),
                    1066 - (507 + 559),
                    handleSize(25 - 15, 18, quotient)
                )
                nestedParent.BackgroundTransparency = handleSize(0.65 - 0, 0.38, quotient)
                break
            end
            if number == (388 - (212 + 176)) then
                secondaryRemainder = (secondaryRemainder + (sumNumber * 2)) % (pi * 2)
                quotient = (sin(secondaryRemainder) + 1) / (907 - (250 + 655))
                number = 1
            end
        end
    end
    if textFlag and innerParent and outerParent then
        local difference = 0 - 0
        local quotient
        while true do
            if 0 == difference then
                secondarySum = (secondarySum + (sumNumber * 2)) % (pi * 2)
                quotient = (sin(secondarySum) + (1 - 0)) / 2
                difference = 1 - 0
            end
            if difference == (1958 - (1869 + 87)) then
                outerParent.Size = UDim2.new(
                    0 - 0,
                    handleSize(8, 1915 - (484 + 1417), quotient),
                    0,
                    handleSize(16 - 8, 23 - 9, quotient)
                )
                outerParent.BackgroundTransparency = handleSize(773.55 - (48 + 725), 0.82 - 0, quotient)
                break
            end
            if difference == (2 - 1) then
                local number = 0
                while true do
                    if number == 0 then
                        innerParent.Size = UDim2.new(
                            0 + 0,
                            handleSize(31 - 19, 6 + 14, quotient),
                            0 + 0,
                            handleSize(12, 873 - (152 + 701), quotient)
                        )
                        innerParent.BackgroundTransparency = handleSize(1311.5 - (430 + 881), 0.82 + 0, quotient)
                        number = 1
                    end
                    if number == 1 then
                        difference = 897 - (557 + 338)
                        break
                    end
                end
            end
        end
    end
end)
local function updateFrameColor()
    if createFrameFlag then
        for index, item in ipairs(updateColorData) do
            if item and item.Parent then
                item.Color = colorSequence
            end
        end
    else
        local updateFrameColorNumber = 0
        local color
        while true do
            if updateFrameColorNumber == 0 then
                color = alternateNew(capturedTextColor3)
                for index, item in ipairs(updateColorData) do
                    if item and item.Parent then
                        item.Color = color
                    end
                end
                break
            end
        end
    end
end
local updateFrameNumber, secondaryInstancePropertiesNumber = 98 + 232, 84 - 54
local previousParent = Instance.new("Frame")
previousParent.BackgroundColor3 = Color3.fromRGB(892 - 637, 677 - 422, 549 - 294)
previousParent.BackgroundTransparency = 801.82 - (499 + 302)
previousParent.BorderSizePixel = 866 - (39 + 827)
previousParent.AnchorPoint = Vector2.new(0.5, 0)
previousParent.Position = UDim2.new(0.5 - 0, 0 - 0, 0 - 0, 17 - 5)
previousParent.Size = UDim2.new(0 + 0, updateFrameNumber, 0 - 0, secondaryInstancePropertiesNumber)
previousParent.ZIndex = 16 + 84
previousParent.ClipsDescendants = false
previousParent.Parent = screenGui
Instance.new("UICorner", previousParent).CornerRadius = UDim.new(0 - 0, 120 - (103 + 1))
local secondaryUiStroke = Instance.new("UIStroke", previousParent)
secondaryUiStroke.Color = Color3.fromRGB(809 - (475 + 79), 551 - 296, 816 - 561)
secondaryUiStroke.Thickness = 1.5 + 0
secondaryUiStroke.Transparency = 0.45 + 0
local currentParent = Instance.new("Frame", previousParent)
currentParent.Size = UDim2.new(0, 1523 - (1395 + 108), 0 - 0, 20)
currentParent.AnchorPoint = Vector2.new(1204.5 - (7 + 1197), 0.5 + 0)
currentParent.Position = UDim2.new(0.5, 0 + 0, 319.5 - (27 + 292), 0)
currentParent.BackgroundColor3 = Color3.fromRGB(0 - 0, 0, 0)
currentParent.BackgroundTransparency = 1 - 0
currentParent.BorderSizePixel = 0 - 0
currentParent.ZIndex = 198 - 97
Instance.new("UICorner", currentParent).CornerRadius = UDim.new(1 - 0, 139 - (43 + 96))
local nextParent = Instance.new("UIStroke", currentParent)
nextParent.Color = Color3.fromRGB(1040 - 785, 576 - 321, 212 + 43)
nextParent.Thickness = 1 + 1
nextParent.Transparency = 0.05 - 0
local uiGradient = Instance.new("UIGradient", nextParent)
uiGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0 + 0, Color3.fromRGB(477 - 222, 81 + 174, 255)),
    ColorSequenceKeypoint.new(0.01 + 0, Color3.fromRGB(2006 - (1414 + 337), 2195 - (1642 + 298), 255)),
    ColorSequenceKeypoint.new(0.45 - 0, Color3.fromRGB(733 - 478, 756 - 501, 84 + 171)),
    ColorSequenceKeypoint.new(972.5 - (357 + 615), Color3.fromRGB(179 + 76, 625 - 370, 219 + 36)),
    ColorSequenceKeypoint.new(0.55 + 0, Color3.fromRGB(18 + 237, 161 + 94, 1556 - (384 + 917))),
    ColorSequenceKeypoint.new(697.6 - (128 + 569), Color3.fromRGB(255, 1798 - (1407 + 136), 2142 - (687 + 1200))),
    ColorSequenceKeypoint.new(0.65 - 0, Color3.fromRGB(255, 255, 350 - (9 + 86))),
    ColorSequenceKeypoint.new(421.75 - (275 + 146), Color3.fromRGB(42 + 213, 255, 319 - (29 + 35))),
    ColorSequenceKeypoint.new(0.85 - 0, Color3.fromRGB(627 - 417, 927 - 717, 137 + 73)),
    ColorSequenceKeypoint.new(408.95 - (312 + 96), Color3.fromRGB(156 - 66, 375 - (147 + 138), 989 - (813 + 86))),
    ColorSequenceKeypoint.new(1 - 0, Color3.fromRGB(30, 522 - (18 + 474), 11 + 19)),
})
local textLabel = Instance.new("TextLabel", previousParent)
textLabel.BackgroundTransparency = 3 - 2
textLabel.Size = UDim2.new(1, -(1136 - (860 + 226)), 304 - (121 + 182), 0 + 0)
textLabel.Position = UDim2.new(1240 - (988 + 252), 45, 0 + 0, 0 + 0)
textLabel.Font = Enum.Font.GothamBold
textLabel.Text = "SuperIsland"
textLabel.TextSize = 1980 - (49 + 1921)
textLabel.TextColor3 = Color3.fromRGB(1145 - (223 + 667), 307 - (51 + 1), 438 - 183)
textLabel.TextTransparency = 0.15
textLabel.TextXAlignment = Enum.TextXAlignment.Left
textLabel.ZIndex = 217 - 115
local secondaryTextLabel = Instance.new("TextLabel", previousParent)
secondaryTextLabel.BackgroundTransparency = 1
secondaryTextLabel.Size = UDim2.new(1, -(1175 - (146 + 979)), 1 + 0, 0)
secondaryTextLabel.Position = UDim2.new(0, 650 - (311 + 294), 0 - 0, 1)
secondaryTextLabel.Font = Enum.Font.Gotham
secondaryTextLabel.Text = "Xiaomi"
secondaryTextLabel.TextSize = 7
secondaryTextLabel.TextColor3 = Color3.fromRGB(215, 92 + 123, 1658 - (496 + 947))
secondaryTextLabel.TextTransparency = 0.35
secondaryTextLabel.TextXAlignment = Enum.TextXAlignment.Left
secondaryTextLabel.ZIndex = 1460 - (1233 + 125)
local connection
local secondaryFlag = false
connection = runService.RenderStepped:Connect(function(rotationNumber)
    local sum = 0 + 0
    while true do
        if sum == (0 + 0) then
            if secondaryFlag then
                return
            end
            uiGradient.Rotation = (uiGradient.Rotation + (rotationNumber * (76 + 324))) % (2005 - (963 + 682))
            break
        end
    end
end)
frame = Instance.new("Frame")
frame.BackgroundColor3 = Color3.fromRGB(16 + 2, 1522 - (504 + 1000), 18 + 8)
frame.BackgroundTransparency = 0.12 + 0
frame.BorderSizePixel = 0 + 0
frame.AnchorPoint = Vector2.new(0.5 - 0, 0 + 0)
frame.Position = UDim2.new(0.5 + 0, 182 - (156 + 26), 0, 12)
frame.Size = UDim2.new(0, 17 + 11, 0 - 0, 192 - (149 + 15))
frame.Visible = false
frame.ZIndex = 970 - (890 + 70)
frame.ClipsDescendants = false
frame.Parent = screenGui
Instance.new("UICorner", frame).CornerRadius = UDim.new(118 - (39 + 78), 482 - (14 + 468))
uiStroke = Instance.new("UIStroke", frame)
uiStroke.Color = color
uiStroke.Thickness = 4.5 - 2
uiStroke.Transparency = 0.15 - 0
additionalParent = Instance.new("Frame", frame)
additionalParent.BackgroundColor3 = color
additionalParent.BorderSizePixel = 0
additionalParent.AnchorPoint = Vector2.new(0.5 + 0, 0.5 + 0)
additionalParent.Position = UDim2.new(0.5 + 0, 0, 0.5 + 0, 0 + 0)
additionalParent.Size = UDim2.new(0 - 0, 6 + 0, 0 - 0, 1 + 5)
additionalParent.ZIndex = 62 - (12 + 39)
Instance.new("UICorner", additionalParent).CornerRadius = UDim.new(1, 0 + 0)
secondaryParent = Instance.new("Frame", frame)
secondaryParent.BackgroundColor3 = color
secondaryParent.BackgroundTransparency = 0.62 - 0
secondaryParent.BorderSizePixel = 0 - 0
secondaryParent.AnchorPoint = Vector2.new(0.5 + 0, 0.5 + 0)
secondaryParent.Position = UDim2.new(0.5 - 0, 0, 0.5 + 0, 0)
secondaryParent.Size = UDim2.new(0, 67 - 53, 1710 - (1596 + 114), 36 - 22)
secondaryParent.ZIndex = 10
Instance.new("UICorner", secondaryParent).CornerRadius = UDim.new(714 - (164 + 549), 0)
alternateParent = Instance.new("Frame", frame)
alternateParent.BackgroundColor3 = color
alternateParent.BackgroundTransparency = 0.82
alternateParent.BorderSizePixel = 0
alternateParent.AnchorPoint = Vector2.new(1438.5 - (1059 + 379), 0.5 - 0)
alternateParent.Position = UDim2.new(0.5 + 0, 0 + 0, 392.5 - (145 + 247), 0 + 0)
alternateParent.Size = UDim2.new(0, 22, 0, 22)
alternateParent.ZIndex = 5 + 4
Instance.new("UICorner", alternateParent).CornerRadius = UDim.new(2 - 1, 0)
local textButton = Instance.new("TextButton", frame)
textButton.BackgroundTransparency = 1 + 0
textButton.Size = UDim2.new(1, 0, 1, 0)
textButton.Text = ""
textButton.ZIndex = 11 + 1
textButton.MouseButton1Click:Connect(function()
    alternateUpdateInstanceProperties()
end)
fallbackParent = Instance.new("Frame")
fallbackParent.BackgroundColor3 = Color3.fromRGB(28 - 10, 18, 746 - (254 + 466))
fallbackParent.BackgroundTransparency = 560.12 - (544 + 16)
fallbackParent.BorderSizePixel = 0 - 0
fallbackParent.AnchorPoint = Vector2.new(628.5 - (294 + 334), 0)
fallbackParent.Position = UDim2.new(253.5 - (236 + 17), 0, 0, 6 + 6)
fallbackParent.Size = UDim2.new(0 + 0, 210, 0 - 0, 179 - 141)
fallbackParent.Visible = false
fallbackParent.ZIndex = 10
fallbackParent.ClipsDescendants = false
fallbackParent.Parent = screenGui
Instance.new("UICorner", fallbackParent).CornerRadius = UDim.new(0 + 0, 20)
local sourceParent = Instance.new("UIStroke", fallbackParent)
sourceParent.Color = secondaryNew(capturedTextColor3, 0.2 + 0)
sourceParent.Thickness = 796.5 - (413 + 381)
sourceParent.Transparency = 0.15 + 0
handleColor(Instance.new("UIGradient", sourceParent)).Color = alternateNew(capturedTextColor3)
local imageLabel = Instance.new("ImageLabel", fallbackParent)
imageLabel.BackgroundTransparency = 1 - 0
imageLabel.Size = UDim2.new(0 - 0, 24, 0, 1994 - (582 + 1388))
imageLabel.Position = UDim2.new(0, 11 - 4, 0.5, -(9 + 3))
imageLabel.Image = "rbxassetid://94678517792779"
imageLabel.ZIndex = 375 - (326 + 38)
Instance.new("UICorner", imageLabel).CornerRadius = UDim.new(2 - 1, 0 - 0)
local alternateTextLabel = Instance.new("TextLabel", fallbackParent)
alternateTextLabel.BackgroundTransparency = 621 - (47 + 573)
alternateTextLabel.Size = UDim2.new(1, -85, 1 + 0, 0 - 0)
alternateTextLabel.Position = UDim2.new(0 - 0, 1700 - (1269 + 395), 492 - (76 + 416), 0)
alternateTextLabel.Font = Enum.Font.GothamBold
alternateTextLabel.Text = "nyann os"
alternateTextLabel.TextColor3 = Color3.fromRGB(698 - (319 + 124), 525 - 295, 1037 - (564 + 443))
alternateTextLabel.TextSize = 14
alternateTextLabel.TextXAlignment = Enum.TextXAlignment.Center
alternateTextLabel.ZIndex = 11
local targetParent = Instance.new("Frame", fallbackParent)
targetParent.BackgroundColor3 = color
targetParent.BorderSizePixel = 0 - 0
targetParent.Size = UDim2.new(458 - (337 + 121), 17 - 11, 0 - 0, 1917 - (1261 + 650))
targetParent.AnchorPoint = Vector2.new(0.5, 0.5 + 0)
targetParent.Position = UDim2.new(1 - 0, -22, 1817.5 - (772 + 1045), 0)
targetParent.ZIndex = 2 + 10
Instance.new("UICorner", targetParent).CornerRadius = UDim.new(1, 0)
nestedParent = Instance.new("Frame", fallbackParent)
nestedParent.BackgroundColor3 = color
nestedParent.BackgroundTransparency = 144.55 - (102 + 42)
nestedParent.BorderSizePixel = 0
nestedParent.Size = UDim2.new(1844 - (1524 + 320), 14, 0, 1284 - (1049 + 221))
nestedParent.AnchorPoint = Vector2.new(156.5 - (18 + 138), 0.5)
nestedParent.Position = UDim2.new(2 - 1, -(1124 - (67 + 1035)), 348.5 - (136 + 212), 0 - 0)
nestedParent.ZIndex = 9 + 2
Instance.new("UICorner", nestedParent).CornerRadius = UDim.new(1 + 0, 0)
local parentVariantA = Instance.new("TextButton", fallbackParent)
parentVariantA.BackgroundColor3 = Color3.fromRGB(60, 60, 72)
parentVariantA.BackgroundTransparency = 1604.35 - (240 + 1364)
parentVariantA.BorderSizePixel = 0
parentVariantA.Size = UDim2.new(1082 - (1050 + 32), 78 - 56, 0, 14 + 8)
parentVariantA.AnchorPoint = Vector2.new(1055.5 - (331 + 724), 0.5)
parentVariantA.Position = UDim2.new(1, -(4 + 44), 644.5 - (269 + 375), 725 - (267 + 458))
parentVariantA.Font = Enum.Font.GothamBold
parentVariantA.Text = "+"
parentVariantA.TextColor3 = Color3.fromRGB(67 + 148, 215, 432 - 207)
parentVariantA.TextSize = 833 - (667 + 151)
parentVariantA.AutoButtonColor = false
parentVariantA.ZIndex = 13
Instance.new("UICorner", parentVariantA).CornerRadius = UDim.new(1498 - (1410 + 87), 0)
Instance.new("UIStroke", parentVariantA).Color = Color3.fromRGB(2012 - (1504 + 393), 115, 351 - 221)
parentVariantA.MouseButton1Click:Connect(function()
    additionalUpdateInstanceProperties()
end)
local parentVariantB = Instance.new("Frame")
parentVariantB.BackgroundColor3 = Color3.fromRGB(18, 18, 26)
parentVariantB.BackgroundTransparency = 2 - 1
parentVariantB.BorderSizePixel = 796 - (461 + 335)
parentVariantB.AnchorPoint = Vector2.new(0.5 + 0, 1761 - (1730 + 31))
parentVariantB.Position = UDim2.new(0.5, 0, 1667 - (728 + 939), 12)
parentVariantB.Size = UDim2.new(0 - 0, updateFrameNumber, 0, secondaryInstancePropertiesNumber)
parentVariantB.ZIndex = 20 - 10
parentVariantB.ClipsDescendants = true
parentVariantB.Parent = screenGui
parentVariantB.Visible = false
Instance.new("UICorner", parentVariantB).CornerRadius = UDim.new(0, 16)
local parentVariantC = Instance.new("UIStroke", parentVariantB)
parentVariantC.Color = secondaryNew(capturedTextColor3, 0.2)
parentVariantC.Thickness = 4 - 2
parentVariantC.Transparency = 1069 - (138 + 930)
local colorResult = handleColor(Instance.new("UIGradient", parentVariantC))
colorResult.Color = alternateNew(capturedTextColor3)
local uiListLayout = Instance.new("UIListLayout", parentVariantB)
uiListLayout.FillDirection = Enum.FillDirection.Horizontal
uiListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
uiListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
local function alternateCreateFrame(createFrameText, layoutOrder)
    local createFrameNumber = 0 + 0
    local parent
    local textLabel
    local secondaryTextLabel
    while true do
        if createFrameNumber == (3 + 0) then
            textLabel.Text = createFrameText
            textLabel.TextColor3 = Color3.fromRGB(150, 133 + 22, 180)
            textLabel.TextSize = 28 - 21
            createFrameNumber = 1770 - (459 + 1307)
        end
        if createFrameNumber == (1878 - (474 + 1396)) then
            return secondaryTextLabel
        end
        if createFrameNumber == 5 then
            secondaryTextLabel.BackgroundTransparency = 1
            secondaryTextLabel.Size = UDim2.new(1 - 0, 0 + 0, 0 + 0, 40 - 26)
            secondaryTextLabel.Position = UDim2.new(0 + 0, 0 - 0, 0, 12)
            createFrameNumber = 6
        end
        if createFrameNumber == (30 - 23) then
            local number = 0
            while true do
                if number == (592 - (562 + 29)) then
                    secondaryTextLabel.ZIndex = 10 + 1
                    createFrameNumber = 8
                    break
                end
                if number == 0 then
                    local createFrameNumber = 0
                    while true do
                        if createFrameNumber == 0 then
                            secondaryTextLabel.TextSize = 11
                            secondaryTextLabel.TextXAlignment = Enum.TextXAlignment.Center
                            createFrameNumber = 1
                        end
                        if createFrameNumber == 1 then
                            number = 1420 - (374 + 1045)
                            break
                        end
                    end
                end
            end
        end
        if (0 + 0) == createFrameNumber then
            local sum = 0 - 0
            while true do
                if sum == (639 - (448 + 190)) then
                    parent.LayoutOrder = layoutOrder
                    createFrameNumber = 1
                    break
                end
                if sum == (0 + 0) then
                    parent = Instance.new("Frame", parentVariantB)
                    parent.BackgroundTransparency = 1 + 0
                    sum = 1 + 0
                end
            end
        end
        if createFrameNumber == (3 - 2) then
            local number = 0
            local difference
            while true do
                if number == 0 then
                    difference = 0 - 0
                    while true do
                        if difference == (1494 - (1307 + 187)) then
                            local createFrameNumber = 0
                            while true do
                                if 0 == createFrameNumber then
                                    parent.Size = UDim2.new(0 - 0, 58, 2 - 1, 0 - 0)
                                    textLabel = Instance.new("TextLabel", parent)
                                    createFrameNumber = 1
                                end
                                if createFrameNumber == 1 then
                                    difference = 1
                                    break
                                end
                            end
                        end
                        if difference == (684 - (232 + 451)) then
                            textLabel.BackgroundTransparency = 1 + 0
                            createFrameNumber = 2 + 0
                            break
                        end
                    end
                    break
                end
            end
        end
        if (570 - (510 + 54)) == createFrameNumber then
            local FlatIdent_5477B = 0
            while true do
                if 1 == FlatIdent_5477B then
                    secondaryTextLabel.TextColor3 = capturedTextColor3
                    createFrameNumber = 13 - 6
                    break
                end
                if FlatIdent_5477B == 0 then
                    secondaryTextLabel.Font = Enum.Font.GothamBold
                    secondaryTextLabel.Text = "---"
                    FlatIdent_5477B = 1
                end
            end
        end
        if createFrameNumber == 2 then
            local number = 0
            while true do
                if number == 0 then
                    textLabel.Size = UDim2.new(1, 36 - (13 + 23), 0 - 0, 10)
                    textLabel.Position = UDim2.new(0 - 0, 0, 0, 3 - 1)
                    number = 1
                end
                if number == 1 then
                    textLabel.Font = Enum.Font.Gotham
                    createFrameNumber = 1091 - (830 + 258)
                    break
                end
            end
        end
        if createFrameNumber == (14 - 10) then
            local number = 0
            while true do
                if number == 1 then
                    secondaryTextLabel = Instance.new("TextLabel", parent)
                    createFrameNumber = 5 + 0
                    break
                end
                if number == 0 then
                    textLabel.TextXAlignment = Enum.TextXAlignment.Center
                    textLabel.ZIndex = 7 + 4
                    number = 1
                end
            end
        end
    end
end
local function additionalCreateFrame(layoutOrder)
    local createFrameNumber = 0
    local sum
    local frame
    while true do
        if createFrameNumber == 0 then
            sum = 0
            frame = nil
            createFrameNumber = 1
        end
        if createFrameNumber == 1 then
            while true do
                if sum == (1443 - (860 + 581)) then
                    frame.Size = UDim2.new(0 - 0, 1 + 0, 241 - (237 + 4), 37 - 21)
                    frame.LayoutOrder = layoutOrder
                    break
                end
                if (2 - 1) == sum then
                    local createFrameNumber = 0
                    while true do
                        if createFrameNumber == 1 then
                            sum = 2 + 0
                            break
                        end
                        if createFrameNumber == 0 then
                            frame.BackgroundTransparency = 0.45 - 0
                            frame.BorderSizePixel = 0
                            createFrameNumber = 1
                        end
                    end
                end
                if sum == (0 + 0) then
                    frame = Instance.new("Frame", parentVariantB)
                    frame.BackgroundColor3 = Color3.fromRGB(415 - 305, 48 + 62, 135)
                    sum = 1 + 0
                end
            end
            break
        end
    end
end
local dataResult = alternateCreateFrame("PING", 1427 - (85 + 1341))
additionalCreateFrame(3 - 1)
local textResult = alternateCreateFrame("LOSS", 3)
additionalCreateFrame(11 - 7)
local result = alternateCreateFrame("FPS", 377 - (45 + 327))
local parentVariantD = Instance.new("Frame", parentVariantB)
parentVariantD.BackgroundColor3 = Color3.fromRGB(59 - 27, 534 - (444 + 58), 20 + 25)
parentVariantD.BorderSizePixel = 0 + 0
parentVariantD.Size = UDim2.new(0 + 0, 127 - 83, 0, 3)
parentVariantD.LayoutOrder = 1738 - (64 + 1668)
parentVariantD.ZIndex = 11
Instance.new("UICorner", parentVariantD).CornerRadius = UDim.new(1974 - (1227 + 746), 0 - 0)
local parentVariantE = Instance.new("Frame", parentVariantD)
parentVariantE.BorderSizePixel = 0
parentVariantE.BackgroundColor3 = color
parentVariantE.Size = UDim2.new(0 - 0, 494 - (415 + 79), 1 + 0, 491 - (142 + 349))
parentVariantE.ZIndex = 6 + 6
Instance.new("UICorner", parentVariantE).CornerRadius = UDim.new(1 - 0, 0 + 0)
Instance.new("UIGradient", parentVariantE).Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0 - 0, Color3.fromRGB(2119 - (1710 + 154), 358 - (200 + 118), 16 + 24)),
    ColorSequenceKeypoint.new(0.3 - 0, Color3.fromRGB(255, 230, 27 + 3)),
    ColorSequenceKeypoint.new(0.6 + 0, Color3.fromRGB(0 + 0, 41 + 214, 368 - 198)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(1290 - (363 + 887), 240, 255)),
})
additionalCreateFrame(11 - 4)
local function createTextButtonFrame(layoutOrder)
    local number = 0
    local sum
    local frame
    while true do
        if number == 1 then
            while true do
                if sum == (1 + 1) then
                    return frame
                end
                if sum == 0 then
                    local number = 0
                    while true do
                        if number == 0 then
                            frame = Instance.new("Frame", parentVariantB)
                            frame.BackgroundTransparency = 2 - 1
                            number = 1
                        end
                        if number == 1 then
                            sum = 1 + 0
                            break
                        end
                    end
                end
                if sum == (1665 - (674 + 990)) then
                    frame.Size = UDim2.new(0 + 0, 18, 0 + 0, 28 - 10)
                    frame.LayoutOrder = layoutOrder
                    sum = 1057 - (507 + 548)
                end
            end
            break
        end
        if number == 0 then
            sum = 0 - 0
            frame = nil
            number = 1
        end
    end
end
local function createTextButton(createTextButton, sizeNumber, layoutOrder, textButtonCallback)
    local createTextButtonNumber = 837 - (289 + 548)
    local parent
    local textButton
    while true do
        if createTextButtonNumber == (1818 - (821 + 997)) then
            local number = 0
            while true do
                if number == 0 then
                    parent = createTextButtonFrame(layoutOrder)
                    textButton = Instance.new("TextButton", parent)
                    number = 1
                end
                if number == 1 then
                    textButton.BackgroundColor3 = Color3.fromRGB(320 - (195 + 60), 18 + 47, 80)
                    createTextButtonNumber = 1502 - (251 + 1250)
                    break
                end
            end
        end
        if createTextButtonNumber == (2 - 1) then
            textButton.BackgroundTransparency = 0.45 + 0
            textButton.BorderSizePixel = 1032 - (809 + 223)
            textButton.Size = UDim2.new(0 - 0, sizeNumber, 0 - 0, sizeNumber)
            createTextButtonNumber = 2
        end
        if 3 == createTextButtonNumber then
            local FlatIdent_5431F = 0
            while true do
                if FlatIdent_5431F == 0 then
                    textButton.Text = createTextButton
                    textButton.TextColor3 = Color3.fromRGB(727 - 507, 163 + 57, 124 + 111)
                    FlatIdent_5431F = 1
                end
                if FlatIdent_5431F == 1 then
                    textButton.TextSize = sizeNumber - (619 - (14 + 603))
                    createTextButtonNumber = 133 - (118 + 11)
                    break
                end
            end
        end
        if 2 == createTextButtonNumber then
            textButton.AnchorPoint = Vector2.new(0.5 + 0, 0.5 + 0)
            textButton.Position = UDim2.new(0.5, 0 - 0, 949.5 - (551 + 398), 0)
            textButton.Font = Enum.Font.GothamBold
            createTextButtonNumber = 2 + 1
        end
        if 5 == createTextButtonNumber then
            Instance.new("UIStroke", textButton).Color = Color3.fromRGB(41 + 74, 115, 110 + 25)
            textButton.MouseEnter:Connect(function()
                secondaryCreate(
                    textButton,
                    { ["BackgroundColor3"] = Color3.fromRGB(334 - 244, 207 - 117, 36 + 74), ["BackgroundTransparency"] = 0.2 },
                    0.2 - 0
                ):Play()
            end)
            textButton.MouseLeave:Connect(function()
                secondaryCreate(
                    textButton,
                    {
                        ["BackgroundColor3"] = Color3.fromRGB(18 + 47, 154 - (40 + 49), 304 - 224),
                        ["BackgroundTransparency"] = 0.45,
                    },
                    490.3 - (99 + 391)
                ):Play()
            end)
            createTextButtonNumber = 5 + 1
        end
        if createTextButtonNumber == 6 then
            local createTextButtonNumber = 0
            while true do
                if createTextButtonNumber == 0 then
                    textButton.MouseButton1Click:Connect(function()
                        local createTextButtonNumber = 0 - 0
                        local size
                        while true do
                            if createTextButtonNumber == (0 - 0) then
                                local number = 0
                                local sum
                                while true do
                                    if number == 0 then
                                        sum = 0
                                        while true do
                                            if sum == 1 then
                                                createTextButtonNumber = 1
                                                break
                                            end
                                            if sum == 0 then
                                                size = textButton.Size
                                                alternateCreate(
                                                    textButton,
                                                    {
                                                        ["Size"] = UDim2.new(
                                                            0 + 0,
                                                            sizeNumber - (5 - 3),
                                                            1604 - (1032 + 572),
                                                            sizeNumber - (419 - (203 + 214))
                                                        ),
                                                    },
                                                    1817.06 - (568 + 1249)
                                                ):Play()
                                                sum = 1 + 0
                                            end
                                        end
                                        break
                                    end
                                end
                            end
                            if createTextButtonNumber == (2 - 1) then
                                task.delay(0.06, function()
                                    create(textButton, { ["Size"] = size }, 0.25 - 0):Play()
                                end)
                                textButtonCallback()
                                break
                            end
                        end
                    end)
                    return textButton
                end
            end
        end
        if createTextButtonNumber == 4 then
            local number = 0
            local difference
            while true do
                if number == 0 then
                    difference = 1306 - (913 + 393)
                    while true do
                        if difference == (0 - 0) then
                            local createTextButtonNumber = 0
                            while true do
                                if createTextButtonNumber == 0 then
                                    textButton.AutoButtonColor = false
                                    textButton.ZIndex = 15 - 4
                                    createTextButtonNumber = 1
                                end
                                if createTextButtonNumber == 1 then
                                    difference = 411 - (269 + 141)
                                    break
                                end
                            end
                        end
                        if 1 == difference then
                            Instance.new("UICorner", textButton).CornerRadius = UDim.new(2 - 1, 1981 - (362 + 1619))
                            createTextButtonNumber = 1630 - (950 + 675)
                            break
                        end
                    end
                    break
                end
            end
        end
    end
end
local function createImageButton(layoutOrder, image, imageButtonCallback)
    local createImageButtonNumber = 0 + 0
    local parent
    local imageButton
    while true do
        local number = 0
        while true do
            if (1179 - (216 + 963)) == number then
                local secondaryCreateImageButtonNumber = 0
                while true do
                    if secondaryCreateImageButtonNumber == 0 then
                        if createImageButtonNumber == (1289 - (485 + 802)) then
                            imageButton.ScaleType = Enum.ScaleType.Fit
                            imageButton.ZIndex = 570 - (432 + 127)
                            imageButton.MouseEnter:Connect(function()
                                secondaryCreate(
                                    imageButton,
                                    { ["ImageColor3"] = capturedTextColor3 },
                                    1073.2 - (1065 + 8)
                                ):Play()
                            end)
                            imageButton.MouseLeave:Connect(function()
                                secondaryCreate(
                                    imageButton,
                                    { ["ImageColor3"] = Color3.fromRGB(175, 100 + 80, 1801 - (635 + 966)) },
                                    0.3 + 0
                                ):Play()
                            end)
                            createImageButtonNumber = 3
                        end
                        if 3 == createImageButtonNumber then
                            local FlatIdent_5724B = 0
                            local createImageButtonNumber
                            while true do
                                if 0 == FlatIdent_5724B then
                                    createImageButtonNumber = 42 - (5 + 37)
                                    while true do
                                        if createImageButtonNumber == (0 - 0) then
                                            imageButton.MouseButton1Click:Connect(function()
                                                imageButtonCallback()
                                            end)
                                            return imageButton
                                        end
                                    end
                                    break
                                end
                            end
                        end
                        secondaryCreateImageButtonNumber = 1
                    end
                    if secondaryCreateImageButtonNumber == 1 then
                        number = 1
                        break
                    end
                end
            end
            if number == (1 + 0) then
                if createImageButtonNumber == 1 then
                    imageButton.AnchorPoint = Vector2.new(0.5, 0.5 - 0)
                    imageButton.Position = UDim2.new(0.5 + 0, 0, 0.5 - 0, 0 - 0)
                    imageButton.Image = image
                    imageButton.ImageColor3 = Color3.fromRGB(330 - 155, 430 - 250, 144 + 56)
                    createImageButtonNumber = 531 - (318 + 211)
                end
                if createImageButtonNumber == (0 - 0) then
                    local number = 0
                    while true do
                        if number == 1 then
                            imageButton.BackgroundTransparency = 1
                            imageButton.Size = UDim2.new(0, 1602 - (963 + 624), 0 + 0, 15)
                            number = 2
                        end
                        if 0 == number then
                            parent = createTextButtonFrame(layoutOrder)
                            imageButton = Instance.new("ImageButton", parent)
                            number = 1
                        end
                        if 2 == number then
                            createImageButtonNumber = 847 - (518 + 328)
                            break
                        end
                    end
                end
                break
            end
        end
    end
end
createTextButton("-", 37 - 21, 12 - 4, function()
    secondaryUpdateInstanceProperties()
end)
additionalCreateFrame(326 - (301 + 16))
createTextButton("▼", 46 - 30, 10, function()
    updateInstancePropertiesFrame()
end)
additionalCreateFrame(11)
createImageButton(33 - 21, "rbxassetid://10734950309", function()
    if frameFlag then
        handleInstanceProperties()
    else
        local number = 0
        while true do
            if number == 0 then
                createFrameText = nil
                createFrame()
                break
            end
        end
    end
end)
additionalCreateFrame(13)
createImageButton(14, "rbxassetid://10734900215", function()
    if secondaryCreateFrameFlag then
        handler()
    else
        local number = 0
        local difference
        local sum
        while true do
            if number == 0 then
                difference = 0 - 0
                sum = nil
                number = 1
            end
            if number == 1 then
                while true do
                    if difference == (0 + 0) then
                        sum = 0 + 0
                        while true do
                            if sum == (0 - 0) then
                                createFrameText = nil
                                secondaryCreateFrame()
                                break
                            end
                        end
                        break
                    end
                end
                break
            end
        end
    end
end)
local parentVariantF = Instance.new("Frame", parentVariantB)
parentVariantF.BackgroundTransparency = 1
parentVariantF.Size = UDim2.new(0 + 0, 15, 0 + 0, 47 - 32)
parentVariantF.ZIndex = 4 + 8
local secondaryImageLabel = Instance.new("ImageLabel", parentVariantF)
secondaryImageLabel.BackgroundTransparency = 1
secondaryImageLabel.Size = UDim2.new(1020 - (829 + 190), 0 - 0, 1 - 0, 0)
secondaryImageLabel.ZIndex = 16 - 4
secondaryImageLabel.Image = "rbxassetid://10888954874"
secondaryImageLabel.ImageColor3 = Color3.fromRGB(633 - 378, 10 + 30, 14 + 26)
function secondaryUpdateFrame()
    local updateFrameNumber = 0 - 0
    while true do
        if updateFrameNumber == (0 + 0) then
            secondaryImageLabel.Image = (updateInstancePropertiesFlag and "rbxassetid://10888954874")
                or "rbxassetid://10888954986"
            secondaryImageLabel.ImageColor3 = (
                updateInstancePropertiesFlag and Color3.fromRGB(255, 653 - (520 + 93), 40)
            ) or Color3.fromRGB(276 - (259 + 17), 255, 180)
            break
        end
    end
end
local alternateSum = 3 + 43
local parentVariantG = Instance.new("Frame")
parentVariantG.BackgroundColor3 = Color3.fromRGB(7 + 11, 18, 87 - 61)
parentVariantG.BackgroundTransparency = 0.18
parentVariantG.BorderSizePixel = 0
parentVariantG.AnchorPoint = Vector2.new(0.5, 0)
parentVariantG.Position = UDim2.new(591.5 - (396 + 195), 0 - 0, 0, alternateSum)
parentVariantG.Size = UDim2.new(0, updateFrameNumber, 1761 - (440 + 1321), 1829 - (1059 + 770))
parentVariantG.ZIndex = 46 - 36
parentVariantG.ClipsDescendants = true
parentVariantG.Visible = false
parentVariantG.Parent = screenGui
Instance.new("UICorner", parentVariantG).CornerRadius = UDim.new(0, 559 - (424 + 121))
local parentVariantH = Instance.new("UIStroke", parentVariantG)
parentVariantH.Color = secondaryNew(capturedTextColor3, 0.2 + 0)
parentVariantH.Thickness = 1349 - (641 + 706)
parentVariantH.Transparency = 0.25
local secondaryColorResult = handleColor(Instance.new("UIGradient", parentVariantH))
secondaryColorResult.Color = alternateNew(capturedTextColor3)
local function createTextLabel(createTextLabelArgument, secondaryArgument, textSize, createTextLabelFlag)
    local createTextLabelNumber = 0
    local textLabel
    while true do
        local FlatIdent_7126B = 0
        local sum
        while true do
            if 0 == FlatIdent_7126B then
                sum = 0 + 0
                while true do
                    if 0 == sum then
                        local number = 0
                        while true do
                            if number == 0 then
                                if (444 - (249 + 191)) == createTextLabelNumber then
                                    textLabel.ZIndex = 11
                                    return textLabel
                                end
                                if createTextLabelNumber == (4 - 3) then
                                    local FlatIdent_7517F = 0
                                    while true do
                                        if FlatIdent_7517F == 1 then
                                            createTextLabelNumber = 1 + 1
                                            break
                                        end
                                        if 0 == FlatIdent_7517F then
                                            textLabel.Size = UDim2.new(1 + 0, -(77 - 57), 0, secondaryArgument)
                                            textLabel.Position =
                                                UDim2.new(0, 10, 427 - (183 + 244), createTextLabelArgument)
                                            FlatIdent_7517F = 1
                                        end
                                    end
                                end
                                number = 1
                            end
                            if number == 1 then
                                sum = 731 - (434 + 296)
                                break
                            end
                        end
                    end
                    if (5 - 3) == sum then
                        if createTextLabelNumber == (512 - (169 + 343)) then
                            local number = 0
                            while true do
                                if number == 0 then
                                    textLabel = Instance.new("TextLabel", parentVariantG)
                                    textLabel.BackgroundTransparency = 1 + 0
                                    number = 1
                                end
                                if number == 1 then
                                    createTextLabelNumber = 1 - 0
                                    break
                                end
                            end
                        end
                        break
                    end
                    if sum == (2 - 1) then
                        local number = 0
                        while true do
                            if number == 1 then
                                sum = 2
                                break
                            end
                            if 0 == number then
                                if createTextLabelNumber == 2 then
                                    textLabel.Font = (createTextLabelFlag and Enum.Font.GothamBold) or Enum.Font.Gotham
                                    textLabel.TextColor3 = Color3.fromRGB(123 + 27, 439 - 284, 180)
                                    createTextLabelNumber = 3
                                end
                                if createTextLabelNumber == 3 then
                                    local number = 0
                                    while true do
                                        if number == 0 then
                                            textLabel.TextSize = textSize
                                            textLabel.TextXAlignment = Enum.TextXAlignment.Left
                                            number = 1
                                        end
                                        if 1 == number then
                                            createTextLabelNumber = 1127 - (651 + 472)
                                            break
                                        end
                                    end
                                end
                                number = 1
                            end
                        end
                    end
                end
                break
            end
        end
    end
end
local secondaryDataResult = createTextLabel(7 + 1, 7 + 7, 12 - 2, true)
secondaryDataResult.TextColor3 = capturedTextColor3
local secondaryTextResult = createTextLabel(507 - (397 + 86), 888 - (423 + 453), 1 + 8, false)
secondaryTextResult.Text = "Server: ..."
local alternateTextResult = createTextLabel(6 + 32, 12, 8 + 1, false)
alternateTextResult.Text = "Players: 0/0"
local additionalTextResult = createTextLabel(52, 12, 8 + 1, false)
additionalTextResult.Text = "RAM: 0MB"
local sizeNumber, alternateInstancePropertiesNumber, additionalInstancePropertiesNumber, positionNumber, fallbackUpdateInstancePropertiesNumber =
    300, 50 + 5, 1310 - (50 + 1140), 200, 80
local numbers, updateInstancePropertiesData, sums, numberData = {}, {}, {}, {}
for index = 1 + 0, fallbackUpdateInstancePropertiesNumber do
    local sum = 0
    while true do
        if sum == 0 then
            local number = 0
            while true do
                if 1 == number then
                    sum = 1 + 0
                    break
                end
                if number == 0 then
                    numbers[index] = 0
                    updateInstancePropertiesData[index] = 0
                    number = 1
                end
            end
        end
        if sum == (1 + 0) then
            sums[index] = 0
            numberData[index] = 0 - 0
            break
        end
    end
end
local nestedUpdateInstancePropertiesNumber = 44 + 16
local innerUpdateInstancePropertiesNumber = 596.35 - (157 + 439)
local parentVariantI = Instance.new("Frame", parentVariantG)
parentVariantI.BackgroundColor3 = Color3.fromRGB(12, 20 - 8, 20)
parentVariantI.BackgroundTransparency = 0.03
parentVariantI.Size = UDim2.new(0, sizeNumber, 0, alternateInstancePropertiesNumber + 22)
parentVariantI.Position = UDim2.new(0.5, -sizeNumber / (6 - 4), 0 - 0, 984 - (782 + 136))
parentVariantI.ZIndex = 866 - (112 + 743)
parentVariantI.ClipsDescendants = true
Instance.new("UICorner", parentVariantI).CornerRadius = UDim.new(1171 - (1026 + 145), 2 + 6)
local parentVariantJ = Instance.new("UIStroke", parentVariantI)
parentVariantJ.Color = secondaryNew(capturedTextColor3, 718.2 - (493 + 225))
parentVariantJ.Thickness = 3.5 - 2
parentVariantJ.Transparency = 0.35 + 0
handleColor(Instance.new("UIGradient", parentVariantJ)).Color = alternateNew(capturedTextColor3)
for index = 0 - 0, 4 do
    local sum = 0 + 0
    local frame
    while true do
        if sum == 0 then
            local difference = 0 - 0
            while true do
                if difference == (0 + 0) then
                    frame = Instance.new("Frame", parentVariantI)
                    frame.BorderSizePixel = 0 - 0
                    difference = 1596 - (210 + 1385)
                end
                if difference == (1690 - (1201 + 488)) then
                    sum = 1
                    break
                end
            end
        end
        if sum == (1 + 0) then
            frame.BackgroundColor3 = Color3.fromRGB(62 - 27, 62 - 27, 635 - (352 + 233))
            frame.BackgroundTransparency = 0.35 - 0
            sum = 2 + 0
        end
        if sum == (5 - 3) then
            frame.Position =
                UDim2.new(574 - (489 + 85), 0, 1501 - (277 + 1224), (alternateInstancePropertiesNumber / 4) * index)
            frame.Size = UDim2.new(1494 - (663 + 830), 0 + 0, 0, 2 - 1)
            sum = 3
        end
        if sum == (878 - (461 + 414)) then
            frame.ZIndex = 11
            break
        end
    end
end
local secondaryProduct = alternateInstancePropertiesNumber * ((1 + 0) - (60 / additionalInstancePropertiesNumber))
local secondaryFrame = Instance.new("Frame", parentVariantI)
secondaryFrame.BorderSizePixel = 0 + 0
secondaryFrame.BackgroundColor3 = Color3.fromRGB(25 + 230, 227 + 3, 30)
secondaryFrame.BackgroundTransparency = 250.55 - (172 + 78)
secondaryFrame.Position = UDim2.new(0 - 0, 0 + 0, 0 - 0, secondaryProduct)
secondaryFrame.Size = UDim2.new(1 + 0, 0 + 0, 0 - 0, 1 - 0)
secondaryFrame.ZIndex = 3 + 8
local additionalTextLabel = Instance.new("TextLabel", parentVariantI)
additionalTextLabel.BackgroundTransparency = 1 + 0
additionalTextLabel.Position = UDim2.new(1 + 0, -22, 0 - 0, secondaryProduct - (18 - 10))
additionalTextLabel.Size = UDim2.new(0, 7 + 13, 0 + 0, 10)
additionalTextLabel.Font = Enum.Font.GothamBold
additionalTextLabel.Text = "60"
additionalTextLabel.TextSize = 7
additionalTextLabel.TextColor3 = Color3.fromRGB(702 - (133 + 314), 40 + 190, 243 - (199 + 14))
additionalTextLabel.TextTransparency = 0.25
additionalTextLabel.TextXAlignment = Enum.TextXAlignment.Right
additionalTextLabel.ZIndex = 42 - 30
local alternateProduct = alternateInstancePropertiesNumber
    * ((1550 - (647 + 902)) - ((90 - 60) / additionalInstancePropertiesNumber))
local alternateFrame = Instance.new("Frame", parentVariantI)
alternateFrame.BorderSizePixel = 233 - (85 + 148)
alternateFrame.BackgroundColor3 = Color3.fromRGB(1544 - (426 + 863), 45, 210 - 165)
alternateFrame.BackgroundTransparency = 1654.55 - (873 + 781)
alternateFrame.Position = UDim2.new(0 - 0, 0 - 0, 0, alternateProduct)
alternateFrame.Size = UDim2.new(1 + 0, 0, 0 - 0, 1 - 0)
alternateFrame.ZIndex = 11
local fallbackTextLabel = Instance.new("TextLabel", parentVariantI)
fallbackTextLabel.BackgroundTransparency = 1
fallbackTextLabel.Position = UDim2.new(2 - 1, -22, 1947 - (414 + 1533), alternateProduct - (7 + 1))
fallbackTextLabel.Size = UDim2.new(555 - (443 + 112), 1499 - (888 + 591), 0 - 0, 10)
fallbackTextLabel.Font = Enum.Font.GothamBold
fallbackTextLabel.Text = "30"
fallbackTextLabel.TextSize = 1 + 6
fallbackTextLabel.TextColor3 = Color3.fromRGB(960 - 705, 45, 18 + 27)
fallbackTextLabel.TextTransparency = 0.25 + 0
fallbackTextLabel.TextXAlignment = Enum.TextXAlignment.Right
fallbackTextLabel.ZIndex = 2 + 10
local sizeData, visibleData, positionData, rotationData = {}, {}, {}, {}
for index = 1 - 0, fallbackUpdateInstancePropertiesNumber - (1 - 0) do
    local sum = 0
    local frame
    local secondaryFrame
    local alternateFrame
    local additionalFrame
    while true do
        if sum == 3 then
            local number = 0
            while true do
                if number == 2 then
                    alternateFrame.AnchorPoint = Vector2.new(0 - 0, 0.5 + 0)
                    alternateFrame.Size = UDim2.new(486 - (68 + 418), 0 - 0, 0, 1.5 - 0)
                    number = 3
                end
                if number == 0 then
                    alternateFrame = Instance.new("Frame", parentVariantI)
                    alternateFrame.BorderSizePixel = 1678 - (136 + 1542)
                    number = 1
                end
                if number == 1 then
                    alternateFrame.BackgroundColor3 = Color3.fromRGB(836 - 581, 45, 45)
                    alternateFrame.ZIndex = 14 + 0
                    number = 2
                end
                if number == 3 then
                    sum = 4
                    break
                end
            end
        end
        if sum == (5 + 0) then
            additionalFrame.AnchorPoint = Vector2.new(1092 - (770 + 322), 0.5)
            additionalFrame.Size = UDim2.new(0, 0 + 0, 0, 1 + 0)
            additionalFrame.BackgroundTransparency = 0.3
            additionalFrame.Visible = false
            rotationData[index] = additionalFrame
            break
        end
        if sum == (0 + 0) then
            local number = 0
            while true do
                if 0 == number then
                    frame = Instance.new("Frame", parentVariantI)
                    frame.BorderSizePixel = 0
                    number = 1
                end
                if number == 2 then
                    frame.ZIndex = 43 - 31
                    frame.AnchorPoint = Vector2.new(0 + 0, 0.5)
                    number = 3
                end
                if number == 3 then
                    sum = 1 - 0
                    break
                end
                if number == 1 then
                    frame.BackgroundColor3 = Color3.fromRGB(364 - 109, 45, 86 - 41)
                    frame.BackgroundTransparency = 0.65 - 0
                    number = 2
                end
            end
        end
        if (1 + 0) == sum then
            frame.Size = UDim2.new(0 + 0, 0 + 0, 0 - 0, 8 - 2)
            frame.Visible = false
            sizeData[index] = frame
            secondaryFrame = Instance.new("Frame", parentVariantI)
            secondaryFrame.BorderSizePixel = 0 + 0
            secondaryFrame.BackgroundColor3 = Color3.fromRGB(138 - 108, 230, 842 - 587)
            sum = 1 + 1
        end
        if sum == (9 - 7) then
            secondaryFrame.BackgroundTransparency = 0.75
            secondaryFrame.ZIndex = 11
            secondaryFrame.AnchorPoint = Vector2.new(831 - (762 + 69), 0.5)
            secondaryFrame.Size = UDim2.new(0 - 0, 0, 0 + 0, 3 + 1)
            secondaryFrame.Visible = false
            visibleData[index] = secondaryFrame
            sum = 7 - 4
        end
        if sum == (2 + 2) then
            local number = 0
            while true do
                if number == 2 then
                    additionalFrame.BackgroundColor3 = Color3.fromRGB(116 - 86, 230, 412 - (8 + 149))
                    additionalFrame.ZIndex = 1333 - (1199 + 121)
                    number = 3
                end
                if number == 1 then
                    additionalFrame = Instance.new("Frame", parentVariantI)
                    additionalFrame.BorderSizePixel = 0 + 0
                    number = 2
                end
                if number == 3 then
                    sum = 8 - 3
                    break
                end
                if number == 0 then
                    alternateFrame.Visible = false
                    positionData[index] = alternateFrame
                    number = 1
                end
            end
        end
    end
end
local parentVariantK = Instance.new("Frame", parentVariantI)
parentVariantK.BorderSizePixel = 0 - 0
parentVariantK.BackgroundColor3 = Color3.fromRGB(255, 21 + 29, 178 - 128)
parentVariantK.ZIndex = 37 - 21
parentVariantK.AnchorPoint = Vector2.new(0.5 + 0, 1807.5 - (518 + 1289))
parentVariantK.Size = UDim2.new(0, 8 - 3, 0 + 0, 5)
Instance.new("UICorner", parentVariantK).CornerRadius = UDim.new(1, 0 - 0)
innerParent = Instance.new("Frame", parentVariantI)
innerParent.BorderSizePixel = 0
innerParent.BackgroundColor3 = Color3.fromRGB(188 + 67, 519 - (304 + 165), 50)
innerParent.BackgroundTransparency = 0.65
innerParent.ZIndex = 15 + 0
innerParent.AnchorPoint = Vector2.new(0.5, 0.5)
innerParent.Size = UDim2.new(160 - (54 + 106), 1983 - (1618 + 351), 0, 14)
Instance.new("UICorner", innerParent).CornerRadius = UDim.new(1 + 0, 1016 - (10 + 1006))
local parentVariantL = Instance.new("Frame", parentVariantI)
parentVariantL.BorderSizePixel = 0
parentVariantL.BackgroundColor3 = Color3.fromRGB(30, 230, 65 + 190)
parentVariantL.ZIndex = 3 + 13
parentVariantL.AnchorPoint = Vector2.new(0.5 - 0, 1033.5 - (912 + 121))
parentVariantL.Size = UDim2.new(0 + 0, 4, 0, 1293 - (1140 + 149))
Instance.new("UICorner", parentVariantL).CornerRadius = UDim.new(1, 0 + 0)
outerParent = Instance.new("Frame", parentVariantI)
outerParent.BorderSizePixel = 0 - 0
outerParent.BackgroundColor3 = Color3.fromRGB(30, 43 + 187, 872 - 617)
outerParent.BackgroundTransparency = 0.7 - 0
outerParent.ZIndex = 3 + 12
outerParent.AnchorPoint = Vector2.new(0.5 - 0, 0.5)
outerParent.Size = UDim2.new(186 - (165 + 21), 121 - (61 + 50), 0 + 0, 47 - 37)
Instance.new("UICorner", outerParent).CornerRadius = UDim.new(1, 0 - 0)
local nestedTextLabel = Instance.new("TextLabel", parentVariantI)
nestedTextLabel.BackgroundTransparency = 1 + 0
nestedTextLabel.Position = UDim2.new(1460 - (1295 + 165), 2 + 4, 0 + 0, 2)
nestedTextLabel.Size = UDim2.new(0, 1477 - (819 + 578), 0, 1412 - (331 + 1071))
nestedTextLabel.Font = Enum.Font.Gotham
nestedTextLabel.Text = "GAME TURBO"
nestedTextLabel.TextSize = 750 - (588 + 155)
nestedTextLabel.TextColor3 = Color3.fromRGB(110, 115, 1417 - (546 + 736))
nestedTextLabel.TextXAlignment = Enum.TextXAlignment.Left
nestedTextLabel.ZIndex = 1949 - (1834 + 103)
local valueLabel = Instance.new("TextLabel", parentVariantI)
valueLabel.BackgroundTransparency = 1 + 0
valueLabel.Position = UDim2.new(0 - 0, 1772 - (1536 + 230), 491 - (128 + 363), 12)
valueLabel.Size = UDim2.new(0 + 0, 87 - 52, 0 + 0, 23 - 9)
valueLabel.Font = Enum.Font.GothamBlack
valueLabel.Text = "0"
valueLabel.TextSize = 38 - 25
valueLabel.TextColor3 = Color3.fromRGB(255, 121 - 71, 50)
valueLabel.TextXAlignment = Enum.TextXAlignment.Left
valueLabel.ZIndex = 12
local innerTextLabel = Instance.new("TextLabel", parentVariantI)
innerTextLabel.BackgroundTransparency = 1 + 0
innerTextLabel.Position = UDim2.new(1009 - (615 + 394), 34, 0, 13 + 1)
innerTextLabel.Size = UDim2.new(0 + 0, 60 - 40, 0 - 0, 10)
innerTextLabel.Font = Enum.Font.Gotham
innerTextLabel.Text = "FPS"
innerTextLabel.TextSize = 658 - (59 + 592)
innerTextLabel.TextColor3 = Color3.fromRGB(150, 155, 398 - 218)
innerTextLabel.TextXAlignment = Enum.TextXAlignment.Left
innerTextLabel.ZIndex = 21 - 9
local secondaryValueLabel = Instance.new("TextLabel", parentVariantI)
secondaryValueLabel.BackgroundTransparency = 1 + 0
secondaryValueLabel.Position = UDim2.new(0, 177 - (70 + 101), 0 - 0, 18 + 6)
secondaryValueLabel.Size = UDim2.new(0, 125 - 75, 241 - (123 + 118), 3 + 7)
secondaryValueLabel.Font = Enum.Font.Gotham
secondaryValueLabel.Text = "--ms"
secondaryValueLabel.TextSize = 8
secondaryValueLabel.TextColor3 = Color3.fromRGB(2 + 128, 1534 - (653 + 746), 299 - 139)
secondaryValueLabel.TextXAlignment = Enum.TextXAlignment.Left
secondaryValueLabel.ZIndex = 12
local outerTextLabel = Instance.new("TextLabel", parentVariantI)
outerTextLabel.BackgroundTransparency = 1 - 0
outerTextLabel.Position = UDim2.new(0 - 0, 70, 0, 2 + 1)
outerTextLabel.Size = UDim2.new(0 + 0, 175 + 25, 0, 10)
outerTextLabel.Font = Enum.Font.Gotham
outerTextLabel.TextSize = 1 + 6
outerTextLabel.TextXAlignment = Enum.TextXAlignment.Left
outerTextLabel.RichText = true
outerTextLabel.ZIndex = 2 + 10
outerTextLabel.Text = '<font color="rgb(255,50,50)">■FPS</font>  <font color="rgb(30,230,255)">■PING</font>'
local alternateValueLabel = Instance.new("TextLabel", parentVariantI)
alternateValueLabel.BackgroundTransparency = 1
alternateValueLabel.Position = UDim2.new(0 - 0, 6, 0 + 0, alternateInstancePropertiesNumber + 5)
alternateValueLabel.Size = UDim2.new(0, 170, 0, 21 - 9)
alternateValueLabel.Font = Enum.Font.Gotham
alternateValueLabel.Text = "AVG: -- | PING: --ms"
alternateValueLabel.TextSize = 8
alternateValueLabel.TextColor3 = Color3.fromRGB(1384 - (885 + 349), 155, 143 + 37)
alternateValueLabel.TextXAlignment = Enum.TextXAlignment.Left
alternateValueLabel.ZIndex = 32 - 20
local additionalValueLabel = Instance.new("TextLabel", parentVariantI)
additionalValueLabel.BackgroundTransparency = 1
additionalValueLabel.Position = UDim2.new(0 - 0, 175, 0, alternateInstancePropertiesNumber + 5)
additionalValueLabel.Size = UDim2.new(0, 1093 - (915 + 53), 801 - (768 + 33), 45 - 33)
additionalValueLabel.Font = Enum.Font.Gotham
additionalValueLabel.Text = "MIN: -- | MAX: --"
additionalValueLabel.TextSize = 8
additionalValueLabel.TextColor3 = Color3.fromRGB(264 - 114, 483 - (287 + 41), 180)
additionalValueLabel.TextXAlignment = Enum.TextXAlignment.Right
additionalValueLabel.ZIndex = 12
local function secondaryFromRgb(fromRgbNumber)
    if fromRgbNumber >= (902 - (638 + 209)) then
        return Color3.fromRGB(0, 133 + 122, 1866 - (96 + 1590))
    elseif fromRgbNumber >= 45 then
        return new(
            Color3.fromRGB(1927 - (741 + 931), 113 + 117, 85 - 55),
            Color3.fromRGB(0 - 0, 255, 78 + 102),
            (fromRgbNumber - (20 + 25)) / (4 + 6)
        )
    elseif fromRgbNumber >= 30 then
        return new(
            Color3.fromRGB(255, 45, 170 - 125),
            Color3.fromRGB(83 + 172, 113 + 117, 30),
            (fromRgbNumber - (122 - 92)) / (14 + 1)
        )
    else
        return Color3.fromRGB(749 - (64 + 430), 45, 45)
    end
end
local function fallbackUpdateInstanceProperties()
    local sum = nestedUpdateInstancePropertiesNumber
    local quotient = sizeNumber / (sum - (1 + 0))
    for index = 1, sum do
        numberData[index] =
            handleSize(numberData[index], sums[index] or (363 - (106 + 257)), innerUpdateInstancePropertiesNumber)
    end
    for index = 1 + 0, fallbackUpdateInstancePropertiesNumber - (722 - (496 + 225)) do
        if index < sum then
            local updateInstancePropertiesNumber = 0 - 0
            local difference
            local number
            local resultNumber
            local secondaryInstancePropertiesNumber
            local updateInstancePropertiesResult
            local rotationResult
            local backgroundColor3
            local fallbackUpdateInstancePropertiesNumber
            local nestedUpdateInstancePropertiesNumber
            local innerUpdateInstancePropertiesNumber
            local sizeResult
            local result
            while true do
                if updateInstancePropertiesNumber == 6 then
                    local number = 0
                    while true do
                        if number == 0 then
                            nestedUpdateInstancePropertiesNumber = alternateInstancePropertiesNumber
                                - (
                                    clamp(
                                        (4 - 3)
                                            - (
                                                (
                                                    updateInstancePropertiesData[index + (1659 - (256 + 1402))]
                                                    or (1899 - (30 + 1869))
                                                ) / positionNumber
                                            ),
                                        1369 - (213 + 1156),
                                        1
                                    ) * alternateInstancePropertiesNumber
                                )
                            innerUpdateInstancePropertiesNumber = nestedUpdateInstancePropertiesNumber
                                - fallbackUpdateInstancePropertiesNumber
                            number = 1
                        end
                        if 1 == number then
                            sizeResult = sqrt(
                                (resultNumber * resultNumber)
                                    + (innerUpdateInstancePropertiesNumber * innerUpdateInstancePropertiesNumber)
                            )
                            updateInstancePropertiesNumber = 195 - (96 + 92)
                            break
                        end
                    end
                end
                if updateInstancePropertiesNumber == (2 + 5) then
                    result = resultCallback(innerUpdateInstancePropertiesNumber, resultNumber)
                    rotationData[index].Size =
                        UDim2.new(899 - (142 + 757), max(sizeResult, 1 + 0), 0 + 0, 80 - (32 + 47))
                    rotationData[index].Position = UDim2.new(
                        1977 - (1053 + 924),
                        (index - (1 + 0)) * quotient,
                        0 - 0,
                        fallbackUpdateInstancePropertiesNumber
                    )
                    updateInstancePropertiesNumber = 1656 - (685 + 963)
                end
                if (3 - 1) == updateInstancePropertiesNumber then
                    backgroundColor3 = secondaryFromRgb(numberData[index + (1 - 0)])
                    positionData[index].Size = UDim2.new(
                        1709 - (541 + 1168),
                        max(updateInstancePropertiesResult, 1),
                        1597 - (645 + 952),
                        839.5 - (669 + 169)
                    )
                    positionData[index].Position = UDim2.new(0, (index - 1) * quotient, 0 - 0, difference)
                    updateInstancePropertiesNumber = 6 - 3
                end
                if updateInstancePropertiesNumber == (2 + 1) then
                    local FlatIdent_8239F = 0
                    while true do
                        if FlatIdent_8239F == 1 then
                            positionData[index].Visible = true
                            updateInstancePropertiesNumber = 1 + 3
                            break
                        end
                        if 0 == FlatIdent_8239F then
                            positionData[index].Rotation = deg(rotationResult)
                            positionData[index].BackgroundColor3 = backgroundColor3
                            FlatIdent_8239F = 1
                        end
                    end
                end
                if updateInstancePropertiesNumber == 1 then
                    local alternateInstancePropertiesNumber = 0
                    while true do
                        if alternateInstancePropertiesNumber == 1 then
                            rotationResult = resultCallback(secondaryInstancePropertiesNumber, resultNumber)
                            updateInstancePropertiesNumber = 767 - (181 + 584)
                            break
                        end
                        if alternateInstancePropertiesNumber == 0 then
                            secondaryInstancePropertiesNumber = number - difference
                            updateInstancePropertiesResult = sqrt(
                                (resultNumber * resultNumber)
                                    + (secondaryInstancePropertiesNumber * secondaryInstancePropertiesNumber)
                            )
                            alternateInstancePropertiesNumber = 1
                        end
                    end
                end
                if updateInstancePropertiesNumber == (1404 - (665 + 730)) then
                    visibleData[index].Position = rotationData[index].Position
                    visibleData[index].Rotation = deg(result)
                    visibleData[index].Visible = true
                    break
                end
                if updateInstancePropertiesNumber == 5 then
                    sizeData[index].BackgroundColor3 = backgroundColor3
                    sizeData[index].Visible = true
                    fallbackUpdateInstancePropertiesNumber = alternateInstancePropertiesNumber
                        - (
                            clamp(
                                (2 - 1) - ((updateInstancePropertiesData[index] or (0 - 0)) / positionNumber),
                                1350 - (540 + 810),
                                3 - 2
                            ) * alternateInstancePropertiesNumber
                        )
                    updateInstancePropertiesNumber = 6
                end
                if (0 - 0) == updateInstancePropertiesNumber then
                    local sum = 0 + 0
                    while true do
                        if (204 - (166 + 37)) == sum then
                            resultNumber = quotient
                            updateInstancePropertiesNumber = 1
                            break
                        end
                        if sum == (1881 - (22 + 1859)) then
                            local updateInstancePropertiesNumber = 0
                            while true do
                                if updateInstancePropertiesNumber == 0 then
                                    difference = alternateInstancePropertiesNumber
                                        - (
                                            clamp(
                                                numberData[index] / additionalInstancePropertiesNumber,
                                                1772 - (843 + 929),
                                                263 - (30 + 232)
                                            )
                                            * alternateInstancePropertiesNumber
                                        )
                                    number = alternateInstancePropertiesNumber
                                        - (
                                            clamp(
                                                numberData[index + (2 - 1)] / additionalInstancePropertiesNumber,
                                                777 - (55 + 722),
                                                1
                                            )
                                            * alternateInstancePropertiesNumber
                                        )
                                    updateInstancePropertiesNumber = 1
                                end
                                if updateInstancePropertiesNumber == 1 then
                                    sum = 1
                                    break
                                end
                            end
                        end
                    end
                end
                if updateInstancePropertiesNumber == (17 - 9) then
                    local FlatIdent_740DC = 0
                    while true do
                        if FlatIdent_740DC == 1 then
                            visibleData[index].Size = UDim2.new(1675 - (78 + 1597), max(sizeResult, 1 + 0), 0 + 0, 4)
                            updateInstancePropertiesNumber = 9
                            break
                        end
                        if FlatIdent_740DC == 0 then
                            rotationData[index].Rotation = deg(result)
                            rotationData[index].Visible = true
                            FlatIdent_740DC = 1
                        end
                    end
                end
                if updateInstancePropertiesNumber == (4 + 0) then
                    sizeData[index].Size =
                        UDim2.new(549 - (305 + 244), max(updateInstancePropertiesResult, 1 + 0), 105 - (95 + 10), 5 + 1)
                    sizeData[index].Position = positionData[index].Position
                    sizeData[index].Rotation = deg(rotationResult)
                    updateInstancePropertiesNumber = 5
                end
            end
        else
            local updateInstancePropertiesNumber = 0
            local number
            while true do
                if updateInstancePropertiesNumber == 0 then
                    number = 0
                    while true do
                        if number == (0 - 0) then
                            local updateInstancePropertiesNumber = 0
                            while true do
                                if updateInstancePropertiesNumber == 1 then
                                    number = 1 - 0
                                    break
                                end
                                if 0 == updateInstancePropertiesNumber then
                                    positionData[index].Visible = false
                                    rotationData[index].Visible = false
                                    updateInstancePropertiesNumber = 1
                                end
                            end
                        end
                        if 1 == number then
                            sizeData[index].Visible = false
                            visibleData[index].Visible = false
                            break
                        end
                    end
                    break
                end
            end
        end
    end
    local number = (sum - (763 - (592 + 170))) * quotient
    local fromRgbNumber = numberData[sum] or (0 - 0)
    local updateInstancePropertiesOption = updateInstancePropertiesData[sum] or 0
    parentVariantK.Position = UDim2.new(
        0,
        number,
        0 - 0,
        alternateInstancePropertiesNumber
            - (clamp(fromRgbNumber / additionalInstancePropertiesNumber, 0 + 0, 1) * alternateInstancePropertiesNumber)
    )
    parentVariantK.BackgroundColor3 = secondaryFromRgb(fromRgbNumber)
    innerParent.Position = parentVariantK.Position
    innerParent.BackgroundColor3 = secondaryFromRgb(fromRgbNumber)
    parentVariantL.Position = UDim2.new(
        0 + 0,
        number,
        0 - 0,
        alternateInstancePropertiesNumber
            - (
                clamp(1 - (updateInstancePropertiesOption / positionNumber), 0 + 0, 1 - 0)
                * alternateInstancePropertiesNumber
            )
    )
    outerParent.Position = parentVariantL.Position
    valueLabel.Text = tostring(updateInstancePropertiesNumber)
    valueLabel.TextColor3 = secondaryFromRgb(updateInstancePropertiesNumber)
    secondaryValueLabel.Text = string.format("%.1fms", product)
end
function updateInstancePropertiesFrame()
    local number = 0
    while true do
        if number == 1 then
            for index, item in ipairs(parentVariantB:GetChildren()) do
                if item:IsA("Frame") and (item.LayoutOrder == (191 - (24 + 157))) then
                    local difference = 0 - 0
                    local textButton
                    while true do
                        if difference == 0 then
                            textButton = item:FindFirstChildOfClass("TextButton")
                            if textButton then
                                textButton.Text = (textFlag and "▲") or "▼"
                            end
                            break
                        end
                    end
                end
            end
            break
        end
        if 0 == number then
            textFlag = not textFlag
            if textFlag then
                parentVariantG.Visible = true
                parentVariantG.Size = UDim2.new(507 - (353 + 154), updateFrameNumber, 0, 0)
                parentVariantG.Position = UDim2.new(0.5 - 0, 0, 0 - 0, alternateSum)
                create(parentVariantG, { ["Size"] = UDim2.new(0 + 0, updateFrameNumber, 0 + 0, 80 + 40) }, 0.55 - 0):Play()
            else
                local difference = 0 - 0
                while true do
                    if difference == (0 - 0) then
                        secondaryCreate(
                            parentVariantG,
                            { ["Size"] = UDim2.new(0, updateFrameNumber, 86 - (7 + 79), 0 + 0) },
                            0.4
                        ):Play()
                        task.delay(0.4, function()
                            if not textFlag then
                                parentVariantG.Visible = false
                            end
                        end)
                        break
                    end
                end
            end
            number = 1
        end
    end
end
local updateFrameData = { result, textResult, dataResult, secondaryDataResult }
function updateInstanceProperties(textColor3)
    local updateFrameNumber = 1083 - (1038 + 45)
    while true do
        if (1 - 0) == updateFrameNumber then
            updateFrameColor()
            break
        end
        if updateFrameNumber == (230 - (19 + 211)) then
            capturedTextColor3 = textColor3
            if createFrameFlag then
                for index, item in ipairs(updateFrameData) do
                    item.TextColor3 = Color3.fromRGB(323 - (88 + 25), 534 - 324, 255)
                end
            else
                local updateFrameNumber = 0 + 0
                local sum
                while true do
                    if updateFrameNumber == 0 then
                        sum = 0 + 0
                        while true do
                            if sum == (1038 - (1007 + 29)) then
                                parentVariantJ.Color = secondaryNew(textColor3, 0.2)
                                break
                            end
                            if 1 == sum then
                                local updateFrameNumber = 0
                                while true do
                                    if updateFrameNumber == 0 then
                                        parentVariantH.Color = secondaryNew(textColor3, 0.2 + 0)
                                        sourceParent.Color = secondaryNew(textColor3, 0.2 - 0)
                                        updateFrameNumber = 1
                                    end
                                    if 1 == updateFrameNumber then
                                        sum = 9 - 7
                                        break
                                    end
                                end
                            end
                            if sum == 0 then
                                local updateFrameNumber = 0
                                while true do
                                    if updateFrameNumber == 1 then
                                        sum = 1
                                        break
                                    end
                                    if updateFrameNumber == 0 then
                                        for index, item in ipairs(updateFrameData) do
                                            secondaryCreate(item, { ["TextColor3"] = textColor3 }, 0.35 + 0):Play()
                                        end
                                        parentVariantC.Color = secondaryNew(textColor3, 811.2 - (340 + 471))
                                        updateFrameNumber = 1
                                    end
                                end
                            end
                        end
                        break
                    end
                end
            end
            updateFrameNumber = 2 - 1
        end
    end
end
local secondaryFrameFlag, alternateFrameFlag, position, vector = false, false, nil, nil
function handleFrame()
    local FlatIdent_C79F = 0
    local difference
    local sum
    while true do
        if 0 == FlatIdent_C79F then
            difference = 589 - (276 + 313)
            sum = nil
            FlatIdent_C79F = 1
        end
        if FlatIdent_C79F == 1 then
            while true do
                if difference == (0 - 0) then
                    sum = 0 + 0
                    while true do
                        if sum == 0 then
                            secondaryFrameFlag = false
                            alternateFrameFlag = false
                            sum = 1 + 0
                        end
                        if sum == 1 then
                            position = nil
                            vector = nil
                            break
                        end
                    end
                    break
                end
            end
            break
        end
    end
end
parentVariantB.InputBegan:Connect(function(input)
    local number = 0
    while true do
        if 0 == number then
            if updateInstancePropertiesFlag or updateFrameFlag or flag then
                return
            end
            if
                (input.UserInputType == Enum.UserInputType.MouseButton1)
                or (input.UserInputType == Enum.UserInputType.Touch)
            then
                local number = 0
                while true do
                    if number == 2 then
                        input.Changed:Connect(function()
                            if input.UserInputState == Enum.UserInputState.End then
                                handleFrame()
                            end
                        end)
                        break
                    end
                    if number == (1 + 0) then
                        alternateFrameFlag = false
                        secondaryFrameFlag = false
                        number = 2
                    end
                    if number == (1972 - (495 + 1477)) then
                        local secondaryNumber = 0
                        while true do
                            if secondaryNumber == 0 then
                                position = input.Position
                                vector = parentVariantB.Position
                                secondaryNumber = 1
                            end
                            if secondaryNumber == 1 then
                                number = 2 - 1
                                break
                            end
                        end
                    end
                end
            end
            break
        end
    end
end)
parentVariantB.InputEnded:Connect(function(input)
    if
        (input.UserInputType == Enum.UserInputType.MouseButton1) or (input.UserInputType == Enum.UserInputType.Touch)
    then
        handleFrame()
    end
end)
userInputService.InputChanged:Connect(function(input)
    local number = 0
    local sum
    local difference
    while true do
        if 1 == number then
            while true do
                if sum == (404 - (342 + 61)) then
                    local number = 0
                    while true do
                        if number == 0 then
                            difference = input.Position - position
                            if not alternateFrameFlag then
                                if difference.Magnitude >= (3 + 3) then
                                    local difference = 165 - (4 + 161)
                                    while true do
                                        if difference == (0 + 0) then
                                            alternateFrameFlag = true
                                            secondaryFrameFlag = true
                                            break
                                        end
                                    end
                                else
                                    return
                                end
                            end
                            number = 1
                        end
                        if number == 1 then
                            sum = 2
                            break
                        end
                    end
                end
                if sum == (0 - 0) then
                    if updateInstancePropertiesFlag or updateFrameFlag or flag or not position then
                        return
                    end
                    if
                        (input.UserInputType ~= Enum.UserInputType.MouseMovement)
                        and (input.UserInputType ~= Enum.UserInputType.Touch)
                    then
                        return
                    end
                    sum = 2 - 1
                end
                if sum == 2 then
                    if secondaryFrameFlag then
                        local number = 0
                        local secondaryNumber
                        local alternateNumber
                        while true do
                            if 1 == number then
                                while true do
                                    if secondaryNumber == (497 - (322 + 175)) then
                                        alternateNumber = 0
                                        while true do
                                            if alternateNumber == (563 - (173 + 390)) then
                                                parentVariantB.Position = UDim2.new(
                                                    vector.X.Scale,
                                                    vector.X.Offset + difference.X,
                                                    vector.Y.Scale,
                                                    vector.Y.Offset + difference.Y
                                                )
                                                if textFlag then
                                                    parentVariantG.Position = UDim2.new(
                                                        0.5,
                                                        0,
                                                        0 + 0,
                                                        parentVariantB.AbsolutePosition.Y
                                                            + parentVariantB.AbsoluteSize.Y
                                                            + (318 - (203 + 111))
                                                    )
                                                end
                                                break
                                            end
                                        end
                                        break
                                    end
                                end
                                break
                            end
                            if number == 0 then
                                secondaryNumber = 0
                                alternateNumber = nil
                                number = 1
                            end
                        end
                    end
                    break
                end
            end
            break
        end
        if number == 0 then
            sum = 0 + 0
            difference = nil
            number = 1
        end
    end
end)
function secondaryUpdateInstanceProperties()
    local updateInstancePropertiesNumber = 0
    local position
    while true do
        if updateInstancePropertiesNumber == (1 + 1) then
            if secondaryCreateFrameFlag then
                handler()
            end
            if textFlag then
                updateInstancePropertiesFrame()
            end
            updateInstancePropertiesNumber = 3
        end
        if updateInstancePropertiesNumber == (3 + 1) then
            secondaryCreate(parentVariantC, { ["Transparency"] = 1 }, 0.3):Play()
            task.delay(0.3 - 0, function()
                local FlatIdent_851CE = 0
                local updateInstancePropertiesNumber
                while true do
                    if FlatIdent_851CE == 0 then
                        updateInstancePropertiesNumber = 0 + 0
                        while true do
                            if updateInstancePropertiesNumber == (707 - (57 + 649)) then
                                frame.BackgroundTransparency = 385 - (328 + 56)
                                frame.Visible = true
                                updateInstancePropertiesNumber = 1 + 1
                            end
                            if updateInstancePropertiesNumber == (515 - (433 + 79)) then
                                secondaryCreate(frame, { ["BackgroundTransparency"] = (0.12 + 0) }, 0.4 + 0):Play()
                                break
                            end
                            if updateInstancePropertiesNumber == 0 then
                                parentVariantB.Visible = false
                                frame.Position = position
                                updateInstancePropertiesNumber = 3 - 2
                            end
                            if updateInstancePropertiesNumber == 2 then
                                frame.Size = UDim2.new(0, 0, 0 - 0, 0 + 0)
                                create(frame, { ["Size"] = UDim2.new(0, 28, 0, 25 + 3) }, 1036.6 - (562 + 474)):Play()
                                updateInstancePropertiesNumber = 6 - 3
                            end
                        end
                        break
                    end
                end
            end)
            break
        end
        if updateInstancePropertiesNumber == (0 - 0) then
            if updateFrameFlag or flag then
                return
            end
            updateFrameFlag = true
            updateInstancePropertiesNumber = 906 - (76 + 829)
        end
        if updateInstancePropertiesNumber == (1676 - (1506 + 167)) then
            position = parentVariantB.Position
            secondaryCreate(
                parentVariantB,
                { ["Size"] = UDim2.new(0, 0 - 0, 0, 266 - (58 + 208)), ["BackgroundTransparency"] = 1 },
                0.35 + 0
            ):Play()
            updateInstancePropertiesNumber = 4
        end
        if updateInstancePropertiesNumber == (1 + 0) then
            handleFrame()
            if frameFlag then
                handleInstanceProperties()
            end
            updateInstancePropertiesNumber = 2 + 0
        end
    end
end
function alternateUpdateInstanceProperties()
    local updateInstancePropertiesNumber = 0 - 0
    local position
    while true do
        if updateInstancePropertiesNumber == 2 then
            task.delay(337.25 - (258 + 79), function()
                local updateInstancePropertiesNumber = 0 + 0
                local number
                while true do
                    if updateInstancePropertiesNumber == (0 - 0) then
                        number = 1470 - (1219 + 251)
                        while true do
                            if number == 3 then
                                secondaryCreate(parentVariantB, { ["BackgroundTransparency"] = 0.18 }, 0.4):Play()
                                secondaryCreate(parentVariantC, { ["Transparency"] = (1671.25 - (1231 + 440)) }, 0.4):Play()
                                break
                            end
                            if number == (60 - (34 + 24)) then
                                local updateInstancePropertiesNumber = 0
                                while true do
                                    if 1 == updateInstancePropertiesNumber then
                                        number = 3
                                        break
                                    end
                                    if updateInstancePropertiesNumber == 0 then
                                        parentVariantB.Size = UDim2.new(0 + 0, 0 - 0, 0 + 0, 0 - 0)
                                        create(
                                            parentVariantB,
                                            {
                                                ["Size"] = UDim2.new(
                                                    0,
                                                    updateFrameNumber,
                                                    0 - 0,
                                                    secondaryInstancePropertiesNumber
                                                ),
                                            },
                                            0.6
                                        ):Play()
                                        updateInstancePropertiesNumber = 1
                                    end
                                end
                            end
                            if number == (2 - 1) then
                                local updateInstancePropertiesNumber = 0
                                while true do
                                    if 0 == updateInstancePropertiesNumber then
                                        parentVariantB.BackgroundTransparency = 1
                                        parentVariantB.Visible = true
                                        updateInstancePropertiesNumber = 1
                                    end
                                    if updateInstancePropertiesNumber == 1 then
                                        number = 6 - 4
                                        break
                                    end
                                end
                            end
                            if number == (0 - 0) then
                                local updateInstancePropertiesNumber = 0
                                while true do
                                    if 1 == updateInstancePropertiesNumber then
                                        number = 1590 - (877 + 712)
                                        break
                                    end
                                    if updateInstancePropertiesNumber == 0 then
                                        frame.Visible = false
                                        parentVariantB.Position = position
                                        updateInstancePropertiesNumber = 1
                                    end
                                end
                            end
                        end
                        break
                    end
                end
            end)
            break
        end
        if updateInstancePropertiesNumber == (0 + 0) then
            local number = 0
            while true do
                if number == 1 then
                    updateInstancePropertiesNumber = 755 - (242 + 512)
                    break
                end
                if number == 0 then
                    if not updateFrameFlag then
                        return
                    end
                    updateFrameFlag = false
                    number = 1
                end
            end
        end
        if updateInstancePropertiesNumber == (1 - 0) then
            position = frame.Position
            secondaryCreate(
                frame,
                { ["Size"] = UDim2.new(0, 0, 627 - (92 + 535), 0 + 0), ["BackgroundTransparency"] = (1 - 0) },
                0.3
            ):Play()
            updateInstancePropertiesNumber = 1 + 1
        end
    end
end
function alternateUpdateFrame()
    if flag then
        return
    end
    flag = true
    handleFrame()
    if frameFlag then
        handleInstanceProperties()
    end
    if secondaryCreateFrameFlag then
        handler()
    end
    if textFlag then
        updateInstancePropertiesFrame()
    end
    if updateFrameFlag then
        local updateFrameNumber = 0
        while true do
            if 0 == updateFrameNumber then
                frame.Visible = false
                updateFrameFlag = false
                break
            end
        end
    else
        local updateFrameNumber = 0
        local sum
        local position
        while true do
            if updateFrameNumber == 0 then
                sum = 0 - 0
                position = nil
                updateFrameNumber = 1
            end
            if updateFrameNumber == 1 then
                while true do
                    if sum == (0 + 0) then
                        local updateFrameNumber = 0
                        while true do
                            if updateFrameNumber == 1 then
                                secondaryCreate(parentVariantC, { ["Transparency"] = (1 + 0) }, 0.3):Play()
                                sum = 1 - 0
                                break
                            end
                            if updateFrameNumber == 0 then
                                position = parentVariantB.Position
                                secondaryCreate(
                                    parentVariantB,
                                    { ["Size"] = UDim2.new(0, 0 + 0, 0, 0), ["BackgroundTransparency"] = 1 },
                                    0.35
                                ):Play()
                                updateFrameNumber = 1
                            end
                        end
                    end
                    if sum == (5 - 1) then
                        return
                    end
                    if 1 == sum then
                        local updateFrameNumber = 0
                        while true do
                            if updateFrameNumber == 1 then
                                fallbackParent.Position = position
                                sum = 2
                                break
                            end
                            if updateFrameNumber == 0 then
                                task.delay(1785.3 - (1476 + 309), function()
                                    parentVariantB.Visible = false
                                end)
                                task.wait(1284.15 - (299 + 985))
                                updateFrameNumber = 1
                            end
                        end
                    end
                    if sum == (1 + 1) then
                        fallbackParent.BackgroundTransparency = 3 - 2
                        fallbackParent.Visible = true
                        fallbackParent.Size = UDim2.new(0, 0, 93 - (86 + 7), 0 - 0)
                        sum = 1 + 2
                    end
                    if sum == (883 - (672 + 208)) then
                        local updateFrameNumber = 0
                        while true do
                            if updateFrameNumber == 0 then
                                create(
                                    fallbackParent,
                                    { ["Size"] = UDim2.new(0 + 0, 210, 132 - (14 + 118), 483 - (339 + 106)) },
                                    0.6 + 0
                                ):Play()
                                secondaryCreate(
                                    fallbackParent,
                                    { ["BackgroundTransparency"] = (0.12 + 0) },
                                    1395.4 - (440 + 955)
                                ):Play()
                                updateFrameNumber = 1
                            end
                            if updateFrameNumber == 1 then
                                secondaryCreate(sourceParent, { ["Transparency"] = (0.15 + 0) }, 0.35 - 0):Play()
                                sum = 4
                                break
                            end
                        end
                    end
                end
                break
            end
        end
    end
    task.wait(0.15 + 0)
    fallbackParent.Position = UDim2.new(0.5 - 0, 0, 0 + 0, 365 - (260 + 93))
    fallbackParent.BackgroundTransparency = 1 + 0
    fallbackParent.Visible = true
    fallbackParent.Size = UDim2.new(0 - 0, 0 - 0, 1974 - (1181 + 793), 0 + 0)
    create(fallbackParent, { ["Size"] = UDim2.new(307 - (105 + 202), 169 + 41, 0, 848 - (352 + 458)) }, 0.6 - 0):Play()
    secondaryCreate(fallbackParent, { ["BackgroundTransparency"] = (0.12 - 0) }, 0.4 + 0):Play()
    secondaryCreate(sourceParent, { ["Transparency"] = (0.15 - 0) }, 949.35 - (438 + 511)):Play()
end
function additionalUpdateInstanceProperties()
    local updateInstancePropertiesNumber = 0
    local number
    local position
    while true do
        if 0 == updateInstancePropertiesNumber then
            number = 0
            position = nil
            updateInstancePropertiesNumber = 1
        end
        if updateInstancePropertiesNumber == 1 then
            while true do
                if number == (1385 - (1262 + 121)) then
                    secondaryCreate(sourceParent, { ["Transparency"] = (1069 - (728 + 340)) }, 1790.25 - (816 + 974)):Play()
                    task.delay(0.25 - 0, function()
                        local updateInstancePropertiesNumber = 0
                        while true do
                            if 0 == updateInstancePropertiesNumber then
                                fallbackParent.Visible = false
                                parentVariantB.Position = position
                                updateInstancePropertiesNumber = 1
                            end
                            if 1 == updateInstancePropertiesNumber then
                                parentVariantB.BackgroundTransparency = 3 - 2
                                parentVariantB.Visible = true
                                updateInstancePropertiesNumber = 2
                            end
                            if updateInstancePropertiesNumber == 2 then
                                parentVariantB.Size = UDim2.new(339 - (163 + 176), 0, 0 - 0, 0)
                                create(
                                    parentVariantB,
                                    {
                                        ["Size"] = UDim2.new(
                                            0 - 0,
                                            updateFrameNumber,
                                            0,
                                            secondaryInstancePropertiesNumber
                                        ),
                                    },
                                    0.6 + 0
                                ):Play()
                                updateInstancePropertiesNumber = 3
                            end
                            if updateInstancePropertiesNumber == 3 then
                                secondaryCreate(parentVariantB, { ["BackgroundTransparency"] = 0.18 }, 0.4):Play()
                                secondaryCreate(parentVariantC, { ["Transparency"] = 0.25 }, 1810.4 - (1564 + 246)):Play()
                                break
                            end
                        end
                    end)
                    break
                end
                if (346 - (124 + 221)) == number then
                    position = fallbackParent.Position
                    secondaryCreate(
                        fallbackParent,
                        { ["Size"] = UDim2.new(0 + 0, 451 - (115 + 336), 0 - 0, 0), ["BackgroundTransparency"] = (1 + 0) },
                        0.3
                    ):Play()
                    number = 48 - (45 + 1)
                end
                if number == (0 + 0) then
                    if not flag then
                        return
                    end
                    flag = false
                    number = 1
                end
            end
            break
        end
    end
end
local function secondaryHandleFrame()
    if createFrameText == "settings" then
        local frameNumber = 0
        local number
        while true do
            if frameNumber == 0 then
                number = 0
                while true do
                    if number == 0 then
                        createFrameText = nil
                        createFrame()
                        break
                    end
                end
                break
            end
        end
    elseif createFrameText == "music" then
        local FlatIdent_354BC = 0
        while true do
            if 0 == FlatIdent_354BC then
                createFrameText = nil
                secondaryCreateFrame()
                break
            end
        end
    end
end
local parentVariantM, parentVariantN, frameData = {}, nil, {}
function handleInstanceProperties()
    local sum = 1990 - (1282 + 708)
    while true do
        if sum == (1212 - (583 + 629)) then
            if not frameFlag then
                return
            end
            frameFlag = false
            sum = 1 + 0
        end
        if sum == (2 - 1) then
            if parentVariantN then
                local sum = 0 + 0
                while true do
                    if sum == (1170 - (943 + 227)) then
                        secondaryCreate(parentVariantN, { ["BackgroundTransparency"] = (1 + 0) }, 1631.3 - (1539 + 92)):Play()
                        task.delay(0.3, function()
                            local frameNumber = 0
                            while true do
                                if frameNumber == 0 then
                                    if parentVariantM then
                                        local frameNumber = 0
                                        while true do
                                            if frameNumber == 1 then
                                                parentVariantN = nil
                                                frameData = {}
                                                break
                                            end
                                            if frameNumber == 0 then
                                                parentVariantM:Destroy()
                                                parentVariantM = nil
                                                frameNumber = 1
                                            end
                                        end
                                    end
                                    secondaryHandleFrame()
                                    break
                                end
                            end
                        end)
                        break
                    end
                end
            else
                secondaryHandleFrame()
            end
            break
        end
    end
end
function createFrame()
    if frameFlag or updateFrameFlag or flag then
        return
    end
    if secondaryCreateFrameFlag then
        local createFrameNumber = 0
        while true do
            local difference = 1946 - (706 + 1240)
            while true do
                if difference == (258 - (81 + 177)) then
                    if createFrameNumber == (0 - 0) then
                        local number = 0
                        while true do
                            if number == 0 then
                                createFrameText = "settings"
                                handler()
                                number = 1
                            end
                            if number == 1 then
                                createFrameNumber = 258 - (212 + 45)
                                break
                            end
                        end
                    end
                    if createFrameNumber == 1 then
                        return
                    end
                    break
                end
            end
        end
    end
    frameFlag = true
    frameData = {}
    handleFrame()
    parentVariantM = Instance.new("Frame", screenGui)
    parentVariantM.BackgroundTransparency = 3 - 2
    parentVariantM.Size = UDim2.new(1947 - (708 + 1238), 0, 1 + 0, 0 + 0)
    parentVariantM.ZIndex = 900
    parentVariantM.Active = false
    parentVariantN = Instance.new("Frame", parentVariantM)
    parentVariantN.BackgroundColor3 = Color3.fromRGB(1687 - (586 + 1081), 531 - (348 + 163), 26 + 2)
    parentVariantN.BackgroundTransparency = 281 - (215 + 65)
    parentVariantN.BorderSizePixel = 0 - 0
    parentVariantN.AnchorPoint = Vector2.new(1859.5 - (1541 + 318), 0.5 + 0)
    parentVariantN.Position = UDim2.new(0.5, 0 + 0, 0.5 + 0, 1750 - (1036 + 714))
    parentVariantN.Size = UDim2.new(0, 240, 0 + 0, 300)
    parentVariantN.ZIndex = 498 + 403
    parentVariantN.ClipsDescendants = true
    Instance.new("UICorner", parentVariantN).CornerRadius = UDim.new(1280 - (883 + 397), 606 - (563 + 27))
    local parent = Instance.new("UIStroke", parentVariantN)
    parent.Color = secondaryNew(capturedTextColor3, 0.2 - 0)
    parent.Thickness = 1988 - (1369 + 617)
    parent.Transparency = 1
    local createFrameResult = handleColor(Instance.new("UIGradient", parent))
    createFrameResult.Color = (createFrameFlag and colorSequence) or alternateNew(capturedTextColor3)
    create(parentVariantN, { ["BackgroundTransparency"] = 0.12 }, 1487.6 - (85 + 1402)):Play()
    secondaryCreate(parent, { ["Transparency"] = (0.15 + 0) }, 0.5 - 0):Play()
    local textLabel = Instance.new("TextLabel", parentVariantN)
    textLabel.BackgroundTransparency = 1
    textLabel.Size = UDim2.new(1, -20, 403 - (274 + 129), 24)
    textLabel.Position = UDim2.new(0, 10, 0, 225 - (12 + 205))
    textLabel.Font = Enum.Font.GothamSemibold
    textLabel.Text = "⚙  Settings"
    textLabel.TextColor3 = Color3.fromRGB(220 + 20, 240, 969 - 719)
    textLabel.TextSize = 13 + 0
    textLabel.TextXAlignment = Enum.TextXAlignment.Left
    textLabel.ZIndex = 902
    for index, item in ipairs(createFrameData) do
        local createFrameNumber = 384 - (27 + 357)
        local remainder
        local positionNumber
        local frame
        local uiStroke
        local textButton
        local textLabel
        while true do
            if createFrameNumber == 1 then
                frame.BorderSizePixel = 480 - (91 + 389)
                frame.Size = UDim2.new(297 - (90 + 207), 28, 0 + 0, 28)
                frame.Position = UDim2.new(
                    861 - (706 + 155),
                    14 + (remainder * (1839 - (730 + 1065))),
                    1563 - (1339 + 224),
                    20 + 18 + (positionNumber * 46)
                )
                createFrameNumber = 2
            end
            if createFrameNumber == 9 then
                textLabel.TextSize = 7 + 0
                textLabel.TextXAlignment = Enum.TextXAlignment.Center
                textLabel.ZIndex = 1343 - 440
                break
            end
            if createFrameNumber == (843 - (268 + 575)) then
                local number = 0
                while true do
                    if number == 0 then
                        remainder = (index - (1295 - (919 + 375))) % (13 - 8)
                        positionNumber = floor((index - (972 - (180 + 791))) / (1810 - (323 + 1482)))
                        number = 1
                    end
                    if 1 == number then
                        frame = Instance.new("Frame", parentVariantN)
                        createFrameNumber = 1919 - (1177 + 741)
                        break
                    end
                end
            end
            if createFrameNumber == 6 then
                textButton.ZIndex = 904
                textButton.MouseButton1Click:Connect(function()
                    local createFrameNumber = 0 + 0
                    while true do
                        if createFrameNumber == (0 - 0) then
                            local number = 0
                            while true do
                                if number == 0 then
                                    for index, item in ipairs(frameData) do
                                        secondaryCreate(item.s, { ["Transparency"] = 0.92 }, 0.2):Play()
                                    end
                                    secondaryCreate(uiStroke, { ["Transparency"] = (0.05 + 0) }, 0.2 - 0):Play()
                                    number = 1
                                end
                                if number == 1 then
                                    createFrameNumber = 1 + 0
                                    break
                                end
                            end
                        end
                        if createFrameNumber == 1 then
                            if item.RB then
                                local createFrameNumber = 109 - (96 + 13)
                                while true do
                                    if createFrameNumber == (1922 - (962 + 959)) then
                                        parent.Color =
                                            secondaryNew(Color3.fromRGB(636 - 381, 255, 46 + 209), 1351.2 - (461 + 890))
                                        break
                                    end
                                    if createFrameNumber == 0 then
                                        createFrameFlag = true
                                        updateInstanceProperties(Color3.fromRGB(188 + 67, 993 - 738, 498 - (19 + 224)))
                                        createFrameNumber = 1 + 0
                                    end
                                end
                            else
                                local createFrameNumber = 0
                                local number
                                local sum
                                while true do
                                    if createFrameNumber == 0 then
                                        number = 0
                                        sum = nil
                                        createFrameNumber = 1
                                    end
                                    if createFrameNumber == 1 then
                                        while true do
                                            if number == (198 - (37 + 161)) then
                                                sum = 0 + 0
                                                while true do
                                                    if sum == (1 + 0) then
                                                        parent.Color = secondaryNew(item.C, 0.2 + 0)
                                                        break
                                                    end
                                                    if sum == 0 then
                                                        createFrameFlag = false
                                                        updateInstanceProperties(item.C)
                                                        sum = 62 - (60 + 1)
                                                    end
                                                end
                                                break
                                            end
                                        end
                                        break
                                    end
                                end
                            end
                            updateFrameColor()
                            break
                        end
                    end
                end)
                textLabel = Instance.new("TextLabel", frame)
                createFrameNumber = 930 - (826 + 97)
            end
            if createFrameNumber == (2 + 0) then
                local number = 0
                local difference
                while true do
                    if number == (0 - 0) then
                        difference = 0 - 0
                        while true do
                            if difference == (686 - (375 + 310)) then
                                if item.RB then
                                    local createFrameNumber = 0
                                    local uiGradient
                                    while true do
                                        if createFrameNumber == (1999 - (1864 + 135)) then
                                            frame.BackgroundColor3 = Color3.fromRGB(255, 657 - 402, 57 + 198)
                                            uiGradient = Instance.new("UIGradient", frame)
                                            createFrameNumber = 1 + 0
                                        end
                                        if createFrameNumber == (2 - 1) then
                                            uiGradient.Color = colorSequence
                                            task.spawn(function()
                                                while uiGradient and uiGradient.Parent do
                                                    local FlatIdent_4185D = 0
                                                    local createFrameNumber
                                                    local difference
                                                    while true do
                                                        if FlatIdent_4185D == 0 then
                                                            createFrameNumber = 1131 - (314 + 817)
                                                            difference = nil
                                                            FlatIdent_4185D = 1
                                                        end
                                                        if FlatIdent_4185D == 1 then
                                                            while true do
                                                                if createFrameNumber == (0 + 0) then
                                                                    difference = 214 - (32 + 182)
                                                                    while true do
                                                                        if difference == (0 + 0) then
                                                                            uiGradient.Rotation = (
                                                                                uiGradient.Rotation + (10 - 7)
                                                                            )
                                                                                % 360
                                                                            task.wait(0.03)
                                                                            break
                                                                        end
                                                                    end
                                                                    break
                                                                end
                                                            end
                                                            break
                                                        end
                                                    end
                                                end
                                            end)
                                            break
                                        end
                                    end
                                else
                                    frame.BackgroundColor3 = item.C
                                end
                                createFrameNumber = 3
                                break
                            end
                            if difference == (65 - (39 + 26)) then
                                frame.ZIndex = 1047 - (54 + 90)
                                Instance.new("UICorner", frame).CornerRadius = UDim.new(1, 0)
                                difference = 199 - (45 + 153)
                            end
                        end
                        break
                    end
                end
            end
            if createFrameNumber == (3 + 1) then
                uiStroke.Transparency = (
                    (
                        (item.RB and createFrameFlag)
                        or (not item.RB and not createFrameFlag and (item.C == capturedTextColor3))
                    ) and (552.05 - (457 + 95))
                ) or 0.92
                table.insert(frameData, { s = uiStroke, c = item.C, ["rb"] = item.RB })
                textButton = Instance.new("TextButton", frame)
                createFrameNumber = 5 + 0
            end
            if (10 - 5) == createFrameNumber then
                local number = 0
                while true do
                    if 1 == number then
                        textButton.Text = ""
                        createFrameNumber = 14 - 8
                        break
                    end
                    if number == (0 - 0) then
                        local createFrameNumber = 0
                        while true do
                            if createFrameNumber == 1 then
                                number = 862 - (750 + 111)
                                break
                            end
                            if 0 == createFrameNumber then
                                textButton.BackgroundTransparency = 1 + 0
                                textButton.Size = UDim2.new(3 - 2, 0 - 0, 749 - (485 + 263), 707 - (575 + 132))
                                createFrameNumber = 1
                            end
                        end
                    end
                end
            end
            if createFrameNumber == (1017 - (445 + 565)) then
                local number = 0
                local sum
                while true do
                    if number == 0 then
                        sum = 0 + 0
                        while true do
                            if sum == (1 + 0) then
                                textLabel.Position = UDim2.new(0 - 0, 0 + 0, 0, 30)
                                createFrameNumber = 8
                                break
                            end
                            if 0 == sum then
                                textLabel.BackgroundTransparency = 311 - (189 + 121)
                                textLabel.Size = UDim2.new(1, 0, 0, 3 + 9)
                                sum = 1348 - (634 + 713)
                            end
                        end
                        break
                    end
                end
            end
            if createFrameNumber == (541 - (493 + 45)) then
                local number = 0
                while true do
                    if number == 1 then
                        uiStroke.Thickness = 786.5 - (158 + 626)
                        createFrameNumber = 2 + 2
                        break
                    end
                    if number == 0 then
                        uiStroke = Instance.new("UIStroke", frame)
                        uiStroke.Color = Color3.fromRGB(255, 1223 - (493 + 475), 66 + 189)
                        number = 1
                    end
                end
            end
            if createFrameNumber == 8 then
                textLabel.Font = Enum.Font.Gotham
                textLabel.Text = item.N
                textLabel.TextColor3 = Color3.fromRGB(272 - 107, 38 + 132, 11 + 179)
                createFrameNumber = 1100 - (1035 + 56)
            end
        end
    end
    local function createTextButton(createFrameText, secondaryArgument, frameCallback)
        local createFrameNumber = 959 - (114 + 845)
        local parent
        while true do
            if createFrameNumber == 0 then
                local createTextButtonNumber = 0
                while true do
                    if createTextButtonNumber == 1 then
                        parent.BackgroundTransparency = 0.3 - 0
                        parent.BorderSizePixel = 0
                        createTextButtonNumber = 2
                    end
                    if 2 == createTextButtonNumber then
                        createFrameNumber = 1 + 0
                        break
                    end
                    if createTextButtonNumber == 0 then
                        parent = Instance.new("TextButton", parentVariantN)
                        parent.BackgroundColor3 = Color3.fromRGB(20 + 30, 50, 62)
                        createTextButtonNumber = 1
                    end
                end
            end
            if createFrameNumber == (1051 - (179 + 870)) then
                parent.TextColor3 = Color3.fromRGB(308 - 88, 1098 - (827 + 51), 235)
                parent.TextSize = 26 - 16
                parent.ZIndex = 453 + 450
                parent.AutoButtonColor = false
                createFrameNumber = 3
            end
            if createFrameNumber == (476 - (95 + 378)) then
                local createTextButtonNumber = 0
                while true do
                    if 0 == createTextButtonNumber then
                        Instance.new("UICorner", parent).CornerRadius = UDim.new(0, 1 + 7)
                        Instance.new("UIStroke", parent).Color = Color3.fromRGB(134 - 39, 84 + 11, 112)
                        createTextButtonNumber = 1
                    end
                    if createTextButtonNumber == 1 then
                        parent.MouseEnter:Connect(function()
                            secondaryCreate(
                                parent,
                                {
                                    ["BackgroundColor3"] = Color3.fromRGB(65, 65, 80),
                                    ["BackgroundTransparency"] = (1011.12 - (334 + 677)),
                                },
                                0.2 - 0
                            ):Play()
                        end)
                        parent.MouseLeave:Connect(function()
                            secondaryCreate(
                                parent,
                                {
                                    ["BackgroundColor3"] = Color3.fromRGB(1106 - (1049 + 7), 50, 270 - 208),
                                    ["BackgroundTransparency"] = (0.3 - 0),
                                },
                                0.3
                            ):Play()
                        end)
                        createTextButtonNumber = 2
                    end
                    if createTextButtonNumber == 2 then
                        createFrameNumber = 4
                        break
                    end
                end
            end
            if createFrameNumber == (1 + 0) then
                parent.Size = UDim2.new(2 - 1, -(55 - 27), 0, 12 + 14)
                parent.Position =
                    UDim2.new(1420 - (1004 + 416), 1971 - (1621 + 336), 1939 - (337 + 1602), secondaryArgument)
                parent.Font = Enum.Font.GothamMedium
                parent.Text = createFrameText
                createFrameNumber = 1519 - (1014 + 503)
            end
            if createFrameNumber == (1019 - (446 + 569)) then
                parent.MouseButton1Click:Connect(function()
                    local createFrameNumber = 0
                    local size
                    while true do
                        if createFrameNumber == (0 + 0) then
                            local createTextButtonNumber = 0
                            local difference
                            while true do
                                if createTextButtonNumber == 0 then
                                    difference = 0 - 0
                                    while true do
                                        if difference == 1 then
                                            createFrameNumber = 1 + 0
                                            break
                                        end
                                        if difference == 0 then
                                            local createFrameNumber = 0
                                            while true do
                                                if createFrameNumber == 1 then
                                                    difference = 506 - (223 + 282)
                                                    break
                                                end
                                                if createFrameNumber == 0 then
                                                    size = parent.Size
                                                    alternateCreate(
                                                        parent,
                                                        {
                                                            ["Size"] = UDim2.new(
                                                                parent.Size.X.Scale,
                                                                parent.Size.X.Offset - 4,
                                                                parent.Size.Y.Scale,
                                                                parent.Size.Y.Offset - (3 - 1)
                                                            ),
                                                        },
                                                        0.06 + 0
                                                    ):Play()
                                                    createFrameNumber = 1
                                                end
                                            end
                                        end
                                    end
                                    break
                                end
                            end
                        end
                        if (1 + 0) == createFrameNumber then
                            task.delay(0.06, function()
                                create(parent, { ["Size"] = size }, 0.3):Play()
                            end)
                            frameCallback(parent)
                            break
                        end
                    end
                end)
                break
            end
        end
    end
    createTextButton("Reset Color", 145, function()
        for index, item in ipairs(frameData) do
            secondaryCreate(item.s, { ["Transparency"] = (0.92 - 0) }, 0.2 - 0):Play()
        end
        createFrameFlag = false
        updateInstanceProperties(textColor3)
        parent.Color = secondaryNew(textColor3, 670.2 - (623 + 47))
        updateFrameColor()
    end)
    createTextButton(
        "Lock: " .. ((updateInstancePropertiesFlag and "ON") or "OFF"),
        222 - (32 + 13),
        function(createFrameArgument)
            local createFrameNumber = 0 + 0
            local sum
            while true do
                if createFrameNumber == 0 then
                    sum = 0 + 0
                    while true do
                        if sum == 0 then
                            local FlatIdent_86FD = 0
                            while true do
                                if FlatIdent_86FD == 0 then
                                    updateInstancePropertiesFlag = not updateInstancePropertiesFlag
                                    secondaryUpdateFrame()
                                    FlatIdent_86FD = 1
                                end
                                if FlatIdent_86FD == 1 then
                                    sum = 1802 - (1070 + 731)
                                    break
                                end
                            end
                        end
                        if sum == (1 + 0) then
                            createFrameArgument.Text = "Lock: " .. ((updateInstancePropertiesFlag and "ON") or "OFF")
                            break
                        end
                    end
                    break
                end
            end
        end
    )
    createTextButton("Boost FPS: " .. ((capturedUpdateFrameFlag and "ON") or "OFF"), 1613 - (1257 + 147), function(s)
        local createFrameNumber = 0
        local sum
        while true do
            if createFrameNumber == (0 + 0) then
                sum = 0 - 0
                while true do
                    if sum == (133 - (98 + 35)) then
                        local createFrameNumber = 0
                        while true do
                            if createFrameNumber == 1 then
                                sum = 1 + 0
                                break
                            end
                            if createFrameNumber == 0 then
                                capturedUpdateFrameFlag = not capturedUpdateFrameFlag
                                updateFrame(capturedUpdateFrameFlag)
                                createFrameNumber = 1
                            end
                        end
                    end
                    if 1 == sum then
                        s.Text = "Boost FPS: " .. ((capturedUpdateFrameFlag and "ON") or "OFF")
                        if capturedUpdateFrameFlag then
                            secondaryCreate(
                                s,
                                { ["BackgroundColor3"] = Color3.fromRGB(0, 100, 50), ["BackgroundTransparency"] = (
                                    0.15 - 0
                                ) },
                                0.3 - 0
                            ):Play()
                        else
                            secondaryCreate(
                                s,
                                {
                                    ["BackgroundColor3"] = Color3.fromRGB(50, 47 + 3, 55 + 7),
                                    ["BackgroundTransparency"] = 0.3,
                                },
                                0.3 + 0
                            ):Play()
                        end
                        break
                    end
                end
                break
            end
        end
    end)
    createTextButton("Create", 798 - (395 + 162), function()
        local createFrameNumber = 0
        while true do
            if createFrameNumber == 0 then
                handleInstanceProperties()
                task.delay(0.3 + 0, function()
                    alternateUpdateFrame()
                end)
                break
            end
        end
    end)
    local secondaryTextLabel = Instance.new("TextLabel", parentVariantN)
    secondaryTextLabel.BackgroundTransparency = 1942 - (816 + 1125)
    secondaryTextLabel.Size = UDim2.new(1 - 0, -28, 1148 - (701 + 447), 20 - 6)
    secondaryTextLabel.Position = UDim2.new(0 - 0, 1355 - (391 + 950), 0, 743 - 467)
    secondaryTextLabel.Font = Enum.Font.Gotham
    secondaryTextLabel.Text = "HyperIsland V1.2 · Xiaomi"
    secondaryTextLabel.TextColor3 = Color3.fromRGB(187 - 112, 72, 160 - 95)
    secondaryTextLabel.TextSize = 6 + 2
    secondaryTextLabel.TextXAlignment = Enum.TextXAlignment.Center
    secondaryTextLabel.ZIndex = 902
end
local parentVariantO, parentVariantP, textBox, fallbackValueLabel, playButton
local capturedSound, updateTextFlag, secondaryConnection
local function updateSound()
    local FlatIdent_9917B = 0
    local updateFrameNumber
    local sum
    while true do
        if FlatIdent_9917B == 0 then
            updateFrameNumber = 0 + 0
            sum = nil
            FlatIdent_9917B = 1
        end
        if 1 == FlatIdent_9917B then
            while true do
                if updateFrameNumber == (0 - 0) then
                    sum = 0
                    while true do
                        if (1524 - (251 + 1271)) == sum then
                            if fallbackValueLabel then
                                fallbackValueLabel.Text = "0:00 / 0:00"
                            end
                            break
                        end
                        if (1 + 0) == sum then
                            local updateFrameNumber = 0
                            while true do
                                if updateFrameNumber == 1 then
                                    sum = 2
                                    break
                                end
                                if 0 == updateFrameNumber then
                                    if secondaryConnection then
                                        local updateFrameNumber = 0
                                        local difference
                                        local number
                                        while true do
                                            if updateFrameNumber == 0 then
                                                difference = 0 - 0
                                                number = nil
                                                updateFrameNumber = 1
                                            end
                                            if updateFrameNumber == 1 then
                                                while true do
                                                    if difference == 0 then
                                                        number = 0
                                                        while true do
                                                            if number == (0 - 0) then
                                                                secondaryConnection:Disconnect()
                                                                secondaryConnection = nil
                                                                break
                                                            end
                                                        end
                                                        break
                                                    end
                                                end
                                                break
                                            end
                                        end
                                    end
                                    if playButton then
                                        playButton.Text = "Play"
                                    end
                                    updateFrameNumber = 1
                                end
                            end
                        end
                        if (0 - 0) == sum then
                            if capturedSound then
                                local FlatIdent_4543F = 0
                                local updateFrameNumber
                                local difference
                                while true do
                                    if FlatIdent_4543F == 0 then
                                        updateFrameNumber = 1259 - (1147 + 112)
                                        difference = nil
                                        FlatIdent_4543F = 1
                                    end
                                    if FlatIdent_4543F == 1 then
                                        while true do
                                            if updateFrameNumber == (0 + 0) then
                                                difference = 0 - 0
                                                while true do
                                                    if difference == (1 + 0) then
                                                        capturedSound = nil
                                                        break
                                                    end
                                                    if difference == 0 then
                                                        local updateFrameNumber = 0
                                                        while true do
                                                            if updateFrameNumber == 0 then
                                                                capturedSound:Stop()
                                                                capturedSound:Destroy()
                                                                updateFrameNumber = 1
                                                            end
                                                            if updateFrameNumber == 1 then
                                                                difference = 698 - (335 + 362)
                                                                break
                                                            end
                                                        end
                                                    end
                                                end
                                                break
                                            end
                                        end
                                        break
                                    end
                                end
                            end
                            updateTextFlag = false
                            sum = 1 + 0
                        end
                    end
                    break
                end
            end
            break
        end
    end
end
local function createFrameSound(createFrameSoundText)
    local createFrameSoundNumber = 0
    local number
    local searchableText
    while true do
        if createFrameSoundNumber == 1 then
            while true do
                if number == (2 - 1) then
                    local createFrameSoundNumber = 0
                    while true do
                        if createFrameSoundNumber == 0 then
                            if not string.find(searchableText, "rbxassetid://") then
                                searchableText = "rbxassetid://" .. createFrameSoundText
                            end
                            updateSound()
                            createFrameSoundNumber = 1
                        end
                        if createFrameSoundNumber == 1 then
                            number = 7 - 5
                            break
                        end
                    end
                end
                if number == (0 - 0) then
                    local FlatIdent_186F = 0
                    while true do
                        if FlatIdent_186F == 1 then
                            number = 1
                            break
                        end
                        if 0 == FlatIdent_186F then
                            if not createFrameSoundText or (createFrameSoundText == "") then
                                return
                            end
                            searchableText = createFrameSoundText
                            FlatIdent_186F = 1
                        end
                    end
                end
                if number == (5 - 3) then
                    pcall(function()
                        local createFrameSoundNumber = 0
                        local sum
                        local sound
                        while true do
                            if createFrameSoundNumber == 0 then
                                sum = 0
                                sound = nil
                                createFrameSoundNumber = 1
                            end
                            if createFrameSoundNumber == 1 then
                                while true do
                                    if sum == (569 - (237 + 329)) then
                                        updateTextFlag = true
                                        playButton.Text = "Playing..."
                                        sum = 4
                                    end
                                    if sum == 1 then
                                        local createFrameSoundNumber = 0
                                        while true do
                                            if createFrameSoundNumber == 1 then
                                                sum = 2 + 0
                                                break
                                            end
                                            if createFrameSoundNumber == 0 then
                                                sound.Volume = 3 - 2
                                                sound.Parent = game:GetService("SoundService")
                                                createFrameSoundNumber = 1
                                            end
                                        end
                                    end
                                    if sum == (3 + 1) then
                                        secondaryConnection = runService.Heartbeat:Connect(function()
                                            if capturedSound and capturedSound.IsPlaying then
                                                local createFrameSoundNumber = 0
                                                local timePosition
                                                local timeLength
                                                while true do
                                                    if createFrameSoundNumber == (1124 - (408 + 716)) then
                                                        timePosition = capturedSound.TimePosition
                                                        timeLength = capturedSound.TimeLength
                                                        createFrameSoundNumber = 3 - 2
                                                    end
                                                    if (822 - (344 + 477)) == createFrameSoundNumber then
                                                        fallbackValueLabel.Text = string.format(
                                                            "%d:%02d",
                                                            floor(timePosition / 60),
                                                            floor(timePosition % 60)
                                                        ) .. " / " .. string.format(
                                                            "%d:%02d",
                                                            floor(timeLength / (11 + 49)),
                                                            floor(timeLength % 60)
                                                        )
                                                        break
                                                    end
                                                end
                                            else
                                                updateSound()
                                            end
                                        end)
                                        sound.Ended:Connect(function()
                                            updateSound()
                                        end)
                                        break
                                    end
                                    if sum == 0 then
                                        local createFrameSoundNumber = 0
                                        while true do
                                            if createFrameSoundNumber == 1 then
                                                sum = 1762 - (1188 + 573)
                                                break
                                            end
                                            if 0 == createFrameSoundNumber then
                                                sound = Instance.new("Sound")
                                                sound.SoundId = searchableText
                                                createFrameSoundNumber = 1
                                            end
                                        end
                                    end
                                    if sum == 2 then
                                        sound:Play()
                                        capturedSound = sound
                                        sum = 7 - 4
                                    end
                                end
                                break
                            end
                        end
                    end)
                    break
                end
            end
            break
        end
        if 0 == createFrameSoundNumber then
            number = 0 - 0
            searchableText = nil
            createFrameSoundNumber = 1
        end
    end
end
function handler()
    local frameNumber = 0
    while true do
        if frameNumber == 0 then
            if not secondaryCreateFrameFlag then
                return
            end
            secondaryCreateFrameFlag = false
            frameNumber = 1
        end
        if frameNumber == (1 + 0) then
            if parentVariantP then
                local frameNumber = 0
                while true do
                    if frameNumber == 0 then
                        secondaryCreate(parentVariantP, { ["BackgroundTransparency"] = 1 }, 0.3):Play()
                        task.delay(0.3 - 0, function()
                            if parentVariantO then
                                local frameNumber = 0
                                local difference
                                while true do
                                    if frameNumber == 0 then
                                        difference = 0 - 0
                                        while true do
                                            if difference == 1 then
                                                parentVariantP = nil
                                                break
                                            end
                                            if difference == (0 - 0) then
                                                local frameNumber = 0
                                                while true do
                                                    if frameNumber == 0 then
                                                        parentVariantO:Destroy()
                                                        parentVariantO = nil
                                                        frameNumber = 1
                                                    end
                                                    if frameNumber == 1 then
                                                        difference = 1530 - (508 + 1021)
                                                        break
                                                    end
                                                end
                                            end
                                        end
                                        break
                                    end
                                end
                            end
                            secondaryHandleFrame()
                        end)
                        break
                    end
                end
            else
                secondaryHandleFrame()
            end
            break
        end
    end
end
function secondaryCreateFrame()
    local createFrameNumber = 0
    local parent
    local textLabel
    local frame
    local secondaryParent
    local uiListLayout
    local stopButton
    while true do
        if (8 + 0) == createFrameNumber then
            fallbackValueLabel.ZIndex = 2069 - (228 + 938)
            secondaryParent = Instance.new("Frame", parentVariantP)
            secondaryParent.BackgroundTransparency = 686 - (332 + 353)
            secondaryParent.Size = UDim2.new(1, -28, 0 - 0, 30)
            secondaryParent.Position = UDim2.new(0 - 0, 14 + 0, 0 + 0, 379 - 284)
            secondaryParent.ZIndex = 1326 - (18 + 405)
            uiListLayout = Instance.new("UIListLayout", secondaryParent)
            uiListLayout.FillDirection = Enum.FillDirection.Horizontal
            createFrameNumber = 5 + 4
        end
        if createFrameNumber == 2 then
            parentVariantP.ZIndex = 456 + 445
            parentVariantP.ClipsDescendants = true
            Instance.new("UICorner", parentVariantP).CornerRadius = UDim.new(0 - 0, 994 - (194 + 784))
            parent = Instance.new("UIStroke", parentVariantP)
            parent.Color = secondaryNew(capturedTextColor3, 0.2)
            parent.Thickness = 2
            parent.Transparency = 1
            handleColor(Instance.new("UIGradient", parent)).Color = (createFrameFlag and colorSequence)
                or alternateNew(capturedTextColor3)
            createFrameNumber = 1773 - (694 + 1076)
        end
        if createFrameNumber == 1 then
            parentVariantO.Active = false
            parentVariantP = Instance.new("Frame", parentVariantO)
            parentVariantP.BackgroundColor3 = Color3.fromRGB(1924 - (122 + 1782), 19 + 1, 27 + 1)
            parentVariantP.BackgroundTransparency = 1 + 0
            parentVariantP.BorderSizePixel = 0 + 0
            parentVariantP.AnchorPoint = Vector2.new(0.5, 0.5 - 0)
            parentVariantP.Position = UDim2.new(0.5 + 0, 1970 - (214 + 1756), 0.5 - 0, 0 + 0)
            parentVariantP.Size = UDim2.new(0 + 0, 865 - (217 + 368), 0 - 0, 165)
            createFrameNumber = 2 + 0
        end
        if createFrameNumber == (9 + 2) then
            stopButton.Font = Enum.Font.GothamBold
            stopButton.Text = "Stop"
            stopButton.TextColor3 = Color3.fromRGB(9 + 246, 1144 - (844 + 45), 255)
            stopButton.TextSize = 295 - (242 + 42)
            stopButton.ZIndex = 1807 - 904
            Instance.new("UICorner", stopButton).CornerRadius = UDim.new(0, 18 - 10)
            playButton.MouseButton1Click:Connect(function()
                if textBox.Text ~= "" then
                    createFrameSound(textBox.Text)
                end
            end)
            stopButton.MouseButton1Click:Connect(function()
                updateSound()
            end)
            break
        end
        if createFrameNumber == 0 then
            local number = 0
            while true do
                if number == 4 then
                    createFrameNumber = 1
                    break
                end
                if 0 == number then
                    if secondaryCreateFrameFlag or updateFrameFlag or flag then
                        return
                    end
                    if frameFlag then
                        createFrameText = "music"
                        handleInstanceProperties()
                        return
                    end
                    number = 1
                end
                if number == 3 then
                    parentVariantO.Size = UDim2.new(1201 - (132 + 1068), 0 - 0, 1, 1623 - (214 + 1409))
                    parentVariantO.ZIndex = 697 + 203
                    number = 4
                end
                if number == 1 then
                    secondaryCreateFrameFlag = true
                    handleFrame()
                    number = 2
                end
                if number == 2 then
                    parentVariantO = Instance.new("Frame", screenGui)
                    parentVariantO.BackgroundTransparency = 1
                    number = 3
                end
            end
        end
        if createFrameNumber == (1638 - (497 + 1137)) then
            textLabel.TextColor3 = Color3.fromRGB(240, 1180 - (9 + 931), 250)
            textLabel.TextSize = 302 - (181 + 108)
            textLabel.TextXAlignment = Enum.TextXAlignment.Left
            textLabel.ZIndex = 538 + 364
            frame = Instance.new("Frame", parentVariantP)
            frame.BackgroundColor3 = Color3.fromRGB(123 - 73, 50, 183 - 121)
            frame.BackgroundTransparency = 0.3 + 0
            frame.Size = UDim2.new(1 + 0, -28, 476 - (296 + 180), 1435 - (1183 + 220))
            createFrameNumber = 1270 - (1037 + 228)
        end
        if createFrameNumber == 5 then
            frame.Position = UDim2.new(0, 22 - 8, 0 - 0, 122 - 86)
            frame.ZIndex = 903
            Instance.new("UICorner", frame).CornerRadius = UDim.new(734 - (527 + 207), 8)
            textBox = Instance.new("TextBox", frame)
            textBox.BackgroundTransparency = 528 - (187 + 340)
            textBox.Size = UDim2.new(1871 - (1298 + 572), -12, 2 - 1, 0)
            textBox.Position = UDim2.new(170 - (144 + 26), 14 - 8, 0, 0)
            textBox.Font = Enum.Font.Gotham
            createFrameNumber = 6
        end
        if createFrameNumber == (6 - 3) then
            create(parentVariantP, { ["BackgroundTransparency"] = (0.12 + 0) }, 0.6 - 0):Play()
            secondaryCreate(parent, { ["Transparency"] = (0.15 - 0) }, 0.5):Play()
            textLabel = Instance.new("TextLabel", parentVariantP)
            textLabel.BackgroundTransparency = 4 - 3
            textLabel.Size = UDim2.new(1, -(11 + 9), 0 - 0, 23 + 1)
            textLabel.Position = UDim2.new(0 + 0, 10, 202 - (5 + 197), 694 - (339 + 347))
            textLabel.Font = Enum.Font.GothamSemibold
            textLabel.Text = "♫  Music"
            createFrameNumber = 8 - 4
        end
        if createFrameNumber == (24 - 17) then
            local number = 0
            while true do
                if number == 2 then
                    fallbackValueLabel.Text = "0:00 / 0:00"
                    fallbackValueLabel.TextColor3 = Color3.fromRGB(220, 47 + 173, 1622 - (356 + 1031))
                    number = 3
                end
                if number == 0 then
                    fallbackValueLabel.BackgroundTransparency = 1
                    fallbackValueLabel.Size = UDim2.new(377 - (365 + 11), -(27 + 1), 0 - 0, 16)
                    number = 1
                end
                if number == 1 then
                    fallbackValueLabel.Position = UDim2.new(0 - 0, 938 - (837 + 87), 0 - 0, 1742 - (837 + 833))
                    fallbackValueLabel.Font = Enum.Font.Gotham
                    number = 2
                end
                if number == 3 then
                    fallbackValueLabel.TextSize = 5 + 5
                    fallbackValueLabel.TextXAlignment = Enum.TextXAlignment.Left
                    number = 4
                end
                if number == 4 then
                    createFrameNumber = 1654 - (73 + 1573)
                    break
                end
            end
        end
        if createFrameNumber == (1397 - (1307 + 81)) then
            uiListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
            uiListLayout.Padding = UDim.new(234 - (7 + 227), 19 - 7)
            playButton = Instance.new("TextButton", secondaryParent)
            playButton.BackgroundColor3 = Color3.fromRGB(0, 255, 175)
            playButton.BackgroundTransparency = 166.15 - (90 + 76)
            playButton.Size = UDim2.new(0.45, 0 - 0, 1, 0 + 0)
            playButton.Font = Enum.Font.GothamBold
            playButton.Text = "Play"
            createFrameNumber = 9 + 1
        end
        if createFrameNumber == (5 + 1) then
            local number = 0
            while true do
                if number == 3 then
                    textBox.ZIndex = 215 + 689
                    fallbackValueLabel = Instance.new("TextLabel", parentVariantP)
                    number = 4
                end
                if number == 0 then
                    textBox.PlaceholderText = "Music ID..."
                    textBox.PlaceholderColor3 = Color3.fromRGB(155, 160, 697 - 519)
                    number = 1
                end
                if number == 4 then
                    createFrameNumber = 4 + 3
                    break
                end
                if 2 == number then
                    textBox.TextSize = 3 + 8
                    textBox.TextXAlignment = Enum.TextXAlignment.Left
                    number = 3
                end
                if number == 1 then
                    textBox.Text = ""
                    textBox.TextColor3 = Color3.fromRGB(500 - (197 + 63), 240, 250)
                    number = 2
                end
            end
        end
        if createFrameNumber == (2 + 8) then
            playButton.TextColor3 = Color3.fromRGB(14 - 2, 12, 18)
            playButton.TextSize = 11
            playButton.ZIndex = 2272 - (618 + 751)
            Instance.new("UICorner", playButton).CornerRadius = UDim.new(0, 8)
            stopButton = Instance.new("TextButton", secondaryParent)
            stopButton.BackgroundColor3 = Color3.fromRGB(255, 38 + 12, 1960 - (206 + 1704))
            stopButton.BackgroundTransparency = 0.15
            stopButton.Size = UDim2.new(0.45 - 0, 0 - 0, 1 + 0, 1275 - (155 + 1120))
            createFrameNumber = 1517 - (396 + 1110)
        end
    end
end
task.spawn(function()
    local sum = 0 - 0
    while true do
        if sum == (2 + 3) then
            if previousParent and previousParent.Parent then
                previousParent:Destroy()
            end
            break
        end
        if sum == (0 + 0) then
            task.wait(1.5 + 0)
            secondaryFlag = true
            fallbackCreate(previousParent, { ["BackgroundTransparency"] = (977 - (230 + 746)) }, 601.4 - (473 + 128)):Play()
            sum = 1
        end
        if sum == (50 - (39 + 9)) then
            local number = 0
            local difference
            while true do
                if number == 0 then
                    difference = 266 - (38 + 228)
                    while true do
                        if difference == (0 - 0) then
                            fallbackCreate(secondaryTextLabel, { ["TextTransparency"] = (474 - (106 + 367)) }, 0.3 + 0):Play()
                            task.wait(0.25)
                            difference = 1863 - (354 + 1508)
                        end
                        if difference == (3 - 2) then
                            parentVariantB.Visible = true
                            sum = 3 + 0
                            break
                        end
                    end
                    break
                end
            end
        end
        if sum == (2 + 1) then
            parentVariantB.BackgroundTransparency = 1 - 0
            parentVariantB.Size = UDim2.new(1244 - (334 + 910), 895 - (92 + 803), 0 + 0, 1181 - (1035 + 146))
            create(
                parentVariantB,
                { ["Size"] = UDim2.new(0, updateFrameNumber, 616 - (230 + 386), secondaryInstancePropertiesNumber) },
                0.55 + 0
            ):Play()
            sum = 1514 - (353 + 1157)
        end
        if sum == 1 then
            local FlatIdent_2644E = 0
            local difference
            while true do
                if FlatIdent_2644E == 0 then
                    difference = 1114 - (53 + 1061)
                    while true do
                        if difference == (1635 - (1568 + 67)) then
                            local number = 0
                            while true do
                                if number == 1 then
                                    difference = 2 - 1
                                    break
                                end
                                if number == 0 then
                                    fallbackCreate(secondaryUiStroke, { ["Transparency"] = (1 + 0) }, 0.3 + 0):Play()
                                    fallbackCreate(nextParent, { ["Transparency"] = (2 - 1) }, 0.3 - 0):Play()
                                    number = 1
                                end
                            end
                        end
                        if difference == (1 + 0) then
                            fallbackCreate(textLabel, { ["TextTransparency"] = 1 }, 1212.3 - (615 + 597)):Play()
                            sum = 2
                            break
                        end
                    end
                    break
                end
            end
        end
        if sum == (4 + 0) then
            local number = 0
            while true do
                if number == 1 then
                    task.wait(0.5 + 0)
                    sum = 3 + 2
                    break
                end
                if 0 == number then
                    secondaryCreate(parentVariantB, { ["BackgroundTransparency"] = 0.18 }, 0.4 - 0):Play()
                    secondaryCreate(parentVariantC, { ["Transparency"] = (0.25 + 0) }, 0.4):Play()
                    number = 1
                end
            end
        end
    end
end)
task.spawn(function()
    local difference, number = 2898 - (1056 + 843), 0
    while screenGui and screenGui.Parent do
        task.wait(0.3 - 0)
        local secondaryDifference = 0 - 0
        pcall(function()
            local difference = 0 - 0
            local performanceStats
            while true do
                if difference == (0 + 0) then
                    local number = 0
                    while true do
                        if number == 0 then
                            performanceStats = stats:FindFirstChild("PerformanceStats")
                            if performanceStats then
                                local ping = performanceStats:FindFirstChild("Ping")
                                if ping then
                                    secondaryDifference = floor(ping:GetValue())
                                end
                            end
                            number = 1
                        end
                        if number == 1 then
                            difference = 1977 - (286 + 1690)
                            break
                        end
                    end
                end
                if difference == (912 - (98 + 813)) then
                    if secondaryDifference == (0 + 0) then
                        local number = 0
                        local difference
                        local dataPingContainer
                        while true do
                            if number == 1 then
                                while true do
                                    if difference == 0 then
                                        dataPingContainer = stats.Network
                                            and stats.Network:FindFirstChild("ServerStatsItem")
                                        if dataPingContainer then
                                            local number = 0
                                            local sum
                                            local dataPing
                                            while true do
                                                if number == 0 then
                                                    sum = 0 + 0
                                                    dataPing = nil
                                                    number = 1
                                                end
                                                if number == 1 then
                                                    while true do
                                                        if sum == (507 - (263 + 244)) then
                                                            dataPing = dataPingContainer:FindFirstChild("Data Ping")
                                                            if dataPing then
                                                                secondaryDifference = floor(dataPing:GetValue())
                                                            end
                                                            break
                                                        end
                                                    end
                                                    break
                                                end
                                            end
                                        end
                                        break
                                    end
                                end
                                break
                            end
                            if 0 == number then
                                difference = 0 - 0
                                dataPingContainer = nil
                                number = 1
                            end
                        end
                    end
                    break
                end
            end
        end)
        local quotient = 0 + 0
        pcall(function()
            local difference = 1687 - (1502 + 185)
            local dataPacketsLostContainer
            while true do
                if difference == (0 + 0) then
                    dataPacketsLostContainer = stats.Network and stats.Network:FindFirstChild("ServerStatsItem")
                    if dataPacketsLostContainer then
                        local FlatIdent_2595D = 0
                        local difference
                        local dataPacketsLost
                        while true do
                            if FlatIdent_2595D == 0 then
                                difference = 0 - 0
                                dataPacketsLost = nil
                                FlatIdent_2595D = 1
                            end
                            if FlatIdent_2595D == 1 then
                                while true do
                                    if difference == (0 - 0) then
                                        dataPacketsLost = dataPacketsLostContainer:FindFirstChild("Data Packets Lost")
                                        if dataPacketsLost then
                                            quotient = floor(dataPacketsLost:GetValue() * 10) / (1537 - (629 + 898))
                                        end
                                        break
                                    end
                                end
                                break
                            end
                        end
                    end
                    break
                end
            end
        end)
        if (sum >= 50) and (secondaryDifference < (217 - 137)) then
            nestedUpdateInstancePropertiesNumber = 205 - 125
        elseif sum >= 30 then
            nestedUpdateInstancePropertiesNumber = 60
        else
            nestedUpdateInstancePropertiesNumber = 405 - (12 + 353)
        end
        table.insert(numbers, differenceNumber)
        if #numbers > fallbackUpdateInstancePropertiesNumber then
            table.remove(numbers, 1912 - (1680 + 231))
        end
        table.insert(sums, sum)
        if #sums > fallbackUpdateInstancePropertiesNumber then
            table.remove(sums, 1 + 0)
        end
        table.insert(updateInstancePropertiesData, min(secondaryDifference, positionNumber))
        if #updateInstancePropertiesData > fallbackUpdateInstancePropertiesNumber then
            table.remove(updateInstancePropertiesData, 1 + 0)
        end
        if sum > (1149 - (212 + 937)) then
            local secondaryNumber = 0
            local secondarySum
            while true do
                if secondaryNumber == 0 then
                    secondarySum = 0 + 0
                    while true do
                        if secondarySum == (1062 - (111 + 951)) then
                            if sum < difference then
                                difference = sum
                            end
                            if sum > number then
                                number = sum
                            end
                            break
                        end
                    end
                    break
                end
            end
        end
        result.Text = tostring(updateInstancePropertiesNumber)
        result.TextColor3 = secondaryFromRgb(updateInstancePropertiesNumber)
        dataResult.Text = secondaryDifference .. "ms"
        dataResult.TextColor3 = fromRgb(secondaryDifference, 17 + 63, 150)
        textResult.Text = string.format("%.1f%%", quotient)
        textResult.TextColor3 = fromRgb(quotient, 1, 32 - (18 + 9))
        alternateCreate(
            parentVariantE,
            {
                ["Size"] = UDim2.new(
                    clamp(updateInstancePropertiesNumber / additionalInstancePropertiesNumber, 0 + 0, 535 - (31 + 503)),
                    0,
                    1633 - (595 + 1037),
                    1444 - (189 + 1255)
                ),
            },
            0.2
        ):Play()
        parentVariantE.BackgroundColor3 = secondaryFromRgb(updateInstancePropertiesNumber)
        if textFlag then
            fallbackUpdateInstanceProperties()
            local sum, secondarySum = 0 + 0, 0
            for index = 1, #sums do
                if sums[index] > 0 then
                    local difference = 0 - 0
                    while true do
                        if (1279 - (1170 + 109)) == difference then
                            sum = sum + sums[index]
                            secondarySum = secondarySum + 1
                            break
                        end
                    end
                end
            end
            alternateValueLabel.Text = "AVG: "
                .. (((secondarySum > (1817 - (348 + 1469))) and floor(sum / secondarySum)) or 0)
                .. " | PING: "
                .. secondaryDifference
                .. "ms"
            additionalValueLabel.Text = "MIN: " .. difference .. " | MAX: " .. number
            secondaryDataResult.Text = os.date("%H:%M:%S") .. " · " .. format(tick() - textNumber)
            secondaryTextResult.Text = "S: "
                .. tostring(game.PlaceId)
                .. " · J: "
                .. string.sub(tostring(game.JobId), 1290 - (1115 + 174), 19 - 11)
            alternateTextResult.Text = "Players: " .. #players:GetPlayers() .. "/" .. players.MaxPlayers
            additionalTextResult.Text = "RAM: "
                .. floor(collectgarbage("count") / 1024)
                .. "MB · "
                .. string.format("%.1fms", product)
                .. " · FPS: "
                .. updateInstancePropertiesNumber
        end
    end
end)
