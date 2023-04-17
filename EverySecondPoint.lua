local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/Revenant", true))()
local Flags = Library.Flags
local playerHead = game.Players.LocalPlayer.Character.Head;

_G.AutoFarmWins = false;

local Autofarm = Library:Window({
  Text = "Autofarm"
})

Autofarm:Toggle({
  Text = "Farm Wins",
  Callback = function(bool)
    _G.AutoFarmWins = bool
  end
})

Autofarm:Keybind({
  Text = "Toggle Library",
  Default = Enum.KeyCode.F4,
  Callback = function()
      Library:Toggle()
  end
})

while wait() do
  if _G.AutoFarmWins then
    firetouchinterest(playerHead, game:GetService("Workspace").Wins.Stage10, 0)
    wait(0.01)
    firetouchinterest(playerHead, game:GetService("Workspace").Wins.Stage10, 1)
  end
end
