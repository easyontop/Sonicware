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
function TP(POS)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = POS
end
_G["at"] = false
GuiLibrary["ObjectsThatCanBeSaved"]["UtilityWindow"]["Api"]["CreateOptionsButton"](
  {
    ["Name"] = "Auto Throw",
    ["Function"] = function(cb)
      _G["at"] = cb
      while _G["at"] do
        task.spawn(
          function() 
            TP(CFrame.new(-94.4807968, 281.926392, -110.089729, -0.0431109145, 4.41078996e-08, -0.999070287, 2.23052012e-08, 1, 4.31864535e-08, 0.999070287, -2.04226573e-08, -0.0431109145))
            wait(0.1)
            game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("Throw"):WaitForChild("Server"):WaitForChild("Request"):FireServer()
            wait(1)
            TP(CFrame.new(9667.20312, 194.237198, -107.84156, -0.000386250351, 0.187470704, -0.982270122, 1.00458779e-08, 0.982270181, 0.187470719, 0.99999994, 7.24007623e-05, -0.000379404082))
            wait(7)
          end
        )
      end
    end
  }
)