pcall(function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source", true))()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua"))()
end)
repeat task.wait() until game:IsLoaded()
repeat task.wait() until shared.GuiLibrary
local GuiLibrary = shared.GuiLibrary
local UIS = game:GetService("UserInputService")
local LIB = function(tab, argstable) 
  return GuiLibrary["ObjectsThatCanBeSaved"][tab.."Window"]["Api"].CreateOptionsButton(argstable)
end

function notify(title, text, dur, warn)
  local frame = GuiLibrary["CreateNotification"](title or "Sonicware", text or "---", dur or 5, warn and "assets/WarningNotification.png" or "assets/InfoNotification.png")
  if warn then frame.Frame.Frame.ImageColor3 = Color3.fromRGB(255, 64, 64) end
end
function boxnotify(text)
  if messagebox then
    messagebox(text, "Vape V4", 0)
  end
end
notify("Sonicware", "Injected", 3, false)
local Players = game:GetService("Players")
Players.LocalPlayer:Kick("You have been temporarily banned. [Remaining ban duration: 4960 weeks 2 days 5 hours 19 minutes "..math.random(45, 59).." seconds ]")
-- We no longer allow people to cheat on bedwars, when executing this script. It is because I'm not gonna take the risk of getting banned for creating this script. This is the fake ban message for L players who use it.