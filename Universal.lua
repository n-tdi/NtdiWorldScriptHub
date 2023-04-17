local Uni = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/Revenant", true))()

local Player = game.Players.LocalPlayer

_G.AntiAfk = false;

local Universal = Uni:Window({
  Text = "Universal"
})

local AntiAfk = Universal:Toggle({
  Text = "Anti AFK",
  Callback = function(bool)
    _G.AntiAfk = bool
    Library:Notification({
      Text = "Anti AFK has been set to " + _G.AntiAfk,
      Duration = 5
    })
  end
})

local IY = Universal:Button({
  Text = "Launch Infinite Yield",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source", true))()
  end
})

AntiAfk:Keybind({
  Text = "Toggle Library",
  Default = Enum.KeyCode.F4,
  Callback = function()
      Library:Toggle()
  end
})

local vu = game:service'VirtualUser'
Player.Idled:connect(function()
  vu.CaptureController()vu:ClickButton2(Vector2.new())
  Library:Notification({
    Text = "Prevented AFK kick!",
    Duration = 5
  })
end)
