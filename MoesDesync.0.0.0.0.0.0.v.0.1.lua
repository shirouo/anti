--[[ made by

MOE MUEHEHEHE ty for using my script

]]--

checkcaller=checkcaller;newcclosure=newcclosure;hookmetamethod=hookmetamethod;local v0=false;game:GetService("Players").LocalPlayer:GetMouse().KeyDown:Connect(function(v3)if (v3==string.lower(getgenv().ToggleKey)) then pcall(function()if (v0==false) then v0=true;game:GetService("StarterGui"):SetCore("SendNotification",{Title="Moes Desync ON",Text="Thank you for using my script "   .. game:GetService("Players").LocalPlayer.DisplayName   .. "!",Icon="rbxthumb://type=AvatarHeadShot&id="   .. game:GetService("Players").LocalPlayer.UserId   .. "&w=180&h=180 true",Duration=5});elseif (v0==true) then v0=false;game:GetService("StarterGui"):SetCore("SendNotification",{Title="Moes Desync OFF",Text="Thank you for using my script "   .. game:GetService("Players").LocalPlayer.DisplayName   .. "!",Icon="rbxthumb://type=AvatarHeadShot&id="   .. game:GetService("Players").LocalPlayer.UserId   .. "&w=180&h=180 true",Duration=5});end end);end end);local v1={};local v2=game:GetService("RunService").heartbeat:Connect(function()if (v0==true) then local v4=game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity;game.Players.LocalPlayer.Character.HumanoidRootPart.v5=Vector3.new(1,1,1) * (2^16);game:GetService("RunService").RenderStepped:Wait();game.Players.LocalPlayer.Character.HumanoidRootPart.v5=v4;end end);local v1={};if (v0==true) then v2:Disconnect();end
