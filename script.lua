-- if this works then its awesome!

-- Load Rayfield
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- Create Window
local Window = Rayfield:CreateWindow({
    Name = "COPD OP GUI 🔥",
    Icon = "flame", -- Lucide icon string
    LoadingTitle = "C0PD OP GUI 🔥",
    LoadingSubtitle = "Made By MZT3R",
    ShowText = "HIDE or SHOW",
    Theme = "Amethyst",

    ToggleUIKeybind = "X",

    DisableRayfieldPrompts = false,
    DisableBuildWarnings = false,

    ConfigurationSaving = {
        Enabled = true,
        FolderName = "C0PD_OP_GUI_Folder",
        FileName = "C0PD OP GUI 🔥"
    },

    Discord = {
        Enabled = false,
        Invite = "",
        RememberJoins = true
    },

    KeySystem = true,
    KeySettings = {
        Title = "Key System",
        Subtitle = "Key System For C0PD GUI OP 🔥",
        Note = "Get Key In ScriptBlox Description! 💫",
        FileName = "KEY",
        SaveKey = true,
        GrabKeyFromSite = false,
        Key = {"dedend"}
    }
})

-- === HOME TAB ===
local HomeTab = Window:CreateTab("HOME", "house")

-- Welcome Section
local WelcomeSection = HomeTab:CreateSection("WELCOME")
WelcomeSection:CreateLabel("Welcome To C0PD GUI! In Here We Got Lots Of OP Scripts That You Can Choose From! Please Remember, This Script GUI Is Made For Educational Purposes and Should Not Be Used To Harm Other Games. Thank You For Reading!")

-- Credits Section
local CreditsSection = HomeTab:CreateSection("CREDITS")
CreditsSection:CreateLabel("CREDITS GOES TO Bitzy4Eva ON ROBLOX FOR MAKING THIS!")

-- === MAIN TAB ===
local MainTab = Window:CreateTab("MAIN", "settings") -- example tab

-- Example Section
local MainSection = MainTab:CreateSection("EXAMPLES")

-- Example Button
MainSection:CreateButton({
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
MainSection:CreateToggle({
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
MainSection:CreateSlider({
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

-- Notify when GUI is loaded
Rayfield:Notify({
    Title = "C0PD OP GUI 🔥",
    Content = "GUI successfully loaded!",
    Duration = 3
})
