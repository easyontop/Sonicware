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
      local a = Instance.new("BoxHandleAdornment", x)
      a.Name = "TED_PESP"
      --a.Parent = x
      a.Adornee = x
      a.AlwaysOnTop = true
      a.ZIndex = 0
      a.Size = x.Size
      a.Color = BrickColor.new("Lime green")
      a.Transparency = .6
      local b = Instance.new("BillboardGui", x)
      local frame = Instance.new("Frame", b)
			frame.Size = UDim2.new(1, 0, 1, 0)
			frame.BackgroundColor3 = Color3.new(0, 0, 0)
			frame.BackgroundTransparency = 1
			--frame.Parent = b
			local c = Instance.new("TextLabel", frame)
      b.Adornee = x
      --b.Parent = x
      b.Name = "tedtroll"
      b.AlwaysOnTop = true
      b.ZIndex = 0
      b.Size = UDim2.new(0, 150, 0, 200)
      b.Transparency = 
      b.Color = BrickColor.new("Lime green")
      b.StudsOffsetWorldSpace = Vector3.new(0, 3, 0)
      c.Parent = frame
      c.Name = "ted"
      c.BackgroundTransparency = 1
      c.Position = UDim2.new(0, 0, 0, -25)
			c.Size = UDim2.new(0, 150, 0, 150)
			c.Font = Enum.Font.Gotham 
      c.TextColor3 = Color3.fromRGB(255, 255, 255)
      c.TextSize = 20
      c.TextStrokeTransparency = 0
			--c.TextYAlignment = Enum.TextYAlignment.Bottom
			c.Text = "Pick me up!"
		  c.ZIndex = 10
    end
  )
end

for i, v in pairs(workspace:GetDescendants()) do
  bxp(v)
end
workspace.DescendantAdded:Connect(function(v) bxp(v) end)