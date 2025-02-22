local player = game.Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = char:WaitForChild("HumanoidRootPart")
local humanoid = char:WaitForChild("Humanoid")

-- Создать окно UI
local Window = Library.CreateLib("Refinery Caves 2 By PandochkaAKR","RJTheme3")

-- Секция
local Tab = Window:NewTab("Player")

-- Подсекция
local Section = Tab:NewSection("Section Name")

-- Кнопка
Section:NewButton("ButtonText", "ButtonInfo", function()

end)

-- Переключатель
Section:NewToggle("ToggleText", "ToggleInfo", function(state)
    if state then
        print("Toggle On")
    else
        print("Toggle Off")
    end
end)

-- Слайдер
Section:NewSlider("WalkSpeed", "SliderInfo", 500, 20, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section:NewSlider("JumpPower", "SliderInfo", 500, 50, function(j)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = j
end)

Section:NewToggle("Character Light", "Toggle Light", function(state)
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()

    if character and character:FindFirstChild("HumanoidRootPart") then
        local existingLight = character.HumanoidRootPart:FindFirstChild("CharacterLight")
        
        if state then
            if not existingLight then
                local light = Instance.new("PointLight")
                light.Name = "CharacterLight"
                light.Parent = character.HumanoidRootPart
                light.Range = 99999999
                light.Brightness = 2
                light.Color = Color3.fromRGB(255, 255, 200)
                print("Light On")
            end
        else
            if existingLight then
                existingLight:Destroy()
                print("Light Off")
            end
        end
    end
end)

Section:NewToggle("Clock", "Clock off\on", function(state)
    game.Players.LocalPlayer.Values._ClockPass.Value = state
end)

Section:NewToggle("2X XP", "2X XP off\on", function(state)
    game.Players.LocalPlayer.Values._MoreMastery.Value = state
end)

Section:NewToggle("CheaperFilling", "CheaperFilling off\on", function(state)
    game.Players.LocalPlayer.Values._CheaperFilling.Value = state
end)

-- Дропдаун
Section:NewDropdown("DropdownText", "DropdownInf", {"Option 1", "Option 2", "Option 3"}, function(currentOption)
    print(currentOption)
end)

-- Секция
local Tab = Window:NewTab("Vehicle")

-- Подсекция
local Section = Tab:NewSection("Teleport on Vehicle")

-- Кнопки телепортации
Section:NewButton("Caves", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(871,20,1789) 
end)

Section:NewButton("terain 1", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1611,35,717) 
end)

Section:NewButton("Caves Shards", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6623,-571,854)
end)

-- Секция
local Tab = Window:NewTab("Teleports")

-- Подсекция
local Section = Tab:NewSection("Teleport Player")

-- Кнопки телепортации
Section:NewButton("shop", "Teleport too Emeralde", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2242,-485,18) 
end)

Section:NewButton("Caves", "Teleport too Caves", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(871,5,1789) 
end)

Section:NewButton("UCShop", "Teleport too UCShop", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1906,5,-214) 
end)

-- Секция
local Tab = Window:NewTab("Boat")

-- Подсекция
local Section = Tab:NewSection("Teleport on Boat")

-- Кнопки телепортации
Section:NewButton("EMERALD", "Teleport too Emeralde", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7745,20,-3337) 
end)

Section:NewButton("причал", "Teleport too Emeralde", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2152,10,-883) 
end)

Section:NewButton("SEllARY", "Teleport too Emeralde", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1441,5,168) 
end)

Section:NewButton("shop", "Teleport too Emeralde", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2242,-485,18) 
end)

-- Секция
local Tab = Window:NewTab("Settings")
