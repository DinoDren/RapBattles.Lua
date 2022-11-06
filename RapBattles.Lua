

local ScreenGui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local rapper1 = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local rapper2 = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local UICorner_4 = Instance.new("UICorner")

--Properties:

ScreenGui.Parent = game.CoreGui

main.Name = "main"
main.Parent = ScreenGui
main.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
main.Position = UDim2.new(0.244186044, 0, 0.339357436, 0)
main.Size = UDim2.new(0, 425, 0, 219)
main.Active = true
main.Draggable = true

UICorner.CornerRadius = UDim.new(0, 12)
UICorner.Parent = main

TextLabel.Parent = main
TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Size = UDim2.new(0, 425, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Simple Vote Rap Battles GUI Made By DINO#1390"
TextLabel.TextColor3 = Color3.fromRGB(255, 0, 4)
TextLabel.TextSize = 25.000

UICorner_4.CornerRadius = UDim.new(0, 12)
UICorner_4.Parent = TextLabel

rapper2.Name = "rapper1"
rapper2.Parent = main
rapper2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
rapper2.Position = UDim2.new(0.0141176451, 0, 0.456620991, 0)
rapper2.Size = UDim2.new(0, 200, 0, 50)
rapper2.Font = Enum.Font.SourceSans
rapper2.TextColor3 = Color3.fromRGB(255, 0, 4)
rapper2.TextSize = 20.000

UICorner_2.CornerRadius = UDim.new(0, 12)
UICorner_2.Parent = rapper2

rapper1.Name = "rapper2"
rapper1.Parent = main
rapper1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
rapper1.Position = UDim2.new(0.505882382, 0, 0.456621021, 0)
rapper1.Size = UDim2.new(0, 200, 0, 50)
rapper1.Font = Enum.Font.SourceSans
rapper1.TextColor3 = Color3.fromRGB(255, 0, 4)
rapper1.TextSize = 20.000
UICorner_3.CornerRadius = UDim.new(0, 12)

UICorner_3.Parent = rapper1
rapper1.MouseButton1Down:connect(function()
	for i = 0,1 do 
		game.Workspace.Votes:FireServer(false,"p1")
		game:GetService("RunService").Heartbeat:Wait()
	end
end)

rapper2.MouseButton1Down:connect(function()
	for i = 0,1 do 
		game.Workspace.Votes:FireServer(false,"p2")
		game:GetService("RunService").Heartbeat:Wait()
	end
end)

while true do
	rapper2.Text = game.Workspace.RapBattles.Rappers.player2.Value
	rapper1.Text = game.Workspace.RapBattles.Rappers.player1.Value
	wait(0.1)
end


