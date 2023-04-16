
local Finity = loadstring(game:HttpGet("https://raw.githubusercontent.com/LocalSmail/Finity/main/Library"))()
local Player = game.Players.LocalPlayer;

_G.farmWins = false

local FinityWindow = Finity.new("Ntdi World", true, nil, nil, false, nil) 
    
local AutoCategory = FinityWindow:Category("Auto")

local AfkSector = AutoCategory:Sector("AFK")

local AfkCheat = AfkSector:Cheat("Button", "AFK Farm", function ()
    farmWins = not farmWins
end, {})

while true do
    if _G.farmWins then
        Player.Character.Humanoid.RootPart.CFrame = game:GetService("Workspace").Wins.Stage10.CFrame
        Player.Character.Humanoid:MoveTo(Vector3.new(-33.3600082, 1.7280035, 10360.124))
        wait(0.5)
        Player.Character.Humanoid:MoveTo(Vector3.new(-22.3600082, 1.7280035, 10360.124))
        wait(0.5)
        Player.Character.Humanoid:MoveTo(Vector3.new(-33.3600082, 1.7280035, 10360.124))
        wait(0.5)
        Player.Character.Humanoid:MoveTo(Vector3.new(-22.3600082, 1.7280035, 10360.124))
    end

    wait(0.1)
end
