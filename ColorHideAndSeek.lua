-- 12781347095
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/Revenant", true))()
local Player = game.Players.LocalPlayer;

_G.teleportToHiders = false;
_G.autoPlay = false;

local Autofarm = Library:Window({
  Text = "Autofarm"
})

local Hider = Library:Window({
  Text = "Hider"
})

local Seeker = Library:Window({
  Text = "Seeker"
})

Autofarm:Toggle({
  Text = "Autoplay",
  Callback = function(bool)
    _G.autoPlay = bool;
  end
})

Autofarm:Keybind({
  Text = "Toggle Library",
  Default = Enum.KeyCode.F4,
  Callback = function()
      Library:Toggle()
  end
})

Hider:Button({
  Text = "Teleport to Top",
  Callback = function()
    teleportToSpawn()
  end
})

Hider:Button({
  Text = "Free Respawn",
  Callback = function()
    Player.Character.Humanoid.RootPart.CFrame = game:GetService("Workspace").RespawnLocation.CFrame
  end
})

Seeker:Button({
  Text = "Teleport to random Hider",
  Callback = function()
    teleportToRandomHider()
  end
})

Seeker:Toggle({
  Text = "Auto Win",
  Callback = function(bool)
    _G.teleportToHiders = bool
  end
})

function teleportToSpawn()
  Player.Character.Humanoid.RootPart.CFrame = game:GetService("Workspace").Wait.SpawnLocation.CFrame
end

function teleportToRandomHider()
  local randomPlayer = game.Players:GetPlayers()[math.random(1,#game.Players:GetPlayers())]

    if randomPlayer.Team == game:GetService("Teams")["Hider"] then
        Player.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(randomPlayer.Character.Head.Position.X, randomPlayer.Character.Head.Position.Y, randomPlayer.Character.Head.Position.Z))
    end
end

loadstring(game:HttpGet("https://raw.githubusercontent.com/n-tdi/NtdiWorldScriptHub/main/Universal.lua"))()

while wait() do
  if _G.teleportToHiders then
    teleportToRandomHider()
  end

  if _G.autoPlay then
    if Player.Team == game:GetService("Teams")["Hider"] then
      teleportToSpawn()
      wait(10)
    elseif Player.Team == game:GetService("Teams")["Seeker"] then
      teleportToRandomHider()
    end
  end
end
