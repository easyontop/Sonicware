repeat task.wait() until game:IsLoaded()
if shared.snwls:CheckLocalWhitelisted() == false then 
  return -- Currently not providing advantages for vape users.
else
  local plr = {}
  local rpx = {
    ["Fly"] = {},
    ["InfFly"] = {},
    ["NoNameTag"] = {},
    ["Swim"] = {},
  }
  local playersService = game:GetService("Players")
  local lplr = playersService.LocalPlayer
  plr = playersService:GetPlayers()
  playersService.PlayerAdded:Connect(function(r) table.insert(plr, r) end)
  -- Functions
  local function NameTag(plr)
    if not plr.Character or plr == lplr then return end
    if not plr.Character["Head"] or not plr.Character["Head"]["Nametag"] then
      if table.find(rbx["NoNameTag"], tostring(plr.UserId)) then return end
      shared.GUI:CreateNotification("warning", "Hacker Detected: "..plr.Name..". \nReason: NameTag")
      rbx["NoNameTag"][tostring(plr.UserId)] = true
    end
  end

  local function InfFly(plr)
    if not plr.Character or plr == lplr then return end
    local maximumMagnitude = 30000
    local lhrt = lplr.Character:FindFirstChild("HumanoidRootPart")
    local ohrt = plr.Character:FindFirstChild("HumanoidRootPart")
    if not lhrt or not ohrt then return end
    local dmxe = math.abs((lhrt.Position-ohrt.Position).magnitude or 0)
    if dmxe >= maximumMagnitude then
      if table.find(rbx["InfFly"], tostring(plr.UserId)) then return end
      shared.GUI:CreateNotification("warning", "Hacker Detected: "..plr.Name..". \nReason: InfFly")
      rbx["InfFly"][tostring(plr.UserId)] = true
    end
  end

  local function Fly(plr)
    if plr == lplr or not plr.Character then return end
    local hum = plr.Character:WaitForChild("Humanoid")
    local state = hum:GetState()
    local lhrt = lplr.Character:FindFirstChild("HumanoidRootPart")
    local ohrt = plr.Character:FindFirstChild("HumanoidRootPart")
    if state == 1 or state == 5 and math.abs((lhrt.Position-ohrt.Position).magnitude or 0) < 30000 then
      if table.find(rbx["Fly"], tostring(plr.UserId)) then return end
      shared.GUI:CreateNotification("warning", "Hacker Detected: "..plr.Name..". \nReason: Fly")
      rbx["Fly"][tostring(plr.UserId)] = true
    end
  end
  local function Swim(plr)
    if plr == lplr or not plr.Character then return end
    local hum = plr.Character:WaitForChild("Humanoid")
    local state = hum:GetState()
    if state == 4 then
      if table.find(rbx["Swim"], tostring(plr.UserId)) then return end
      shared.GUI:CreateNotification("warning", "Hacker Detected: "..plr.Name..". \nReason: Swim")
      rbx["Swim"][tostring(plr.UserId)] = true
    end
  end
  while wait(1) do
    for i,v in pairs(playersService:GetPlayers()) do
      InfFly(v)
      NameTag(v)
      Fly(v)
      Swim(v)
    end
  end
end