-- FOR BEDWARS DEVS:
--[[
THIS SCRIPT ISN'T FOR HACKERS TO RUIN GAMES. If you don't trust it you can check it.
btw my second way to know what xylex made is his dc server. He banned me, but nvm, idc! Github website is always good :D. I always try to make scripts to detect it instead.

Detections:
AutoToxic: ✅
Fly: ❌
Zephyr Speed: ❌
InfiniteFly: ❌ 
Reach: ❌ 

-- Gonna make when summer holidays
--]]
local playersService = game:GetService("Players")
local lplr = playersService.LocalPlayer
local replicatedStorageService = game:GetService("ReplicatedStorage")
local textChatService = game:GetService("TextChatService")
textChatService.MessageReceived:Connect(
  function(tab)
    local plr = tab.TextSource
    if not plr then return end
    local msg = tab.Text
    if msg:find("vxpe") or msg:find("7granddad") or msg:find("ware") or msg:find("ayto")  or msg:find("on top") then 
      -- Oh hey xylex, imagine banning me in your discord server, thinking I can't do the opposite thing of your exploit huh? You make the autotoxic, I MADE THE AUTOTOXIC HACKER ALERT! THIS IS FOR MY REVENGE!!1!
      shared.GUI:CreateNotification(
        "warning", 
        plr.Name.." is detected cheating", 
        4 -- false positive is ok players know how to handle that
      )
    end
  end
)
-- 9th June 2023 - xylex banned me for "| vxpe on top nerd" 💀 Imagine creating an exploit to destroy games.
-- Gonna make a hacker detector for myself then. VapeV4 is just bad.
