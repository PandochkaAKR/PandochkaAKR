local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()

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

local Tab = Window:NewTab("Terrain")

local Section = Tab:NewSection("Terrain")

Section:NewButton("Your Plot", "Teleport to Your Plot", function()
    for i = 1, 8 do
        local plot = game.Workspace.Plots["Plot" .. i]
        if plot.Owner.Value == game.Players.LocalPlayer then
            local targetCFrame = plot.Plot.CFrame + Vector3.new(0, 20, 0)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = targetCFrame
            print(i)
            break
        end
    end
end)

local Section = Tab:NewSection("Plots")
Section:NewButton("Plot1", "Teleport too Plot1", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Plots.Plot1.Plot.CFrame
end)

Section:NewButton("Plot2", "Teleport too Plot2", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Plots.Plot2.Plot.CFrame
end)

Section:NewButton("Plot3", "Teleport too Plot3", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Plots.Plot3.Plot.CFrame
end)

Section:NewButton("Plot4", "Teleport too Plot4", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Plots.Plot4.Plot.CFrame
end)

Section:NewButton("Plot5", "Teleport too Plot5", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Plots.Plot5.Plot.CFrame
end)

Section:NewButton("Plot6", "Teleport too Plot6", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Plots.Plot6.Plot.CFrame
end)

Section:NewButton("Plot7", "Teleport too Plot7", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Plots.Plot7.Plot.CFrame
end)

Section:NewButton("Plot8", "Teleport too Plot8", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Plots.Plot8.Plot.CFrame
end)

-- Секция
local Tab = Window:NewTab("Teleports")

-- Подсекция
local Section = Tab:NewSection("Teleports")

-- Кнопки телепортации
Section:NewButton("shop", "Teleport too Emeralde", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2242,-485,18) 
end)

Section:NewButton("UCShop", "Teleport too UCShop", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1906,5,-214) 
end)

Section:NewButton("Caves Shards", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6623,-571,854)
end)

-- Кнопки телепортации
Section:NewButton("EMERALD", "Teleport too Emeralde", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7745,20,-3337) 
end)

Section:NewButton("причал", "Teleport too причал", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2152,10,-883) 
end)

Section:NewButton("SEllARY", "Teleport too Emeralde", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1441,5,168) 
end)

Section:NewButton("ENCHANTED", "Teleport too ENCHANTED", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3167,-580,-1626) 
end)

-- Кнопка
Section:NewButton("Caves", "Teleport too Caves", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(871,5,1789) 
end)

-- Кнопка
Section:NewButton("UCShop", "Teleport too UCShop", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1906,5,-214) 
end)

-- Кнопка
Section:NewButton("NAUCIS FIND", "Teleport too NAUCIS FIND", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2095,5,-672) 
end)

-- Кнопка
Section:NewButton("FURNITURE", "Teleport too FURNITURE", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-591,78,276) 
end)

-- Кнопка
Section:NewButton("ROSEWELL MINES", "Teleport too ROSEWELL MINES", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5541,14,-1686) 
end)

-- Кнопка
Section:NewButton("VI'S LOGICS", "Teleport too VI'S LOGICS", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5129,61,-2815) 
end)

-- Кнопка
Section:NewButton("Claudnite", "Teleport too Claudnite", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7207,757,-2968) 
end)

-- Кнопка
Section:NewButton("CRAIG'S DEALERSHIP", "Teleport too Claudnite", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6843,6,-4243) 
end)

-- Кнопка
Section:NewButton("Enchants", "Teleport too Claudnite", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3031,-587,-1548) 
end)

-- Секция
local Tab = Window:NewTab("Settings")
