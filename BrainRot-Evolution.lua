local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Brainrot Evolution - hub.facil.wtf",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Brainrot Evolution",
   LoadingSubtitle = "by facil.wtf",
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   ToggleUIKeybind = "K", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local tabautofarm = Window:CreateTab("Auto Farm", 4483362458)


Rayfield:Notify({
   Title = "Warning/Aviso",
   Content = "This script is in BETA and is NOT recommended to activate more than 1 autofarm simultaneously. Este script está em BETA e NÃO é recomendado ativar mais do que 1 autofarm simultaneamente.",
   Duration = 10,
   Image = 4483362458,
})


local applevalue = false
local goldenapplevalue = false

local AppleToggle = tabautofarm:CreateToggle({
   Name = "Apple",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   applevalue = Value
while applevalue do
	local args = {
		game:GetService("Players").LocalPlayer
	}

	local canAttack = game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("MonsterService"):WaitForChild("RF"):WaitForChild("CanAttack"):InvokeServer(unpack(args))

	if canAttack then
		local appleHRP = workspace:WaitForChild("Apple"):WaitForChild("HumanoidRootPart")

		
		local character = game:GetService("Players").LocalPlayer.Character
		if character and character:FindFirstChild("HumanoidRootPart") then
			character.HumanoidRootPart.CFrame = appleHRP.CFrame
		end

		local args = {
			appleHRP.CFrame
		}
		game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("MonsterService"):WaitForChild("RF"):WaitForChild("RequestAttack"):InvokeServer(unpack(args))

		wait(0.5)
	else
		wait(1)
	end
end

   
   end,
})

local GoldenAppleToggle = tabautofarm:CreateToggle({
   Name = "Golden Apple",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   goldenapplevalue = Value
while goldenapplevalue do
	local args = {
		game:GetService("Players").LocalPlayer
	}

	local canAttack = game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("MonsterService"):WaitForChild("RF"):WaitForChild("CanAttack"):InvokeServer(unpack(args))

	if canAttack then
		local goldenappleHRP = workspace:WaitForChild("Golden Apple"):WaitForChild("HumanoidRootPart")

		
		local character = game:GetService("Players").LocalPlayer.Character
		if character and character:FindFirstChild("HumanoidRootPart") then
			character.HumanoidRootPart.CFrame = goldenappleHRP.CFrame
		end

		local args = {
			goldenappleHRP.CFrame
		}
		game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("MonsterService"):WaitForChild("RF"):WaitForChild("RequestAttack"):InvokeServer(unpack(args))

		wait(0.5)
	else
		wait(1)
	end
end

   
   end,
})
