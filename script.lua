-- SCRIPT WORKS LIKE POOP

-- === CUSTOM GUI SCRIPT ===
local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")

-- Create ScreenGui
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "C0PD_GUI"
ScreenGui.Parent = PlayerGui
ScreenGui.ResetOnSpawn = false

-- === Main Frame ===
local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Size = UDim2.new(0, 500, 0, 350)
MainFrame.Position = UDim2.new(0.5, -250, 0.5, -175)
MainFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
MainFrame.BorderSizePixel = 0
MainFrame.Parent = ScreenGui

-- UI Corner
local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 12)
UICorner.Parent = MainFrame

-- === Title Bar ===
local Title = Instance.new("TextLabel")
Title.Name = "Title"
Title.Text = "C0PD OP GUI 🔥"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.BackgroundTransparency = 1
Title.Size = UDim2.new(1, 0, 0, 40)
Title.Parent = MainFrame

-- === Tabs ===
local Tabs = Instance.new("Frame")
Tabs.Name = "Tabs"
Tabs.Size = UDim2.new(1, 0, 0, 40)
Tabs.Position = UDim2.new(0, 0, 0, 40)
Tabs.BackgroundTransparency = 1
Tabs.Parent = MainFrame

-- Tab Buttons
local HomeButton = Instance.new("TextButton")
HomeButton.Name = "HomeButton"
HomeButton.Size = UDim2.new(0, 100, 1, 0)
HomeButton.Text = "Home"
HomeButton.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
HomeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
HomeButton.Parent = Tabs

local MainButton = Instance.new("TextButton")
MainButton.Name = "MainButton"
MainButton.Size = UDim2.new(0, 100, 1, 0)
MainButton.Position = UDim2.new(0, 110, 0, 0)
MainButton.Text = "Main"
MainButton.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
MainButton.TextColor3 = Color3.fromRGB(255, 255, 255)
MainButton.Parent = Tabs

-- === Pages ===
local Pages = Instance.new("Frame")
Pages.Name = "Pages"
Pages.Size = UDim2.new(1, 0, 1, -40)
Pages.Position = UDim2.new(0, 0, 0, 80)
Pages.BackgroundTransparency = 1
Pages.Parent = MainFrame

-- Home Page
local HomePage = Instance.new("Frame")
HomePage.Name = "HomePage"
HomePage.Size = UDim2.new(1, 0, 1, 0)
HomePage.BackgroundTransparency = 1
HomePage.Parent = Pages

local WelcomeLabel = Instance.new("TextLabel")
WelcomeLabel.Text = "Welcome To C0PD GUI! In Here We Got Lots Of OP Scripts That You Can Choose From! Please Remember, This Script GUI Is Made For Educational Purposes and Should Not Be Used To Harm Other Games. Thank You For Reading!"
WelcomeLabel.TextWrapped = true
WelcomeLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
WelcomeLabel.BackgroundTransparency = 1
WelcomeLabel.Size = UDim2.new(1, -20, 0, 100)
WelcomeLabel.Position = UDim2.new(0, 10, 0, 10)
WelcomeLabel.Parent = HomePage

local CreditsLabel = Instance.new("TextLabel")
CreditsLabel.Text = "CREDITS GOES TO Bitzy4Eva ON ROBLOX FOR MAKING THIS!"
CreditsLabel.TextWrapped = true
CreditsLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
CreditsLabel.BackgroundTransparency = 1
CreditsLabel.Size = UDim2.new(1, -20, 0, 50)
CreditsLabel.Position = UDim2.new(0, 10, 0, 120)
CreditsLabel.Parent = HomePage

-- Main Page
local MainPage = Instance.new("Frame")
MainPage.Name = "MainPage"
MainPage.Size = UDim2.new(1, 0, 1, 0)
MainPage.BackgroundTransparency = 1
MainPage.Visible = false
MainPage.Parent = Pages

-- Example Button
local ExampleButton = Instance.new("TextButton")
ExampleButton.Text = "Example Button"
ExampleButton.Size = UDim2.new(0, 150, 0, 50)
ExampleButton.Position = UDim2.new(0, 20, 0, 20)
ExampleButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
ExampleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ExampleButton.Parent = MainPage

ExampleButton.MouseButton1Click:Connect(function()
    print("Example button clicked!")
end)

-- Example Toggle
local ExampleToggle = Instance.new("TextButton")
ExampleToggle.Text = "Toggle: OFF"
ExampleToggle.Size = UDim2.new(0, 150, 0, 50)
ExampleToggle.Position = UDim2.new(0, 20, 0, 80)
ExampleToggle.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
ExampleToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
ExampleToggle.Parent = MainPage

local toggleState = false
ExampleToggle.MouseButton1Click:Connect(function()
    toggleState = not toggleState
    ExampleToggle.Text = toggleState and "Toggle: ON" or "Toggle: OFF"
    print("Toggle state:", toggleState)
end)

-- === Tab Switching ===
HomeButton.MouseButton1Click:Connect(function()
    HomePage.Visible = true
    MainPage.Visible = false
end)

MainButton.MouseButton1Click:Connect(function()
    HomePage.Visible = false
    MainPage.Visible = true
end)
