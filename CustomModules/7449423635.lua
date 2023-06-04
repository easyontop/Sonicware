shared.GUI:CreateNotification("success", "Loading Zamex Hub - Sonicware", 5)
loadstring(game:HttpGet('https://raw.githubusercontent.com/Sixnumz/ZamexMobile/main/Zamex_Mobile.lua'))() 
local replicatedStorageService = game:GetService("ReplicatedStorage")
local playersService = game:GetService("Players")
local lplr = playersService.LocalPlayer
replicatedStorageService.DefaultChatSystemChatEvents.OnMessageDoneFiltering.OnClientEvent:Connect(
  function(tab, channel)
    local plr = playersService:FindFirstChild(tab.FromSpeaker)
    local name = plr ~= nil and "["..plr ~= lplr and plr.Name or "You".."]: " or "[System]: "
    local msg = tab.Message
    shared.GUI:CreateNotification(
      "info",
      name..msg,
      string.len(msg)*0.2 > 5 and string.len(msg)*0.2 or 5
    )
  end
)