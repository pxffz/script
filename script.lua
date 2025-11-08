local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "COPD OP GUI 🔥",
   Icon = flame, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "C0PD OP GUI 🔥",
   LoadingSubtitle = "Made By MZT3R",
   ShowText = "HIDE or SHOW", -- for mobile users to unhide rayfield, change if you'd like
   Theme = "Amethyst", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   ToggleUIKeybind = "X", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = C0PD OP GUI Folder, -- Create a custom folder for your hub/game
      FileName = "C0PD OP GUI 🔥"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Key System",
      Subtitle = "Key System For C0PD GUI OP 🔥",
      Note = "Get Key In ScriptBlox Description! 💫", -- Use this to tell the user how to get a key
      FileName = "KEY", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"dedend"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("end","ded")
   }
})

local Tab = Window:CreateTab("HOME", "house")
local Section = Tab:CreateSection("HOME")
