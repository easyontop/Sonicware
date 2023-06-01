local Whitelist = {
  priority = {
    ["SONICWARE OWNER"] = 4,
    ["SONICWARE ADMIN"] = 3,
    ["SONICWARE PRIVATE"] = 2,
    DEFAULT = 1
  },
  loaded = false,
  players = {},
  table = {},
  chatStr1 = {
    sonicware = "KVOP35KYFPXP2"
  },
  chatStr2 = {
    KVOP35KYFPXP2 = "sonicware"
  },
}
shared.snww = Whitelist
local playersService = game:GetService("Players")
local replicatedStorageService = game:GetService("ReplicatedStorage")
local textChatService = game:GetService("TextChatService")
local tweenService = game:GetService("TweenService")
local tween = TweenInfo.new
--if not game.PlaceId or game.PlaceId == 0 then return end -- This is the main page of roblox but idk why UWP executors can execute scripts even in main page. SussyBaka
local lplr = playersService.LocalPlayer
local bitch = game:HttpGet("https://raw.githubusercontent.com/easyontop/whitelist/main/list.json")
local gay = game:GetService("HttpService")
local nolife = gay:JSONDecode(bitch)
Whitelist.table = nolife
Whitelist.Loaded = true
function Whitelist:CheckPlayerType(plr)
  if not plr or not plr.UserId then return end
  local pt = "DEFAULT"
  local owner 
  local private
  if Whitelist.table[tostring(plr.UserId)] then
    local oi = Whitelist.table[tostring(plr.UserId)]["pos"] or 2
    owner = oi == 4
    private = oi == 2 or oi == 3
  end
  return owner and "SONICWARE OWNER" or private and "SONICWARE PRIVATE" or pt
end

function Whitelist:CheckWhitelisted(plr)
  local poe = Whitelist:CheckPlayerType(plr)
  if poe == "DEFAULT" then
    return false
  else
    return true
  end
end

function Whitelist:CheckLocalWhitelisted()
  local poe = Whitelist:CheckPlayerType(lplr)
  if poe == "DEFAULT" then
    return false
  else
    return true
  end
end

function Whitelist:IsSpecialInGame()
  for i, v in pairs(playersService:GetPlayers()) do
    if Whitelist:CheckWhitelisted(v) == true then
      return true
    end
  end
  return false
end

shared.snwls = Whitelist