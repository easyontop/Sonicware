repeat task.wait() until game:IsLoaded()
pcall(
  function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
  end
)
repeat task.wait() until shared.GuiLibrary
local function displayErrorPopup(text, funclist)
	local oldidentity = getidentity()
	setidentity(8)
	local ErrorPrompt = getrenv().require(game:GetService("CoreGui").RobloxGui.Modules.ErrorPrompt)
	local prompt = ErrorPrompt.new("Default")
	prompt._hideErrorCode = true
	local gui = Instance.new("ScreenGui", game:GetService("CoreGui"))
	prompt:setErrorTitle("Sonicware")
	local funcs
	if funclist then 
		funcs = {}
		local num = 0
		for i,v in pairs(funclist) do 
			num = num + 1
			table.insert(funcs, {
				Text = i,
				Callback = function() 
					prompt:_close() 
					v()
				end,
				Primary = num == #funclist
			})
		end
	end
	prompt:updateButtons(funcs or {{
		Text = "OK",
		Callback = function() 
			prompt:_close() 
		end,
		Primary = true
	}}, 'Default')
	prompt:setParent(gui)
	prompt:_open(text)
	setidentity(oldidentity)
end
local file = tostring(game:GetService("Players").LocalPlayer.UserId).."sonicware.cf"
local isfile = isfile or function(f) 
  local suc, data = pcall(function() return readfile(f) end)
  return suc and data ~= nil
end
local delfile = delfile or function(f) pcall(function() writefile(f, "") end) end
if isfile(file) and readfile(file) == "NO" then
  shared.GuiLibrary.SelfDestruct()
else
  if isfile(file) and readfile(file) == "YES" then return end
  displayErrorPopup("Are you sure to run this, risking the risk of ban? Y/N", {
    YES = function() 
      if isfile(file) then 
        delfile(file) 
      else
        writefile(file, "YES")
      end
    end,
    NO = function() 
      writefile(file, "NO")
      return shared.GuiLibrary.SelfDestruct() 
    end
  })
end
repeat task.wait() until shared.GuiLibrary
local GuiLibrary = shared.GuiLibrary
local UIS = game:GetService("UserInputService")
local LIB = function(tab, argstable) 
    return GuiLibrary["ObjectsThatCanBeSaved"][tab.."Window"]["Api"].CreateOptionsButton(argstable)
end
function notify(title, text, dur, war)
    local frame = GuiLibrary["CreateNotification"](title or "Client Notification", text, dur or 5, war and "assets/WarningNotification.png" or "assets/InfoNotification.png")
    frame.Frame.Frame.ImageColor3 = Color3.fromRGB(255, 64, 64)
end
notify("SonicwareV4", "Injected. Thanks for using Sonicware!", 3, false)
local ij = { ['Enabled'] = false }
local ige = false
ij = LIB("Utility", {
    Name = "InfiniteJump", 
    HoverText = "Allows you to infinite jump",
    Function = function(cb)
      if not cb then 
        ige = false
      else
        ige = true
        game:GetService("UserInputService").JumpRequest:Connect(function()
					if ige then
						local humanoid = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
						if humanoid then
							humanoid:ChangeState("Jumping")
						end
					end
				end)
      end
    end
})

local BetterJump2 = {["Enabled"] = false}
  local btj = false
BetterJump2 = GuiLibrary["ObjectsThatCanBeSaved"]["BlatantWindow"]["Api"].CreateOptionsButton({
	["Name"] = "VelocityHighJump",
	["HoverText"] = "tp's u up alot v2 (2x faster)",
	["Function"] = function(v)
		betterjump = v
		if v then
          btj = true
		Workspace.Gravity = 0
		lplr.Character.HumanoidRootPart.CFrame = lplr.Character.HumanoidRootPart.CFrame + Vector3.new(0, -3, 0)
		spawn(function()
					repeat
		if (not btj) then return end
		Workspace.Gravity = 0
		lplr.Character.HumanoidRootPart.CFrame = lplr.Character.HumanoidRootPart.CFrame + Vector3.new(0, 5, 0)
		task.wait(0.04)
		lplr.Character.HumanoidRootPart.CFrame = lplr.Character.HumanoidRootPart.CFrame + Vector3.new(0, 3, 0)
		until (not btj) 
			end)	
		else
		Workspace.Gravity = 196.2
		end
	end
})
