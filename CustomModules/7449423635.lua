-- Blox Fruits
repeat task.wait() until game:IsLoaded()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Sixnumz/ZamexMobile/main/Zamex_Mobile.lua'))() -- Auto Load Modules
local StatsMeaning = Instance.new("ScreenGui")
local UoS = Instance.new("Frame")
local UxCorn = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
TextLabel.RichText = true
local TextButton = Instance.new("TextButton")
local Active = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
shared.drag(UoS, UoS)
StatsMeaning.Name = "StatsMeaning"
StatsMeaning.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
UoS.Name = "UoS"
UoS.Parent = StatsMeaning
UoS.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
UoS.BackgroundTransparency = 0.400
UoS.Position = UDim2.new(0, 0, 0.300000012, 0)
UoS.Size = UDim2.new(0.150000006, 0, 0.400000006, 0)
UxCorn.CornerRadius = UDim.new(0, 4)
UxCorn.Name = "UxCorn"
UxCorn.Parent = UoS
TextLabel.Parent = UoS
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Size = UDim2.new(1, 0, 0.800000012, 0)
TextLabel.Font = Enum.Font.FredokaOne
TextLabel.Text = "Melee: Increases damage on Fighting Styles (+0.5) and Energy (+5)."
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true
TextButton.Parent = UoS
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 1.000
TextButton.Position = UDim2.new(0, 0, 0.800000012, 0)
TextButton.Size = UDim2.new(1, 0, 0.200000003, 0)
TextButton.Font = Enum.Font.LuckiestGuy
TextButton.Text = ">>"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextSize = 20.000
Active.Name = "Active"
Active.Parent = UoS
Active.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Active.BackgroundTransparency = 0.600
Active.BorderSizePixel = 0
Active.Position = UDim2.new(0, 0, -0.100961536, 0)
Active.Size = UDim2.new(1, 0, 0.100000001, 0)
Active.Font = Enum.Font.FredokaOne
Active.Text = "Meaning of items in Stats"
Active.TextColor3 = Color3.fromRGB(0, 0, 0)
Active.TextSize = 14.000
UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = Active
local function MENRWYF_fake_script() 
	local script = Instance.new('LocalScript', TextButton)
	local items = {
		"<font color='rgb(255,0,0)'>Melee</font><font color='rgb(255, 165, 0)'>: Increases damage on Fighting Styles (+0.5) and Energy (+5).</font>",
		"<font color='rgb(0,0,255)'>Defense</font><font color='rgb(255, 165, 0)'>: Increases health (+5).</font>",
		"<font color='rgb(0,255,0)'>Sword</font><font color='rgb(255, 165, 0)'>: Increases damage on Swords (+0.5)</font>.",
		"<font color='rgb(255,255,0)'>Gun</font><font color='rgb(255, 165, 0)'>: Increases damage on Guns (+0.5).</font>",
		"<font color='rgb(128,0,128)'>Blox Fruits</font><font color='rgb(255, 165, 0)'>: Increases damage on Blox Fruits (+0.5).</font>",
	}
	local extra = "\n\nCurrently having 2450 stat levels on Gun, Sword, and Blox Fruit stats will give an 83x multiplier. \nEach stat level adds a x1.0346759259 (3.46759259%) buff."
	local current = 1
	script.Parent.Parent.TextLabel.Text = tostring(items[1])..extra
	script.Parent.MouseButton1Click:Connect(function()
		current = current + 1
		if current > 5 then current = 1 end
		script.Parent.Parent.TextLabel.Text = tostring(items[current])..extra
	end)
end
coroutine.wrap(MENRWYF_fake_script)()
local function KYOJLUP_fake_script() 
	local script = Instance.new('LocalScript', Active)

	script.Parent.Parent.TextButton.Visible = false
	script.Parent.Parent.TextLabel.Visible = false
	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.TextButton.Visible = not script.Parent.Parent.TextButton.Visible
		script.Parent.Parent.TextLabel.Visible = not script.Parent.Parent.TextLabel.Visible
	end)
end
coroutine.wrap(KYOJLUP_fake_script)()
-- Avoid new blox fruits players using this script also dont know what the stats upgrade is.