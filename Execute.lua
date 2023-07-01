repeat task.wait() until game:IsLoaded()
local isfile = isfile or function (x)
  local suc, res = pcall(function() return readfile(x) end)
  return suc and res ~= nil
end
local tween = game:GetService("TweenService")
local tweeninfo = TweenInfo.new
local input = game:GetService("UserInputService")
local run = game:GetService("RunService")
local function drag(frame, parent)
  parent = parent or frame
  local dragging = false
  local dragInput, mousePos, framePos
  frame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
      dragging = true
      mousePos = input.Position
      framePos = parent.Position
      input.Changed:Connect(function()
        if input.UserInputState == Enum.UserInputState.End then
          dragging = false
        end
      end)
    end
  end)
  frame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
      dragInput = input
    end
  end)
  input.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
      local delta = input.Position - mousePos
      parent.Position  = UDim2.new(framePos.X.Scale, framePos.X.Offset + delta.X, framePos.Y.Scale, framePos.Y.Offset + delta.Y)
    end
  end)
end
shared.drag = drag
local delfile = delfile or function(x) return writefile(x, "") end
local queue_on_teleport = queue_on_teleport or syn and syn.queue_on_teleport or fluxus and fluxus.queue_on_teleport or function(x) end
if KA_L == true or getgenv().KA_L == true then
  if not shared.GUI then return end
  shared.GUI:CreateNotification("error", "Sonicware Already Injected!", 15)
  return
end
getgenv().KA_L = true
if not isfolder("Sonicware") then makefolder("Sonicware") end
if not isfolder("Sonicware/Profiles") then makefolder("Sonicware/Profiles") end
queue_on_teleport('loadstring(game:HttpGet("https://raw.githubusercontent.com/easyontop/Sonicware/main/Execute.lua"))()')
loadstring(game:HttpGet("https://raw.githubusercontent.com/easyontop/Sonicware/main/Spec.lua"))()
--loadstring(game:HttpGet("https://raw.githubusercontent.com/easyontop/Sonicware/main/cmd.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/easyontop/Sonicware/main/Wls.lua"))()
local txe = loadstring(game:HttpGet("https://raw.githubusercontent.com/easyontop/Sonicware/main/Gui.lua"))()
--loadstring(game:HttpGet("https://raw.githubusercontent.com/easyontop/Sonicware/main/AntiToxic.lua"))()
if shared.snwls:CheckLocalWhitelisted() then
  shared.GUI:CreateNotification("info", "Congratulations 🎊 You are whitelisted!")
end
local suc, res = pcall(function()
  return game:HttpGet("https://raw.githubusercontent.com/easyontop/Sonicware/main/CustomModules/"..game.PlaceId..".lua")
end)

if not suc or res == "404: Not Found" then return shared.GUI:CreateNotification("warning", "No Scripts are avaliable for this game. Sorry for the inconvenience.", 20) end
local replicatedStorageService = game:GetService("ReplicatedStorage")
local playersService = game:GetService("Players")
local lplr = playersService.LocalPlayer
playersService.PlayerAdded:Connect(
  function(plr)
    if not plr then return end
    shared.GUI:CreateNotification("info", plr.Name.." has joined the experience.", 3)
  end
)
playersService.PlayerRemoving:Connect(
  function(plr)
    shared.GUI:CreateNotification("info", plr.Name.." has left the experience.", 3)
  end
)
loadstring(game:HttpGet("https://raw.githubusercontent.com/easyontop/Sonicware/main/CustomModules/"..game.PlaceId..".lua"))()
