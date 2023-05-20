local isfile = isfile or function (x)
  local suc, res = pcall(function() return readfile(x) end)
  return suc and res ~= nil
end
local delfile = delfile or function(x) return writefile(x, "") end
local queue_on_teleport = queue_on_teleport or syn and syn.queue_on_teleport or fluxus and fluxus.queue_on_teleport or function(x) end
assert(not KA_L, "Sonicware Already Injected!")
getgenv().KA_L = true
local suc, res = pcall(function()
  return game:HttpGet("https://raw.githubusercontent.com/KL-AE2160/Sonicware/main/CustomModules/"..game.PlaceId..".lua")
end)
if not suc or res == "404: Not Found" then return end
loadstring(game:HttpGet("https://raw.githubusercontent.com/KL-AE2160/Sonicware/main/CustomModules/"..game.PlaceId..".lua"))()
local RainbowLogo = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local UICorner = Instance.new("UICorner")
local Frame_2 = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
RainbowLogo.Name = "RainbowLogo"
RainbowLogo.Parent = game:GetService("Players").LocalPlayer.PlayerGui
Frame.Parent = RainbowLogo
Frame.BackgroundColor3 = Color3.fromRGB(93, 93, 93)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.0478873253, 0, 0.142307699, 0)
Frame.Size = UDim2.new(0.21877934, 0, 0.0519230776, 0)
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
queue_on_teleport('loadstring(game:HttpGet("https://raw.githubusercontent.com/KL-AE2160/Sonicware/main/Execute.lua"))()')