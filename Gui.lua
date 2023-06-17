local lib = {}
local ch = game:GetService("CoreGui")
local NotificationSystem = Instance.new("ScreenGui", ch)
NotificationSystem.Name = "TestMenu"
--print(NotificationSystem)
--NotificaitonSystem.Parent = ch
local list = Instance.new("Frame")
local tweenService = game:GetService("TweenService")
local tweenInfo = TweenInfo.new
list.Parent = NotificationSystem
list.Name = "list"
list.AnchorPoint = Vector2.new(0.5, 0.5)
list.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
list.BackgroundTransparency = 1
list.BorderSizePixel = 0
list.Position = UDim2.new(0.911, 0, 0.522, 0)
list.Size = UDim2.new(0.178, 0, 0.869, 0)
list.Visible = true
local ls = Instance.new("UIListLayout")
ls.Name = "L"
ls.Parent = list
ls.HorizontalAlignment = Enum.HorizontalAlignment.Right
ls.SortOrder = Enum.SortOrder.LayoutOrder
ls.Padding = UDim.new(0, 5)
function lib:CreateNotification(typw, message, duration)
  if not table.find({ "error", "success", "info", "warning" }, typw:lower()) then return error("InvalidModeError: Invalid Mode Provided") end
  duration = tonumber(duration) or 5
  message = message or "Sonicware Loaded!"
  local x = typw:lower()
  local Notification
  if x == "error" then
    Error = Instance.new("Frame")
	  local UIGradient = Instance.new("UIGradient")
	  local Header = Instance.new("TextLabel")
	  local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
	  local decal = Instance.new("Frame")
	  local icon = Instance.new("ImageLabel")
  	local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
  	local background_shadow = Instance.new("ImageLabel")
  	local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
  	local bar = Instance.new("Frame")
  	local Filler = Instance.new("Frame")
	  Error.Name = "Error"
	  Error.Parent = list
   	Error.AnchorPoint = Vector2.new(0.5, 0.5)
  	Error.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  	Error.BorderSizePixel = 0
  	Error.Position = UDim2.new(0.5, 0, 0.109999999, 0)
  	Error.Size = UDim2.new(1, 0, 0.0860000029, 0)
	  UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(31, 31, 31)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(39, 39, 39))}
	  UIGradient.Rotation = 25
	  UIGradient.Parent = Error
	  Header.Name = "Header"
	  Header.Parent = Error
	  Header.AnchorPoint = Vector2.new(0.5, 0.5)
	  Header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	  Header.BackgroundTransparency = 1.000
	  Header.BorderSizePixel = 0
	  Header.Position = UDim2.new(0.592000008, 0, 0.493999988, 0)
	  Header.Size = UDim2.new(0.788999975, 0, 0.648000002, 0)
	  Header.ZIndex = 2
	  Header.Font = Enum.Font.GothamBold
	  Header.Text = message
	  Header.TextColor3 = Color3.fromRGB(255, 70, 73)
	  Header.TextScaled = true
	  Header.TextSize = 14.000
	  Header.TextWrapped = true
	  Header.TextXAlignment = Enum.TextXAlignment.Left
    Header.TextYAlignment = Enum.TextYAlignment.Top
	  UITextSizeConstraint.Parent = Header
	  UITextSizeConstraint.MaxTextSize = 14
	  decal.Name = "decal"
	  decal.Parent = Error
	  decal.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	  decal.BackgroundTransparency = 1.000
	  decal.BorderSizePixel = 0
	  decal.Size = UDim2.new(1, 0, 1, 0)
	  decal.ZIndex = 0
	  icon.Name = "icon"
	  icon.Parent = decal
	  icon.AnchorPoint = Vector2.new(0.5, 0.5)
	  icon.BackgroundTransparency = 1.000
	  icon.BorderSizePixel = 0
	  icon.Position = UDim2.new(0.0900000036, 0, 0.485000014, 0)
	  icon.Size = UDim2.new(0.0900000036, 0, 0.485000014, 0)
	  icon.Image = "rbxassetid://7072725342"
	  icon.ImageColor3 = Color3.fromRGB(255, 70, 73)
  	icon.ScaleType = Enum.ScaleType.Fit
	  UIAspectRatioConstraint.Parent = icon
  	UIAspectRatioConstraint.AspectRatio = 1.008
  	background_shadow.Name = "background_shadow"
	  background_shadow.Parent = decal
	  background_shadow.AnchorPoint = Vector2.new(0.5, 0.5)
	  background_shadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	  background_shadow.BackgroundTransparency = 1.000
	  background_shadow.BorderSizePixel = 0
	  background_shadow.Position = UDim2.new(0.5, 0, 0.5, 0)
	  background_shadow.Size = UDim2.new(1.12800705, 0, 1.86363637, 0)
	  background_shadow.ZIndex = 0
	  background_shadow.Image = "rbxassetid://3523728077"
  	background_shadow.ImageColor3 = Color3.fromRGB(24, 24, 24)
  	background_shadow.ImageTransparency = 0.700
	  UIAspectRatioConstraint_2.Parent = background_shadow
  	UIAspectRatioConstraint_2.AspectRatio = 2.669
  	bar.Name = "bar"
  	bar.Parent = Error
  	bar.AnchorPoint = Vector2.new(1, 0.5)
	  bar.BackgroundColor3 = Color3.fromRGB(255, 70, 73)
  	bar.BorderSizePixel = 0
	  bar.Position = UDim2.new(1, 0, 1, 0)
  	bar.Size = UDim2.new(0.00999999978, 0, 0.0500000007, 0)
  	bar.ZIndex = 3
  	Filler.Name = "Filler"
   	Filler.Parent = Error
	  Filler.AnchorPoint = Vector2.new(1, 0.5)
	  Filler.BackgroundColor3 = Color3.fromRGB(255, 70, 73)
	  Filler.BorderSizePixel = 0
	  Filler.Position = UDim2.new(1, 0, 0.5, 0)
	  Filler.Size = UDim2.new(0.0114559932, 0, 0.99999994, 0)
	  Filler.ZIndex = 3
    Notification = Error
  elseif x == "info" then
    local Info = Instance.new("Frame")
		local Header = Instance.new("TextLabel")
		local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
		local UIGradient = Instance.new("UIGradient")
		local decal = Instance.new("Frame")
		local background_shadow = Instance.new("ImageLabel")
		local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
		local icon = Instance.new("ImageLabel")
		local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
		local Filler = Instance.new("Frame")
		local bar = Instance.new("Frame")
		Info.Name = "Info"
		Info.Parent = list
		Info.AnchorPoint = Vector2.new(0.5, 0.5)
		Info.BackgroundColor3 = Color3.fromRGB(88, 101, 242)
		Info.BorderSizePixel = 0
		Info.Position = UDim2.new(0.5, 0, 0.109999999, 0)
		Info.Size = UDim2.new(1, 0, 0.0860000029, 0)
		Header.Name = "Header"
		Header.Parent = Info
		Header.AnchorPoint = Vector2.new(0.5, 0.5)
		Header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Header.BackgroundTransparency = 1.000
		Header.BorderSizePixel = 0
		Header.Position = UDim2.new(0.592195153, 0, 0.494221866, 0)
		Header.Size = UDim2.new(0.788999975, 0, 0.648000002, 0)
		Header.ZIndex = 2
		Header.Font = Enum.Font.GothamBold
		Header.Text = message
		Header.TextColor3 = Color3.fromRGB(88, 101, 242)
		Header.TextScaled = true
		Header.TextSize = 14.000
		Header.TextWrapped = true
		Header.TextXAlignment = Enum.TextXAlignment.Left
		Header.TextYAlignment = Enum.TextYAlignment.Top
		UITextSizeConstraint.Parent = Header
		UITextSizeConstraint.MaxTextSize = 14
		UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(31, 31, 31)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(39, 39, 39))}
		UIGradient.Rotation = 25
		UIGradient.Parent = Info
		decal.Name = "decal"
		decal.Parent = Info
		decal.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		decal.BackgroundTransparency = 1.000
		decal.BorderSizePixel = 0
		decal.Size = UDim2.new(1, 0, 1, 0)
		decal.ZIndex = 0
		background_shadow.Name = "background_shadow"
		background_shadow.Parent = decal
		background_shadow.AnchorPoint = Vector2.new(0.5, 0.5)
		background_shadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		background_shadow.BackgroundTransparency = 1.000
		background_shadow.BorderSizePixel = 0
		background_shadow.Position = UDim2.new(0.5, 0, 0.5, 0)
		background_shadow.Size = UDim2.new(1.12800705, 0, 1.86363637, 0)
		background_shadow.ZIndex = 0
		background_shadow.Image = "rbxassetid://3523728077"
		background_shadow.ImageColor3 = Color3.fromRGB(24, 24, 24)
		background_shadow.ImageTransparency = 0.700
		UIAspectRatioConstraint.Parent = background_shadow
		UIAspectRatioConstraint.AspectRatio = 2.669
		icon.Name = "icon"
		icon.Parent = decal
		icon.AnchorPoint = Vector2.new(0.5, 0.5)
		icon.BackgroundColor3 = Color3.fromRGB(88, 101, 242)
		icon.BackgroundTransparency = 1.000
		icon.BorderSizePixel = 0
		icon.Position = UDim2.new(0.089563109, 0, 0.485297441, 0)
		icon.Size = UDim2.new(0.0900000036, 0, 0.485000014, 0)
		icon.Image = "rbxassetid://7072717857"
		icon.ImageColor3 = Color3.fromRGB(88, 101, 242)
		icon.ScaleType = Enum.ScaleType.Fit
		UIAspectRatioConstraint_2.Parent = icon
		UIAspectRatioConstraint_2.AspectRatio = 1.008
		Filler.Name = "Filler"
		Filler.Parent = Info
		Filler.AnchorPoint = Vector2.new(1, 0.5)
		Filler.BackgroundColor3 = Color3.fromRGB(88, 101, 242)
		Filler.BorderSizePixel = 0
		Filler.Position = UDim2.new(1, 0, 0.5, 0)
		Filler.Size = UDim2.new(0.0114559932, 0, 1, 0)
		Filler.ZIndex = 3
		bar.Name = "bar"
		bar.Parent = Info
		bar.AnchorPoint = Vector2.new(1, 0.5)
		bar.BackgroundColor3 = Color3.fromRGB(88, 101, 242)
		bar.BorderSizePixel = 0
		bar.Position = UDim2.new(1, 0, 1, 0)
		bar.Size = UDim2.new(0.00999999978, 0, 0.0500000007, 0)
		bar.ZIndex = 3
    Notification = Info
  elseif x == "success" then
    local Success = Instance.new("Frame")
		local Header = Instance.new("TextLabel")
		local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
		local UIGradient = Instance.new("UIGradient")
		local decal = Instance.new("Frame")
		local background_shadow = Instance.new("ImageLabel")
		local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
		local icon = Instance.new("ImageLabel")
		local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
		local Filler = Instance.new("Frame")
		local bar = Instance.new("Frame")
		Success.Name = "Success"
		Success.Parent = list
		Success.AnchorPoint = Vector2.new(0.5, 0.5)
		Success.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Success.BorderSizePixel = 0
		Success.Position = UDim2.new(0.5, 0, 0.109999999, 0)
		Success.Size = UDim2.new(1, 0, 0.0860000029, 0)
		Header.Name = "Header"
		Header.Parent = Success
		Header.AnchorPoint = Vector2.new(0.5, 0.5)
		Header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Header.BackgroundTransparency = 1.000
		Header.BorderSizePixel = 0
		Header.Position = UDim2.new(0.592000008, 0, 0.493999988, 0)
		Header.Size = UDim2.new(0.789030671, 0, 0.647699118, 0)
		Header.ZIndex = 2
		Header.Font = Enum.Font.GothamBold
		Header.Text = message
		Header.TextColor3 = Color3.fromRGB(35, 240, 110)
		Header.TextScaled = true
		Header.TextSize = 14.000
		Header.TextWrapped = true
		Header.TextXAlignment = Enum.TextXAlignment.Left
		Header.TextYAlignment = Enum.TextYAlignment.Top
		UITextSizeConstraint.Parent = Header
		UITextSizeConstraint.MaxTextSize = 14
		UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(31, 31, 31)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(39, 39, 39))}
		UIGradient.Rotation = 25
		UIGradient.Parent = Success
		decal.Name = "decal"
		decal.Parent = Success
		decal.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		decal.BackgroundTransparency = 1.000
		decal.BorderSizePixel = 0
		decal.Size = UDim2.new(1, 0, 1, 0)
		decal.ZIndex = 0
		background_shadow.Name = "background_shadow"
		background_shadow.Parent = decal
		background_shadow.AnchorPoint = Vector2.new(0.5, 0.5)
		background_shadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		background_shadow.BackgroundTransparency = 1.000
		background_shadow.BorderSizePixel = 0
		background_shadow.Position = UDim2.new(0.5, 0, 0.5, 0)
		background_shadow.Size = UDim2.new(1.12800705, 0, 1.86363637, 0)
		background_shadow.ZIndex = 0
		background_shadow.Image = "rbxassetid://3523728077"
		background_shadow.ImageColor3 = Color3.fromRGB(24, 24, 24)
		background_shadow.ImageTransparency = 0.700
		UIAspectRatioConstraint.Parent = background_shadow
		UIAspectRatioConstraint.AspectRatio = 2.669
		icon.Name = "icon"
		icon.Parent = decal
		icon.AnchorPoint = Vector2.new(0.5, 0.5)
		icon.BackgroundTransparency = 1.000
		icon.BorderSizePixel = 0
		icon.Position = UDim2.new(0.089563109, 0, 0.485297441, 0)
		icon.Size = UDim2.new(0.0900000036, 0, 0.485000014, 0)
		icon.Image = "http://www.roblox.com/asset/?id=6023426926"
		icon.ImageColor3 = Color3.fromRGB(35, 240, 110)
		icon.ScaleType = Enum.ScaleType.Fit
		UIAspectRatioConstraint_2.Parent = icon
		UIAspectRatioConstraint_2.AspectRatio = 1.008
		Filler.Name = "Filler"
		Filler.Parent = Success
		Filler.AnchorPoint = Vector2.new(1, 0.5)
		Filler.BackgroundColor3 = Color3.fromRGB(35, 240, 110)
		Filler.BorderSizePixel = 0
		Filler.Position = UDim2.new(1, 0, 0.5, 0)
		Filler.Size = UDim2.new(0.0114559932, 0, 1, 0)
		Filler.ZIndex = 3
		bar.Name = "bar"
		bar.Parent = Success
		bar.AnchorPoint = Vector2.new(1, 0.5)
		bar.BackgroundColor3 = Color3.fromRGB(35, 240, 110)
		bar.BorderSizePixel = 0
		bar.Position = UDim2.new(1, 0, 1, 0)
		bar.Size = UDim2.new(0.00999999978, 0, 0.0500000007, 0)
		bar.ZIndex = 3
    Notification = Success
  else
		local Warning = Instance.new("Frame")
		local Header = Instance.new("TextLabel")
		local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
		local UIGradient = Instance.new("UIGradient")
		local decal = Instance.new("Frame")
		local background_shadow = Instance.new("ImageLabel")
		local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
		local icon = Instance.new("ImageLabel")
		local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
		local Filler = Instance.new("Frame")
		local bar = Instance.new("Frame")
		Warning.Name = "Warning"
		Warning.Parent = list
		Warning.AnchorPoint = Vector2.new(0.5, 0.5)
		Warning.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Warning.BorderSizePixel = 0
		Warning.Position = UDim2.new(0.5, 0, 0.109999999, 0)
		Warning.Size = UDim2.new(1, 0, 0.0860000029, 0)
		Header.Name = "Header"
		Header.Parent = Warning
		Header.AnchorPoint = Vector2.new(0.5, 0.5)
		Header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Header.BackgroundTransparency = 1.000
		Header.BorderSizePixel = 0
		Header.Position = UDim2.new(0.592000008, 0, 0.493999988, 0)
		Header.Size = UDim2.new(0.788999975, 0, 0.648000002, 0)
		Header.ZIndex = 2
		Header.Font = Enum.Font.GothamBold
		Header.Text = message
		Header.TextColor3 = Color3.fromRGB(240, 175, 45)
		Header.TextScaled = true
		Header.TextSize = 14.000
		Header.TextWrapped = true
		Header.TextXAlignment = Enum.TextXAlignment.Left
		Header.TextYAlignment = Enum.TextYAlignment.Top
		UITextSizeConstraint.Parent = Header
		UITextSizeConstraint.MaxTextSize = 14
		UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(31, 31, 31)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(39, 39, 39))}
		UIGradient.Rotation = 25
		UIGradient.Parent = Warning
		decal.Name = "decal"
		decal.Parent = Warning
		decal.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		decal.BackgroundTransparency = 1.000
		decal.BorderSizePixel = 0
		decal.Size = UDim2.new(1, 0, 1, 0)
		decal.ZIndex = 0
		background_shadow.Name = "background_shadow"
		background_shadow.Parent = decal
		background_shadow.AnchorPoint = Vector2.new(0.5, 0.5)
		background_shadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		background_shadow.BackgroundTransparency = 1.000
		background_shadow.BorderSizePixel = 0
		background_shadow.Position = UDim2.new(0.5, 0, 0.5, 0)
		background_shadow.Size = UDim2.new(1.12800705, 0, 1.86363637, 0)
		background_shadow.ZIndex = 0
		background_shadow.Image = "rbxassetid://3523728077"
		background_shadow.ImageColor3 = Color3.fromRGB(24, 24, 24)
		background_shadow.ImageTransparency = 0.700
		UIAspectRatioConstraint.Parent = background_shadow
		UIAspectRatioConstraint.AspectRatio = 2.669
		icon.Name = "icon"
		icon.Parent = decal
		icon.AnchorPoint = Vector2.new(0.5, 0.5)
		icon.BackgroundTransparency = 1.000
		icon.BorderSizePixel = 0
		icon.Position = UDim2.new(0.089563109, 0, 0.485297441, 0)
		icon.Size = UDim2.new(0.0900000036, 0, 0.485000014, 0)
		icon.Image = "rbxassetid://7072980286"
		icon.ImageColor3 = Color3.fromRGB(240, 175, 45)
		icon.ScaleType = Enum.ScaleType.Fit
		UIAspectRatioConstraint_2.Parent = icon
		UIAspectRatioConstraint_2.AspectRatio = 1.008
		Filler.Name = "Filler"
		Filler.Parent = Warning
		Filler.AnchorPoint = Vector2.new(1, 0.5)
		Filler.BackgroundColor3 = Color3.fromRGB(240, 175, 45)
		Filler.BorderSizePixel = 0
		Filler.Position = UDim2.new(1, 0, 0.5, 0)
		Filler.Size = UDim2.new(0.0114559932, 0, 1, 0)
		Filler.ZIndex = 3
		bar.Name = "bar"
		bar.Parent = Warning
		bar.AnchorPoint = Vector2.new(1, 0.5)
		bar.BackgroundColor3 = Color3.fromRGB(240, 175, 45)
		bar.BorderSizePixel = 0
		bar.Position = UDim2.new(1, 0, 1, 0)
		bar.Size = UDim2.new(0.00999999978, 0, 0.0500000007, 0)
		bar.ZIndex = 3
    Notification = Warning
  end
  Notification.Header.Text = message
  Notification.Header.RichText = true
  Notification.Size = UDim2.new(0, 0,0.087, 0)
  Notification.Filler.Size = UDim2.new(1, 0,1, 0)
  local n = tweenInfo(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 1, false, 0)
  local e = tweenInfo(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 1, false, 0)
  local x = tweenInfo(duration, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 1, false, 0)
  tweenService:Create(Notification, n, {
      Size = UDim2.new(1, 0,0.087, 0)
  }):Play()
  task.wait(0.2)
  tweenService:Create(Notification.Filler, e, {
      Size = UDim2.new(0.011, 0,1, 0)
  }):Play()
  tweenService:Create(Notification.bar, x, {
      Size = UDim2.new(1, 0,0.05, 0)
  }):Play()
  local function dxfu()
    tweenService:Create(Notification.Filler, n, {
      Size = UDim2.new(1, 0,1, 0)
    }):Play()
    tweenService:Create(Notification, n, {
      Size = UDim2.new(0, 0,0.087, 0)
    }):Play()
    task.wait(.3)
    Notification:Destroy()
  end
  Notification.InputBegan:Connect(
    function(inpt)
      if inpt.UserInputType == Enum.UserInputType.Touch or inpt.UserInputType == Enum.UserInputType.MouseButton1 then
        dxfu()
      end
    end
  )
  task.wait(duration)
  dxfu()
end
--[[
local GUI = Instance.new("ScreenGui", game:GetService("CoreGui"))
local Loading = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Icon = Instance.new("TextLabel")
local Lage = Instance.new("TextLabel")
local LEX = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local LOX = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local TextButton = Instance.new("TextButton")
local Storage = Instance.new("Frame")
Loading.Name = "Loading"
Loading.Parent = GUI
Loading.AnchorPoint = Vector2.new(0.5, 0.5)
Loading.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
Loading.Position = UDim2.new(0.5, 0, 0.5, 0)
Loading.Size = UDim2.new(0.5, 0, 0.5, 0)
Loading.Visible = false
UICorner.CornerRadius = UDim.new(0, 20)
UICorner.Parent = Loading
Icon.Name = "Icon"
Icon.Parent = Loading
Icon.AnchorPoint = Vector2.new(0.5, 0.5)
Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Icon.BackgroundTransparency = 1.000
Icon.Position = UDim2.new(0.5, 0, 0.300000012, 0)
Icon.Size = UDim2.new(1, 0, 0.5, 0)
Icon.Font = Enum.Font.FredokaOne
Icon.Text = "⚡"
Icon.TextColor3 = Color3.fromRGB(0, 0, 0)
Icon.TextScaled = true
Icon.TextSize = 14.000
Icon.TextWrapped = true
Lage.Name = "Lage"
Lage.Parent = Loading
Lage.AnchorPoint = Vector2.new(0.5, 0.5)
Lage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Lage.BackgroundTransparency = 1.000
Lage.Position = UDim2.new(0.5, 0, 0.800000012, 0)
Lage.Size = UDim2.new(1, 0, 0.200000003, 0)
Lage.ZIndex = 2
Lage.Font = Enum.Font.Gotham
Lage.Text = "Sonicware V4"
Lage.TextColor3 = Color3.fromRGB(0, 0, 0)
Lage.TextScaled = true
Lage.TextSize = 14.000
Lage.TextWrapped = true
LEX.Name = "LEX"
LEX.Parent = Loading
LEX.AnchorPoint = Vector2.new(0.5, 0.5)
LEX.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LEX.Position = UDim2.new(0.5, 0, 0.800000012, 0)
LEX.Size = UDim2.new(0.800000012, 0, 0.100000001, 0)
UICorner_2.CornerRadius = UDim.new(0, 50)
UICorner_2.Parent = LEX
LOX.Name = "LOX"
LOX.Parent = LEX
LOX.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
LOX.Size = UDim2.new(0.100000001, 0, 1, 0)
UICorner_3.CornerRadius = UDim.new(0, 50)
UICorner_3.Parent = LOX
TextButton.Parent = GUI
TextButton.AnchorPoint = Vector2.new(1, 0)
TextButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
TextButton.BackgroundTransparency = 0.400
TextButton.BorderColor3 = Color3.fromRGB(200, 200, 200)
TextButton.BorderSizePixel = 2
TextButton.Position = UDim2.new(1, 0, 0.100000001, 0)
TextButton.Size = UDim2.new(0.0799999982, 0, 0.0500000007, 0)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Sonicware"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextSize = 14.000
Storage.Name = "Storage"
Storage.Parent = GUI
Storage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Storage.BackgroundTransparency = 1.000
Storage.Size = UDim2.new(1, 0, 1, 0)
Storage.Visible = false
local function SVQR_fake_script() -- Loading.LocalScript 
	local script = Instance.new('LocalScript', Loading)
	local Frame = script.Parent
	script.Parent.Parent.TextButton.Visible = false
	Frame.Visible = true
	local Icon = script.Parent.Icon
	local Text = script.Parent.Lage
	local Storage = script.Parent.Parent.Storage
	local Lex = script.Parent.LEX
	local Lox = Lex.LOX
	Lex.BackgroundTransparency = 1
	Lox.BackgroundTransparency = 1
	Lox.Size = UDim2.new(0,0,1,0)
	Frame.BackgroundTransparency = 1
	Icon.TextTransparency = 1
	Text.TextTransparency = 1
	local Tween = TweenInfo.new
	local TweenService = game:GetService("TweenService")
	TweenService:Create(Frame, Tween(.5), {
		BackgroundTransparency = 0
	}):Play()
	TweenService:Create(Icon, Tween(.5), {
		TextTransparency = 0
	}):Play()
	TweenService:Create(Text, Tween(.5), {
		TextTransparency = 0
	}):Play()
	wait(.5)
	TweenService:Create(Text, Tween(1), {
		Position = UDim2.new(0.5,0,0.6,0);
		TextTransparency = 0.2
	}):Play()
	wait(1)
	TweenService:Create(Lex, Tween(.5), {
		BackgroundTransparency = 0
	}):Play()
	TweenService:Create(Lox, Tween(.5), {
		BackgroundTransparency = 0
	}):Play()
	wait(.5)
	TweenService:Create(Lox, Tween(2), {
		Size = UDim2.new(0.8,0,1,0)
	}):Play()
	wait(2)
	TweenService:Create(Lox, Tween(1), {
		Size = UDim2.new(1,0,1,0)
	}):Play()
	wait(1)
	TweenService:Create(Lex, Tween(.5), {
		BackgroundTransparency = 1
	}):Play()
	TweenService:Create(Lox, Tween(.5), {
		BackgroundTransparency = 1
	}):Play()
	wait(1)
	TweenService:Create(Text, Tween(1), {
		Position = UDim2.new(0.5,0,.8,0);
		TextTransparency = 0
	}):Play()
	wait(1)
	TweenService:Create(Text, Tween(.3), {
		TextTransparency = 1
	}):Play()
	wait(.3)
	Text.Text = "Sonicware Loaded!"
	script.Parent.Parent.TextButton.Visible = true
	Frame.Parent.TextButton.MouseButton1Click:Connect(function()
		Storage.Visible = (not Storage.Visible)
	end)
	TweenService:Create(Text, Tween(.3), {
		TextTransparency = 0
	}):Play()
	wait(.5)
	wait(2)
	TweenService:Create(Text, Tween(.3), {
		TextTransparency = 1
	}):Play()
	TweenService:Create(Icon, Tween(.3), {
		TextTransparency = 1
	}):Play()
	TweenService:Create(Frame, Tween(1), {
		BackgroundTransparency = 1
	}):Play()
	wait(2)
	Frame:Destroy()
end
local Main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local List = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local SEP = Instance.new("Frame")
local Title = Instance.new("TextLabel")
shared.drag(Main)
Main.Name = "Main"
Main.Parent = Storage
Main.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.0500000007, 0, 0.100000001, 0)
Main.Size = UDim2.new(0.150000006, 0, 0.5, 0)
UICorner.Parent = Main
List.Name = "List"
List.Parent = Main
List.Active = true
List.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
List.BackgroundTransparency = 1.000
List.Position = UDim2.new(0, 0, 0.101000004, 0)
List.Size = UDim2.new(1, 0, 0.889999986, 0)
List.CanvasSize = UDim2.new(0, 0, 0, 0)
List.HorizontalScrollBarInset = Enum.ScrollBarInset.ScrollBar
UIListLayout.Parent = List
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
SEP.Name = "SEP"
SEP.Parent = Main
SEP.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
SEP.BackgroundTransparency = 0.400
SEP.Position = UDim2.new(0, 0, 0.100000001, 0)
SEP.Size = UDim2.new(1, 0, 0.00999999978, 0)
Title.Name = "Title"
Title.Parent = Main
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Size = UDim2.new(1, 0, 0.100000001, 0)
Title.Font = Enum.Font.SourceSans
Title.Text = "Sonicware V4"
Title.TextColor3 = Color3.fromRGB(200, 200, 200)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextWrapped = true
coroutine.wrap(SVQR_fake_script)()
lib["MainGui"] = GUI
lib["ObjectsThatCanBeSaved"] = {
  ["Main"] = Storage,
  ["SectionButtons"] = List,
  ["CreateWindow"] = function(title)
    local SectionButton = Instance.new("TextButton")
    SectionButton.Name = "SectionButton"
    SectionButton.Parent = List
    SectionButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    SectionButton.BackgroundTransparency = 1.000
    SectionButton.Size = UDim2.new(1, 0, 0.100000001, 0)
    SectionButton.Font = Enum.Font.SourceSans
    SectionButton.Text = title
    SectionButton.TextColor3 = Color3.fromRGB(200, 200, 200)
    SectionButton.TextScaled = true
    SectionButton.TextSize = 20.000
    SectionButton.TextWrapped = true
    local a = {}
    local Section = Instance.new("Frame")
    shared.drag(Section)
    SectionButton.MouseButton1Click:Connect(function() Section.Visible = not Section.Visible end)
    local UICorner = Instance.new("UICorner")
    local List = Instance.new("ScrollingFrame")
    local UIListLayout = Instance.new("UIListLayout")
    local SEP = Instance.new("Frame")
    local Title = Instance.new("TextLabel")
    Section.Name = title.."Window"
    Section.Parent = game.StarterGui.GUI.Storage
    Section.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    Section.BorderSizePixel = 0
    Section.Position = UDim2.new(0.204999998, 0, 0.100000001, 0)
    Section.Size = UDim2.new(0.150000006, 0, 0.5, 0)
    UICorner.Parent = Section
    List.Name = "List"
    List.Parent = Section
    List.Active = true
    List.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    List.BackgroundTransparency = 1.000
    List.Position = UDim2.new(0, 0, 0.101000004, 0)
    List.Size = UDim2.new(1, 0, 0.889999986, 0)
    List.CanvasSize = UDim2.new(0, 0, 0, 0)
    List.HorizontalScrollBarInset = Enum.ScrollBarInset.ScrollBar
    UIListLayout.Parent = List
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    SEP.Name = "SEP"
    SEP.Parent = Section
    SEP.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
    SEP.BackgroundTransparency = 0.400
    SEP.Position = UDim2.new(0, 0, 0.100000001, 0)
    SEP.Size = UDim2.new(1, 0, 0.01, 0)
    Title.Name = title
    Title.Parent = Section
    Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Title.BackgroundTransparency = 1.000
    Title.Size = UDim2.new(1, 0, 0.1, 0)
    Title.Font = Enum.Font.SourceSans
    Title.Text = "Section"
    Title.TextColor3 = Color3.fromRGB(200, 200, 200)
    Title.TextScaled = true
    Title.TextSize = 14.000
    Title.TextWrapped = true
    a["SECT"] = Section
    a["LIST"] = List
    a["CreateToggle"] = function(obj)
      local name = obj.Name
      local toggled = false
      local func = obj.Function
      local SectionButton = Instance.new("TextButton")
      SectionButton.Name = "SectionButton"
      SectionButton.Parent = List
      SectionButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
      SectionButton.BackgroundTransparency = 0.000
      SectionButton.Size = UDim2.new(1, 0, 0.100000001, 0)
      SectionButton.Font = Enum.Font.SourceSans
      SectionButton.Text = name
      SectionButton.TextColor3 = Color3.fromRGB(200, 200, 200)
      SectionButton.TextScaled = true
      SectionButton.TextSize = 20.000
      SectionButton.TextWrapped = true
      SectionButton.MouseButton1Click:Connect(function() 
          toggled = (not toggled) 
          if not toggled then SectionButton.BackgroundColor3 = Color3.fromRGB(40,40,40)
          else SectionButton.BackgroundColor3 = Color3.fromRGB(0,225,0) end
          func(toggled)
      end)
      local b = {
        ["Edit"] = function(new, faw)
          SectionButton.Name = new or "ClickMe!"
          func = faw or func
        end,
        ["Delete"] = function()
          SectionButton:Destroy()
          lib["ObjectsThatCanBeSaved"][title.."Window"][name.."Toggle"] = nil
        end,
      }
      lib["ObjectsThatCanBeSaved"][title.."Window"][name.."Toggle"] = b
      return 
    end
    lib["ObjectsThatCanBeSaved"][title.."Window"] = a
    return a
  end
}
]]--
shared.GUI = lib