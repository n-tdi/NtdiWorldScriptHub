local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/Revenant", true))()
local throwArea = game:GetService("Workspace").World.ThrowPointer.Main.CFrame;
local Player = game.Players.LocalPlayer;

function fireCollect(CollectName)
  local args = {
      [1] = CollectName
  }

  game:GetService("ReplicatedStorage").Remote.Star.Server.Collect:FireServer(unpack(args))
end

_G.AutoCollect = false
_G.AutoThrow = false;

local Autofarm = Library:Window({
  Text = "Autofarm"
})

Autofarm:Toggle({
  Text = "Auto Collect Stars",
  Callback = function(bool)
    _G.AutoCollect = bool
  end
})

Autofarm:Toggle({
  Text = "Auto Throw",
  Callback = function(bool)
    _G.AutoThrow = bool
  end
})

while wait() do
  if _G.AutoCollect then
    for i, child in ipairs(game:GetService("Workspace").Stars:getChildren()) do
      if child then
        fireCollect(child.Name)
      end
    end
    wait(5)
  end
  if _G.AutoThrow then
    Player.Character.Humanoid.RootPart.CFrame = throwArea;
    mouse1click()
    wait(1)
  end
end
