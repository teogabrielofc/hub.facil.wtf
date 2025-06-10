if game.PlaceId == 8200787440 then
  loadstring(game:HttpGet("https://hub.facil.wtf/Eat-Blobs-Simulator.lua",true))()
elseif game.PlaceId == 111989938562194 then
  loadstring(game:HttpGet("https://hub.facil.wtf/BrainRot-Evolution.lua", true))()
else
    
    game.StarterGui:SetCore("SendNotification", {
        Title = "Incompatible",
        Text = "hub.facil.wtf does not support this game",
        Duration = 8,
       
    })
end
