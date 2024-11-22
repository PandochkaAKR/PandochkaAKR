-- Ссылка на Библиотеку
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()

-- Создать окно UI
local Window = Library.CreateLib("Refinery Caves 2 By PandochkaAKR,"RJTheme3")

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
Section:NewSlider("WalkSpeed", "SliderInfo", 500, 20, function(s) -- 500 (Макс. значение) | 0 (Мин. значение)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section:NewSlider("JumpPower", "SliderInfo", 500, 50, function(s) -- 500 (Макс. значение) | 0 (Мин. значение)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

-- Дропдаун
Section:NewDropdown("DropdownText", "DropdownInf", {"Option 1", "Option 2", "Option 3"}, function(currentOption)
    print(currentOption)
end)

-- Секция
local Tab = Window:NewTab("Vehicle")

-- Подсекция
local Section = Tab:NewSection("Teleport on Vehicle")

-- Кнопка
Section:NewButton("Caves", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(871,20,1789) 
end)

Section:NewButton("terain 1", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1611,35,717) 
end)

-- Кнопка
Section:NewButton("Caves Shards", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6623,-571,854)
end)

-- Секция
local Tab = Window:NewTab("Teleports")

-- Подсекция
local Section = Tab:NewSection("Teleport Player")


-- Кнопка
Section:NewButton("shop", "Teleport too Emeralde", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2242,-485,18) 
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
Section:NewButton("EMERALD", "Teleport too Claudnite", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7813,7,-3296) 
end)

-- Кнопка
Section:NewButton("g", "Teleport too Claudnite", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7207,757,-2968) 
end)

-- Секция
local Tab = Window:NewTab("Boat")

-- Подсекция
local Section = Tab:NewSection("Teleport on Boat")

-- Кнопка
Section:NewButton("EMERALD", "Teleport too Emeralde", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7745,20,-3337) 
end)

-- Кнопка
Section:NewButton("причал", "Teleport too Emeralde", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2152,10,-883) 
end)

-- Кнопка
Section:NewButton("SEllARY", "Teleport too Emeralde", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1441,5,168) 
end)

-- Кнопка
Section:NewButton("shop", "Teleport too Emeralde", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2242,-485,18) 
end)



local Window = Library.CreateLib("Refinery Caves 2 By PandochkaAKR, "RJTheme3")
        
-- Секция
local Tab = Window:NewTab("Settings")

-- Подсекция
local Section = Tab:NewSection("Coming soon")
