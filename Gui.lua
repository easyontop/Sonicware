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
  task.wait(duration)
  tweenService:Create(Notification.Filler, n, {
      Size = UDim2.new(1, 0,1, 0)
  }):Play()
  tweenService:Create(Notification, n, {
      Size = UDim2.new(0, 0,0.087, 0)
  }):Play()
  task.wait(.2)
  Notification:Destroy()
end

local SONICWAREV4 = Instance.new("ScreenGui", game.CoreGui)
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local LoadIcon = Instance.new("TextLabel")
local SonIconLoadV4 = Instance.new("TextLabel")
local LB = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local Frame_2 = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local Main = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local Seper = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local Seper_2 = Instance.new("Frame")
local CloseBtn = Instance.new("ImageButton")
local UICorner_6 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
SONICWAREV4.Name = "SONICWAREV4"
Frame.Parent = SONICWAREV4
Frame.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
Frame.Position = UDim2.new(0.249266863, 0, 0.25, 0)
Frame.Size = UDim2.new(0.5, 0, 0.5, 0)
Frame.Visible = false

UICorner.CornerRadius = UDim.new(0, 15)
UICorner.Parent = Frame

LoadIcon.Name = "LoadIcon"
LoadIcon.Parent = Frame
LoadIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LoadIcon.BackgroundTransparency = 1.000
LoadIcon.Position = UDim2.new(0, 0, 0.123076916, 0)
LoadIcon.Size = UDim2.new(1, 0, 0.5, 0)
LoadIcon.Font = Enum.Font.SourceSans
LoadIcon.Text = "⚡"
LoadIcon.TextColor3 = Color3.fromRGB(0, 0, 0)
LoadIcon.TextScaled = true
LoadIcon.TextSize = 14.000
LoadIcon.TextWrapped = true

SonIconLoadV4.Name = "SonIconLoadV4"
SonIconLoadV4.Parent = Frame
SonIconLoadV4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SonIconLoadV4.BackgroundTransparency = 1.000
SonIconLoadV4.Position = UDim2.new(0.351906151, 0, 0.623076916, 0)
SonIconLoadV4.Size = UDim2.new(0.298142731, 0, 0.149071321, 0)
SonIconLoadV4.Font = Enum.Font.SourceSans
SonIconLoadV4.Text = "Sonicware V4"
SonIconLoadV4.TextColor3 = Color3.fromRGB(0, 0, 0)
SonIconLoadV4.TextScaled = true
SonIconLoadV4.TextSize = 14.000
SonIconLoadV4.TextWrapped = true

LB.Name = "LB"
LB.Parent = Frame
LB.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LB.Position = UDim2.new(0.0997067466, 0, 0.834615409, 0)
LB.Size = UDim2.new(0.800000012, 0, 0.100000001, 0)

UICorner_2.CornerRadius = UDim.new(0, 50)
UICorner_2.Parent = LB

Frame_2.Parent = LB
Frame_2.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
Frame_2.Size = UDim2.new(0.0326490328, 0, 1, 0)

UICorner_3.CornerRadius = UDim.new(0, 50)
UICorner_3.Parent = Frame_2

Main.Name = "Main"
Main.Parent = SONICWAREV4
Main.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.349951118, 0, 0.174999997, 0)
Main.Size = UDim2.new(0.300000012, 0, 0.649999976, 0)
Main.Visible = false

UICorner_4.Parent = Main

Title.Name = "Title"
Title.Parent = Main
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Size = UDim2.new(1, 0, 0.100000001, 0)
Title.Font = Enum.Font.Gotham
Title.Text = "Sonicware V4"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextSize = 20.000
Title.TextWrapped = true

UITextSizeConstraint.Parent = Title
UITextSizeConstraint.MaxTextSize = 20

Seper.Name = "Seper"
Seper.Parent = Main
Seper.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Seper.BackgroundTransparency = 0.600
Seper.Position = UDim2.new(0, 0, 0.100000001, 0)
Seper.Size = UDim2.new(1, 0, 0.00999999978, 0)



Seper_2.Name = "Seper"
Seper_2.Parent = Main
Seper_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Seper_2.BackgroundTransparency = 0.600
Seper_2.Position = UDim2.new(0, 0, 0.209999993, 0)
Seper_2.Size = UDim2.new(1, 0, 0.00999999978, 0)

CloseBtn.Name = "CloseBtn"
CloseBtn.Parent = Main
CloseBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CloseBtn.BackgroundTransparency = 1.000
CloseBtn.BorderSizePixel = 0
CloseBtn.Position = UDim2.new(0.8865183, 0, 0, 0)
CloseBtn.Size = UDim2.new(0.113481648, 0, 0.099999994, 0)
CloseBtn.Image = "rbxassetid://2777726146"


-- Scripts:

local function IDDN_fake_script() -- Frame_2.LocalScript 
	local script = Instance.new('LocalScript', Frame_2)

	script.Parent.Size = UDim2.new(0,0,1,0)
	local tw = TweenInfo.new(2)
	local tsser = game:GetService("TweenService")
	tsser:Create(script.Parent, tw, {
		Size = UDim2.new(.8,0,1,0)
	}):Play()
	local tws = TweenInfo.new(3)
	wait(2)
	tsser:Create(script.Parent, tw, {
		Size = UDim2.new(1,0,1,0)
	}):Play()
	wait(3)
	tsser:Create(script.Parent, TweenInfo.new(.5), {
		BackgroundTransparency = 1
	}):Play()
	tsser:Create(script.Parent.Parent, TweenInfo.new(.5), {
		BackgroundTransparency = 1
	}):Play()
	wait(.5)
	tsser:Create(script.Parent.Parent.Parent.SonIconLoadV4, TweenInfo.new(.5), {
		TextTransparency = .6
	}):Play()
	wait(.5)
	tsser:Create(script.Parent.Parent.Parent.SonIconLoadV4, TweenInfo.new(.5), {
		TextTransparency = 0
	}):Play()
	wait(.8)
	tsser:Create(script.Parent.Parent.Parent.SonIconLoadV4, TweenInfo.new(.5), {
		TextTransparency = .6
	}):Play()
	wait(.5)
	tsser:Create(script.Parent.Parent.Parent.SonIconLoadV4, TweenInfo.new(.5), {
		TextTransparency = 0
	}):Play()
	wait(.8)
	tsser:Create(script.Parent.Parent.Parent.SonIconLoadV4, TweenInfo.new(.5), {
		TextTransparency = .6
	}):Play()
	wait(.5)
	tsser:Create(script.Parent.Parent.Parent.SonIconLoadV4, TweenInfo.new(.5), {
		TextTransparency = 0
	}):Play()
	wait(.8)
	tsser:Create(script.Parent.Parent.Parent.SonIconLoadV4, TweenInfo.new(.5), {
		TextTransparency = .6
	}):Play()
	wait(.5)
	tsser:Create(script.Parent.Parent.Parent.SonIconLoadV4, TweenInfo.new(.5), {
		TextTransparency = 0
	}):Play()
	wait(.8)
	tsser:Create(script.Parent.Parent.Parent.SonIconLoadV4, TweenInfo.new(.5), {
		TextTransparency = .6
	}):Play()
	wait(.5)
	tsser:Create(script.Parent.Parent.Parent.SonIconLoadV4, TweenInfo.new(.5), {
		TextTransparency = 0
	}):Play()
	wait(.8)
	tsser:Create(script.Parent.Parent.Parent.SonIconLoadV4, TweenInfo.new(.5), {
		TextTransparency = 1
	}):Play()
	tsser:Create(script.Parent.Parent.Parent.LoadIcon, TweenInfo.new(.5), {
		TextTransparency = 1
	}):Play()
	wait(.5)
	tsser:Create(script.Parent.Parent.Parent.UICorner, TweenInfo.new(.5), {
		CornerRadius = UDim.new(0, 50)
	}):Play()
	tsser:Create(script.Parent.Parent.Parent, TweenInfo.new(.5), {
		Size = UDim2.new(0,35,0,35);
		Position = UDim2.new(0.024, 0,0.052, 0)
	}):Play()
	wait(.5)
	local TextXXX = Instance.new("TextButton")
	TextXXX.Parent = script.Parent.Parent.Parent
	TextXXX.BackgroundTransparency = 1
	TextXXX.Text = "⚡"
	TextXXX.TextScaled = true
	TextXXX.Position = UDim2.new(0,0,0,0)
	TextXXX.BackgroundColor3 = Color3.new(0,0,0)
	TextXXX.Size = UDim2.new(1,0,1,0)
	script.Parent.Parent.Parent.Parent.Main.Size = UDim2.new(0,0,0,0)
	for i, v in pairs(script.Parent.Parent.Parent.Parent.Main:GetDescendants()) do
		pcall(function() v.Visible = false end)
	end
	TextXXX.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent.Parent.Main.Size = UDim2.new(0,0,0,0)
		script.Parent.Parent.Parent.Parent.Main.Visible = true
		tsser:Create(TextXXX, TweenInfo.new(.5), {
			TextTransparency = 1;
		}):Play()
		TextXXX.Visible = false
		tsser:Create(script.Parent.Parent.Parent, TweenInfo.new(.5), {
			BackgroundTransparency = 1
		}):Play()
		tsser:Create(script.Parent.Parent.Parent.Parent.Main, TweenInfo.new(1), {
			Size = UDim2.new(.3,0,.65,0)
		}):Play()
		wait(.5)
		script.Parent.Parent.Parent.Visible = false
		wait(.5)
		for i, v in pairs(script.Parent.Parent.Parent.Parent.Main:GetDescendants()) do
			pcall(function() v.Visible = true end)
		end
	end)
	script.Parent.Parent.Parent.Parent.Main.CloseBtn.MouseButton1Click:Connect(function()
		TextXXX.Visible = true
		script.Parent.Parent.Parent.Visible = true
		tsser:Create(TextXXX, TweenInfo.new(.5), {
			TextTransparency = 0;
		}):Play()
		tsser:Create(script.Parent.Parent.Parent, TweenInfo.new(.5), {
			BackgroundTransparency = 0
		}):Play()
		for i, v in pairs(script.Parent.Parent.Parent.Parent.Main:GetDescendants()) do
			pcall(function() v.Visible = false end)
		end
		tsser:Create(script.Parent.Parent.Parent.Parent.Main, TweenInfo.new(1), {
			Size = UDim2.new(0,0,0,0)
		}):Play()
		wait(.5)
	end)
end
coroutine.wrap(IDDN_fake_script)()
local function JVBID_fake_script() -- SONICWAREV4.LocalScript 
	local script = Instance.new('LocalScript', SONICWAREV4)

	script.Parent.Frame.Visible = true
end
coroutine.wrap(JVBID_fake_script)()
local MenuList = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
MenuList.Name = "MenuList"
MenuList.Parent = Main
MenuList.Active = true
MenuList.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MenuList.BackgroundTransparency = 1.000
MenuList.Position = UDim2.new(0.0500000007, 0, 0.119999997, 0)
MenuList.Size = UDim2.new(0.899999976, 0, 0.0799999982, 0)
MenuList.CanvasSize = UDim2.new(0, 0, 0, 0)
MenuList.ScrollBarThickness = 0
UIListLayout.Parent = MenuList
UIListLayout.FillDirection = Enum.FillDirection.Horizontal
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0.05, 0)
local Items = {}
lib["ObjectsThatCanBeSaved"] = {}
lib["CreateWindow"] = function(title)
  local TextButton = Instance.new("TextButton")
  local UICorner = Instance.new("UICorner")
  TextButton.Parent = MenuList
  TextButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
  TextButton.BorderSizePixel = 0
  TextButton.Position = UDim2.new(0.138186708, 0, 0.295857996, 0)
  TextButton.Size = UDim2.new(0.300000012, 0, 1, 0)
  TextButton.Font = Enum.Font.Gotham
  TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
  TextButton.TextSize = 15.000
  TextButton.TextWrapped = true
  TextButton.Text = title
  UICorner_5.CornerRadius = UDim.new(0, 50)
  UICorner_5.Parent = TextButton
  local ScrollingFrame = Instance.new("ScrollingFrame")
  TextButton.MouseButton1Click:Connect(function() ScrollingFrame.Visible = not ScrollingFrame.Visible end)
  local UIListLayout_2 = Instance.new("UIListLayout")
  ScrollingFrame.Parent = Main
  ScrollingFrame.Visible = false
  ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  ScrollingFrame.BackgroundTransparency = 1.000
  ScrollingFrame.BorderSizePixel = 0
  ScrollingFrame.Position = UDim2.new(0.00999999978, 0, 0.230000004, 0)
  ScrollingFrame.Size = UDim2.new(0.980000019, 0, 0.75999999, 0)
  ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
  ScrollingFrame.ScrollBarThickness = 0
  UIListLayout_2.Parent = ScrollingFrame
  UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
  UIListLayout_2.Padding = UDim.new(0.00999999978, 0)
  local FWUS = {
    ["UI"] = ScrollingFrame,
    ["Remove"] = function() ScrollingFrame:Destroy() TextButton:Destroy() end,
    ["Toggle"] = function() ScrollingFrame.Visible = not ScrollingFrame.Visible end,
    ["CreateButton"] = function(name, cb) 
      local TextButton_2 = Instance.new("TextButton")
      local UICorner_6 = Instance.new("UICorner")
      UICorner_6.Parent = TextButton_2
      TextButton_2.Parent = ScrollingFrame
      TextButton_2.BackgroundColor3 = Color3.fromRGB(180, 180, 180)
      TextButton_2.Position = UDim2.new(0, 0, 0.5, 0)
      TextButton_2.Size = UDim2.new(1, 0, 0.100000001, 0)
      TextButton_2.Font = Enum.Font.Gotham
      TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
      TextButton_2.TextSize = 14.000
      TextButton_2.Text = name
      TextButton_2.MouseButton1Click:Connect(function() cb() end)
      lib.ObjectsThatCanBeSaved[title.."Window"][name.."Button"] = TextButton_2
      return {
        ["Remove"] = function() TextButton_2:Destroy() lib.ObjectsThatCanBeSaved[title.."Window"][name.."Button"] = nil end,
        ["EditText"] = function(nt) TextButton_2.Text = nt end,
      }
    end,
  }
  lib.ObjectsThatCanBeSaved[title.."Window"] = FUWS
  return FUWS
end

shared.GUI = lib