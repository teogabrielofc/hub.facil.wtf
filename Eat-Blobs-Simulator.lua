local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/jensonhirst/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Eat Blobs Simulator - hub.facil.wtf", HidePremium = false, SaveConfig = false, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
	Name = "Loop",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local AutoFarm = Window:MakeTab({
    Name = "AutoFarm",
	Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local superloop
local normalloop
local spinloop
local eventloop

Tab:AddToggle({
	Name = "Super Present",
	Default = false,
	Callback = function(Value)
        superloop = Value
        while superloop do
        local args = {
            [1] = "SuperPresent"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_knit@1.5.1"):WaitForChild("knit"):WaitForChild("Services"):WaitForChild("GiftService"):WaitForChild("RF"):WaitForChild("GetPresent"):InvokeServer(unpack(args))
        task.wait(0.005)
        end
	end    
})

Tab:AddToggle({
	Name = "Normal Present",
	Default = false,
	Callback = function(Value)
		normalloop = Value
        while normalloop do
        local args = {
            [1] = "Present"
        }

        game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_knit@1.5.1"):WaitForChild("knit"):WaitForChild("Services"):WaitForChild("GiftService"):WaitForChild("RF"):WaitForChild("GetPresent"):InvokeServer(unpack(args))
        end
	end    
})

Tab:AddToggle({
	Name = "Spin",
	Default = false,
	Callback = function(Value)
        spinloop = Value
        while spinloop do
        game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_knit@1.5.1"):WaitForChild("knit"):WaitForChild("Services"):WaitForChild("SpinService"):WaitForChild("RE"):WaitForChild("FreeSpinButtonPressed"):FireServer()
        task.wait(0.05)
        end
	end    
})

AutoFarm:AddButton({
	Name = "Get all event orbs",
	Default = false,
	Callback = function(Value)
         local orb = workspace.EventPoints:FindFirstChild("EventOrb")
        
        if orb then
            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, orb, 0)
               
        else
            OrionLib:MakeNotification({
                Name = "Event",
                Content = "There are no event orbs",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
        end
    end    
})