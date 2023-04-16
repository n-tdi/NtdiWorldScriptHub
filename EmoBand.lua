local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/Revenant", true))()

local Player = game.Players.LocalPlayer
local TycoonOwned = ""

for i, v in pairs(game:GetService("Workspace").Tycoons:getDescendants()) do
  if v.Name == "TycoonOwner" and v.Parent then
    if v.Value == Player.Name then
      TycoonOwned = v.Parent.Name
    end
  end
end

print(TycoonOwned)

local coffeMaker = game:GetService("Workspace").Tycoons[TycoonOwned].StaticItems.Storage2.ProximityPrompt
local tshirts = game:GetService("Workspace").Tycoons[TycoonOwned].StaticItems.Storage.ProximityPrompt
local contracts = game:GetService("Workspace").Tycoons[TycoonOwned].StaticItems.Storage3.ProximityPrompt

function teleportToAndClick(Object)
    Player.Character.Humanoid.RootPart.CFrame = Object.Parent.CFrame
    wait(1)
    fireproximityprompt(Object, 5)
end

_G.AutoRestock = false;

local Auto = Library:Window({
  Text = "Auto"
})

Auto:Toggle({
  Text = "Auto Restock",
  Callback = function(bool)
    _G.AutoRestock = bool
    print(_G.AutoRestock)
  end
})

Auto:Keybind({
  Text = "Toggle Library",
  Default = Enum.KeyCode.F4,
  Callback = function()
      Library:Toggle()
  end
})

while wait() do
    if _G.AutoRestock then
        teleportToAndClick(coffeMaker)
        wait(10)
        teleportToAndClick(tshirts)
        wait(10)
        teleportToAndClick(contracts)
        wait(10)
    end
end
