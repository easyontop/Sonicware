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
local file = "sonicware.cf"
local isfile = isfile or function(f) 
  local suc, data = pcall(function() return readfile(f) end)
  return suc and data ~= nil
end
local delfile = delfile or function(f) pcall(function() writefile(f, "") end) end
if isfile(file) and readfile(file) == "NO" then
  shared.GuiLibrary.SelfDestruct()
else
  displayErrorPopup("Are you sure to run this, risking the risk of ban? Y/N", {
    YES = function() 
      if isfile(file) then delfile(file) end
    end,
    NO = function() 
      writefile(file, "NO")
      return shared.GuiLibrary.SelfDestruct() 
    end
  })
end