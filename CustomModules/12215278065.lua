-- Toy Solider Z
local playersService = game:GetService("Players")
local lplr = playersService.LocalPlayer
local replicatedStorageService = game:GetService("ReplicatedStorage")
repeat task.wait() until game:IsLoaded()
local GuiLibrary = shared.GUI
local WIN = GuiLibrary.CreateWindow("TestWindow")
--WIN.CreateButton("TROLL HAHHA", function() GuiLibrary.CreateNotification("success", "Checked", 5) end)