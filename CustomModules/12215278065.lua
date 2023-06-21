-- Toy Solider Z
local playersService = game:GetService("Players")
repeat task.wait() until game:IsLoaded()
local lplr = playersService.LocalPlayer

local replicatedStorageService = game:GetService("ReplicatedStorage")

      function esp(x)
        pcall(
          function()
            -- Pcall Because Workspace.Camera will throw error
            --if not TeddyBearESP.Enabled then return end
            if not x.Parent or x.Parent.Name ~= "teddy" then return end
            local esp = Instance.new("BoxHandleAdornment")
            esp.Name = "SonicwareEspForTeddy"
            esp.Parent = x
            esp.Adornee = x
            esp.AlwaysOnTop = true
            esp.ZIndex = 0
            esp.Size = x.Size
            esp.Color = BrickColor.new("Lime green")
            esp.Transparency = .6
          end
        )
      end
      for i, v in pairs(workspace:GetDescendants()) do
  task.spawn(function() esp(v) end)
end
        workspace.DescendantAdded:Connect(function(v) task.spawn(function() esp(v) end) end)

