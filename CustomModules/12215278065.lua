-- Toy Solider Z
local playersService = game:GetService("Players")
local lplr = playersService.LocalPlayer
local replicatedStorageService = game:GetService("ReplicatedStorage")
repeat task.wait() until game:IsLoaded()
local GuiLibrary = shared.GUI
local char = lplr.Character
local team = {
  Cyan = "Blue",
  Moss = "Green",
  Daisy = "Yellow",
  Persimmon = "Red"
}

function bxp(x)
  pcall(
    function()
      if not x.Parent or x.Parent.Name ~= "teddy" then return end
      local a = Instance.new("BoxHandleAdornment")
      a.Name = "TED_PESP"
      a.Parent = x
      a.Adornee = x
      a.AlwaysOnTop = true
      a.ZIndex = 7e9
      a.Size = x.Size
      a.Color = BrickColor.new("Lime green")
      local b = Instance.new("BillboardGui")
			local c = Instance.new("TextLabel")
      b.Adornee = x
      b.Parent = x
      b.Name = "tedtroll"
      b.AlwaysOnTop = true
      b.ZIndex = 8e9
      b.Size = UDim2.new(0, 100, 0, 150)
      b.Transparency = .2
      b.Color = BrickColor.new("Lime green")
      b.StudsOffset = Vector3.new(0, 1, 0)
      c.Parent = b
      c.Name = "ted"
      c.BackgroundTransparency = 1
      c.Position = UDim2.new(0, 0, 0, -50)
			c.Size = UDim2.new(0, 100, 0, 100)
			c.Font = Enum.Font.FredokaOne
      c.TextColor3 = Color3.new(1, 1, 1)
      c.TextSize = 20
      c.TextStrokeTransparency = 0
			c.TextYAlignment = Enum.TextYAlignment.Bottom
			c.Text = "🐻 Here!"
		  c.ZIndex = 9e9
    end
  )
end

for i, v in pairs(workspace:GetDescendants()) do
  bxp(v)
end
workspace.DescendantAdded:Connect(function(v) bxp(v) end)