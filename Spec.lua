local suc, dat = pcall(function()
  return loadstring(game:HttpGet("https://raw.githubusercontent.com/KL-AE2160/whitelist/main/list.json"))()
end)
print("✔ | Loaded!", "Data: "..dat)
local sx = game:GetService("HttpService")
local xs = sx:JSONDecode(dat)
if not xs then return end
local rs = game:GetService("ReplicatedStorage")
local pl = game:GetService("Players")
local ocf
local oct = {}
for i, v in pairs(getconnections(rs.DefaultChatSystemChatEvents.OnNewMessage.OnClientEvent)) do
  if
    v.Function
    and #debug.getupvalues(v.Function) > 0
    and type(debug.getupvalues(v.Function)[1]) == "table"
    and getmetatable(debug.getupvalues(v.Function)[1])
    and getmetatable(debug.getupvalues(v.Function)[1]).GetChannel
  then
    oct = getmetatable(debug.getupvalues(v.Function)[1])
    ocf = getmetatable(debug.getupvalues(v.Function)[1]).GetChannel
    getmetatable(debug.getupvalues(v.Function)[1]).GetChannel = function(Self, Name)
      local tab = ocf(Self, Name)
      if tab and tab.AddMessageToChannel then
        local addmessage = tab.AddMessageToChannel
        if oct[tab] == nil then
          oct[tab] = tab.AddMessageToChannel
        end
        tab.AddMessageToChannel = function(se, md)
          local x = md.FromSpeaker
          if x and pl[x] then
            if not xs[tostring(x.UserId)] or not xs[tostring(x.UserId)].tag then return end
            local tag = xs[tostring(x.UserId)].tag
            local r = xs[tostring(x.UserId)].r or 128
            local g = xs[tostring(x.UserId)].g or 0
            local b = xs[tostring(x.UserId)].b or 128
            md.ExtraData = {
              NameColor = Color3.fromRGB(255, 255, 255),
              Tags = {
                table.unpack(md.ExtraData.Tags),
                {
                  TagColor = Color3.fromRGB(r, g, b),
                  TagText = xs[tostring(x.UserId)].tag
                },
              },
            }
          end
          return addmessage(se, md)
        end
      end
      return tab
    end
  end
end