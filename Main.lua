local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/Revenant", true))()

local Player = game.Players.LocalPlayer

_G.AntiAfk = false;

local placeId = game.placeId;

if placeId == 12781347095 then -- Color Hide and Seek
  loadstring(game:HttpGet("https://raw.githubusercontent.com/n-tdi/NtdiWorldScriptHub/main/ColorHideAndSeek.lua"))()
elseif placeId == 12114398020 then -- Every second gain point
  loadstring(game:HttpGet("https://raw.githubusercontent.com/n-tdi/NtdiWorldScriptHub/main/EverySecondPoint.lua"))()
elseif placeId == 12398176076 then -- start an emo band from your garage tycoon
  loadstring(game:HttpGet("https://raw.githubusercontent.com/n-tdi/NtdiWorldScriptHub/main/EmoBand.lua"))()
end


local Universal = Library:Window({
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
