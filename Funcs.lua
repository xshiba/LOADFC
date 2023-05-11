for i,v in pairs(_G.SaveSettings.SelectAbilities) do
        if v == "Geppo" then
            _G.GeppoNOCD = true
        end
        if v == "Dash" then
            _G.DashNOCD = true
        end
        if v == "Soru" then
            _G.SoruNOCD = true
        end
    end
    pcall(function()
        for i,v in next, getgc() do
            task.spawn(function()
                if _G.DashNOCD then
                    if game.Players.LocalPlayer.Character:FindFirstChild('Dodge') and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
                        if typeof(v) == "function" and getfenv(v).script == game.Players.LocalPlayer.Character:FindFirstChild('Dodge') then
                            for i2,v2 in next, debug.getupvalues(v) do
                                if tostring(v2) == "0.4" or tostring(v2) == "0.475" then
                                    repeat wait(.1)
                                        if (game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.Health > 0) and game.Players.LocalPlayer.Character:FindFirstChild('Dodge') then
                                            setupvalue(v, i2, 0)
                                        end
                                    until not game.Players.LocalPlayer.Character:FindFirstChild('Dodge')
                                end
                            end
                        end
                    end
                end
            end)
            task.spawn(function()
                if _G.GeppoNOCD then
                    if game.Players.LocalPlayer.Character:FindFirstChild('Skyjump') and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
                        if typeof(v) == "function" and getfenv(v).script == game.Players.LocalPlayer.Character:FindFirstChild('Skyjump') then
                            for i2,v2 in next, debug.getupvalues(v) do
                                if tostring(i2) == "9" then
                                    repeat wait(.1)
                                        if (game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.Health > 0) and game.Players.LocalPlayer.Character:FindFirstChild('Skyjump') then
                                            setupvalue(v, i2, 0)
                                        end
                                    until not game.Players.LocalPlayer.Character:FindFirstChild('Skyjump')
                                end
                            end
                        end
                    end
                end
            end)
            task.spawn(function()
                if _G.SoruNOCD then
                    if game.Players.LocalPlayer.Character:FindFirstChild('Soru') and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
                        if typeof(v) == "function" and getfenv(v).script == game.Players.LocalPlayer.Character:FindFirstChild('Soru') then
                            for i2,v2 in next, debug.getupvalues(v) do
                                if typeof(v2) == "table" then
                                    repeat wait(.1)
                                        if (game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.Health > 0) and game.Players.LocalPlayer.Character:FindFirstChild('Soru') then
                                            v2.LastUse = 0
                                            v2.LastAfter = 0
                                        end
                                    until not game.Players.LocalPlayer.Character:FindFirstChild('Soru')
                                end
                            end
                        end
                    end
                end
            end)
        end
    end)
