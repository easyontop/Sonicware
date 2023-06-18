-- Toy Solider Z
repeat task.wait() until game:IsLoaded()
local playersService = game:GetService("Players")
local lplr = playersService.LocalPlayer
local replicatedStorageService = game:GetService("ReplicatedStorage")
function bxp(x)
  pcall(
    function()
      if not x.Parent or x.Parent.Name ~= "teddy" then return end
      local a = Instance.new("BoxHandleAdornment")
      a.Name = "TED_PESP"
      a.Parent = x
      a.Adornee = x
      a.AlwaysOnTop = true
      a.ZIndex = 0
      a.Size = x.Size
      a.Color = BrickColor.new("Lime green")
      a.Transparency = .6
    end
  )
end
for i, v in pairs(workspace:GetDescendants()) do
  task.spawn(function() bxp(v) end)
end
workspace.DescendantAdded:Connect(function(v) task.spawn(function() bxp(v) end) end)