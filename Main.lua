local placeId = game.placeId;

if placeId == 12781347095 then -- Color Hide and Seek
  loadstring(game:HttpGet("https://raw.githubusercontent.com/n-tdi/NtdiWorldScriptHub/main/ColorHideAndSeek.lua"))()
elseif placeId == 12114398020 then -- Every second gain point
  loadstring(game:HttpGet("https://raw.githubusercontent.com/n-tdi/NtdiWorldScriptHub/main/EverySecondPoint.lua"))()
elseif placeId == 12398176076 then -- start an emo band from your garage tycoon
  loadstring(game:HttpGet("https://raw.githubusercontent.com/n-tdi/NtdiWorldScriptHub/main/EmoBand.lua"))()
else
  loadstring(game:HttpGet("https://raw.githubusercontent.com/n-tdi/NtdiWorldScriptHub/main/Universal.lua"))()
end
