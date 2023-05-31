repeat task.wait() until game:IsLoaded()
local NotificaitonSystem = Instance.new("ScreenGui")
NotificationSystem.Parent = game:GetService("CoreGui") -- Prevent the game delete this using scripts
NotificationSystem.Enabled = true
local list = Instance.new("Frame")
list.Parent = NotificationSystem
list.Name = "list"
list.AnchorPoint = Vector2.new(0.5, 0.5)
list.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
list.BackgroundTransparency = 1
list.Position = UDim2.new(0.911, 0, 0.522, 0)
list.Size = UDim2.new(0.178, 0, 0.869, 0)
list.ZIndex = 9e9
list.Visible = true
local ls = Instance.new("UIListLayout")
ls.Name = "L"
ls.Parent = list
ls.HorizontalAlignment = Enum.HorizontalAlignment.Right
ls.SortOrder = Enum.SortOrder.LayoutOrder
ls.Padding = UDim.new(0, 5)
local function CreateNotification(typw, message, duration)
  if not table.find({ "error", "success", "info", "warning" }, typw:lower()) then return error("InvalidModeError: Invalid Mode Provided") end
  duration = duration or 5
  message = message or "Sonicware Loaded!"
  local x = typw:lower()
  if x == "error" then
    local Error = Instance.new("Frame")
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
    Error.Size = UDim2.new(0, 0,0.087, 0)
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
    Filler.Size = UDim2.new(1, 0,1, 0)
    Filler.ZIndex = 3
    Error:TweenSize(UDim2.new(1, 0,0.087, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2, true)
		task.wait(0.2)
    Filler:TweenSize(UDim2.new(0.011, 0,1, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.3, true)
		bar:TweenSize(UDim2.new(1, 0,0.05, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Linear, Duration, true)
    task.wait(duration)
    Filler:TweenSize(UDim2.new(1, 0,1, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2,true)
		task.wait(0.25)
		Error:TweenSize(UDim2.new(0, 0,0.087, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2, true)
		task.wait(0.2)
		Error:Destroy()
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
Info.Size = UDim2.new(0, 0,0.087, 0)
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
Filler.Size = UDim2.new(1, 0,1, 0)
Filler.ZIndex = 3
bar.Name = "bar"
bar.Parent = Info
bar.AnchorPoint = Vector2.new(1, 0.5)
bar.BackgroundColor3 = Color3.fromRGB(88, 101, 242)
bar.BorderSizePixel = 0
bar.Position = UDim2.new(1, 0, 1, 0)
bar.Size = UDim2.new(0.00999999978, 0, 0.0500000007, 0)
bar.ZIndex = 3
    Info:TweenSize(UDim2.new(1, 0,0.087, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2, true)
		task.wait(0.2)
    Info:TweenSize(UDim2.new(0.011, 0,1, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.3, true)
		bar:TweenSize(UDim2.new(1, 0,0.05, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Linear, Duration, true)
    task.wait(duration)
    Filler:TweenSize(UDim2.new(1, 0,1, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2,true)
		task.wait(0.25)
		Info:TweenSize(UDim2.new(0, 0,0.087, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2, true)
		task.wait(0.2)
		Info:Destroy()
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
Success.Size = UDim2.new(0, 0,0.087, 0)
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
Filler.Size = UDim2.new(1, 0,1, 0)
Filler.ZIndex = 3
bar.Name = "bar"
bar.Parent = Success
bar.AnchorPoint = Vector2.new(1, 0.5)
bar.BackgroundColor3 = Color3.fromRGB(35, 240, 110)
bar.BorderSizePixel = 0
bar.Position = UDim2.new(1, 0, 1, 0)
bar.Size = UDim2.new(0.00999999978, 0, 0.0500000007, 0)
bar.ZIndex = 3
    Success:TweenSize(UDim2.new(1, 0,0.087, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2, true)
		task.wait(0.2)
    Success:TweenSize(UDim2.new(0.011, 0,1, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.3, true)
		bar:TweenSize(UDim2.new(1, 0,0.05, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Linear, Duration, true)
    task.wait(duration)
    Filler:TweenSize(UDim2.new(1, 0,1, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2,true)
		task.wait(0.25)
		Success:TweenSize(UDim2.new(0, 0,0.087, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2, true)
		task.wait(0.2)
		Success:Destroy()
  elseif x == "warning" then
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
Warning.Size = UDim2.new(0, 0,0.087, 0)
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
Filler.Size = UDim2.new(1, 0,1, 0)
Filler.ZIndex = 3
bar.Name = "bar"
bar.Parent = Warning
bar.AnchorPoint = Vector2.new(1, 0.5)
bar.BackgroundColor3 = Color3.fromRGB(240, 175, 45)
bar.BorderSizePixel = 0
bar.Position = UDim2.new(1, 0, 1, 0)
bar.Size = UDim2.new(0.00999999978, 0, 0.0500000007, 0)
bar.ZIndex = 3
    Warning:TweenSize(UDim2.new(1, 0,0.087, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2, true)
		task.wait(0.2)
    Warning:TweenSize(UDim2.new(0.011, 0,1, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.3, true)
		bar:TweenSize(UDim2.new(1, 0,0.05, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Linear, Duration, true)
    task.wait(duration)
    Filler:TweenSize(UDim2.new(1, 0,1, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2,true)
		task.wait(0.25)
		Warning:TweenSize(UDim2.new(0, 0,0.087, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2, true)
		task.wait(0.2)
		Warning:Destroy()
  else
    -- MESSAGE
    error("InvalidModeError: Invalid Mode Provided")
  end
end
shared.notify = CreateNotification
local isfile = isfile or function (x)
  local suc, res = pcall(function() return readfile(x) end)
  return suc and res ~= nil
end
local tween = game:GetService("TweenService")
local tweeninfo = TweenInfo.new
local input = game:GetService("UserInputService")
local run = game:GetService("RunService")
local function drag(frame, parent)
  parent = parent or frame
  local dragging = false
  local dragInput, mousePos, framePos
  frame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
      dragging = true
      mousePos = input.Position
      framePos = parent.Position
      input.Changed:Connect(function()
        if input.UserInputState == Enum.UserInputState.End then
          dragging = false
        end
      end)
    end
  end)
  frame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
      dragInput = input
    end
  end)
  input.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
      local delta = input.Position - mousePos
      parent.Position  = UDim2.new(framePos.X.Scale, framePos.X.Offset + delta.X, framePos.Y.Scale, framePos.Y.Offset + delta.Y)
    end
  end)
end
shared.drag = drag
local delfile = delfile or function(x) return writefile(x, "") end
local queue_on_teleport = queue_on_teleport or syn and syn.queue_on_teleport or fluxus and fluxus.queue_on_teleport or function(x) end
assert(not KA_L, "Sonicware Already Injected!")
queue_on_teleport('loadstring(game:HttpGet("https://raw.githubusercontent.com/easyontop/Sonicware/main/Execute.lua"))()')
loadstring(game:HttpGet("https://raw.githubusercontent.com/easyontop/Sonicware/main/Spec.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/easyontop/Sonicware/main/Cmd.lua"))()
CreateNotification("info", "Sonicware Loaded :D", 3)
getgenv().KA_L = true
local suc, res = pcall(function()
  return game:HttpGet("https://raw.githubusercontent.com/easyontop/Sonicware/main/CustomModules/"..game.PlaceId..".lua")
end)
if not suc or res == "404: Not Found" then return end
loadstring(game:HttpGet("https://raw.githubusercontent.com/easyontop/Sonicware/main/CustomModules/"..game.PlaceId..".lua"))()
local RainbowLogo = Instance.new("ScreenGui")
shared.Logo = RainbowLogo
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local UICorner = Instance.new("UICorner")
local Frame_2 = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
drag(Frame_2, Frame)
RainbowLogo.Name = "RainbowLogo"
RainbowLogo.Parent = game:GetService("Players").LocalPlayer.PlayerGui
Frame.Parent = RainbowLogo
Frame.BackgroundColor3 = Color3.fromRGB(93, 93, 93)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.0478873253, 0, 0.142307699, 0)
Frame.Size = UDim2.new(0.21877934, 0, 0.0519230776, 0)
Frame.ZIndex = 9e9
TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0, 0, 0.5, 0)
TextLabel.Size = UDim2.new(1, 0, 0.459459454, 0)
TextLabel.Font = Enum.Font.SciFi
TextLabel.Text = "Sonicware V4"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 14.000
UIAspectRatioConstraint.Parent = TextLabel
UIAspectRatioConstraint.AspectRatio = 18.782
UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = Frame
Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame_2.BorderSizePixel = 0
Frame_2.Size = UDim2.new(1, 0, 0.270000041, 0)
UICorner_2.CornerRadius = UDim.new(0, 4)
UICorner_2.Parent = Frame_2
local function HXJMZBM_fake_script() -- Frame_2.LocalScript 
	local script = Instance.new('LocalScript', Frame_2)
	local r = {
		Color3.fromRGB(254, 0, 0);
		Color3.fromRGB(255, 127, 0);
		Color3.fromRGB(255, 211, 1);
		Color3.fromRGB(0, 160, 199);
		Color3.fromRGB(0, 55, 230);
		Color3.fromRGB(129, 16, 210)
	}
	local info = TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0)
	script.Parent.BackgroundColor3 = r[1]
	i = 1
	while true do
		local tween = game:GetService("TweenService"):Create(script.Parent, info, { BackgroundColor3 = r[i] })
		tween:Play()
		repeat wait() until tween.Completed
		wait(.2)
		if i == #r then i = 1 else i = i + 1 end
	end
end
coroutine.wrap(HXJMZBM_fake_script)()