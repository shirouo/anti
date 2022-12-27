--[[ v.0.0.5
underground basically the same thing as desync just different in a kinda way ... ok..
]]--

--// Services
wait(5)
checkcaller = checkcaller
newcclosure = newcclosure
hookmetamethod = hookmetamethod
            
local Notifyy = false

--// Check If Executed
if getgenv().MoeLoadIt == true then
game:GetService("StarterGui"):SetCore("SendNotification", {
Title = "Moes Underground";
Text = "Moes Underground is already loaded!";
Icon = "rbxthumb://type=AvatarHeadShot&id=" .. game:GetService("Players").LocalPlayer.UserId .. "&w=180&h=180 true";
Duration = 5
})
return
end

getgenv().MoeLoadIt = true
            
--// Notification Toggle On and Off
game:GetService("Players").LocalPlayer:GetMouse().KeyDown:Connect(function(MoeUnderground)
if MoeUnderground == string.lower(getgenv().UndergroundToggleKey) then
pcall(function()
if Notifyy == false then
Notifyy = true
game:GetService("StarterGui"):SetCore("SendNotification", {
Title = "Moes Underground ON";
Text = "Love you " .. game:GetService("Players").LocalPlayer.DisplayName .. "! 💝";
Icon = "rbxthumb://type=AvatarHeadShot&id=" .. game:GetService("Players").LocalPlayer.UserId .. "&w=180&h=180 true";
Duration = 5
})
elseif Notifyy == true then
Notifyy = false
game:GetService("StarterGui"):SetCore("SendNotification", {
Title = "Moes Underground OFF";
Text = "Love you " .. game:GetService("Players").LocalPlayer.DisplayName .. "! 💝";
Icon = "rbxthumb://type=AvatarHeadShot&id=" .. game:GetService("Players").LocalPlayer.UserId .. "&w=180&h=180 true";
Duration = 5
})
end
end)
end
end)
            
--// Underground On and Off
local UndergroundTypes = {}
local Moesheartbeatin = game:GetService("RunService").beatbeat:Connect(function()
if Notifyy == true then
getgenv().UndergroundAmount = 825
local vel = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,-         getgenv().UndergroundAmount,0) 
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
Title = "Underground Executed";
Text = "Thank you for using my script " .. game:GetService("Players").LocalPlayer.DisplayName .. "!";
Icon = "rbxthumb://type=AvatarHeadShot&id=" .. game:GetService("Players").LocalPlayer.UserId .. "&w=180&h=180 true";
Duration = 5
})
