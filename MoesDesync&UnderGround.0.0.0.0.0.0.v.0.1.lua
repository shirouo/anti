--[[ v.0.1.4

made by MOE

underground basically the same thing as desync just different in a kinda way ... ok..

MUEHEHEHE ty for using my script

yes!! .....

ok.. i hate waiting for github to update..

raging.

insert frowning face here

]]--

--// Services

checkcaller = checkcaller
newcclosure = newcclosure
hookmetamethod = hookmetamethod
            
local Notify = false

--// Check If Executed
if getgenv().MoesLoaded == true then
game:GetService("StarterGui"):SetCore("SendNotification", {
Title = "Moes silly";
Text = "Moes script is already loaded!";
Icon = "rbxassetid://11948110123&w=90&h=90 true";
Duration = 5
})
return
end

getgenv().MoesLoaded = true
            
--// Notification Toggle On and Off
game:GetService("Players").LocalPlayer:GetMouse().KeyDown:Connect(function(MoeDesync)
if MoeDesync == string.lower(getgenv().DesyncToggleKey) then
pcall(function()
if Notify == false then
Notify = true
game:GetService("StarterGui"):SetCore("SendNotification", {
Title = "Moes Desync ON";
Text = "";
Icon = "rbxassetid://11948110123&w=90&h=90 true";
Duration = 5
})
elseif Notify == true then
Notify = false
game:GetService("StarterGui"):SetCore("SendNotification", {
Title = "Moes Desync OFF";
Text = "";
Icon = "rbxassetid://11948110123&w=90&h=90 true";
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
if Notify == true then
moeheartbeat:Disconnect()
end

--// Extra notification :3 silllyyyy 💖
game:GetService("StarterGui"):SetCore("SendNotification", {
Title = "Desync Loaded";
Text = "Thank you for using my script " .. game:GetService("Players").LocalPlayer.DisplayName .. "!";
Icon = "rbxassetid://11948110123&w=90&h=90 true";
Duration = 5
})

game:GetService("Players").LocalPlayer:GetMouse().KeyDown:Connect(function(MoeDesync)
if MoeDesync == ("=") then
game:GetService("TeleportService"):Teleport(game.PlaceId, LocalPlayer) 
end
end)

if getgenv().UnderGround == true then
            
--// UnderGround
--// Services
wait(5)
checkcaller = checkcaller
newcclosure = newcclosure
hookmetamethod = hookmetamethod

local UndergroundAmount = "825"
local Notifyy = false
            
--// Notification Toggle On and Off
game:GetService("Players").LocalPlayer:GetMouse().KeyDown:Connect(function(MoeUnderground)
if MoeUnderground == string.lower(getgenv().UnderGroundToggleKey) then
pcall(function()
if Notifyy == false then
Notifyy = true
game:GetService("StarterGui"):SetCore("SendNotification", {
Title = "Underground ON";
Text = "";
Icon = "rbxassetid://11948110123&w=90&h=90 true";
Duration = 5
})
elseif Notifyy == true then
Notifyy = false
game:GetService("StarterGui"):SetCore("SendNotification", {
Title = "Underground OFF";
Text = "";
Icon = "rbxassetid://11948110123&w=90&h=90 true";
Duration = 5
})
end
end)
end
end)
            
--// Underground On and Off
local UndergroundTypes = {}
local Moesheartbeatin = game:GetService("RunService").Heartbeat:Connect(function()
if Notifyy == true then
local vel = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,-         UndergroundAmount,0) 
game:GetService("RunService").RenderStepped:Wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = vel
end
end)

local UndergroundTypes = {}
if Notifyy == true then
Moesheartbeatin:Disconnect()
end

--// silllyyyy notif ;-;
game:GetService("StarterGui"):SetCore("SendNotification", {
Title = "Under Loaded :p";
Text = "Thank you for using my script " .. game:GetService("Players").LocalPlayer.DisplayName .. "!";
Icon = "rbxassetid://11948110123&w=90&h=90 true";
Duration = 5
})
end
