-- Cart Ride Around Nothing
loadstring(game:HttpGet("https://raw.githubusercontent.com/edgeiy/infiniteyield/master/source"))()
repeat wait() until game:IsLoaded()
wait(3)
local ScreenGui = Instance.new("ScreenGui")
local TextLabel = Instance.new("TextLabel")
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
local x = 0.400
TextLabel.Parent = ScreenGui
TextLabel.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
TextLabel.BackgroundTransparency = 1
TextLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
TextLabel.Size = UDim2.new(1, 0, 1, 0)
TextLabel.Font = Enum.Font.FredokaOne
TextLabel.Text = "Infinite Yield: Use ';vfly' to fly, ';unvfly' to stop cart flying."
TextLabel.TextTransparency = 1
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 30.000
TextLabel.TextWrapped = true
local tw = TweenInfo.new(0.2)
local ts = game:GetService("TweenService")
ts:Create(TextLabel, tw, {
    BackgroundTransparency = 0.400
})
ts:Create(TextLabel, TweenInfo.new(0.5), {
    TextTransparency = 0.000
})