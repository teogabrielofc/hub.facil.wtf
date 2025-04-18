if game.PlaceId == 8200787440 then
  loadstring(game:HttpGet("https://hub.facil.wtf/Eat-Blobs-Simulator.lua",true))()
else
    
    game.StarterGui:SetCore("SendNotification", {
        Title = "Incompatible",
        Text = "hub.facil.wtf does not support this game",
        Duration = 8,
       
    })
end