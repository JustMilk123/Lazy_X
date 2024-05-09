local GUI = Instance.new("ScreenGui")
GUI.Name = "Support"
GUI.Parent = game.Players.LocalPlayer.PlayerGui

local Back = Instance.new("Frame")
Back.Name = "Back"
Back.BackgroundColor3 = Color3.new(0, 0, 0)
Back.BackgroundTransparency = 0.2
Back.BorderSizePixel = 0
Back.Size = UDim2.new(0.2, 0, 0.5, 0)
Back.Parent = GUI

local Boat = Instance.new("TextLabel")
Boat.Name = "Build A Boat"
Boat.BackgroundTransparency = 1
Boat.TextColor3 = Color3.new(1, 1, 1)
Boat.Text = "Build A Boat"
Boat.BorderSizePixel = 0
Boat.TextScaled = true
Boat.Position = UDim2.new(0.05, 0, 0.05, 0)
Boat.Size = UDim2.new(0.1, 0, 0.05, 0)
Boat.Parent = GUI

local X = Instance.new("TextButton")
X.Name = "X"
X.BackgroundColor3 = Color3.new(0, 0, 0)
X.TextColor3 = Color3.new(1, 1, 1)
X.TextScaled = true
X.Text = "X"
X.BackgroundTransparency = 0.2
X.BorderSizePixel = 0
X.Position = UDim2.new(0.175, 0, 0, 0)
X.Size = UDim2.new(0.025, 0, 0.05, 0)
X.Parent = GUI

X.MouseButton1Click:Connect(function()
    GUI:Destroy()
end)

if game.PlaceId == 537413528 then
    --Build A Boat
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Lazy_X", "BloodTheme")

    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("The Usual")

    MainSection:NewSlider("WalkSpeed", "Change The Speed You Go At", 200, 16, function(s)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
    end)

    MainSection:NewSlider("JumpPower", "Change The Height You Jump", 200, 50, function(s)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
    end)

    MainSection:NewSlider("HipHeight", "Change The Height You Walk At", 200, 0, function(s)
        game.Players.LocalPlayer.Character.Humanoid.HipHeight = s
    end)

    MainSection:NewToggle("Loop WalkSpeed", "Change The Speed You Go At", function(state)
        if state then
            local i = true
            local a = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed
            while wait() do
                if i == true then
                    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = a
                elseif i == false then
                    break
                end
            end
        else
            i = false
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
        end
    end)

    MainSection:NewToggle("Loop JumpPower", "Change The Height You Jump At", function(state)
        if state then
            local i = true
            local a = game.Players.LocalPlayer.Character.Humanoid.JumpPower
            while wait() do
                if i == true then
                    game.Players.LocalPlayer.Character.Humanoid.JumpPower = a
                elseif i == false then
                    break
                end
            end
        else
            i = false
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
        end
    end)

    MainSection:NewToggle("Loop HipHeight", "Change The Height You Walk At", function(state)
        if state then
            local i = true
            local a = game.Players.LocalPlayer.Character.Humanoid.HipHeight
            while wait() do
                if i == true then
                    game.Players.LocalPlayer.Character.Humanoid.HipHeight = a
                elseif i == false then
                    break
                end
            end
        else
            i = false
            game.Players.LocalPlayer.Character.Humanoid.HipHeight = 0
        end
    end)
end