if game.PlaceId == 8200787440 then
  loadstring(game:HttpGet("https://hub.facil.wtf/Eat-Blobs-Simulator.lua",true))()
elseif game.PlaceId == 111989938562194 then
  loadstring(game:HttpGet("https://hub.facil.wtf/BrainRot-Evolution.lua", true))()
elseif game.PlaceId == 101354156600579 then
  loadstring(game:HttpGet("https://hub.facil.wtf/Steal-a-Character.lua", true)) ()
elseif game.PlaceId == 123382689033007 then
  loadstring(game:HttpGet("https://hub.facil.wtf/Steal-a-Brainrot-MODDED.lua", true)) ()
else
    
    game.StarterGui:SetCore("SendNotification", {
        Title = "Incompatible",
        Text = "hub.facil.wtf does not support this game",
        Duration = 8,
       
    })
end
