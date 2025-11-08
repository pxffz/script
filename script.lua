-- Load Rayfield
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- Create Window
local Window = Rayfield:CreateWindow({
    Name = "COPD OP GUI 🔥",
    Icon = "flame", -- Must be a string if using Lucide icons
    LoadingTitle = "C0PD OP GUI 🔥",
    LoadingSubtitle = "Made By MZT3R",
    ShowText = "HIDE or SHOW",
    Theme = "Amethyst",

    ToggleUIKeybind = "X", -- Key to toggle GUI

    DisableRayfieldPrompts = false,
    DisableBuildWarnings = false,

    ConfigurationSaving = {
        Enabled = true,
        FolderName = "C0PD_OP_GUI_Folder", -- must be a string
        FileName = "C0PD OP GUI 🔥"
    },

    Discord = {
        Enabled = false,
        Invite = "",
        RememberJoins = true
    },

    KeySystem = true, -- Enable key system
    KeySettings = {
        Title = "Key System",
        Subtitle = "Key System For C0PD GUI OP 🔥",
        Note = "Get Key In ScriptBlox Description! 💫",
        FileName = "KEY",
        SaveKey = true,
        GrabKeyFromSite = false, -- Only true if Key is a RAW URL
        Key = {"dedend"} -- List of accepted keys
    }
})

-- Create Tabs and Sections
local HomeTab = Window:CreateTab("HOME", "house")
local HomeSection = HomeTab:CreateSection("HOME")

-- Example Button
HomeSection:CreateButton({
    Name = "Example Button",
    Callback = function()
        Rayfield:Notify({
            Title = "Button Pressed",
            Content = "You pressed the example button!",
            Duration = 3
        })
    end
})

-- Example Toggle
HomeSection:CreateToggle({
    Name = "Example Toggle",
    CurrentValue = false,
    Flag = "ExampleToggle",
    Callback = function(value)
        if value then
            print("Toggle ON")
        else
            print("Toggle OFF")
        end
    end
})

-- Example Slider
HomeSection:CreateSlider({
    Name = "Example Slider",
    Range = {0, 100},
    Increment = 1,
    Suffix = "%",
    CurrentValue = 50,
    Flag = "ExampleSlider",
    Callback = function(value)
        print("Slider set to:", value)
    end
})
