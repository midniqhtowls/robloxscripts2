--[[
made by czopek, im just editing the embed!
getgenv().Webhook = "webhooklink" 
getgenv().Username = "username"
getgenv().Private = "viplink"
loadstring(game:HttpGet("https://raw.githubusercontent.com/midniqhtowls/robloxscripts/main/DroppedGoalNotifier.lua"))()
]]--

local ScreenGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Frame = Instance.new("Frame")
local Frame_2 = Instance.new("Frame")
local AmountInput = Instance.new("TextBox")
local UIGradient = Instance.new("UIGradient")
local Remaining = Instance.new("TextLabel")
local Frame_3 = Instance.new("Frame")
local Toggle = Instance.new("TextButton")
local Credits = Instance.new("TextLabel")
ScreenGui.Name = "😂😂"
ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Main.Name = "Main"
Main.Parent = ScreenGui
Main.BackgroundColor3 = Color3.fromRGB(199, 255, 208)
Main.Position = UDim2.new(0.161961362, 0, 0.296932518, 0)
Main.Size = UDim2.new(0, 200, 0, 180)
Main.ZIndex = 3
Frame.Parent = Main
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame.Size = UDim2.new(0, 196, 0, 176)
Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.fromRGB(199, 255, 208)
Frame_2.Position = UDim2.new(0.193877548, 0, 0.0681818202, 0)
Frame_2.Size = UDim2.new(0, 120, 0, 50)
AmountInput.Name = "AmountInput"
AmountInput.Parent = Frame_2
AmountInput.AnchorPoint = Vector2.new(0.5, 0.5)
AmountInput.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
AmountInput.Position = UDim2.new(0.5, 0, 0.5, 0)
AmountInput.Size = UDim2.new(0, 116, 0, 46)
AmountInput.Font = Enum.Font.RobotoMono
AmountInput.Text = "Amount"
AmountInput.TextColor3 = Color3.fromRGB(199, 255, 208)
AmountInput.TextSize = 22.000
AmountInput.TextStrokeTransparency = 0.000
UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.15, Color3.fromRGB(230, 230, 230)), ColorSequenceKeypoint.new(0.42, Color3.fromRGB(197, 197, 197)), ColorSequenceKeypoint.new(0.69, Color3.fromRGB(190, 190, 190)), ColorSequenceKeypoint.new(0.91, Color3.fromRGB(162, 162, 162)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(121, 121, 121))}
UIGradient.Rotation = 90
UIGradient.Parent = Frame
Remaining.Name = "Remaining"
Remaining.Parent = Frame
Remaining.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Remaining.BackgroundTransparency = 1.000
Remaining.BorderSizePixel = 0
Remaining.Position = UDim2.new(-0.0204081628, 0, 0.357954532, 0)
Remaining.Size = UDim2.new(0, 200, 0, 25)
Remaining.Font = Enum.Font.RobotoMono
Remaining.Text = "Remaining :"
Remaining.TextColor3 = Color3.fromRGB(199, 255, 208)
Remaining.TextSize = 14.000
Remaining.TextStrokeTransparency = 0.000
Frame_3.Parent = Frame
Frame_3.BackgroundColor3 = Color3.fromRGB(199, 255, 208)
Frame_3.Position = UDim2.new(0.270408154, 0, 0.579545438, 0)
Frame_3.Size = UDim2.new(0, 90, 0, 35)
Toggle.Name = "Toggle"
Toggle.Parent = Frame_3
Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
Toggle.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Toggle.Position = UDim2.new(0.5, 0, 0.5, 0)
Toggle.Size = UDim2.new(0, 86, 0, 31)
Toggle.Font = Enum.Font.RobotoMono
Toggle.Text = "Enable"
Toggle.TextColor3 = Color3.fromRGB(199, 255, 208)
Toggle.TextSize = 14.000
Toggle.TextStrokeTransparency = 0.000
Credits.Name = "Credits"
Credits.Parent = Frame
Credits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Credits.BackgroundTransparency = 1.000
Credits.BorderSizePixel = 0
Credits.Position = UDim2.new(0.571428597, 0, 0.931818187, 0)
Credits.Size = UDim2.new(0, 84, 0, 12)
Credits.Font = Enum.Font.RobotoMono
Credits.Text = "czopek#7877"
Credits.TextColor3 = Color3.fromRGB(199, 255, 208)
Credits.TextSize = 0.000
Credits.TextStrokeTransparency = 0.900
Credits.TextTransparency = 0.900
Credits.TextXAlignment = Enum.TextXAlignment.Right
Credits.TextYAlignment = Enum.TextYAlignment.Bottom
local Frames = {Main,Frame,Frame_2,Frame_3,Toggle,AmountInput}
for i,v in pairs(Frames) do 
	local Stroke = Instance.new("UIStroke",v)
	Stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
end
local plr = game:GetService("Players").LocalPlayer
local Dropping = 0 
plr:GetMouse().KeyDown:Connect(function(KeyPressed)
	if KeyPressed == "v" then 
		Main.Visible = not Main.Visible
	end
end)
local UserInputService = game:GetService("UserInputService")
local gui = Main
local dragging
local dragInput
local dragStart
local startPos
local function update(input)
	local delta = input.Position - dragStart
	gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end
gui.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = gui.Position
		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)
gui.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)
UserInputService.InputChanged:Connect(function(input)
	if input == dragInput and dragging then
		update(input)
	end
end)
local http_request = http_request
if syn then
	http_request = syn.request
end
local function checking(amount)
	return tostring(amount):reverse():gsub("%d%d%d", "%1,"):reverse():gsub("^,", "")
end
local Dropped = 0
game:GetService("RunService").Stepped:Connect(function()
	pcall(function()
		local amount = 0
		for i,v in pairs(game.Workspace.Ignored.Drop:GetChildren()) do
			if v.Name == "MoneyDrop" then
				local cash = string.split(v.BillboardGui.TextLabel.Text,"$")[2]
				if string.match(cash,',') then
					amount = amount + cash:gsub("%,","")
				else
					amount = amount + cash
				end
			end
			Dropped = tostring(amount)
		end		
	end)
	
	if Toggle.Text == "Disable" then 
		Remaining.Text = "Remaining: "..checking(tonumber(AmountInput.Text) - tonumber(Dropped)).."$"
		if tonumber(Dropped) >= Dropping then
			Toggle.Text = "Enable"
			local Players = 0 
			for i,v in pairs(game.Players:GetChildren()) do 
				Players = Players + 1
			end
			local data = 
				{
					["content"] = "@everyone - "..Private,
					["embeds"] = {{
						["title"] = "dropping goal reached",
						["description"] = "||😎😎😎||",
						["type"] = "bold",
						["color"] = tonumber(0x2F3136),
						["fields"] = {
							{
								["name"] = "dropped:",
								["value"] = checking(tostring(Dropped)).."$",
								["inline"] = false
							},
							{
								["name"] = "host:",
								["value"] = Username,
								["inline"] = false
							},
							{
								["name"] = "alts:",
								["value"] = tostring(Players)-1,
								["inline"] = false
							},
							{
								["name"] = "reached at:",
								["value"] = os.date('%x').." | "..os.date('%X'),
								["inline"] = false
							},
						},
					}}
				}
			http_request({Url=Webhook, Body= game:GetService('HttpService'):JSONEncode(data), Method="POST", Headers= {["content-type"] = "application/json"} })
		end
	end
end)
Toggle.MouseButton1Click:Connect(function()
	if Toggle.Text == "Enable" then
		Toggle.Text = "Disable" Dropping = tonumber(AmountInput.Text) else 
		Toggle.Text = "Enable" 
	end
end)
