shared.GUI:CreateNotification("success", "Loading Zamex Hub - Sonicware", 5)
loadstring(game:HttpGet('https://raw.githubusercontent.com/Sixnumz/ZamexMobile/main/Zamex_Mobile.lua'))() 
local replicatedStorageService = game:GetService("ReplicatedStorage")
local playersService = game:GetService("Players")
local lplr = playersService.LocalPlayer
replicatedStorageService.DefaultChatSystemChatEvents.OnMessageDoneFiltering.OnClientEvent:Connect(
  function(tab, channel)
    local plr = playersService:FindFirstChild(tab.FromSpeaker)
    local name = plr ~= nil and "<font color='rgb(0, 255, 0)'>["..plr.Name.."]</font>: " or "<font color='rgb(255, 0, 0)'>[System]</font>: "
    local msg = tab.Message
    shared.GUI:CreateNotification(
      "info",
      name..msg,
      string.len(msg)*0.2 > 5 and string.len(msg)*0.2 or 5
    )
  end
)
playersService.PlayerAdded:Connect(
  function(plr)
    if not plr then return end
    shared.GUI:CreateNotification("info", plr.Name.." has joined the experience.", 10)
  end
)

playersService.PlayerRemoving:Connect(
  function(plr)
    shared.GUI:CreateNotification("info", plr.Name.." has left the experience.", 10)
  end
)