repeat task.wait() until game:IsLoaded()
while wait(5) do
  if shared.GuiLibrary then shared.GuiLibrary:SelfDestruct() end -- VapeV4 Self Destruct
end