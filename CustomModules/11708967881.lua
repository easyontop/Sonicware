pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))() end)
local playersService = game:GetService("Players")
repeat task.wait() until game:IsLoaded()
local lplr = playersService.LocalPlayer
repeat task.wait() until shared.GuiLibrary
local GuiLibrary = shared.GuiLibrary
local btn = function(wi, args)
  GuiLibrary["ObjectsThatCanBeSaved"][wi.."Window"].CreateOptionsButton(
    {
      table.unpack(args),
      Enabled = false
    }
  )
end
_G["Loop"] = false
btn(
  "Utility", {
    ["Name"] = "AutoStarFarm",
    ["Function"] = function(callback)
      _G['Loop'] = callback
      local gamed = game.Players.LocalPlayer.Character.HumanoidRootPart
			local starsFolder = game.Workspace.Stars:GetChildren()
      while _G["Loop"] do
        for _, model in ipairs(starsFolder) do
					if model:IsA("Model") then
						local part = model:FindFirstChildWhichIsA("BasePart")
						if part then
							gamed.CFrame = CFrame.new(part.Position)
						end
					end
				end
				wait()
      end
    end
  }
)