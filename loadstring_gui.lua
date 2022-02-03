local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local url_input = Instance.new("TextBox")
local load_button = Instance.new("TextButton")
local Title = Instance.new("TextLabel")
local closebutton = Instance.new("TextButton")
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.Active = true
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.Position = UDim2.new(0.627317071, 0, 0.370552152, 0)
Frame.Size = UDim2.new(0, 374, 0, 163)
Frame.Draggable = true

url_input.Name = "url_input"
url_input.Parent = Frame
url_input.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
url_input.Position = UDim2.new(0, 0, 0.258895785, 0)
url_input.Size = UDim2.new(0, 373, 0, 50)
url_input.Font = Enum.Font.SourceSans
url_input.Text = ""
url_input.TextColor3 = Color3.fromRGB(0, 0, 0)
url_input.TextSize = 14.000

load_button.Name = "load_button"
load_button.Parent = Frame
load_button.BackgroundColor3 = Color3.fromRGB(104, 104, 104)
load_button.Position = UDim2.new(0.249544799, 0, 0.638036847, 0)
load_button.Size = UDim2.new(0, 200, 0, 50)
load_button.Font = Enum.Font.SourceSans
load_button.Text = "Load"
load_button.TextColor3 = Color3.fromRGB(0, 0, 0)
load_button.TextSize = 14.000

Title.Name = "Title"
Title.Parent = Frame
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 100.000
Title.Position = UDim2.new(-0.144009396, 0, -0.049079746, 0)
Title.Size = UDim2.new(0, 200, 0, 50)
Title.Font = Enum.Font.SourceSans
Title.Text = "Loadstring gui"
Title.TextColor3 = Color3.fromRGB(0, 0, 0)
Title.TextSize = 14.000

closebutton.Name = "closebutton"
closebutton.Parent = Frame
closebutton.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
closebutton.Position = UDim2.new(0.922459841, 0, 0, 0)
closebutton.Size = UDim2.new(0, 29, 0, 24)
closebutton.Font = Enum.Font.SourceSans
closebutton.Text = "X"
closebutton.TextColor3 = Color3.fromRGB(0, 0, 0)
closebutton.TextSize = 14.000
local startergui = game:GetService("StarterGui")
wait(1)
local message = "Loadstring GUI \nmade by MegaDev"
local color = Color3.fromRGB(255, 0, 4)
function SendMsg(message, color)
    startergui:SetCore("ChatMakeSystemMessage", {
        Text = message,
        Color = color,
        Font = Enum.Font.GothamSemibold,
        FontSize = Enum.FontSize.Size14
    })
end
SendMsg(message, color)
load_button.MouseButton1Down:Connect(function()
	print(url_input.Text)
	loadstring(game:HttpGet((url_input.Text),true))()
end)
closebutton.MouseButton1Down:Connect(function()
	Frame.Visible = false
end)
print("Loaded Loadstring GUI")
print("Made By MegaDev")
local Brick = load_button --Change To Brick
local speed = 1 --Change to speed you want
while true do
	for i = 0,1,0.001*speed do
		Brick.BackgroundColor3 = Color3.fromHSV(i,1,1) --creates a color using i
		wait()
	end
end
