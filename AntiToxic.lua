local tl1 = game:HttpGet("https://raw.githubusercontent.com/easyontop/Sonicware/ToxicList.json")
local tl2 = game:GetService("HttpService")
local tl = tl2:JSONDecode(tl1)
local function findreport(args)
  for e, x in pairs(tl) do
    if e == "EXACT" then 
      for b, y in pairs(x) do
        for i, v in pairs(args) do
          if v:find(y) then return "Bullying", y end
        end
      end
    end
    for s, b in pairs(x) do
      for t, y in pairs(args) do
        if y:find(b) then return e, b end
      end
    end
  end
  return nil, nil -- return nothing if nothing found.
end

local textChatService = game:GetService("TextChatService")
local playersService = game:GetService("Players")
local replicatedStorageService = game:GetService("ReplicatedStorage")
local rped = {}
local lplr = playersService.LocalPlayer
pcall(function()
if textChatService.ChatVersion == Enum.ChatVersion.TextChatService then
  textChatService.MessageReceived:Connect(
    function(tab) 
      local plr = tab.TextSource
		  local args = tab.Text:split(" ")
      if plr ~= lplr and shared.snwls:CheckWhitelisted(plr) == false then
        local res, mat = findreport(args)
        if not res or not mat then return end
        if rped[plr] then return end 
        playersService:ReportAbuse(
          plr,
          res,
          "He said a bad word ("..mat..")"
        )
        shared.GUI:CreateNotification("info", "Reported "..plr.Name.." for <b>"..res.."</b> (<font color='rgb(255,0,0)'>"..mat.."</font>)", 15)
        rped[plr] == true
      end
    end
  )
else
  if not replicatedStorageService:FindFirstChild("DefaultChatSystemChatEvents") then return shared.GUI:CreateNotification("error", "Chat Not Avaliable", 5) end
  replicatedStorageService.DefaultChatSystemChatEvents.OnMessageDoneFiltering.OnClientEvent:Connect(
    function(tab, channel)
      local plr = playersService:FindFirstChild(tab.FromSpeaker)
		  local args = tab.Message:split(" ")
      if plr ~= lplr and shared.snwls:CheckWhitelisted(plr) == false then
        local res, mat = findreport(args)
        if not res or not mat then return end
        if rped[plr] then return end
        playersService:ReportAbuse(
          plr,
          res,
          "He said a bad word ("..mat..")"
        )
        shared.GUI:CreateNotification("info", "Reported "..plr.Name.." for <b>"..res.."</b> (<font color='rgb(255,0,0)'>"..mat.."</font>)", 15)
        rped[plr] = true
      end
    end
  )
end
end)