local GuiLibrary = Instance.new("ScreenGui", game.CoreGui)
local MiddleIcon = Instance.new("TextButton")
local MainFrame = Instance.new("Frame")
local GameName = Instance.new("TextLabel")
local MiddleFrame = Instance.new("Frame")
local List = Instance.new("ScrollingFrame")
local ListLayout = Instance.new("UIListLayout")
local Item = Instance.new("ScrollingFrame")
local ItemLayout = Instance.new("UIListLayout")
MiddleIcon.Name = "MiddleIcon"
MiddleIcon.Parent = GuiLibrary
MiddleIcon.AnchorPoint = Vector2.new(0.5, 0.5)
MiddleIcon.BackgroundColor3 = Color3.fromRGB(0, 0, 109)
MiddleIcon.BorderColor3 = Color3.fromRGB(32, 170, 165)
MiddleIcon.BorderSizePixel = 2
MiddleIcon.Position = UDim2.new(0.200000003, 0, 0.200000003, 0)
MiddleIcon.Size = UDim2.new(0.0497512445, 0, 0.100603625, 0)
MiddleIcon.ZIndex = 999999999
MiddleIcon.Font = Enum.Font.SourceSans
MiddleIcon.Text = "⚡"
MiddleIcon.TextColor3 = Color3.fromRGB(0, 0, 0)
MiddleIcon.TextScaled = true
MiddleIcon.TextSize = 14.000
MiddleIcon.TextWrapped = true
MainFrame.Name = "MainFrame"
MainFrame.Parent = GuiLibrary
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
MainFrame.Size = UDim2.new(0.300000012, 0, 0.699999988, 0)
GameName.Name = "GameName"
GameName.Parent = MainFrame
GameName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GameName.BackgroundTransparency = 1.000
GameName.BorderSizePixel = 0
GameName.Size = UDim2.new(1, 0, 0.0500000007, 0)
GameName.Font = Enum.Font.Gotham
GameName.Text = "SonicwareV4 | <font color='rgb(128,128,255)'>game.Name</font>"
GameName.TextColor3 = Color3.fromRGB(255, 255, 255)
GameName.TextScaled = true
GameName.TextSize = 20.000
GameName.TextWrapped = true
MiddleFrame.Name = "MiddleFrame"
MiddleFrame.Parent = MainFrame
MiddleFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
MiddleFrame.Position = UDim2.new(0, 0, 0.0500000007, 0)
MiddleFrame.Size = UDim2.new(1, 0, 0.949999988, 0)
List.Name = "List"
List.Parent = MiddleFrame
List.Active = true
List.AnchorPoint = Vector2.new(0.5, 0)
List.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
List.BorderColor3 = Color3.fromRGB(27, 42, 53)
List.BorderSizePixel = 0
List.Position = UDim2.new(0.5, 0, 0.00999999978, 0)
List.Size = UDim2.new(0.949999988, 0, 0.100000001, 0)
List.CanvasSize = UDim2.new(0, 0, 0, 0)
List.ScrollBarThickness = 0
ListLayout.Name = "ListLayout"
ListLayout.Parent = List
ListLayout.FillDirection = Enum.FillDirection.Horizontal
ListLayout.SortOrder = Enum.SortOrder.LayoutOrder
ListLayout.Padding = UDim.new(0.0500000007, 0)
Item.Name = "Item"
Item.Parent = MiddleFrame
Item.Active = true
Item.AnchorPoint = Vector2.new(0.5, 0)
Item.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Item.BackgroundTransparency = 1.000
Item.BorderSizePixel = 0
Item.Position = UDim2.new(0.5, 0, 0.125, 0)
Item.Size = UDim2.new(0.949999988, 0, 0.850000024, 0)
Item.CanvasSize = UDim2.new(0, 0, 0, 0)
Item.ScrollBarThickness = 0
ItemLayout.Name = "ItemLayout"
ItemLayout.Parent = Item
ItemLayout.SortOrder = Enum.SortOrder.LayoutOrder
ItemLayout.Padding = UDim.new(0.0500000007, 0)
local function LXMKNOY_fake_script() -- MiddleIcon.LocalScript 
	local script = Instance.new('LocalScript', MiddleIcon)
	local e = true
	local Debounce = false
	local middle = {[1] = UDim2.new(1,0,0.95,0),[2] = UDim2.new(1,0,0,0)}
	local main = {[1] = UDim2.new(.3,0,.7,0),[2] = UDim2.new(.3,0,.05,0),[3] = UDim2.new(0,0,0,0)}
	local gname = {[1] = UDim2.new(1,0,.05,0),[2] = UDim2.new(1,0,1,0)} 
	game.TweenService:Create(script.Parent, TweenInfo.new(.2), {BackgroundTransparency = 0.6,TextTransparency = 0.6}):Play()
	script.Parent.MouseLeave:Connect(function(x,y)
		game.TweenService:Create(script.Parent, TweenInfo.new(.2), {
			BackgroundTransparency = 0.6,
			TextTransparency = 0.6
		}):Play()
	end)
	script.Parent.MouseEnter:Connect(function(x,y)
		game.TweenService:Create(script.Parent, TweenInfo.new(.2), {
			BackgroundTransparency = 0,
			TextTransparency = 0
		}):Play()
	end)
	script.Parent.MouseButton1Click:Connect(function()
		if Debounce then return end
		if e == true then
			e = false
			Debounce = true
			game.TweenService:Create(script.Parent.Parent.MainFrame, TweenInfo.new(.3), {
				Size = main[2]
			}):Play()
			game.TweenService:Create(script.Parent.Parent.MainFrame.MiddleFrame, TweenInfo.new(.3), {
				Size = middle[2]
			}):Play()
			wait(.3)
			script.Parent.Parent.MainFrame.GameName.Visible = false
			script.Parent.Parent.MainFrame.GameName.Size = gname[2]
			script.Parent.Parent.MainFrame.GameName.Visible = false
			game.TweenService:Create(script.Parent.Parent.MainFrame, TweenInfo.new(.8), {
				Size = main[3]
			}):Play()
			wait(.8)
			script.Parent.Parent.MainFrame.Visible = false
			script.Parent.Parent.MainFrame.GameName.Visible = false
			Debounce = false
		else
			e = true
			Debounce = true
			script.Parent.Parent.MainFrame.Visible = true
			game.TweenService:Create(script.Parent.Parent.MainFrame, TweenInfo.new(.8), {
				Size = main[2]
			}):Play()
			wait(.8)
			game.TweenService:Create(script.Parent.Parent.MainFrame, TweenInfo.new(.3), {
				Size = main[1]
			}):Play()
			game.TweenService:Create(script.Parent.Parent.MainFrame.MiddleFrame, TweenInfo.new(.3), {
				Size = middle[1]
			}):Play()
			wait(.3)
			script.Parent.Parent.MainFrame.GameName.Visible = true
			script.Parent.Parent.MainFrame.GameName.Size = gname[1]
			Debounce = false
		end
	end)
end
coroutine.wrap(LXMKNOY_fake_script)()
local function YSRCWUV_fake_script() 
	local script = Instance.new('LocalScript', GameName)

	script.Parent.Text = "SonicwareV4 | <font color='rgb(128,128,255)'>"..game.Name.."</font>"
end
coroutine.wrap(YSRCWUV_fake_script)()
