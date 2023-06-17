-- Toy Solider Z
local playersService = game:GetService("Players")
local lplr = playersService.LocalPlayer
local replicatedStorageService = game:GetService("ReplicatedStorage")
repeat task.wait() until game:IsLoaded()
local GuiLibrary = shared.GUI
local test = GuiLibrary.ObjectsThatCanBeSaved
local y = test.CreateWindow("Test")
local z = y.CreateToggle({
    Name = "Hi",
    Function = function(ch)
        print("OUT "..ch)
    end
})