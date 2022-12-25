--[[ v.0.0.4

made by MOE

MUEHEHEHE ty for using my script

]]--

--// Services
checkcaller = checkcaller
newcclosure = newcclosure
hookmetamethod = hookmetamethod
            
local Notify = false

--// Check If Executed
if getgenv().MoesLoaded == true then
game:GetService("StarterGui"):SetCore("SendNotification", {
Title = "Moes Desync";
Text = "Moes Desync is already loaded!";
Icon = "rbxthumb://type=AvatarHeadShot&id=" .. game:GetService("Players").LocalPlayer.UserId .. "&w=180&h=180 true";
Duration = 5
})
    return
end

getgenv().MoesLoaded = true
            
--// Notification Toggle On and Off
game:GetService("Players").LocalPlayer:GetMouse().KeyDown:Connect(function(MoeDesync)
if MoeDesync == string.lower(getgenv().ToggleKey) then
pcall(function()
if Notify == false then
Notify = true
game:GetService("StarterGui"):SetCore("SendNotification", {
Title = "Moes Desync ON";
Text = "Love you " .. game:GetService("Players").LocalPlayer.DisplayName .. "! 💖";
Icon = "rbxthumb://type=AvatarHeadShot&id=" .. game:GetService("Players").LocalPlayer.UserId .. "&w=180&h=180 true";
Duration = 5
})
elseif Notify == true then
Notify = true
game:GetService("StarterGui"):SetCore("SendNotification", {
Title = "Moes Desync OFF";
Text = "Love you " .. game:GetService("Players").LocalPlayer.DisplayName .. "! 💖";
Icon = "rbxthumb://type=AvatarHeadShot&id=" .. game:GetService("Players").LocalPlayer.UserId .. "&w=180&h=180 true";
Duration = 5
})
end
end)
end
end)
            
--// Desync On and Off
local DesyncTypes = {}
local moeheartbeat = game:GetService("RunService").heartbeat:Connect(function()
if Notify == true then
local abc = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(1,1,1) * (2^16)
game:GetService("RunService").RenderStepped:Wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = abc
end
end)

local DesyncTypes = {}
if Notify == false then
moeheartbeat:Disconnect()
end

--// Extra notification :3 silllyyyy 💖
game:GetService("StarterGui"):SetCore("SendNotification", {
Title = "Desync Executed";
Text = "Thank you for using my script " .. game:GetService("Players").LocalPlayer.DisplayName .. "!";
Icon = "rbxthumb://type=AvatarHeadShot&id=" .. game:GetService("Players").LocalPlayer.UserId .. "&w=180&h=180 true";
Duration = 5
})

game:GetService("Players").LocalPlayer:GetMouse().KeyDown:Connect(function(MoeDesync)
    if MoeDesync == ("=") then
        game:GetService("TeleportService"):Teleport(game.PlaceId, LocalPlayer) 
    end
end)
