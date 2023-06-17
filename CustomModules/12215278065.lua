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
  pcall(function()
  if not x.Name then return end
  if x.Name:lower() ~= "teddy" then return end
  pcall(
    function()
      local a = Instance.new("BoxHandleAdornment")
      a.Name = x.Name.."_PESP"
      a.Parent = x.PrimaryPart
      a.Adornee = x.PrimaryPart
      a.AlwaysOnTop = true
      a.ZIndex = 0
      a.Size = x.PrimaryPart.Size
      a.Color = BrickColor.new("Lime green")
      local b = Instance.new("BillboardGui")
			local c = Instance.new("TextLabel")
      b.Adornee = x.PrimaryPart
      b.Parent = x.PrimaryPart
      b.Name = x.Name
      b.AlwaysOnTop = true
      b.ZIndex = 1
      b.Size = x.PrimaryPart.Size
      b.Transparency = .2
      b.Color = lplr.Team.TeamColor
      c.Parent = b
      c.Name = x.Name
      c.BackgroundTransparency = 1
      c.Position = UDim2.new(0, 0, 0, -50)
			c.Size = UDim2.new(0, 100, 0, 100)
			c.Font = Enum.Font.FredokaOne
      c.TextColor3 = Color3.new(1, 1, 1)
      c.TextSize = 20
      c.TextStrokeTransparency = 0
			c.TextYAlignment = Enum.TextYAlignment.Bottom
			c.Text = "🐻 Here!"
		  c.ZIndex = 2
        end
      )
    end
  )
end

for i, v in pairs(workspace:GetDescendants()) do
  bxp(v)
end
workspace.DescendantAdded:Connect(function(v) bxp(v) end)