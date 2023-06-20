-- Toy Solider Z
pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))() end)
local isfile = isfile or function(x)
  local d, f = pcall(function() return readfile(x) end)
  return d and f ~= nil
end
local delfile = delfile or function(x)
  writefile(x, "")
end
local httpService = game:GetService("HttpService")
local gs = httpService:JSONDecode(shared.gs or {})
while wait(1) do
  shared.SaveSettings(httpService:JSONEncode(gs) ~= "[]" and httpService:JSONEncode(gs) or "{}")
end
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

