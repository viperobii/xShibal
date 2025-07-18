-- Clean up old GUI
pcall(function() game.CoreGui.OutdatedNotice:Destroy() end)

-- Add Blur
local blur = Instance.new("BlurEffect")
blur.Size = 20
blur.Name = "OutdatedBlur"
blur.Parent = game:GetService("Lighting")

-- Main GUI
local gui = Instance.new("ScreenGui")
gui.Name = "OutdatedNotice"
gui.IgnoreGuiInset = true
gui.ResetOnSpawn = false
gui.ZIndexBehavior = Enum.ZIndexBehavior.Global
gui.Parent = game:GetService("CoreGui")

-- Center Frame
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 400, 0, 200)
frame.Position = UDim2.new(0.5, -200, 0.5, -100)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
frame.BorderSizePixel = 0
frame.BackgroundTransparency = 0.1
frame.Parent = gui

-- Text Label
local label = Instance.new("TextLabel")
label.Text = "Script Outdated\nJoin Discord to Get the New One"
label.Font = Enum.Font.GothamSemibold
label.TextColor3 = Color3.fromRGB(100, 170, 255)
label.TextSize = 20
label.TextWrapped = true
label.Size = UDim2.new(1, -20, 0.6, 0)
label.Position = UDim2.new(0, 10, 0, 10)
label.BackgroundTransparency = 1
label.Parent = frame

-- Copy Button
local button = Instance.new("TextButton")
button.Text = "📋 Copy Discord Link"
button.Font = Enum.Font.GothamBold
button.TextSize = 18
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.BackgroundColor3 = Color3.fromRGB(80, 160, 255)
button.Size = UDim2.new(0.8, 0, 0.2, 0)
button.Position = UDim2.new(0.1, 0, 0.7, 0)
button.BorderSizePixel = 0
button.Parent = frame

-- Copy to clipboard
button.MouseButton1Click:Connect(function()
    setclipboard("https://discord.gg/4Z8qcG4SWH")
    button.Text = "✅ Link Copied!"
end)
