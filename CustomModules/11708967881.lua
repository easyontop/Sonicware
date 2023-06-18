pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))() end)
local playersService = game:GetService("Players")
repeat task.wait() until game:IsLoaded()
local lplr = playersService.LocalPlayer
repeat task.wait() until shared.GuiLibrary
local GuiLibrary = shared.GuiLibrary
local btn = function(tab, argstable) 
    return GuiLibrary["ObjectsThatCanBeSaved"][tab.."Window"]["Api"].CreateOptionsButton(argstable)
end
_G["asf"] = false
GuiLibrary["ObjectsThatCanBeSaved"]["UtilityWindow"]["Api"]["CreateOptionsButton"]({
    ["Enabled"] = false,
    ["Name"] = "AutoStarFarm",
    ["Function"] = function(callback)
      _G['asf'] = callback
      local gamed = game.Players.LocalPlayer.Character.HumanoidRootPart
			local starsFolder = game.Workspace.Stars:GetChildren()
      while _G["asf"] do
        for _, model in ipairs(starsFolder) do
					if model:IsA("Model") then
						local part = model:FindFirstChild("Root")
						if part and part.BrickColor ~= BrickColor.new(1014) then
							gamed.CFrame = CFrame.new(part.Position)
						end
					end
				end
				wait()
      end
    end
  }
)
