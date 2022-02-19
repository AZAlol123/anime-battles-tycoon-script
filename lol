
local Flux = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/fluxlib.txt")()

local win = Flux:Window("anime battle tycoon", "", Color3.fromRGB(255, 110, 48), Enum.KeyCode.LeftControl)
local tab = win:Tab("auto farm", "http://www.roblox.com/asset/?id=6023426915")

tab:Toggle("Auto-Farm training dummy", "Auto attacks it!", false, function(state) 
    getgenv().AutoOpen1 = state
end)

task.spawn(function()
    while task.wait() do
        if getgenv().AutoOpen1 == true then

local New_CFrame = game:GetService("Workspace").Enemies.Dummies.Small["Small Dummy"].HumanoidRootPart .CFrame
    local ts = game:GetService("TweenService")
    local char = game.Players.LocalPlayer.Character

    local part = char.HumanoidRootPart
    local ti = TweenInfo.new(0.01, Enum.EasingStyle.Linear)
    local tp = {CFrame = New_CFrame * CFrame.new(0, -2, 0)}
    local tween = ts:Create(part, ti, tp)
    tween:Play()
    tween.Completed:wait()

            local args = {
    [1] = "RequestAction",
    [2] = "Combat",
    [3] = "Combat"
}

game:GetService("ReplicatedStorage").Modules.ServiceLoader.NetworkService.Events.Objects.UpdateMelee:FireServer(unpack(args))




        end
    end
end)

tab:Toggle("Auto-Farm big dummy", "Auto attacks it!", false, function(state) 
    getgenv().AutoOpen2 = state
end)

task.spawn(function()
    while task.wait() do
        if getgenv().AutoOpen2 == true then

local New_CFrame = game:GetService("Workspace").Enemies.Dummies.Big["Big Dummy"].Dummy["Training Dummy"] .CFrame
    local ts = game:GetService("TweenService")
    local char = game.Players.LocalPlayer.Character

    local part = char.HumanoidRootPart
    local ti = TweenInfo.new(0.01, Enum.EasingStyle.Linear)
    local tp = {CFrame = New_CFrame * CFrame.new(0, -2, 0)}
    local tween = ts:Create(part, ti, tp)
    tween:Play()
    tween.Completed:wait()

            local args = {
    [1] = "RequestAction",
    [2] = "Combat",
    [3] = "Combat"
}

game:GetService("ReplicatedStorage").Modules.ServiceLoader.NetworkService.Events.Objects.UpdateMelee:FireServer(unpack(args))




        end
    end
end)

tab:Toggle("Auto-Farm frieza", "Auto attacks it!", false, function(state) 
    getgenv().AutoOpen3 = state
end)

task.spawn(function()
    while task.wait() do
        if getgenv().AutoOpen3 == true then

local New_CFrame = game:GetService("Workspace").Enemies.Boss.Frieza.Head .CFrame
    local ts = game:GetService("TweenService")
    local char = game.Players.LocalPlayer.Character

    local part = char.HumanoidRootPart
    local ti = TweenInfo.new(0.01, Enum.EasingStyle.Linear)
    local tp = {CFrame = New_CFrame * CFrame.new(0, -2, 0)}
    local tween = ts:Create(part, ti, tp)
    tween:Play()
    tween.Completed:wait()

            local args = {
    [1] = "RequestAction",
    [2] = "Combat",
    [3] = "Combat"
}

game:GetService("ReplicatedStorage").Modules.ServiceLoader.NetworkService.Events.Objects.UpdateMelee:FireServer(unpack(args))




        end
    end
end)





local tab = win:Tab("teleports", "http://www.roblox.com/asset/?id=6023426915")

local cframes = {}
cframes["big dummy"] = CFrame.new(42.5347939, 9.82460022, 159.36496, -0.996191859, 0, -0.0871884301, 0, 1, 0, 0.0871884301, 0, -0.996191859)
cframes["training dummy"] = CFrame.new(166.63118, 3.86820316, -191.323486, -0.642763734, 0, 0.766064942, 0, 1, 0, -0.766064942, 0, -0.642763734)
cframes["frieza dummy"] = CFrame.new(14.3332462, 8.52385426, 8.70982742, 0.993601859, -1.35961349e-08, 0.112939566, -6.47971232e-10, 1, 1.26084785e-07, -0.112939566, -1.25351249e-07, 0.993601859)
 
local plyr = game.Players.LocalPlayer; --ref to localplayer
 
tab:Button("big dummy", "tp to big dummy" , function()
    plyr.Character.HumanoidRootPart.CFrame = cframes["big dummy"];
end)
 
tab:Button("training dummy", "tp to training dummy" , function()
    plyr.Character.HumanoidRootPart.CFrame = cframes["training dummy"];
end)

tab:Button("frieza dummy", "tp to frieza dummy" , function()
    plyr.Character.HumanoidRootPart.CFrame = cframes["frieza dummy"];
end)

local tab = win:Tab("local player", "http://www.roblox.com/asset/?id=6023426915")

tab:Slider("Walkspeed", "Makes your player faster.", 0, 500,16,function(t)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = t
end)

tab:Slider("jumppower", "Makes your player jump higher.", 0, 500,50,function(t)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = t
end)

local tab = win:Tab("close gui button", "http://www.roblox.com/asset/?id=6023426915")

tab:Button("right ctrl to close gui (cannot change)", "right ctrl to close gui!", false, function(state) 
    getgenv().AutoOpen4 = state
end)

task.spawn(function()
    while task.wait() do
        if getgenv().AutoOpen4 == true then






        end
    end
end)
