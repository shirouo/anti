--[[ made by shirou
underground = makes lockers look at feet // 99% of lockers resolve this, to know if they can be affected by this. see if they ground shoot.
desync = makes lockers look at sky // a lot of lockers can resolve this now. but if they have prediction they usually can be antid like this.
prediction breaker = makes lockers have 0 prediction, WALK IN A LINE SIDEWAYS. they wont hit you if theyre locking.

prediction breaker works on 99% of all lockers, as it makes their prediction 0. they hit nothing if you walk in a line sideways.
]]--

--// Services
checkcaller = checkcaller
newcclosure = newcclosure
hookmetamethod = hookmetamethod
            
local Notify = false

--// Check If Executed
if getgenv().MoesLoaded == true then
game:GetService("StarterGui"):SetCore("SendNotification", {
Title = "Shirous anti";
Text = "The script is already loaded!";
Icon = "";
Duration = 5;
Button1 = "Youre cool!"
})
return
end

getgenv().MoesLoaded = true


---------- DESYNC ----------


--// Notification Toggle On and Off
game:GetService("Players").LocalPlayer:GetMouse().KeyDown:Connect(function(MoeDesync)
if MoeDesync == string.lower(getgenv().DesyncToggleKey) then
pcall(function()
if Notify == false then
Notify = true
game:GetService("StarterGui"):SetCore("SendNotification", {
Title = "Desync";
Text = "Enabled - shirou#1077";
Icon = "";
Duration = 5
})
elseif Notify == true then
Notify = false
game:GetService("StarterGui"):SetCore("SendNotification", {
Title = "Desync";
Text = "Disabled - shirou#1077";
Icon = "";
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
Icon = "";
Duration = 5
})


---------- PREDICTION BREAKER ----------


wait(1.5)

local Notifyyy = false

game:GetService("Players").LocalPlayer:GetMouse().KeyDown:Connect(function(ShirouPB)
if ShirouPB == string.lower(getgenv().PBToggleKey) then
pcall(function()
if Notify == false then
Notify = true
game:GetService("StarterGui"):SetCore("SendNotification", {
Title = "Pred Breaker";
Text = "Enabled - shirou#1077";
Icon = "";
Duration = 5
})
elseif Notify == true then
Notify = false
game:GetService("StarterGui"):SetCore("SendNotification", {
Title = "Pred Breaker";
Text = "Disabled - shirou#1077";
Icon = "";
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
local renderstepped = game:GetService("RunService").RenderStepped
local stepped = game:GetService("RunService").Stepped
local v3 = Vector3.new
local hrp = game.Players.LocalPlayer.Character.HumanoidRootPart
local lp = game.Players.LocalPlayer
local hrp, c, vel, movel = nil, nil, nil, 0.1
c = lp.Character
hrp = lp.Character.HumanoidRootPart
c = lp.Character
hrp = lp.Character.HumanoidRootPart
vel = hrp.Velocity
hrp.Velocity = vel*-0+v3(-0,-0,-0)
renderstepped:Wait()
hrp.Velocity = vel
stepped:Wait()
if c and c.Parent and hrp and hrp.Parent then
hrp.Velocity = vel + v3(0, movel, 0)
movel = movel * -1
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
Icon = "";
Duration = 5
})

game:GetService("Players").LocalPlayer:GetMouse().KeyDown:Connect(function(MoeDesync)
if MoeDesync == ("=") then
game:GetService("TeleportService"):Teleport(game.PlaceId, LocalPlayer) 
end
end)

--// notif so ur silly self knows a extra keybind!
wait(10)
game:GetService("StarterGui"):SetCore("SendNotification", {
Title = "IMPORTANT";
Text = "hello! pressing = makes you auto rejoin.";
Icon = "";
Duration = 15
})


---------- UNDERGROUND ----------


if getgenv().UnderGround == true then
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
if Notify == false then
Notify = true
game:GetService("StarterGui"):SetCore("SendNotification", {
Title = "Underground";
Text = "Enabled - shirou#1077";
Icon = "";
Duration = 5
})
elseif Notify == true then
Notify = false
game:GetService("StarterGui"):SetCore("SendNotification", {
Title = "Underground";
Text = "Disabled - shirou#1077";
Icon = "";
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
Title = "UG Loaded";
Text = "";
Icon = "";
Duration = 5
})
end
