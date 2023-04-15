-- 12781347095
local Finity = loadstring(game:HttpGet("https://raw.githubusercontent.com/LocalSmail/Finity/main/Library"))()
local Player = game.Players.LocalPlayer;

local teleportToRandomPlayers = false

local FinityWindow = Finity.new("Ntdi World", true, nil, nil, false, nil) 
    
local MiscCategory = FinityWindow:Category("Misc")

local TeamSector = MiscCategory:Sector("Team")
local SeakerTeamCheat = TeamSector:Cheat("Button", "Seeker Team", function ()
    Player.Team = game.Teams.Seeker
end, {})
local HiderTeamCheat = TeamSector:Cheat("Button", "Hider Team", function ()
    Player.Team = game.Teams.Hider
end, {})
local SpectatorTeaMCheat = TeamSector:Cheat("Button", "Spectate Team", function ()
    Player.Team = game.Teams.Spectator
end, {})

local HiderCategory = FinityWindow:Category("Hider")

local WinSector = HiderCategory:Sector("Win")
local WinCheat = WinSector:Cheat("Button", "Teleport to Top", function()
    Player.Character.Humanoid.RootPart.CFrame = game:GetService("Workspace").Wait.SpawnLocation.CFrame
end, {})



local LegitSector = HiderCategory:Sector("Legit")

local RespawnCheat = LegitSector:Cheat("Button", "Free Respawn", function()
    Player.Character.Humanoid.RootPart.CFrame = game:GetService("Workspace").RespawnLocation.CFrame
end, {})

local HiderCategory = FinityWindow:Category("Seeker")

local WinSSector = HiderCategory:Sector("Win")
local WinCCheat = WinSSector:Cheat("Button", "Teleport to random Hider", function()
    local randomPlayer = game.Players:GetPlayers()[math.random(1,#game.Players:GetPlayers())]

    if randomPlayer.Team == game:GetService("Teams")["Hider"] then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(randomPlayer.Character.Head.Position.X, randomPlayer.Character.Head.Position.Y, randomPlayer.Character.Head.Position.Z))
    end   
end, {})

local CycleWinCheat = WinSSector:Cheat("Button", "Cycle through Hiders", function()
    teleportToRandomPlayers = not teleportToRandomPlayers
    print(teleportToRandomPlayers)
end, {})

while true do
    if teleportToRandomPlayers then
       print("running")
        local randomPlayer = game.Players:GetPlayers()[math.random(1,#game.Players:GetPlayers())]
         
        if randomPlayer.Team == game:GetService("Teams")["Hider"] then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(randomPlayer.Character.Head.Position.X, randomPlayer.Character.Head.Position.Y, randomPlayer.Character.Head.Position.Z))
        end
    end
    wait(0.1) 
end
