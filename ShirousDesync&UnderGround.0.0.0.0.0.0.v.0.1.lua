--[[ v.0.2.0

made by MOE

underground basically the same thing as desync script wise just different in a kinda way ... idk..

]]--

--// Services

checkcaller = checkcaller
newcclosure = newcclosure
hookmetamethod = hookmetamethod
            
local Notify = false

--// Check If Executed
if getgenv().MoesLoaded == true then
game:GetService("StarterGui"):SetCore("SendNotification", {
Title = "Shirou";
Text = "The script is already loaded!";
Icon = "rbxassetid://12624498811";
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
Title = "Shirous Desync ON";
Text = "";
Icon = "rbxassetid://12624498811";
Duration = 5
})
elseif Notify == true then
Notify = false
game:GetService("StarterGui"):SetCore("SendNotification", {
Title = "Shirous Desync OFF";
Text = "";
Icon = "rbxassetid://12624498811";
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
Text = "thank you for using my script " .. game:GetService("Players").LocalPlayer.DisplayName .. "!";
Icon = "rbxassetid://12624498811";
Duration = 5
})


--// PREDICTION BREAKER

wait(1.5)

local Notifyyy = false

game:GetService("Players").LocalPlayer:GetMouse().KeyDown:Connect(function(ShirouPB)
if ShirouPB == string.lower(getgenv().PBToggleKey) then
pcall(function()
if Notifyyy == false then
Notifyyy = true
game:GetService("StarterGui"):SetCore("SendNotification", {
Title = "Shirous PB ON";
Text = "Prediction Breaker";
Icon = "rbxassetid://12624498811";
Duration = 5
})
elseif Notifyyy == true then
Notifyyy = false
game:GetService("StarterGui"):SetCore("SendNotification", {
Title = "Shirous PB OFF";
Text = "Prediction Breaker";
Icon = "rbxassetid://12624498811";
Duration = 5
})
end
end)
end
end)
            
--// Prediction breaker On and Off
local PBTypes = {}
local ShirouPBH = game:GetService("RunService").heartbeat:Connect(function()
if Notifyyy == true then
ShirouPBH:Wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity*-0+v3(-0,-0,-0)
game:GetService("RunService").RenderStepped:Wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
game:GetService("RunService").Stepped:Wait()
if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character.Parent and game.Players.LocalPlayer.Character.HumanoidRootPart and game.Players.LocalPlayer.Character.HumanoidRootPart.Parent then
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity + v3(0, 0.1, 0)
0.1 = 0.1 * -1
end
end
end)

local PBTypes = {}
if Notifyyy == true then
ShirouPBH:Disconnect()
end

--// Extra notification :3 silllyyyy 💖
game:GetService("StarterGui"):SetCore("SendNotification", {
Title = "PB Loaded";
Text = "have a great day " .. game:GetService("Players").LocalPlayer.DisplayName .. "!";
Icon = "rbxassetid://12624498811";
Duration = 5
})

game:GetService("Players").LocalPlayer:GetMouse().KeyDown:Connect(function(MoeDesync)
if MoeDesync == ("=") then
game:GetService("TeleportService"):Teleport(game.PlaceId, LocalPlayer) 
end
end)

if getgenv().UnderGround == true then
            
--// UnderGround
wait(1.5)
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
Icon = "rbxassetid://12624498811";
Duration = 5
})
elseif Notifyy == true then
Notifyy = false
game:GetService("StarterGui"):SetCore("SendNotification", {
Title = "Underground OFF";
Text = "";
Icon = "rbxassetid://12624498811";
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
Title = "Under Loaded";
Text = "";
Icon = "rbxassetid://12624498811";
Duration = 5
})
            
--// notif so ur silly self knows a extra keybind!
wait(10)
game:GetService("StarterGui"):SetCore("SendNotification", {
Title = "IMPORTANT";
Text = "hello! pressing = makes you auto rejoin.";
Icon = "rbxassetid://12624498811";
Duration = 15
})
end
