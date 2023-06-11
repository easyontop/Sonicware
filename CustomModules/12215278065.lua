-- Toy Solider Z
local playersService = game:GetService("Players")
local lplr = playersService.LocalPlayer
local replicatedStorageService = game:GetService("ReplicatedStorage")
pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua"))() end)
repeat task.wait() until game:IsLoaded()
repeat task.wait() until shared.GuiLibrary
local GuiLibrary = shared.GuiLibrary
local ScriptSettings = {}
local UIS = game:GetService("UserInputService")
local btn = function(tab, argstable) 
  return GuiLibrary["ObjectsThatCanBeSaved"][tab.."Window"]["Api"].CreateOptionsButton(argstable)
end
local rm = function(btnn)
  pcall(function() GuiLibrary.RemoveObject(btnn.."OptionsButton") return true end)
  return false
end
function notify(title, text, duration, isWarning)
  local frame = GuiLibrary["CreateNotification"](title or "Sonicware V4", text, duration or 5, isWarning == true and "assets/WarningNotification.png" or "assets/InfoNotification.png")
end
notify("Sonicware", "Loaded.", 5, false)
rm("Fly")
rm("Atmosphere")
rm("AutoClicker")
rm("Speed")
rm("TriggerBot")
rm("AutoReport")
-- Others I forgot lol
local LoadBuild = btn("Utility", 
  {
    Enabled = false,
    Name = "LoadBuild",
    HoverText = "Load your build from auto save",
    ["Function"] = function(tg)
        if not tg then return end
        replicatedStorageService:WaitForChild("ClientServerRemotes"):WaitForChild("LoadBuild"):FireServer(unpack({
              [1] = "Autosave"
        }))
        notify("LoadBuild", "Loaded.", 4)
        LoadBuild.ToggleButton(false)
    end
  }
)
local AutoTeddy = btn("Utility", {
    Enabled = false,
    Name = "AutoGrabTeddyBear",
    HoverText = "Auto teleport you ti teddy bears.",
    ["Function"] = function(tg)
      notify("AutoGrabTeddyBear", tg and "Enabled" or "Disabled", 5, true)
    end
})

while wait(1) do 
  if not lplr.Team then return end
  for i, v in pairs(workspace.Plots[tostring(lplr.Team.TeamColor)].Collectables) do
    if v.Name ~= "teddy" then return end
    pcall(
      function()
        lplr.Character.HumanoidRootPart.Position = teddy.PrimaryPart.Position
      end
    )
  end
end