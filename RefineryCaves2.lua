local player = game.Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = char:WaitForChild("HumanoidRootPart")
local humanoid = char:WaitForChild("Humanoid")

local flying = false
local speed = 50
local bodyVelocity
local bodyGyro

local function setFlying(state)
    if state then
        if flying then return end
        flying = true

        -- Убираем гравитацию
        humanoid.PlatformStand = true

        -- Создаём силу для полёта
        bodyVelocity = Instance.new("BodyVelocity")
        bodyVelocity.Velocity = Vector3.new(0, 0, 0)
        bodyVelocity.MaxForce = Vector3.new(4000, 4000, 4000)
        bodyVelocity.Parent = humanoidRootPart

        bodyGyro = Instance.new("BodyGyro")
        bodyGyro.CFrame = humanoidRootPart.CFrame
        bodyGyro.MaxTorque = Vector3.new(4000, 4000, 4000)
        bodyGyro.Parent = humanoidRootPart

        -- Управление полётом
        local userInput = game:GetService("UserInputService")
        local runService = game:GetService("RunService")

        local function flyStep()
            if not flying then return end
            local direction = Vector3.new(0, 0, 0)
            
            if userInput:IsKeyDown(Enum.KeyCode.W) then
                direction = direction + (humanoidRootPart.CFrame.LookVector * speed)
            end
            if userInput:IsKeyDown(Enum.KeyCode.S) then
                direction = direction - (humanoidRootPart.CFrame.LookVector * speed)
            end
            if userInput:IsKeyDown(Enum.KeyCode.A) then
                direction = direction - (humanoidRootPart.CFrame.RightVector * speed)
            end
            if userInput:IsKeyDown(Enum.KeyCode.D) then
                direction = direction + (humanoidRootPart.CFrame.RightVector * speed)
            end
            if userInput:IsKeyDown(Enum.KeyCode.Space) then
                direction = direction + Vector3.new(0, speed, 0)
            end
            if userInput:IsKeyDown(Enum.KeyCode.LeftControl) then
                direction = direction - Vector3.new(0, speed, 0)
            end

            bodyVelocity.Velocity = direction
        end

        runService.RenderStepped:Connect(flyStep)
    else
        -- Выключаем полёт
        flying = false
        humanoid.PlatformStand = false
        if bodyVelocity then bodyVelocity:Destroy() end
        if bodyGyro then bodyGyro:Destroy() end
        humanoidRootPart.Velocity = Vector3.zero
    end
end

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
Section:NewSlider("WalkSpeed", "SliderInfo", 500, 20, function(s) -- 500 (Макс. значение) | 0 (Мин. значение)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section:NewSlider("JumpPower", "SliderInfo", 500, 50, function(j) -- 500 (Макс. значение) | 0 (Мин. значение)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = j
end)

Section:NewToggle("Character Light", "Toggle Light", function(state)
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()

    if character and character:FindFirstChild("HumanoidRootPart") then
        local existingLight = character.HumanoidRootPart:FindFirstChild("CharacterLight")
        
        if state then
            if not existingLight then
                -- Создаём новую точку света
                local light = Instance.new("PointLight")
                light.Name = "CharacterLight"
                light.Parent = character.HumanoidRootPart
                light.Range = 99999999  -- Дальность света
                light.Brightness = 2  -- Яркость
                light.Color = Color3.fromRGB(255, 255, 200)  -- Цвет тёплого света
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

Section:NewToggle("Fly", "on/off fly", function(state)
    setFlying(state) -- Активирует или отключает полёт
    if state then
        print("Полёт включен")
    else
        print("Полёт выключен")
    end
end)

Section:NewToggle("Clock", "Clock off\on", function(state)
    if state then
        game.Players.LocalPlayer.Values._ClockPass.Value = true
    else
        game.Players.LocalPlayer.Values._ClockPass.Value = false
    end
end)

Section:NewToggle("2X XP", "2X XP off\on", function(state)
    if state then
        game.Players.LocalPlayer.Values._MoreMastery.Value = true
    else
        game.Players.LocalPlayer.Values._MoreMastery.Value = false
    end
end)

Section:NewToggle("CheaperFilling", "CheaperFilling off\on", function(state)
    if state then
        game.Players.LocalPlayer.Values._CheaperFilling.Value = true
    else
        game.Players.LocalPlayer.Values._CheaperFilling.Value = false
    end
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
Section:NewButton("Enchants", "Teleport too Claudnite", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3031,-587,-1548) 
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

-- Секция
local Tab = Window:NewTab("Settings")
