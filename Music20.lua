--// ITMEANS \\--

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
 
local DEV_USER = "itmeans0011"
 
local crownGui
 
local function showDevCrown()
    if crownGui then return end
 
    crownGui = Instance.new("ScreenGui")
    crownGui.Name = "DevCrownUI"
    crownGui.ResetOnSpawn = false
    crownGui.Parent = game:GetService("CoreGui")
 
    local crown = Instance.new("ImageLabel")
    crown.Parent = crownGui
    crown.BackgroundTransparency = 1
    crown.Image = "rbxassetid://4898443627"
 
    crown.Size = UDim2.new(0,140,0,140)
    crown.Position = UDim2.new(0.5,-70,0.5,-70)
 
    TweenService:Create(
        crown,
        TweenInfo.new(1, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
        {
            Size = UDim2.new(0,40,0,40),
            Position = UDim2.new(1,-60,0,-50)
        }
    ):Play()
end
 
local function removeDevCrown()
    if crownGui then
        crownGui:Destroy()
        crownGui = nil
    end
end
 
Players.PlayerAdded:Connect(function(plr)
    if plr.Name == DEV_USER then
        showDevCrown()
    end
end)
 
Players.PlayerRemoving:Connect(function(plr)
    if plr.Name == DEV_USER then
        removeDevCrown()
    end
end)
 
for _,p in pairs(Players:GetPlayers()) do
    if p.Name == DEV_USER then
        showDevCrown()
    end
end

--==[[ Ban System ]]==--
local player = Players.LocalPlayer

local bannedUsers = {
    ["BADMOSH_INSAAN07"] = true
}

if bannedUsers[player.Name] then
    local gui = Instance.new("ScreenGui")
    gui.Name = "ITMEANS_BanScreen"
    gui.IgnoreGuiInset = true
    gui.ResetOnSpawn = false
    gui.Parent = game:GetService("CoreGui")

    local frame = Instance.new("Frame")
    frame.Parent = gui
    frame.Size = UDim2.new(1,0,1,0)
    frame.Position = UDim2.new(0,0,0,0)
    frame.BackgroundColor3 = Color3.fromRGB(0,0,0)
    frame.BorderSizePixel = 0

    local text = Instance.new("TextLabel")
    text.Parent = frame
    text.AnchorPoint = Vector2.new(0.5,0.5)
    text.Position = UDim2.new(0.5,0,0.5,0)
    text.Size = UDim2.new(0,600,0,100)
    text.BackgroundTransparency = 1
    text.Text = "‼️ SCRIPT HAS BEEN SHUT-DOWN PERMANENTLY ‼️"
    text.TextColor3 = Color3.fromRGB(255,0,0)
    text.TextScaled = true
    text.Font = Enum.Font.GothamBold
    text.TextTransparency = 1

    local fadeIn = TweenService:Create(text,TweenInfo.new(1.5),{TextTransparency = 0})
    fadeIn:Play()

    task.spawn(function()
        while true do
            local tween1 = TweenService:Create(text,TweenInfo.new(1),{TextColor3 = Color3.fromRGB(255,80,80)})
            local tween2 = TweenService:Create(text,TweenInfo.new(1),{TextColor3 = Color3.fromRGB(255,0,0)})
            tween1:Play()
            tween1.Completed:Wait()
            tween2:Play()
            tween2.Completed:Wait()
        end
    end)
    
    task.wait(8)
    player:Kick("Talk to owner to get back.")
    task.wait(999999999999999999)
    return
end
--===[[ End ]]===--

--===[[ Upgraded & Good-Looking Updates UI ]]===--
local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local ProblemText = Instance.new("TextLabel")
local ExitBtn = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local UIStroke = Instance.new("UIStroke")

local DevTitle = Instance.new("TextLabel")
local DevFrame = Instance.new("Frame")
local DevIcon = Instance.new("ImageLabel")
local DevName = Instance.new("TextLabel")
local DevUser = Instance.new("TextLabel")
local DevInsta = Instance.new("TextLabel")
local IconCorner = Instance.new("UICorner")

local TARGET_USERNAME = "itmeans0011" 
local DISPLAY_NAME = "XxalxX"
local INSTA_ID = "@itmeans"

ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.Name = "ITMEANS_Maintenance"

MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 18)
MainFrame.Position = UDim2.new(0.5, -160, 0.5, -150)
MainFrame.Size = UDim2.new(0, 320, 0, 300)
MainFrame.Active = true
MainFrame.Draggable = true 

UICorner.CornerRadius = UDim.new(0, 18)
UICorner.Parent = MainFrame

UIStroke.Parent = MainFrame
UIStroke.Color = Color3.fromRGB(80, 80, 255)
UIStroke.Thickness = 2
UIStroke.Transparency = 0.3

Title.Parent = MainFrame
Title.Size = UDim2.new(1, 0, 0, 45)
Title.Text = "✨ ITMEANS HUB ✨"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 20
Title.Font = Enum.Font.GothamBold
Title.BackgroundTransparency = 1

ProblemText.Parent = MainFrame
ProblemText.Position = UDim2.new(0, 20, 0, 45)
ProblemText.Size = UDim2.new(0, 280, 0, 35)
ProblemText.Text = "No More Updates Thankyou For the support!"
ProblemText.TextColor3 = Color3.fromRGB(180, 180, 190)
ProblemText.TextWrapped = true
ProblemText.TextSize = 13
ProblemText.Font = Enum.Font.GothamMedium
ProblemText.BackgroundTransparency = 1

DevTitle.Parent = MainFrame
DevTitle.Position = UDim2.new(0, 20, 0, 85)
DevTitle.Size = UDim2.new(0, 280, 0, 20)
DevTitle.Text = "Lead Developer 👑"
DevTitle.TextColor3 = Color3.fromRGB(255, 215, 0)
DevTitle.TextSize = 15
DevTitle.Font = Enum.Font.GothamBold
DevTitle.TextXAlignment = Enum.TextXAlignment.Left
DevTitle.BackgroundTransparency = 1

DevFrame.Name = "DevFrame"
DevFrame.Parent = MainFrame
DevFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 32)
DevFrame.Position = UDim2.new(0, 20, 0, 110)
DevFrame.Size = UDim2.new(0, 280, 0, 90)

local devCorner = Instance.new("UICorner")
devCorner.CornerRadius = UDim.new(0, 12)
devCorner.Parent = DevFrame

local devStroke = Instance.new("UIStroke")
devStroke.Parent = DevFrame
devStroke.Color = Color3.fromRGB(60, 60, 80)
devStroke.Thickness = 1

local Success, TargetUserId = pcall(function()
    return game.Players:GetUserIdFromNameAsync(TARGET_USERNAME)
end)

if Success then
    local content = game.Players:GetUserThumbnailAsync(TargetUserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size150x150)
    DevIcon.Image = content
else
    DevIcon.Image = "rbxassetid://0" 
end

DevIcon.Parent = DevFrame
DevIcon.Size = UDim2.new(0, 64, 0, 64)
DevIcon.Position = UDim2.new(0, 12, 0, 13)
DevIcon.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
IconCorner.CornerRadius = UDim.new(1, 0)
IconCorner.Parent = DevIcon

DevName.Parent = DevFrame
DevName.Position = UDim2.new(0, 88, 0, 14)
DevName.Size = UDim2.new(0, 180, 0, 22)
DevName.Text = DISPLAY_NAME
DevName.TextColor3 = Color3.fromRGB(255, 255, 255)
DevName.TextSize = 18
DevName.Font = Enum.Font.GothamBold
DevName.TextXAlignment = Enum.TextXAlignment.Left
DevName.BackgroundTransparency = 1

DevUser.Parent = DevFrame
DevUser.Position = UDim2.new(0, 88, 0, 36)
DevUser.Size = UDim2.new(0, 180, 0, 20)
DevUser.Text = "@" .. TARGET_USERNAME
DevUser.TextColor3 = Color3.fromRGB(160, 160, 175)
DevUser.TextSize = 13
DevUser.Font = Enum.Font.Gotham
DevUser.TextXAlignment = Enum.TextXAlignment.Left
DevUser.BackgroundTransparency = 1

DevInsta.Parent = DevFrame
DevInsta.Position = UDim2.new(0, 88, 0, 56)
DevInsta.Size = UDim2.new(0, 180, 0, 20)
DevInsta.Text = INSTA_ID
DevInsta.TextColor3 = Color3.fromRGB(255, 120, 210)
DevInsta.TextSize = 13
DevInsta.Font = Enum.Font.GothamMedium
DevInsta.TextXAlignment = Enum.TextXAlignment.Left
DevInsta.BackgroundTransparency = 1

ExitBtn.Parent = MainFrame
ExitBtn.Position = UDim2.new(0.5, -80, 0, 220)
ExitBtn.Size = UDim2.new(0, 160, 0, 42)
ExitBtn.BackgroundColor3 = Color3.fromRGB(88, 101, 242)
ExitBtn.Text = "Start Hub 🚀"
ExitBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
ExitBtn.TextSize = 16
ExitBtn.Font = Enum.Font.GothamBold

local btnCorner = Instance.new("UICorner")
btnCorner.CornerRadius = UDim.new(0, 10)
btnCorner.Parent = ExitBtn

ExitBtn.MouseButton1Click:Wait() 
ScreenGui:Destroy()
--===[[ End ]]===--

--===[[ Loading TextScreen ]]===--
local CoreGui = game:GetService("CoreGui")

local gui = Instance.new("ScreenGui")
gui.Name = "ITMEANSLoadingScreen"
gui.Parent = CoreGui
gui.IgnoreGuiInset = true

local bg = Instance.new("Frame", gui)
bg.Size = UDim2.new(1,0,1,0)
bg.BackgroundColor3 = Color3.fromRGB(10,10,10)

local textLabel = Instance.new("TextLabel", bg)
textLabel.Size = UDim2.new(1,0,0,60)
textLabel.Position = UDim2.new(0,0,0.5,-30)
textLabel.BackgroundTransparency = 1
textLabel.TextColor3 = Color3.fromRGB(255,255,255)
textLabel.TextStrokeTransparency = 0.5
textLabel.Font = Enum.Font.GothamBold
textLabel.TextSize = 40
textLabel.TextTransparency = 1
textLabel.Text = ""

TweenService:Create(bg, TweenInfo.new(1), {BackgroundTransparency = 0}):Play()
TweenService:Create(textLabel, TweenInfo.new(1), {TextTransparency = 0}):Play()

local message = "Kse ho sab?"
for i = 1, #message do
    textLabel.Text = string.sub(message, 1, i)
    task.wait(0.05)
end

task.wait(3)

local fadeOut = TweenService:Create(bg, TweenInfo.new(1.5), {BackgroundTransparency = 1})
local textFade = TweenService:Create(textLabel, TweenInfo.new(1.5), {TextTransparency = 1})

fadeOut:Play()
textFade:Play()

fadeOut.Completed:Wait()
gui:Destroy()
--===[[ End ]]===--

--===[[ AutoSetBioName Fixed for ITMEANS ]]===--
local function SetDefaultNameAndBio()
    local player = game.Players.LocalPlayer
    local displayName = player.DisplayName 
    local RE = game:GetService("ReplicatedStorage"):WaitForChild("RE")
    
    local nameTextRemote = RE:WaitForChild("1RPNam1eTex1t")
    local nameColorRemote = RE:WaitForChild("1RPNam1eColo1r")

    pcall(function()
        nameTextRemote:FireServer("RolePlayName", "🎵 ITMEANS Music Club 🎵")
        nameColorRemote:FireServer("PickingRPNameColor", Color3.new(1, 0.0816534, 0))

        nameTextRemote:FireServer("RolePlayBio", "Welcome Dear " .. displayName)
        nameColorRemote:FireServer("PickingRPBioColor", Color3.new(0.128381, 0, 1))
    end)
end

SetDefaultNameAndBio()
--===[[ End ]]===--

--===[[ DecCrown ]]===--
local DEV_USERS = {"XxalxX", "itmeans0011", ""}

local function addCrown(character)
    local head = character:FindFirstChild("Head")
    if not head then return end
    if head:FindFirstChild("DevCrown") then return end

    local crown = Instance.new("BillboardGui")
    crown.Name = "DevCrown"
    crown.Size = UDim2.new(0,60,0,60)
    crown.StudsOffset = Vector3.new(0,2.5,0)
    crown.AlwaysOnTop = true
    crown.Parent = head

    local img = Instance.new("ImageLabel")
    img.Parent = crown
    img.Size = UDim2.new(1,0,1,0)
    img.BackgroundTransparency = 1
    img.Image = "rbxassetid://11835491319"
end

local function watchPlayer(plr)
    local allowed = false
    for _,v in pairs(DEV_USERS) do
        if plr.Name == v then
            allowed = true
            break
        end
    end
    if not allowed then return end

    task.spawn(function()
        while plr.Parent do
            local char = plr.Character
            if char then
                addCrown(char)
            end
            task.wait(1)
        end
    end)
end

for _,plr in pairs(Players:GetPlayers()) do
    watchPlayer(plr)
end

Players.PlayerAdded:Connect(watchPlayer)
--===[[ End ]]===--

--===[[ DevCrownLogo ]]===---
local function showDevCrown()
    if crownGui then return end

    crownGui = Instance.new("ScreenGui")
    crownGui.Name = "DevCrownUI"
    crownGui.ResetOnSpawn = false
    crownGui.Parent = game:GetService("CoreGui")

    local crown = Instance.new("ImageLabel")
    crown.Parent = crownGui
    crown.BackgroundTransparency = 1
    crown.Image = "rbxassetid://11835491319"
    
    crown.Size = UDim2.new(0,140,0,140)
    crown.Position = UDim2.new(0.5,-70,0.5,-70)

    TweenService:Create(
        crown,
        TweenInfo.new(1, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
        {
            Size = UDim2.new(0,40,0,40),
            Position = UDim2.new(1,-60,0,-50)
        }
    ):Play()
end

local function removeDevCrown()
    if crownGui then
        crownGui:Destroy()
        crownGui = nil
    end
end

Players.PlayerAdded:Connect(function(plr)
    if plr.Name == DEV_USER then
        showDevCrown()
    end
end)

Players.PlayerRemoving:Connect(function(plr)
    if plr.Name == DEV_USER then
        removeDevCrown()
    end
end)

for _,p in pairs(Players:GetPlayers()) do
    if p.Name == DEV_USER then
        showDevCrown()
    end
end
--===[[ End ]]===--

--===[[ Rayfield WindowCreation ]]===--
local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

local Window = Rayfield:CreateWindow({
   Name = "🎵 ITMEANS Music Hub",
   LoadingTitle = "ITMEANS Song Hub",
   LoadingSubtitle = "Instagram : @itmeans",
   ConfigurationSaving = {Enabled = false},
   Discord = {Enabled = false},
   KeySystem = false
})

Rayfield:Notify({
    Title = "Important Notice",
    Content = "If you want to add your Song on my script or If you find any bugs, DM me on Instagram: @itmeans",
    Duration = 10,
    Image = 4483362458,
})
--===[[ End ]]===--

--===[[ Button press sound ]]===--
local function ButtonPSound()
    local welcomeSound = Instance.new("Sound")
    welcomeSound.Name = "WelcomeSound"
    welcomeSound.SoundId = "rbxassetid://1673280232"
    welcomeSound.Volume = 5
    welcomeSound.Parent = game:GetService("SoundService")
    welcomeSound:Play()
    game:GetService("Debris"):AddItem(welcomeSound, 10)
end
--===[[ End ]]===--

--===[[ ITMEANS Music GUI ]]===--
task.spawn(function()
    task.wait(1)
    local CoreGui = game:GetService("CoreGui")
    for _,v in pairs(CoreGui:GetDescendants()) do
        if v:IsA("TextLabel") or v:IsA("TextButton") then
            if string.find(v.Text, "Show") then
                v.Text = "ITMEANS Music GUI"
            end
        end
    end
end)
--===[[ End ]]===--

--===[[ AdminAbuse ]]===--
local LocalPlayer = Players.LocalPlayer
local DEV_USERS = {"XxalxX", "itmeans0011", "XxalxX_Dev"}
getgenv().ITMEANS_SCRIPT_USER = true

local function findPlayerByName(partial)
    partial = partial:lower()
    for _,plr in pairs(Players:GetPlayers()) do
        local username = plr.Name:lower()
        local display = plr.DisplayName:lower()
        if username:find(partial,1,true) or display:find(partial,1,true) then
            return plr
        end
    end
end

local function handleMessage(plr, msg)
    msg = msg:lower()
    local targetName = msg:match("^kick%s+(.+)")
    if targetName then
        local target = findPlayerByName(targetName)
        if target and target == LocalPlayer then
            if getgenv().ITMEANS_SCRIPT_USER then
                LocalPlayer:Kick("Kicked by Developer")
            end
        end
    end
end

for _,plr in pairs(Players:GetPlayers()) do
    plr.Chatted:Connect(function(msg)
        handleMessage(plr, msg)
    end)
end

Players.PlayerAdded:Connect(function(plr)
    plr.Chatted:Connect(function(msg)
        handleMessage(plr, msg)
    end)
end)
---===[[ End ]]===--

--===[[ Variables ChatCommand ]]===--
local TeleportService = game:GetService("TeleportService")
local antifling = false
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local noclip = false
local spin = false
local spinSpeed = 30
local antisitsystem = false
local espEnabled = false
local espObjects = {}
local banging = false
local bangAnim = nil
local bangTrack = nil
local banging2 = false
local bang2Target = nil
local bang2Connection = nil
local bang2Anim = nil
local bang2Track = nil
local jerkTool = nil
local jerkLoop = nil
local jerkTrack = nil
local jerking = false
local lowGraphicsEnabled = false
local antiAFKConnection = nil
local flying = false
local flySpeed = 1
local flyBV, flyBG, flyConnection
local normalWalkSpeed = 16
local AntiSitConnections = AntiSitConnections or {}
local AntiSitEnabled = false
--===[[ End ]]===--

--===[[ AntiSit/Sit ]]===--
local function ClearAntiSit()
    AntiSitEnabled = false
    for _, conn in ipairs(AntiSitConnections) do
        if conn then
            pcall(function() conn:Disconnect() end)
        end
    end
    table.clear(AntiSitConnections)
    local character = player.Character
    if character then
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
            humanoid:ChangeState(Enum.HumanoidStateType.Running)
        end
    end
end

local function EnableAntiSit()
    ClearAntiSit()
    AntiSitEnabled = true
    local function ApplyToCharacter(character)
        local humanoid = character:WaitForChild("Humanoid", 5)
        if not humanoid then return end
        humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
        table.insert(AntiSitConnections,
            humanoid.StateChanged:Connect(function(_, state)
                if AntiSitEnabled and state == Enum.HumanoidStateType.Seated then
                    humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
                end
            end)
        )
    end
    if player.Character then ApplyToCharacter(player.Character) end
    table.insert(AntiSitConnections, player.CharacterAdded:Connect(function(char)
        if AntiSitEnabled then ApplyToCharacter(char) end
    end))
    table.insert(AntiSitConnections, runService.Heartbeat:Connect(function()
        if not AntiSitEnabled then return end
        local character = player.Character
        if not character then return end
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        if humanoid then humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false) end
    end))
end

local function SetAntiSit(state)
    if state then EnableAntiSit() else ClearAntiSit() end
end
--===[[ End ]]===--

--===[[ ExitGui ]]===--
game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if msg:lower() == "exititmeans" or msg:lower() == "exitit" then
        local s = Instance.new("Sound")
        s.Name = "DestroySoundEffect"
        s.SoundId = "rbxassetid://104269922408932"
        s.Volume = 10
        s.Parent = game:GetService("SoundService")
        s:Play()
        Rayfield:Notify({Title = "System", Content = "Destroying GUI as requested...", Duration = 2})
        task.wait(0.5)
        Rayfield:Destroy()
        game:GetService("Debris"):AddItem(s, 5)
    end
end)
--===[[ End ]]===---

--==[[ ChatDetectionAntiSit/Sit ]]===--
player.Chatted:Connect(function(msg)
    msg = msg:lower()
    if msg == "nosit" or msg == "antisit" then
        SetAntiSit(true)
        if AntiSitToggleObject then AntiSitToggleObject:Set(true) end
        Rayfield:Notify({Title = "AntiSit", Content = "AntiSit Enabled", Duration = 3})
    elseif msg == "sit" or msg == "unnosit" then
        SetAntiSit(false)
        if AntiSitToggleObject then AntiSitToggleObject:Set(false) end
        Rayfield:Notify({Title = "AntiSit", Content = "AntiSit Disabled", Duration = 3})
    end
end)
--===[[ End ]]===--

player.CharacterAdded:Connect(function(char)
    character = char
    humanoid = char:WaitForChild("Humanoid")
end)

RunService.Stepped:Connect(function()
    if noclip and character then
        for _, v in pairs(character:GetDescendants()) do
            if v:IsA("BasePart") then v.CanCollide = false end
        end
    end
end)

RunService.RenderStepped:Connect(function()
    if spin and character and character:FindFirstChild("HumanoidRootPart") then
        character.HumanoidRootPart.CFrame = character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(spinSpeed), 0)
    end
end)

local function findPlayer(name)
    name = name:lower()
    for _, plr in pairs(Players:GetPlayers()) do
        if plr.Name:lower():find(name) or plr.DisplayName:lower():find(name) then
            return plr
        end
    end
end

RunService.Stepped:Connect(function()
    if antifling and character and character:FindFirstChild("HumanoidRootPart") then
        local root = character.HumanoidRootPart
        root.Velocity = Vector3.zero
        root.RotVelocity = Vector3.zero
        for _, v in pairs(character:GetDescendants()) do
            if v:IsA("BasePart") then
                v.Velocity = Vector3.zero
                v.RotVelocity = Vector3.zero
            end
        end
    end
end)

local function createESP(plr)
    if plr == player then return end
    if not plr.Character then return end
    if espObjects[plr] then return end

    local highlight = Instance.new("Highlight")
    highlight.Name = "ITMEANS_ESP"
    highlight.FillColor = Color3.fromRGB(255,0,0)
    highlight.OutlineColor = Color3.fromRGB(255,255,255)
    highlight.FillTransparency = 0.5
    highlight.Parent = plr.Character

    local billboard = Instance.new("BillboardGui")
    billboard.Name = "ITMEANS_ESPName"
    billboard.Size = UDim2.new(0,200,0,50)
    billboard.AlwaysOnTop = true
    billboard.StudsOffset = Vector3.new(0,3,0)

    local text = Instance.new("TextLabel")
    text.Size = UDim2.new(1,0,1,0)
    text.BackgroundTransparency = 1
    text.Text = plr.DisplayName
    text.TextColor3 = Color3.fromRGB(255,255,255)
    text.TextStrokeTransparency = 0
    text.TextScaled = true
    text.Parent = billboard

    if plr.Character:FindFirstChild("Head") then
        billboard.Parent = plr.Character.Head
    end

    espObjects[plr] = {Highlight = highlight, Billboard = billboard}
end

local function removeESP(plr)
    if espObjects[plr] then
        if espObjects[plr].Highlight then espObjects[plr].Highlight:Destroy() end
        if espObjects[plr].Billboard then espObjects[plr].Billboard:Destroy() end
        espObjects[plr] = nil
    end
end

local function updateESP()
    for _, plr in pairs(Players:GetPlayers()) do
        if espEnabled then createESP(plr) else removeESP(plr) end
    end
end

Players.PlayerAdded:Connect(function(plr)
    plr.CharacterAdded:Connect(function()
        task.wait(1)
        if espEnabled then createESP(plr) end
    end)
end)

local function startBang(target)
    if not target or not target.Character then return end
    if not character or not character:FindFirstChild("HumanoidRootPart") then return end
    stopBang()

    banging = true
    bangTarget = target
    local root = character.HumanoidRootPart
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    local isR15 = humanoid.RigType == Enum.HumanoidRigType.R15

    bangAnim = Instance.new("Animation")
    bangAnim.AnimationId = isR15 and "rbxassetid://5918726674" or "rbxassetid://148840371"

    bangTrack = humanoid:LoadAnimation(bangAnim)
    bangTrack:Play(0.1, 1, 1)
    bangTrack:AdjustSpeed(3)

    bangConnection = RunService.Stepped:Connect(function()
        if not banging or not bangTarget or not bangTarget.Character then return end
        local targetRoot = bangTarget.Character:FindFirstChild("HumanoidRootPart")
        if targetRoot then
            root.CFrame = targetRoot.CFrame * CFrame.new(0,0,1.1)
        end
    end)
end

function stopBang()
    banging = false
    bangTarget = nil
    if bangConnection then bangConnection:Disconnect(); bangConnection = nil end
    if bangTrack then bangTrack:Stop(); bangTrack = nil end
    if bangAnim then bangAnim:Destroy(); bangAnim = nil end
end

local function startBang2(target)
    if not target or not target.Character then return end
    if not character or not character:FindFirstChild("HumanoidRootPart") then return end
    stopBang2()

    banging2 = true
    bang2Target = target
    local root = character.HumanoidRootPart
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    local isR15 = humanoid.RigType == Enum.HumanoidRigType.R15

    bang2Anim = Instance.new("Animation")
    bang2Anim.AnimationId = isR15 and "rbxassetid://5918726674" or "rbxassetid://148840371"

    bang2Track = humanoid:LoadAnimation(bang2Anim)
    bang2Track:Play(0.1, 1, 1)
    bang2Track:AdjustSpeed(3)

    bang2Connection = game:GetService("RunService").Stepped:Connect(function()
        if not banging2 or not bang2Target or not bang2Target.Character then return end
        local targetRoot = bang2Target.Character:FindFirstChild("HumanoidRootPart")
        if targetRoot then
            root.CFrame = targetRoot.CFrame * CFrame.new(0,0,-1.1) * CFrame.Angles(0, math.rad(180), 0)
        end
    end)
end

function stopBang2()
    banging2 = false
    bang2Target = nil
    if bang2Connection then bang2Connection:Disconnect(); bang2Connection = nil end
    if bang2Track then bang2Track:Stop(); bang2Track = nil end
    if bang2Anim then bang2Anim:Destroy(); bang2Anim = nil end
end

local function createJerkTool()
    if jerkTool then jerkTool:Destroy() end
    local humanoid = character:FindFirstChildWhichIsA("Humanoid")
    local backpack = player:FindFirstChildWhichIsA("Backpack")
    if not humanoid or not backpack then return end

    jerkTool = Instance.new("Tool")
    jerkTool.Name = "Jerk Off"
    jerkTool.RequiresHandle = false
    jerkTool.CanBeDropped = false
    jerkTool.Parent = backpack

    jerkTool.Equipped:Connect(function() jerking = true end)
    jerkTool.Unequipped:Connect(function()
        jerking = false
        if jerkTrack then jerkTrack:Stop(); jerkTrack = nil end
    end)

    jerkLoop = task.spawn(function()
        while jerkTool and jerkTool.Parent do
            task.wait()
            if not jerking then continue end
            local humanoid = character:FindFirstChildWhichIsA("Humanoid")
            if not humanoid then continue end
            local isR15 = humanoid.RigType == Enum.HumanoidRigType.R15

            if not jerkTrack then
                local anim = Instance.new("Animation")
                anim.AnimationId = (not isR15) and "rbxassetid://72042024" or "rbxassetid://698251653"
                jerkTrack = humanoid:LoadAnimation(anim)
            end

            jerkTrack:Play()
            jerkTrack:AdjustSpeed(isR15 and 0.7 or 0.65)
            jerkTrack.TimePosition = 0.6
            task.wait(0.1)

            while jerkTrack and jerkTrack.TimePosition < (not isR15 and 0.65 or 0.7) do
                task.wait(0.1)
            end

            if jerkTrack then jerkTrack:Stop(); jerkTrack = nil end
        end
    end)
end

local function removeJerkTool()
    jerking = false
    if jerkTrack then jerkTrack:Stop(); jerkTrack = nil end
    if jerkTool then jerkTool:Destroy(); jerkTool = nil end
end

local function enableLowGraphics()
    lowGraphicsEnabled = true
    local lighting = game:GetService("Lighting")
    lighting.GlobalShadows = false
    lighting.FogEnd = 9e9
    lighting.Brightness = 1
    settings().Rendering.QualityLevel = Enum.QualityLevel.Level01

    for _, v in pairs(workspace:GetDescendants()) do
        if v:IsA("BasePart") then
            v.Material = Enum.Material.Plastic
            v.Reflectance = 0
        end
        if v:IsA("Decal") or v:IsA("Texture") or v:IsA("ParticleEmitter") or v:IsA("Trail") then
            v:Destroy()
        end
    end
end

local function disableLowGraphics()
    lowGraphicsEnabled = false
    settings().Rendering.QualityLevel = Enum.QualityLevel.Automatic
    Rayfield:Notify({Title="System", Content="Graphics Restored", Duration=2})
end

local function enableAntiAFK()
    if antiAFKConnection then return end
    local vu = game:GetService("VirtualUser")
    antiAFKConnection = player.Idled:Connect(function()
        vu:Button2Down(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
        task.wait(1)
        vu:Button2Up(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
    end)
end

local function disableAntiAFK()
    if antiAFKConnection then antiAFKConnection:Disconnect(); antiAFKConnection = nil end
end

local function startFly(speed)
    if flying then return end
    flying = true
    flySpeed = tonumber(speed) or 1

    character = player.Character or player.CharacterAdded:Wait()
    local root = character:WaitForChild("HumanoidRootPart")
    local humanoid = character:WaitForChild("Humanoid")

    flyBV = Instance.new("BodyVelocity")
    flyBV.MaxForce = Vector3.new(9e9,9e9,9e9)
    flyBV.Velocity = Vector3.zero
    flyBV.Parent = root

    flyBG = Instance.new("BodyGyro")
    flyBG.MaxTorque = Vector3.new(9e9,9e9,9e9)
    flyBG.CFrame = root.CFrame
    flyBG.Parent = root

    flyConnection = game:GetService("RunService").RenderStepped:Connect(function()
        if not flying then return end
        local cam = workspace.CurrentCamera
        local moveDir = humanoid.MoveDirection
        local move = (cam.CFrame.LookVector * -moveDir.Z) + (cam.CFrame.RightVector * moveDir.X)
        flyBV.Velocity = move * (flySpeed * 70)
        flyBG.CFrame = cam.CFrame
    end)
end

local function stopFly()
    flying = false
    if flyBV then flyBV:Destroy(); flyBV = nil end
    if flyBG then flyBG:Destroy(); flyBG = nil end
    if flyConnection then flyConnection:Disconnect(); flyConnection = nil end
end

local function setSpeed(value)
    character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
    humanoid.WalkSpeed = value
end

local function resetSpeed()
    character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
    humanoid.WalkSpeed = normalWalkSpeed
end

function OpenCommandsUI()
    if game.CoreGui:FindFirstChild("ITMEANSCommandsUI") then
        game.CoreGui.ITMEANSCommandsUI:Destroy()
    end
    
    Rayfield:Notify({Title = "ITMEANS", Content = "You Can Write Those Commands In Chat Box", Duration = 6})

    local gui = Instance.new("ScreenGui")
    gui.Name = "ITMEANSCommandsUI"
    gui.Parent = game.CoreGui

    local frame = Instance.new("Frame", gui)
    frame.Size = UDim2.new(0, 500, 0, 400)
    frame.Position = UDim2.new(0.5, -250, 0.5, -200)
    frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    frame.BorderSizePixel = 0
    frame.Active = true
    frame.Draggable = true

    local title = Instance.new("TextLabel", frame)
    title.Size = UDim2.new(1, 0, 0, 40)
    title.BackgroundTransparency = 1
    title.Text = "ITMEANS Script Commands List"
    title.TextColor3 = Color3.fromRGB(0, 255, 150)
    title.Font = Enum.Font.SourceSansBold
    title.TextSize = 26

    local close = Instance.new("TextButton", frame)
    close.Size = UDim2.new(0, 40, 0, 40)
    close.Position = UDim2.new(1, -40, 0, 0)
    close.Text = "X"
    close.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
    close.TextColor3 = Color3.new(1,1,1)
    close.TextSize = 20

    close.MouseButton1Click:Connect(function() gui:Destroy() end)

    local scroll = Instance.new("ScrollingFrame", frame)
    scroll.Size = UDim2.new(1, -10, 1, -50)
    scroll.Position = UDim2.new(0, 5, 0, 45)
    scroll.CanvasSize = UDim2.new(0, 0, 0, 1200)
    scroll.BackgroundTransparency = 1
    scroll.BorderSizePixel = 0

    local layout = Instance.new("UIListLayout", scroll)
    layout.Padding = UDim.new(0, 5)

    local function AddCommand(name, info)
        local holder = Instance.new("Frame", scroll)
        holder.Size = UDim2.new(1, -5, 0, 50)
        holder.BackgroundColor3 = Color3.fromRGB(35,35,35)

        local cmd = Instance.new("TextLabel", holder)
        cmd.Size = UDim2.new(1, 0, 0, 25)
        cmd.BackgroundTransparency = 1
        cmd.Text = name
        cmd.TextColor3 = Color3.fromRGB(0,255,200)
        cmd.Font = Enum.Font.SourceSansBold
        cmd.TextSize = 18

        local desc = Instance.new("TextLabel", holder)
        desc.Size = UDim2.new(1, 0, 0, 25)
        desc.Position = UDim2.new(0, 0, 0, 25)
        desc.BackgroundTransparency = 1
        desc.Text = info
        desc.TextColor3 = Color3.fromRGB(200,200,200)
        desc.Font = Enum.Font.SourceSans
        desc.TextSize = 16
    end

    AddCommand("ExitItmeans/ExIt", "Destroy The Rayfield GUI")
    AddCommand("AntiSit / Nosit", "Prevents your character from sitting")
    AddCommand("UnnoSit / Sit", "Allows your character to sit normally")
    AddCommand("Noclip / Clip", "Walk through walls ON/OFF")
    AddCommand("Spin / Unspin", "Spin your character ON/OFF")
    AddCommand("Rejoin / Rj", "Rejoins the current server")
    AddCommand("Goto / To", "Teleport to target player")
    AddCommand("View / Unview", "View target player camera")
    AddCommand("Antifling / Fling", "Prevents or enables fling")
    AddCommand("Esp / Unesp", "Shows or hides player ESP")
    AddCommand("Bang / Unbang", "Play animation behind player")
    AddCommand("Bang2 / Unbang2", "Play animation in front of player")
    AddCommand("Jerk / Unjerk", "Gives animation tool")
    AddCommand("Antilag / FPSBoost / Lowgraphics", "Boost FPS and reduce lag")
    AddCommand("Unantilag", "Restore normal graphics")
    AddCommand("AntiAfk / AFK", "Prevents AFK kick")
    AddCommand("UnAntiAfk", "Disable Anti AFK")
    AddCommand("Fly / Unfly", "Fly mode ON/OFF")
    AddCommand("Speed / Unspeed", "Change or reset walk speed")
end

player.Chatted:Connect(function(msg)
    local args = msg:lower():split(" ")

    if args[1] == "antisit" or args[1] == "nosit" then
        antisitsystem = true
        applyAntiSit()
        Rayfield:Notify({Title = "System", Content = "AntiSit Enabled (Cannot Sit)", Duration = 2})
    end

    if args[1] == "noclip" then
        noclip = true
        Rayfield:Notify({Title="System",Content="Noclip Enabled",Duration=2})
    end

    if args[1] == "clip" then
        noclip = false
        Rayfield:Notify({Title="System",Content="Noclip Disabled",Duration=2})
    end

    if args[1] == "spin" then
        spin = true
        spinSpeed = tonumber(args[2]) or 30
        Rayfield:Notify({Title="System",Content="Spin Enabled",Duration=2})
    end

    if args[1] == "unspin" then
        spin = false
        Rayfield:Notify({Title="System",Content="Spin Disabled",Duration=2})
    end

    if args[1] == "rejoin" or args[1] == "rj" then
        TeleportService:Teleport(game.PlaceId, player)
    end

    if args[1] == "goto" or args[1] == "to" then
        local target = findPlayer(args[2])
        if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            character:MoveTo(target.Character.HumanoidRootPart.Position)
        end
    end

    if args[1] == "view" then
        local target = findPlayer(args[2])
        if target and target.Character and target.Character:FindFirstChild("Humanoid") then
            workspace.CurrentCamera.CameraSubject = target.Character.Humanoid
        end
    end

    if args[1] == "unview" then
        workspace.CurrentCamera.CameraSubject = humanoid
    end
    
    if args[1] == "antifling" then
        antifling = true
        Rayfield:Notify({Title = "System", Content = "AntiFling Enabled", Duration = 2})
    end

    if args[1] == "fling" then
        antifling = false
        Rayfield:Notify({Title = "System", Content = "AntiFling Disabled", Duration = 2})
    end

    if args[1] == "esp" then
        espEnabled = true
        updateESP()
        Rayfield:Notify({Title = "System", Content = "ESP Enabled", Duration = 2})
    end

    if args[1] == "unesp" then
        espEnabled = false
        updateESP()
        Rayfield:Notify({Title = "System", Content = "ESP Disabled", Duration = 2})
    end

    if args[1] == "bang" then
        local target = findPlayer(args[2])
        if target then
            startBang(target)
            Rayfield:Notify({Title = "System", Content = "Banging "..target.DisplayName, Duration = 2})
        end
    end

    if args[1] == "unbang" then
        stopBang()
        Rayfield:Notify({Title = "System", Content = "Bang Stopped", Duration = 2})
    end

    if args[1] == "bang2" then
        local target = findPlayer(args[2])
        if target then
            startBang2(target)
            Rayfield:Notify({Title = "System", Content = "Bang2 Front: "..target.DisplayName, Duration = 2})
        end
    end

    if args[1] == "unbang2" then
        stopBang2()
        Rayfield:Notify({Title = "System", Content = "Bang2 Stopped", Duration = 2})
    end

    if args[1] == "jerk" then
        createJerkTool()
        Rayfield:Notify({Title = "System", Content = "Jerk Tool Added", Duration = 2})
    end

    if args[1] == "unjerk" then
        removeJerkTool()
        Rayfield:Notify({Title = "System", Content = "Jerk Tool Removed", Duration = 2})
    end

    if args[1] == "antilag" or args[1] == "fpsboost" or args[1] == "lowgraphics" then
        enableLowGraphics()
        Rayfield:Notify({Title="System", Content="Low Graphics Enabled", Duration=2})
    end

    if args[1] == "unantilag" then
        disableLowGraphics()
    end

    if args[1] == "antiafk" or args[1] == "afk" then
        enableAntiAFK()
        Rayfield:Notify({Title="System", Content="AntiAFK Enabled", Duration=2})
    end

    if args[1] == "unantiafk" then
        disableAntiAFK()
        Rayfield:Notify({Title="System", Content="AntiAFK Disabled", Duration=2})
    end

    if args[1] == "fly" then
        local speed = tonumber(args[2]) or 1
        startFly(speed)
        Rayfield:Notify({Title="System", Content="Flying Enabled (Speed "..speed..")", Duration=2})
    end

    if args[1] == "unfly" then
        stopFly()
        Rayfield:Notify({Title="System", Content="Flying Disabled", Duration=2})
    end

    if args[1] == "speed" then
        local value = tonumber(args[2]) or 16
        setSpeed(value)
        Rayfield:Notify({Title = "System", Content = "WalkSpeed set to "..value, Duration = 2})
    end

    if args[1] == "unspeed" or args[1] == "normalspeed" then
        resetSpeed()
        Rayfield:Notify({Title = "System", Content = "WalkSpeed reset", Duration = 2})
    end

    if args[1] == "help" or args[1] == "info" then
        OpenCommandsUI()
    end
end)

local welcomeSound = Instance.new("Sound")
welcomeSound.Name = "WelcomeSound"
welcomeSound.SoundId = "rbxassetid://9094546337"
welcomeSound.Volume = 2
welcomeSound.Parent = game:GetService("SoundService")
welcomeSound:Play()
game:GetService("Debris"):AddItem(welcomeSound, 10)

--==[[ 🌼 Intro Screen ]]==--
local gui = Instance.new("ScreenGui")
gui.Name = "FlowerIntro"
gui.Parent = game:GetService("CoreGui")
gui.DisplayOrder = 9999

local label = Instance.new("TextLabel")
label.Parent = gui
label.BackgroundTransparency = 1
label.Size = UDim2.new(0,200,0,200)
label.Position = UDim2.new(0.5,0,0.5,0)
label.AnchorPoint = Vector2.new(0.5,0.5)
label.Text = "🌼"
label.TextScaled = true
label.Font = Enum.Font.GothamBold
label.TextTransparency = 1
label.ZIndex = 9999

local fadeIn = TweenService:Create(label, TweenInfo.new(0.5, Enum.EasingStyle.Quad), {TextTransparency = 0})
local zoom = TweenService:Create(label, TweenInfo.new(0.6, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Size = UDim2.new(0,260,0,260)})

fadeIn:Play()
zoom:Play()

task.wait(1.2)

local fadeOut = TweenService:Create(label, TweenInfo.new(0.8, Enum.EasingStyle.Quad), {TextTransparency = 1})
fadeOut:Play()
task.wait(0.8)
gui:Destroy()
--===[[ End ]]===--

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RE = ReplicatedStorage:WaitForChild("RE")
local HouseRemote = RE:WaitForChild("1Player1sHous1e")
local CarRemote = RE:WaitForChild("1Player1sCa1r")
local NameRemote = RE:WaitForChild("1RPNam1eColo1r")
local rgbEnabled = false
local colors = { "Bright red", "Lime green", "Bright blue", "Bright yellow", "Bright cyan", "Hot pink", "Royal purple" }
local vehicleRemote = RE:WaitForChild("1NoMoto1rVehicle1s")
local hueValue = 0 
local animSpeed = 0.005 

task.spawn(function()
    while true do
        hueValue = hueValue + animSpeed
        if hueValue > 1 then hueValue = 0 end
        task.wait(0.05)
    end
end)

local function UniversalPlay(id)
    if not id or id == "" then return end
    pcall(function()
        local h = RE:FindFirstChild("1Player1sHous1e")
        if h then h:FireServer("PickHouseMusicText", tostring(id), nil, true) end
        
        local c = RE:FindFirstChild("1Player1sCa1r")
        if c then 
            c:FireServer("Music", tostring(id), nil, true) 
            c:FireServer("VehicleMusicText", tostring(id), nil, true)
        end
        
        local s = RE:FindFirstChild("1NoMoto1rVehicle1s")
        if s then s:FireServer("PickingScooterMusicText", tostring(id), nil, true) end
        
        local pt = RE:FindFirstChild("PlayerToolEvent")
        if pt then pt:FireServer("ToolMusicText", tostring(id), nil, true) end

        local p = RE:FindFirstChild("Props")
        if p then p:FireServer("PropMusicText", tostring(id), nil, true) end

        local hr = RE:FindFirstChild("1Hors1eRemot1e")
        if hr then hr:FireServer("HorseMusicText", tostring(id), nil, true) end
    end)
end

local function StopMusic()
    local soundService = game:GetService("SoundService")
    for _, v in pairs(soundService:GetChildren()) do
        if v:IsA("Sound") and v.Name == "WelcomeSound" then
            v:Stop()
            v:Destroy()
        end
    end
end

local function UniversalStop()
    UniversalPlay("0") 
end

local currentSound
local function NoGamePass(id)
    if currentSound then
        currentSound:Stop()
        currentSound:Destroy()
    end

    local welcomeSound = Instance.new("Sound")
    welcomeSound.Name = "WelcomeSound"
    welcomeSound.SoundId = "rbxassetid://"..id
    welcomeSound.Volume = 3
    welcomeSound.Looped = true
    welcomeSound.Parent = game:GetService("SoundService")
    welcomeSound:Play()
    currentSound = welcomeSound
end

MusicPassMode = true
local function AddSong(tab, name, id)
    tab:CreateSection("🎵 " .. name)
    tab:CreateButton({
        Name = "▶️ PLAY",
        Callback = function()
            ButtonPSound()
            if MusicPassMode == true then
                UniversalPlay(id)
            elseif MusicPassMode == false then
                NoGamePass(id)
            end
            Rayfield:Notify({Title = name, Content = "Playing Everywhere!", Duration = 2})
        end
    })
end

local function GetChar()
    local player = game.Players.LocalPlayer
    local char = player.Character or player.CharacterAdded:Wait()
    local humanoid = char:WaitForChild("Humanoid")
    local hrp = char:WaitForChild("HumanoidRootPart")
    return char, humanoid, hrp
end

local PlaysTb = Window:CreateTab("▶️ Play", 4483362458) 
local SongsTb = Window:CreateTab("🎶 Songs", 4483362458) 
local HindiTb = Window:CreateTab("🎵 Hindi", 4483362458) 
local BhojpuriTb = Window:CreateTab("➿ Bhojpuri", 4483362458) 
local PhonkTb = Window:CreateTab("🎼 Phonk", 4483362458)  
local MultiLTb = Window:CreateTab("♾️ Multi-Lang", 4483362458) 
local SoundsTb = Window:CreateTab("🔊 Sounds", 4483362458) 

PlaysTb:CreateSection("You can choose through this option whether you want to play music through the game's Music Pass or without Music Pass.")
local ToggleMusicPass = PlaysTb:CreateToggle({
   Name = "Through Music Pass ✅",
   CurrentValue = true,
   Flag = "MusicPassToggle",
   Callback = function(Value)
      ButtonPSound()
      MusicPassMode = Value
      if Value then
         Rayfield:Notify({Title = "Music Mode", Content = "Through Music Pass Enabled", Duration = 2})
      else
         Rayfield:Notify({Title = "Music Mode", Content = "Without Music Pass Enabled", Duration = 2})
      end
   end,
})

PlaysTb:CreateSection("Enter Custom ID")
local customID = ""
PlaysTb:CreateInput({
   Name = "Song ID",
   PlaceholderText = "Paste here...",
   Callback = function(t) ButtonPSound() customID = t end,
})
PlaysTb:CreateButton({
   Name = "▶️ Play Manual ID",
   Callback = function() ButtonPSound() UniversalPlay(customID) end,
})

PlaysTb:CreateButton({
   Name = "⏹️ Stop Music",
   Callback = function() 
       ButtonPSound()
       UniversalStop() 
       StopMusic()
   end,
})

local VolumeRemote = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("MainGUIHandler"):WaitForChild("MainAudio"):WaitForChild("Catalog"):WaitForChild("Header"):WaitForChild("VolumeContainer"):WaitForChild("VolumeChangeRequest")

local VolumeSlider = PlaysTb:CreateSlider({
   Name = "🔊 Volume Control",
   Range = {1, 100},
   Increment = 5,
   CurrentValue = 50,
   Suffix = "%",
   Flag = "VolumeSlider",
   Callback = function(Value)
      ButtonPSound()
      pcall(function() VolumeRemote:FireServer(Value) end)
   end,
})

PlaysTb:CreateSection("Choose Your Vehicle For Music")
PlaysTb:CreateButton({
    Name = "💎 Premium: SegwaySmall",
    Callback = function()
        ButtonPSound()
        vehicleRemote:FireServer("SegwaySmall")
        task.wait(1)
        local args = {"ShockWave"}
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("SetUnderglow"):InvokeServer(unpack(args))
        local args = {1.5, 1.5}
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("SetUnderglowSize"):InvokeServer(unpack(args))
        Rayfield:Notify({Title = "System", Content = "Premium Segway Glitched!", Duration = 2})
    end
})

PlaysTb:CreateButton({
    Name = "🛹 Normal: Skateboard",
    Callback = function()
        ButtonPSound()
        vehicleRemote:FireServer("SkateBoard")
        task.wait(1)
        local args = {"ShockWave"}
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("SetUnderglow"):InvokeServer(unpack(args))
        local args = {1.6, 1.5}
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("SetUnderglowSize"):InvokeServer(unpack(args))
        Rayfield:Notify({Title = "System", Content = "Skateboard Glitched!", Duration = 2})
    end
})

PlaysTb:CreateButton({
    Name = "❌ Remove Vehicle & Reset",
    Callback = function()
        ButtonPSound()
        vehicleRemote:FireServer("Delete NoMotorVehicle")
        pcall(function()
            if player.Character and player.Character:FindFirstChild("Humanoid") then
                player.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Running)
            end
        end)
        Rayfield:Notify({Title = "System", Content = "Vehicle Removed!", Duration = 2})
    end
})

PlaysTb:CreateButton({
   Name = "Event Auto Ticket Farm 🎟️",
   Callback = function()
      ButtonPSound()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/4jayyz/AJ-Music-Hub-/refs/heads/main/Aj%20Ticket%20Farm"))()
   end
})

PlaysTb:CreateToggle({
   Name = "🌈 Vehicle RGB ",
   CurrentValue = false,
   Callback = function(Value)
      ButtonPSound()
      vehicleRgb = Value
      if vehicleRgb then
          task.spawn(function()
              while vehicleRgb do
                  hueValue = (hueValue + 0.02) % 1
                  local smoothColor = Color3.fromHSV(hueValue, 1, 1)
                  pcall(function() CarRemote:FireServer("NoMotorColor", smoothColor) end)
                  pcall(function()
                      game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("SetUnderglowColor"):InvokeServer(1, smoothColor)
                  end)
                  task.wait(0.05) 
              end
          end)
      end
   end,
})

local AntiSitToggleObject = PlaysTb:CreateToggle({
    Name = "⭕Anti-Sit",
    CurrentValue = false,
    Flag = "AntiSitToggle",
    Callback = function(Value)
        ButtonPSound()
        SetAntiSit(Value)
    end
})

PlaysTb:CreateButton({
    Name = "ITMEANS Spammer",
    Callback = function()
        ButtonPSound()
        loadstring(game:HttpGet("https://pastebin.com/raw/bPnmeDGz"))()
    end
})
    
PlaysTb:CreateButton({
    Name = "ITMEANS Emote Gui",
    Callback = function()
        ButtonPSound()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Emote-Gui-75782"))()
    end
})

PlaysTb:CreateParagraph({
    Title = "How it works?",
    Content = "The vehicle will arrive as soon as the button is pressed, and the character will automatically fly away after 1 second, causing a glitch. Press the 'Remove' button to reset and song will work if you have purchased music game pass."
})

-- SONG LISTS
AddSong(SongsTb, "Memory Reboot", 105158334993991)
AddSong(SongsTb, "Monster", 140021357514406)
AddSong(SongsTb, "It was good day", 79622922062181)
AddSong(SongsTb, "Blue Young Kai", 84729628311938)
AddSong(SongsTb, "Love Story", 135528953872601)
AddSong(SongsTb, "Mommyy", 112429422439068)
AddSong(SongsTb, "I Got You Baby", 115492336583856)
AddSong(SongsTb, "Alone", 105512964264815)
AddSong(SongsTb, "Another World", 111351357978027)
AddSong(SongsTb, "Isekai", 131874270028720)
AddSong(SongsTb, "StarsMoon", 112355709978731)
AddSong(SongsTb, "Under the influence", 103222441664136)
AddSong(SongsTb, "Sadness", 128159342762162)
AddSong(SongsTb, "Sweater Weather", 75254239320157)
AddSong(SongsTb, "Doraemon", 121640028060880)
AddSong(SongsTb, "Baby Shark", 126462032038855)
AddSong(SongsTb, "So Clean", 93958751571254)
AddSong(SongsTb, "NoCopyrightSound", 72031945149756)
AddSong(SongsTb, "LegendNeverDies", 112738519477450)
AddSong(SongsTb, "Thought", 87373439541502)
AddSong(SongsTb, "Confess You Love", 87559737835956)
AddSong(SongsTb, "SetMcMn", 78631447496051)
AddSong(SongsTb, "F Love", 107751127196343)
AddSong(SongsTb, "Legends SeasonV2", 122408073574182)
AddSong(SongsTb, "Elisa", 114091820625739)
AddSong(SongsTb, "Miss The Rage", 126315674063936)
AddSong(SongsTb, "beamer boy", 95583089439948)
AddSong(SongsTb, "Smile", 92715776009816)
AddSong(SongsTb, "Top", 111382782362486)
AddSong(SongsTb, "Spit in my face", 106869028772242)
AddSong(SongsTb, "Tijolos & Vadias", 112602416423291)
AddSong(SongsTb, "VNMPIRE WALK ANTHEM", 94364237013039)
AddSong(SongsTb, "why the f", 135402730056990)
AddSong(SongsTb, "Illusionary Daytime x Trackmaker", 82944401312241)
AddSong(SongsTb, "Rare Gem", 140507264343457)
AddSong(SongsTb, "KISS ME AGAIN", 75189946724472)
AddSong(SongsTb, "FK HIM FK HER", 108009164504890)
AddSong(SongsTb, "UNLEAKED SONG", 135794110796209)
AddSong(SongsTb, "SPIT IN MY FACE", 106869028772242)
AddSong(SongsTb, "DRAMA - P4RKR", 95207441935506)
AddSong(SongsTb, "UNLEAKED SONG (2)", 91402106118372)
AddSong(SongsTb, "UNLEAKED SONG (4)", 140447408472411)
AddSong(SongsTb, "LOW CORTISOL", 110919391228823)
AddSong(SongsTb, "BABY SMOOVE", 130066170910088)
AddSong(SongsTb, "JUICE WRLD", 75913208855144)
AddSong(SongsTb, "CENTRAL CEE", 136154638131600)
AddSong(SongsTb, "BETTER OFF ALONE", 129629944965723)
AddSong(SongsTb, "HENCH MAFIA", 91402106118372)
AddSong(SongsTb, "LV SANDALS", 111033331077910)
AddSong(SongsTb, "TIKTOK SONG", 95044951816322)
AddSong(SongsTb, "TURN UP RAKAI", 120314325198233)
AddSong(SongsTb, "YEAT", 101007719350746)
AddSong(SongsTb, "JUICE WRLD (2)", 77110026287418)
AddSong(SongsTb, "BAZOOKA", 121252909004354)
AddSong(SongsTb, "RUN IT UP", 73224249939539)
AddSong(SongsTb, "UNLEAKED RAP", 133988484250262)
AddSong(SongsTb, "TWO FRIENDS", 133727395388987)
AddSong(SongsTb, "DORA BARBIE REMIX", 136280433768751)
AddSong(SongsTb, "GRT AWAY", 120877338531604)
AddSong(SongsTb, "CENTRAL CEE (WAIT 1 MIN)", 73883012408965)
AddSong(SongsTb, "TUNG TUNG SAHUR", 71013491834307)
AddSong(SongsTb, "THE ONE", 109826227084020)
AddSong(SongsTb, "MRBEAST PHONK", 78015487317045)
AddSong(SongsTb, "BRAINROT SONG", 71013491834307)
AddSong(SongsTb, "UNLEAKED DRILL", 107991662771528)
AddSong(SongsTb, "SHOTGUN WILLY", 132378448745518)
AddSong(SongsTb, "TRUMP TOWERS", 122754811891557)
AddSong(SongsTb, "UNLEAKED SONG (FINAL)", 93876704559783)

--- HINDI 
AddSong(HindiTb, "Kya Mujhe Pyaar Hain", 90093811194361)
AddSong(HindiTb, "Sheesha", 116752232238483)
AddSong(HindiTb, "Arz Kiya Hai (Tune)", 105085396321463)
AddSong(HindiTb, "Akhiyan", 104380086210152)
AddSong(HindiTb, "Aalu Kachlu Beta", 138396893861830)
AddSong(HindiTb, "Bada Pachtaoge", 79561785821029)
AddSong(HindiTb, "Saiyara", 110710316953203)
AddSong(HindiTb, "Unke Andaz Karam", 95589943778476)
AddSong(HindiTb, "Hai Dill Yein Mera", 113792808283128)
AddSong(HindiTb, "Dhun Female", 129981117529204)
AddSong(HindiTb, "Manja", 83325283987770)
AddSong(HindiTb, "Aaj Mangalwar Hai", 98606901625415)
AddSong(HindiTb, "Majisa", 91368973732735)  
AddSong(HindiTb, "Pal Pal", 77002121761232)
AddSong(HindiTb, "Nacho Saare", 108968616078928)
AddSong(HindiTb, "Tumse Mil Kar", 133053501453467)
AddSong(HindiTb, "Pyar Ka Ehsas", 105568083374120)
AddSong(HindiTb, "Ladki Badi Anjani Hai", 128892246666972)
AddSong(HindiTb, "Dil Ne Ye Kaha", 113554906905279)
AddSong(HindiTb, "Gulabi Gulabi", 102924925389960)
AddSong(HindiTb, "Addat", 94103203628909)
AddSong(HindiTb, "Naddiyaaa", 128688756073670)
AddSong(HindiTb, "Kabhi Kabhi", 101068303675725)
AddSong(HindiTb, "Jhol", 121180010622504)
AddSong(HindiTb, "Maula Mere", 105017950345985)
AddSong(HindiTb, "Mann Mera", 140298499491642)
AddSong(HindiTb, "Deewana", 88345320570909)
AddSong(HindiTb, "Naini Se Baan", 108734798852042)
AddSong(HindiTb, "Saawre", 111219978139804)
AddSong(HindiTb, "Kitni Hasrat", 93457193569619)
AddSong(HindiTb, "Grish Ka Ganna", 104916889617105)
AddSong(HindiTb, "Sason Ki Mala", 120349214701956)
AddSong(HindiTb, "Holi Ke din", 115634143210295)
AddSong(HindiTb, "Aaj Ki Raat", 73958484988503) 
AddSong(HindiTb, "Hathi Raja", 106266156568507)
AddSong(HindiTb, "New Krish Ka Gana", 112509603877994)
AddSong(HindiTb, "Ranjheya Ve", 119786491353134)
AddSong(HindiTb, "Mujhe Nafrat Hain", 88750836439164)
AddSong(HindiTb, "Pardeshi", 90560862399777)
AddSong(HindiTb, "Kabhi Kab Rap", 137355570793959)
AddSong(HindiTb, "O Yaara", 117377307469141)
AddSong(HindiTb, "Sitam", 81582927737472)
AddSong(HindiTb, "Muskaan", 74180449839527)
AddSong(HindiTb, "Ishq Aashiqana", 84689783601883)
AddSong(HindiTb, "NaNa Karte Karte", 87629461934311)
AddSong(HindiTb, "Parde Mein", 81161805007229)
AddSong(HindiTb, "Dil Hain Tera", 126020491218161)
AddSong(HindiTb, "Zaroori Tha", 90050076108794)
AddSong(HindiTb, "Mera Pyaar", 86442760739586)
AddSong(HindiTb, "Diwaanaa", 74803752690893)
AddSong(HindiTb, "Tum Jo Aayein", 123883140253393)
AddSong(HindiTb, "Tera Mera Rista", 133309449131920)
AddSong(HindiTb, "Tumhee Aana", 121581884194482)
AddSong(HindiTb, "Rab Kare Tujhko", 85476270857623)
AddSong(HindiTb, "Tujh Se Naraj", 132205900730979)
AddSong(HindiTb, "Bada Achha Lagta", 109840879921151)
AddSong(HindiTb, "Tere bin", 71781214973684)
AddSong(HindiTb, "Khamosh Mohabbat", 118666072459268)
AddSong(HindiTb, "Gujri Da Chann", 111282481151488)
AddSong(HindiTb, "Khamosh Lamhe", 97726193472083)
AddSong(HindiTb, "Dil Se Dil Tak", 134685803353640)
AddSong(HindiTb, "Meri Jaan", 139102299920548)
AddSong(HindiTb, "Dil Ka Dard", 107407023558875)
AddSong(HindiTb, "Hidden Waltz",100824797790706 )
AddSong(HindiTb, "Ganne", 119357861598657)
AddSong(HindiTb, "Deewanapan", 134439994702432)
AddSong(HindiTb, "Gujariya", 1845981611)
AddSong(HindiTb, "Happy New Year", 83743044564436)
AddSong(HindiTb, "Aaja Nachle", 74521017097626)
AddSong(HindiTb, "Aasman Or Mitti", 96405295753901)
AddSong(HindiTb, "Dil Ke Darwaje", 92365720029808)
AddSong(HindiTb, "Meri Dunniya", 108385732239876)
AddSong(HindiTb, "Tera Saya", 80080225541371)
AddSong(HindiTb, "Bombay Dance", 139236184537201)
AddSong(HindiTb, "Ishq Wala Love", 123403615670379)
AddSong(HindiTb, "Hindi Lofi Tune", 132577644573677)
AddSong(HindiTb, "Tere Jaane Ke Bad", 115263024043690)
AddSong(HindiTb, "Chandani", 78650988628709)
AddSong(HindiTb, "Tere Sang Chalu", 122576339336819)

-- BHOJPURI 
AddSong(BhojpuriTb, "Lamba Lamba Ghughat", 78431826650714)
AddSong(BhojpuriTb, "Balam Ke Pichkari", 89700384406008)
AddSong(BhojpuriTb, "Moh Lelo", 95909411418420)
AddSong(BhojpuriTb, "Sunny Dancer", 133421259018974)
AddSong(BhojpuriTb, "TakTaki Bhojpuri", 78735782383680)
AddSong(BhojpuriTb, "Ladki Deewani", 102511873453786)
AddSong(BhojpuriTb, "Bansuri", 79568658897083)
AddSong(BhojpuriTb, "Sejiya Pe Piya", 87577798625777)
AddSong(BhojpuriTb, "Nimbu Kharbuja", 87577798625777)
AddSong(BhojpuriTb, "Sadi Ladki", 104574653065736)
AddSong(BhojpuriTb, "Dar Lage", 128470232274219)
AddSong(BhojpuriTb, "Hamra Mard", 131679833636653)
AddSong(BhojpuriTb, "Video Calling", 126309103230345)
AddSong(BhojpuriTb, "Sadiya Karoya", 140415804746906)
AddSong(BhojpuriTb, "Ghaghri", 124233673176294)
AddSong(BhojpuriTb, "TakaTaki", 117615820552185)
AddSong(BhojpuriTb, "Kunj Bihari", 108588298945210)

-- PHONK 
AddSong(PhonkTb, "F HIM F HER", 108009164504890)
AddSong(PhonkTb, "idk", 73241684077534)
AddSong(PhonkTb, "Rakai Turn Up", 120314325198233)
AddSong(PhonkTb, "INTERNET SWIPING 2", 76345869140703)
AddSong(PhonkTb, "Playboi Carti 24 Songs", 101448039772098)
AddSong(PhonkTb,"VERTIGO FUNK (ULTRA SLOWED)",100243051031264)
AddSong(PhonkTb,"haha (NGI)",122114766584918)
AddSong(PhonkTb,"MAMMA MIA FUNK -THE END- (SLOWED)",134153043498082)
AddSong(PhonkTb,"MONTAGEM DRESCE",134687778902887)
AddSong(PhonkTb,"spooky scary lol",100828050594137)
AddSong(PhonkTb,"DARE",139188421510869)
AddSong(PhonkTb,"Montagem Vida",79889952866985)
AddSong(PhonkTb,"Montagem Balada",83797836818857)
AddSong(PhonkTb,"BRAZILIAN PHONK NEW",85635811474451)
AddSong(PhonkTb,"Gangstas Paradise (Loop)",6070263388)
AddSong(PhonkTb,"FISSION (original)",118349786848415)
AddSong(PhonkTb,"Escalate",85306184126616)
AddSong(PhonkTb,"Resistance Treinamento (Slowed)",139470412088097)
AddSong(PhonkTb,"Crystal Link (Super Slowed)",79400027040201)
AddSong(PhonkTb,"Uh Bufon Vei (Over Slowed)",133815463890793)
AddSong(PhonkTb,"Booya",101772318848071)
AddSong(PhonkTb,"FUSION (original)",89180400948567)
AddSong(PhonkTb,"Nova La Noche (Ultra Slowed)",94032061631217)
AddSong(PhonkTb,"melodia de verão (ultra sped up)",72844613532784)
AddSong(PhonkTb,"XENON",127502623565534)
AddSong(PhonkTb,"Montagem Conmido",93461183313089)
AddSong(PhonkTb,"Funk Fortada (Slowed)",73351216000380)
AddSong(PhonkTb,"Bruxanzion",110991416454626)
AddSong(PhonkTb,"Funk Osigma (Slowed)",77659460864754)
AddSong(PhonkTb,"Vei Slay Solto",119824506266281)
AddSong(PhonkTb,"Avakiri",89750212764961)
AddSong(PhonkTb,"perpetual",114339730158889)
AddSong(PhonkTb,"Louder!", 101379652864597)
AddSong(PhonkTb,"Siren01 Loader!", 87655745800335)
AddSong(PhonkTb,"Side of Moon Loader!", 92539330883705)
AddSong(PhonkTb,"CRYSTAL FUNK!", 103445348511856)
AddSong(PhonkTb,"GOTH FUNK", 140704128008979)
AddSong(PhonkTb,"GOTH FUNK (2)", 74482331795312)
AddSong(PhonkTb,"FEMININO DO VAPO", 106317184644394)   
AddSong(PhonkTb,"PlayerChoice Louder!", 0x0000000000063712994266C)
AddSong(PhonkTb,"Bambee Bumble bee", 128961712071619)
AddSong(PhonkTb,"All Time Funk", 123809083385992)
AddSong(PhonkTb,"BassBoost", 136893418307185)
AddSong(PhonkTb,"7 Week-", 82149511707056)
AddSong(PhonkTb,"Din1c", 15689448519)
AddSong(PhonkTb,"Death Is No More", 16831108393)
AddSong(PhonkTb,"Beauty Phonk", 96760299701814)
AddSong(PhonkTb,"Phonk 18", 140642559093189)
AddSong(PhonkTb,"Eoropa Louder!", 111346133543699)
AddSong(PhonkTb,"Sirene Louder!", 87655745800335)
AddSong(PhonkTb,"Anda BassBoost", 128961712071619)
AddSong(PhonkTb,"F-D-1 Louder!", 124958445624871)
AddSong(PhonkTb,"Phonk 1", 77501611905348)
AddSong(PhonkTb,"I'm So Lucky", 120785124326826)
AddSong(PhonkTb,"One Pound Fish", 91301048841024)
AddSong(PhonkTb,"XE FUNK", 131415306381990)
AddSong(PhonkTb,"Tester", 91299590639144)
AddSong(PhonkTb,"Funk Do Chugi", 111314366671396)
AddSong(PhonkTb,"Right Now", 91976386006545)
AddSong(PhonkTb,"UnderMagic", 91007045451630)
AddSong(PhonkTb, "Toma Toma Funk", 88266916032720)
AddSong(PhonkTb, "CuteMakMakFunk", 120871403922972)
AddSong(PhonkTb, "Melodia", 118507373399694)
AddSong(PhonkTb, "Tomagi", 111668097052966)
AddSong(PhonkTb,"Nada Tropica", 88663628557954)
AddSong(PhonkTb,"Caliente", 105492220688862)
AddSong(PhonkTb,"Funk Sigcuro", 96028783423401)
AddSong(PhonkTb,"Lalala", 83315524711012)
AddSong(PhonkTb,"Solo ana noche", 111205815697819)
AddSong(PhonkTb, "Dress To Impress", 139161205970637)
AddSong(PhonkTb, "nMisaki, zangel", 16662833837)
AddSong(PhonkTb, "Phonk Vol.2", 14145620056)
AddSong(PhonkTb, "Alaanwad", 17422074849)
AddSong(PhonkTb, "Brazilian Phonk", 108621585736031)
AddSong(PhonkTb, "Lil Leica", 72920812093264)
AddSong(PhonkTb, "Phonk Vol.1", 14145625743)
AddSong(PhonkTb, "Phonk Favela", 103822969964838)
AddSong(PhonkTb, "Phonk Fiesta", 125498129824026)
AddSong(PhonkTb, "Doggy Phonk", 123047130884626)
AddSong(PhonkTb, "Bravery", 72547465795364)
AddSong(PhonkTb, "Recognized", 124256218818801)
AddSong(PhonkTb, "Desprezo", 134991005784332)
AddSong(PhonkTb, "F-Phonk", 101326109963284)
AddSong(PhonkTb, "TRIPI TROPI", 101241740024903)
AddSong(PhonkTb, "YA Brazil Phonk", 114811335026475)
AddSong(PhonkTb, "Hard Drift", 93202214051700)
AddSong(PhonkTb, "TOMA PHONK", 129098116998483)
AddSong(PhonkTb, "Beauty (Slowed)", 115249562236391)
AddSong(PhonkTb, "TOMA FUNK", 126291069838831)
AddSong(PhonkTb, "LadyLike", 100703161099643)
AddSong(PhonkTb, "Gold Phonk", 124956323731288)
AddSong(PhonkTb, "Ratual Phonk", 115175275895587)
AddSong(PhonkTb, "Controlled Distortion", 97250551932353)

-- MULTI-LANG
MultiLTb:CreateSection("Gujrati + Navratri Songs")
AddSong(MultiLTb, "Chhogada", 132817140436217)
AddSong(MultiLTb, "He Ranglo", 128232876294868)
AddSong(MultiLTb, "Maa Durga", 82446868166514)
AddSong(MultiLTb, "Jaago Maa Durga", 89047007812046)
AddSong(MultiLTb, "Shree Durga", 135346318153434)
AddSong(MultiLTb, "Jay Matadi", 101446595061046)
AddSong(MultiLTb, "Jay Matadi 2", 131180916782154)
AddSong(MultiLTb, "Maara Gaam Aavija", 86164220023320)

MultiLTb:CreateSection("Punjabi Songs")
AddSong(MultiLTb, "Tunak Tunak", 117542440446894)
AddSong(MultiLTb, "Swaad", 125800612683016)
AddSong(MultiLTb, "Mirchaan", 89597415160893)
AddSong(MultiLTb, "You Drill", 72479777789620)
AddSong(MultiLTb, "Balle Balle", 101682048332257)
AddSong(MultiLTb, "Kamal Hogyi", 136891850788169)
AddSong(MultiLTb, "JagChhorDia", 78465649557695)
AddSong(MultiLTb, "Punjabi Anthem", 95903202203393)
AddSong(MultiLTb, "Punjabi Aagye", 76453914422555)
AddSong(MultiLTb, "Stuck On You", 92771177552423)
AddSong(MultiLTb, "Love Feel", 98782454029990)
AddSong(MultiLTb, "Gym Anthem", 131422500622060)
AddSong(MultiLTb, "YaarSaade", 93346288111590)
AddSong(MultiLTb, "Alone Sad", 134910708390779)
AddSong(MultiLTb, "Billi Akh", 88847441771664)
AddSong(MultiLTb, "Blessings", 87073897877762)
AddSong(MultiLTb, "Tera Takna", 99214194190760)
AddSong(MultiLTb, "Att", 78941039670387)
AddSong(MultiLTb, "Dil Haarda", 85322413880760)
AddSong(MultiLTb, "Chal Jaan De Na", 135169053277219)
AddSong(MultiLTb, "Kalla Maskara", 123560369202143)
AddSong(MultiLTb, "Sansein", 91504531678365)

MultiLTb:CreateSection("Haryanvi Songs")
AddSong(MultiLTb, "Jay Haryana", 125935250237922)
AddSong(MultiLTb, "HR DRILL", 91327878757458)
AddSong(MultiLTb, "NAMARIYA KAMARIYA ME KHOS DEB", 123382440579162)
AddSong(MultiLTb, "Kamariya Gole Gole Dole Raja", 92471687832864)
AddSong(MultiLTb, "Kamariya", 89996357870900)
AddSong(MultiLTb, "Badmash bannan ka shok nhi", 135527292104268)
AddSong(MultiLTb, "Zamana", 138409201331401)
AddSong(MultiLTb, "Peg Bhadkaye Jaav Se", 91811736186558)

MultiLTb:CreateSection("Marathi Songs")
AddSong(MultiLTb, "Gokul Sudini", 104114926542377)
AddSong(MultiLTb, "Ami Marathi", 121884195781496)
AddSong(MultiLTb, "Baba Maza", 72960995687335)
AddSong(MultiLTb, "Marathi Bolti", 87905627284419)

MultiLTb:CreateSection("Tamil Songs")
AddSong(MultiLTb, "Un Kaadhal", 81557968839949)
AddSong(MultiLTb, "Tamil Rap", 78321562362164)
AddSong(MultiLTb, "Jana Nayagan", 134611908527485)
AddSong(MultiLTb, "Nee En Uyire", 84710673912283)
AddSong(MultiLTb, "Kadhal Muttal", 97407313818909)

-- SOUND
AddSong(SoundsTb,"TeriMakaBho#da", 129697356456437)
AddSong(SoundsTb,"No-No-No (Indian)", 121961116892477)
AddSong(SoundsTb,"UwU", 105577043687038)
AddSong(SoundsTb,"Senpai", 115498703521334)
AddSong(SoundsTb,"Kiss 💋", 118235447189969)
AddSong(SoundsTb,"Anime Ahh", 119651952208423)
AddSong(SoundsTb,"Ah", 121259252258118)
AddSong(SoundsTb,"Girl Evil Laugh", 134548905274433)
AddSong(SoundsTb,"Tom", 139694892021582)
AddSong(SoundsTb,"Slayy", 139740597178232)
AddSong(SoundsTb,"Scary", 140028279221307)
AddSong(SoundsTb,"Kitisan", 122462786517802)
AddSong(SoundsTb,"Flash", 123459967526974)
AddSong(SoundsTb,"The Hand erase", 132573001115155)
AddSong(SoundsTb,"Aishiteru-(ILoveYou)", 132952117418468)
AddSong(SoundsTb,"Msg Y'all Ahhhhwww", 134489447055645)
AddSong(SoundsTb,"Goofy Horn", 136188985418657)
AddSong(SoundsTb,"Faaahhhhh", 139999225792687)
AddSong(SoundsTb,"Shidouuu", 89016013924693)
AddSong(SoundsTb,"Jumpscare", 6201427049)
AddSong(SoundsTb,"Desi Gun", 3177712713)
AddSong(SoundsTb,"Laughing", 4767799547)  
AddSong(SoundsTb,"Nya Zo", 8842446965)
AddSong(SoundsTb,"Chicken Sound", 117909139728666)
AddSong(SoundsTb,"Ladle GhopGhopGhop", 88622194255425)
AddSong(SoundsTb,"Monkey", 7196237097)
AddSong(SoundsTb,"Ahhhhh", 169664410)
AddSong(SoundsTb,"S-PunjabiMeme", 123161971384069)
AddSong(SoundsTb,"Sound (1)", 77446238713316)
AddSong(SoundsTb,"Sound (2)", 4575953237)
AddSong(SoundsTb,"S-Popopo", 108896377576102)
AddSong(SoundsTb,"S-SariRoti", 9075261161)

local function changeColor(color)
    local remote = ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("ChangeBodyColor")
    remote:FireServer(color)
end

local houseRgb = false
local vehicleRgb = false
local nameRgb = false
local avatarRgb = false

local Settings = Window:CreateTab("⚙️ Settings", 4483362458) 

Settings:CreateSlider({
    Name = "WalkSpeed",
    Range = {16, 500},
    Increment = 1,
    CurrentValue = 16,
    Callback = function(Value)
        local _, humanoid = GetChar()
        humanoid.WalkSpeed = Value
    end
})

Settings:CreateSlider({
    Name = "JumpPower",
    Range = {50, 300},
    Increment = 1,
    CurrentValue = 50,
    Callback = function(Value)
        local _, humanoid = GetChar()
        humanoid.JumpPower = Value
    end
})

local force
Settings:CreateSlider({
    Name = "No Gravity",
    Range = {0, 500},
    Increment = 1,
    CurrentValue = 0,
    Callback = function(Value)
        local _, _, hrp = GetChar()
        if not force then
            force = Instance.new("BodyForce")
            force.Name = "ITMEANS_NoGravity"
            force.Parent = hrp
        end
        force.Force = Vector3.new(0, hrp.AssemblyMass * workspace.Gravity * (Value / 500), 0)
    end
})

Settings:CreateButton({
    Name = "Reset Speed",
    Callback = function() ButtonPSound() local _, humanoid = GetChar() humanoid.WalkSpeed = 16 end
})

Settings:CreateButton({
    Name = "Reset Jump",
    Callback = function() ButtonPSound() local _, humanoid = GetChar() humanoid.JumpPower = 50 end
})

Settings:CreateButton({
    Name = "Reset Gravity",
    Callback = function() ButtonPSound() force.Force = Vector3.new(0, 0, 0) end
})

Settings:CreateToggle({
    Name = "🔒 Shift Lock",
    CurrentValue = false,
    Flag = "ShiftLockToggle",
    Callback = function(Value)
        ButtonPSound()
        if Value then EnableShiftLock() else DisableShiftLock() end
    end
})

Settings:CreateSection("Global Smoothness Speed")
Settings:CreateSlider({
   Name = "Fade Speed",
   Range = {0.001, 0.02},
   Increment = 0.001,
   Suffix = " (Smoothness)",
   CurrentValue = 0.005,
   Callback = function(Value) animSpeed = Value end,
})

Settings:CreateSection("RGB")

Settings:CreateToggle({
   Name = "Smooth RGB Name & Bio",
   CurrentValue = false,
   Callback = function(Value)
      ButtonPSound()
      nameRgb = Value
      if nameRgb then
          task.spawn(function()
              while nameRgb do
                  local smoothColor = Color3.fromHSV(hueValue, 1, 1)
                  pcall(function()
                      NameRemote:FireServer("PickingRPNameColor", smoothColor)
                      NameRemote:FireServer("PickingRPBioColor", smoothColor)
                  end)
                  task.wait(0.8)
              end
          end)
      end
   end,
})

Settings:CreateToggle({
   Name = "RGB Avatar",
   CurrentValue = false,
   Flag = "RGB_Toggle",
   Callback = function(Value)
      ButtonPSound()
      rgbEnabled = Value
      if rgbEnabled then
          task.spawn(function()
              while rgbEnabled do
                  for _, color in ipairs(colors) do
                      if not rgbEnabled then break end
                      changeColor(color)
                      task.wait(0.5)
                  end
              end
          end)
      end
   end,
})

Settings:CreateToggle({
   Name = "Smooth House RGB",
   CurrentValue = false,
   Callback = function(Value)
      ButtonPSound()
      houseRgb = Value
      if houseRgb then
          task.spawn(function()
              while houseRgb do
                  local smoothColor = Color3.fromHSV(hueValue, 1, 1)
                  pcall(function() HouseRemote:FireServer("ColorPickHouse", smoothColor) end)
                  task.wait(1.1)
              end
          end)
      end
   end,
})

local propRGB = false
local hue = 0
local PropsFolder = workspace:WaitForChild("WorkspaceCom"):WaitForChild("001_TrafficCones")

Settings:CreateToggle({
Name = "(1) All Props RGB",
CurrentValue = false,
Callback = function(Value)
    ButtonPSound()
    propRGB = Value
    if propRGB then  
        task.spawn(function()  
            while propRGB do  
                hue = (hue + 0.05) % 1  
                local rgb = Color3.fromHSV(hue,1,1)  
                for _,prop in pairs(PropsFolder:GetChildren()) do  
                    local remote = prop:FindFirstChild("ChangePropColor")  
                    if remote then  
                        task.spawn(function() pcall(function() remote:InvokeServer(rgb) end) end)  
                    end  
                end  
                task.wait(0.2)  
            end  
        end)  
    end
end,
})

Settings:CreateToggle({
   Name = "(2) All Props RGB",
   CurrentValue = false,
   Callback = function(Value)
        ButtonPSound()
        propRGB = Value
        if propRGB then
            task.spawn(function()
                while propRGB do
                    hue = (hue + 0.05) % 1
                    for i,prop in pairs(PropsFolder:GetChildren()) do
                        local remote = prop:FindFirstChild("ChangePropColor")
                        if remote then
                            local shadeHue = (hue + (i * 0.03)) % 1
                            local saturation = 0.9 + (math.sin(tick()+i)*0.1)
                            local brightness = 0.9 + (math.cos(tick()+i)*0.1)
                            local rgb = Color3.fromHSV(shadeHue, saturation, brightness)
                            task.spawn(function() pcall(function() remote:InvokeServer(rgb) end) end)
                        end
                    end
                    task.wait(0.2)
                end
            end)
        end
   end,
})

Settings:CreateButton({
   Name = "Signboard Troll UI",
   Callback = function()
      ButtonPSound()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/4jayyz/AJ-Music-Hub-/refs/heads/main/CemeteryHub"))()
   end,
})

Settings:CreateSection("Server Option")
Settings:CreateButton({
    Name = "🔁 Rejoin Server",
    Callback = function()
        ButtonPSound()
        TeleportService:Teleport(game.PlaceId, player)
    end
})
Settings:CreateButton({
    Name = "👥 Small Server",
    Callback = function()
        ButtonPSound()
        local HttpService = game:GetService("HttpService")
        local url = "https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?sortOrder=Asc&limit=100"
        local data = HttpService:JSONDecode(game:HttpGet(url))
        for _, server in pairs(data.data) do
            if server.playing < server.maxPlayers then
                TeleportService:TeleportToPlaceInstance(game.PlaceId, server.id, player)
                break
            end
        end
    end
})
Settings:CreateButton({
    Name = "🔀 Server Hop",
    Callback = function()
        ButtonPSound()
        local HttpService = game:GetService("HttpService")
        local url = "https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?sortOrder=Desc&limit=100"
        local data = HttpService:JSONDecode(game:HttpGet(url))
        for _, server in pairs(data.data) do
            if server.id ~= game.JobId then
                TeleportService:TeleportToPlaceInstance(game.PlaceId, server.id, player)
                break
            end
        end
    end
})

Settings:CreateButton({
    Name = "❌ Destroy GUI",
    Callback = function()
        ButtonPSound()
        local s = Instance.new("Sound")
        s.Name = "DestroySoundEffect"
        s.SoundId = "rbxassetid://104269922408932"
        s.Volume = 10 
        s.Parent = game:GetService("SoundService")
        s:Play()
        Rayfield:Destroy()
        game:GetService("Debris"):AddItem(s, 5)
    end
})

Settings:CreateParagraph({
    Title = "Credits",
    Content = "ITMEANS (@itmeans)\nMade for Delta Android Executor"
})

local Remotes = ReplicatedStorage:WaitForChild("Remotes")
local TargetPlayer = nil

local function GetPlayerNames()
    local names = {}
    for _, v in pairs(Players:GetPlayers()) do
        if v ~= player then table.insert(names, v.Name) end
    end
    return names
end

local AvatarTb = Window:CreateTab("Avatar", 4483362458) 

local function ApplyAnimation(id, name)
    pcall(function() Remotes.Wear:InvokeServer(id) end)
    Rayfield:Notify({Title = "Animation Synced", Content = name .. " Applied!", Duration = 3, Image = 4483362458})
end

local function AddAvatarItem(buttonName, itemID, notifyTitle)
    AvatarTb:CreateButton({
        Name = buttonName,
        Callback = function()
            ButtonPSound()
            pcall(function() Remotes.Wear:InvokeServer(itemID) end)
            Rayfield:Notify({Title = notifyTitle .. " Applied!", Content = buttonName .. " successfully added", Duration = 3, Image = 4483362458})
        end,
    })
end

local function ApplyBodyMod(useKorblox, useHeadless)
    local p = player
    local hum = p.Character and p.Character:FindFirstChildOfClass("Humanoid")
    if hum then
        local desc = hum:GetAppliedDescription()
        local args = {
            [1] = {
                [1] = desc.Torso, [2] = desc.RightArm, [3] = desc.LeftArm, 
                [4] = useKorblox and 139607718 or desc.RightLeg, [5] = desc.LeftLeg, 
                [6] = useHeadless and 134082579 or desc.Head
            }
        }
        Remotes.ChangeCharacterBody:InvokeServer(unpack(args))
    end
end

AvatarTb:CreateSection("Avatar Copy")

local Developers = {["XxalxX"] = true, ["itmeans0011"] = true}

local PlayerDropdown = AvatarTb:CreateDropdown({
   Name = "Select User",
   Options = GetPlayerNames(),
   CurrentOption = {""},
   MultipleOptions = false,
   Flag = "UserDropdown",
   Callback = function(Option)
      ButtonPSound()
      local SelectedName = Option[1]
      if Developers[SelectedName] then
         player:Kick("Access denied: You cannot copy the avatar of the script developer.")
         return
      end
      TargetPlayer = SelectedName
   end,
})

task.spawn(function()
    while task.wait(30) do
        PlayerDropdown:Refresh(GetPlayerNames(), true)
    end
end)

AvatarTb:CreateButton({
   Name = "Copy Avatar",
   Callback = function()
      ButtonPSound()
      if not TargetPlayer or TargetPlayer == "" then
          return Rayfield:Notify({Title = "Error", Content = "Must Select Player", Duration = 3})
      end

      local TPlr = Players:FindFirstChild(TargetPlayer)
      local LPlr = player
      
      if TPlr and TPlr.Character and LPlr.Character then
          local THum = TPlr.Character:FindFirstChildOfClass("Humanoid")
          local LHum = LPlr.Character:FindFirstChildOfClass("Humanoid")

          if THum and LHum then
              local LDesc = LHum:GetAppliedDescription()
              for _, acc in ipairs(LDesc:GetAccessories(true)) do
                  if acc.AssetId then Remotes.Wear:InvokeServer(tonumber(acc.AssetId)) end
              end
              
              Remotes.ChangeCharacterBody:InvokeServer({[1]=0,[2]=0,[3]=0,[4]=0,[5]=0,[6]=0})
              task.wait(0.2)

              local PDesc = THum:GetAppliedDescription()
              local argsBody = {
                  [1] = {
                      [1] = PDesc.Torso, [2] = PDesc.RightArm, [3] = PDesc.LeftArm,
                      [4] = PDesc.RightLeg, [5] = PDesc.LeftLeg, [6] = PDesc.Head
                  }
              }
              Remotes.ChangeCharacterBody:InvokeServer(unpack(argsBody))
              
              task.spawn(function()
                  if tonumber(PDesc.Shirt) then Remotes.Wear:InvokeServer(tonumber(PDesc.Shirt)) end
                  if tonumber(PDesc.Pants) then Remotes.Wear:InvokeServer(tonumber(PDesc.Pants)) end
                  if tonumber(PDesc.Face) then Remotes.Wear:InvokeServer(tonumber(PDesc.Face)) end
                  
                  for _, v in ipairs(PDesc:GetAccessories(true)) do
                      if v.AssetId then
                          Remotes.Wear:InvokeServer(tonumber(v.AssetId))
                          task.wait(0.05) 
                      end
                  end
                  
                  local SkinColor = TPlr.Character:FindFirstChild("Body Colors")
                  if SkinColor then Remotes.ChangeBodyColor:FireServer(tostring(SkinColor.HeadColor)) end
              end)

              Rayfield:Notify({Title = "Copying...", Content = TargetPlayer .. " Loading Avatar...", Duration = 3, Image = 4483362458})
          end
      end
   end,
})

AvatarTb:CreateSection("Avatar Body Bundles") 

AvatarTb:CreateButton({
   Name = "🎀 Get Viral Girl Body",
   Callback = function()
      ButtonPSound()  
      Remotes.Wear:InvokeServer(18839824113) task.wait(0.5)
      Remotes.Wear:InvokeServer(18839824209) task.wait(0.5)
      Remotes.Wear:InvokeServer(18839824132) task.wait(0.5)
      Remotes.Wear:InvokeServer(127241951574732) task.wait(0.5)
      Remotes.Wear:InvokeServer(118303475394830)
      Rayfield:Notify({Title = "Applied", Content = "Body Bundle Added Successfully!", Duration = 3})
   end,
})

AvatarTb:CreateButton({
   Name = "🖤 Get Tall Emo Body",
   Callback = function()
      ButtonPSound()
      Remotes.Wear:InvokeServer(15365110905) task.wait(0.5)
      Remotes.Wear:InvokeServer(15365110924) task.wait(0.5)
      Remotes.Wear:InvokeServer(15365110917) task.wait(0.5)
      Remotes.Wear:InvokeServer(96815508293389) task.wait(0.5)
      Remotes.Wear:InvokeServer(121515016872144)
      Rayfield:Notify({Title = "Applied", Content = "Body Bundle Added Successfully!", Duration = 3})
   end,
})

AvatarTb:CreateButton({
   Name = "👗 Get Zepeto Girl Body",
   Callback = function()
      ButtonPSound()
      Remotes.Wear:InvokeServer(115745153758680) task.wait(0.5)
      Remotes.Wear:InvokeServer(18839824209) task.wait(0.5)
      Remotes.Wear:InvokeServer(18839824132) task.wait(0.5)
      Remotes.Wear:InvokeServer(70582373853805) task.wait(0.5)
      Remotes.Wear:InvokeServer(70380761114055)
      Rayfield:Notify({Title = "Applied", Content = "Body Bundle Added Successfully!", Duration = 3})
   end,
})

AvatarTb:CreateButton({
   Name = "👔 Get Zepeto Boy Body",
   Callback = function()
      ButtonPSound()
      Remotes.Wear:InvokeServer(127731857442064) task.wait(0.5)
      Remotes.Wear:InvokeServer(116852226852049) task.wait(0.5)
      Remotes.Wear:InvokeServer(124836215743468) task.wait(0.5)
      Remotes.Wear:InvokeServer(82542418567050) task.wait(0.5)
      Remotes.Wear:InvokeServer(103224430842613) task.wait(0.5)
      Remotes.Wear:InvokeServer(92565592431265)
      Rayfield:Notify({Title = "Applied", Content = "Body Bundle Added Successfully!", Duration = 3})
   end,
})

AvatarTb:CreateSection("Avatar Mods")

AvatarTb:CreateButton({
   Name = "🦵 Add Korblox",
   Callback = function() ButtonPSound() ApplyBodyMod(true, false) Rayfield:Notify({Title = "Applied", Content = "Korblox Leg added!", Duration = 3}) end,
})

AvatarTb:CreateButton({
   Name = "💀 Add Headless",
   Callback = function() ButtonPSound() ApplyBodyMod(false, true) Rayfield:Notify({Title = "Applied", Content = "Headless applied!", Duration = 3}) end,
})

AddAvatarItem("🛸 Add UFO", 8151404994, "UFO")
AddAvatarItem("🪓 Add Axe", 3240543366, "Axe")
AddAvatarItem("☠️ Add SkullAura", 14524326503, "Skull Aura")
AddAvatarItem("📯 Add BSP Horn", 233705354, "BSP Horn")
AddAvatarItem("🟡 Add Yellow Fire Horn", 215718515, "Fire Horn")
AddAvatarItem("🟢 Add Green Fire Horn", 1744060292, "Green Fire horn") 
AddAvatarItem("🔵 Add Blue Fire Horn", 74891470, "Blue Fire Horn")
AddAvatarItem("🔴 Add Red Fairy", 128217885, "Red Fairy")
AddAvatarItem("🟣 Add Purple Fairy", 150381051, "Purple Fairy")
AddAvatarItem("🟢 Add Green Fairy", 226189871, "Green Fairy")
AddAvatarItem("❄️ Add Ice Fairy", 141742418, "Ice Fairy")
AddAvatarItem("👻 Add Ghosdeeri", 183468963, "Ghosdeeri")
AddAvatarItem("💀 Add Doomsekkar", 132809431, "Doomsekkar")
AddAvatarItem("✨ Add Sparkling Wings", 192557913, "Sparkling Wings")
AddAvatarItem("👑 Add Royal Crown", 10159600649, "Royal Crown")
AddAvatarItem("🎧 Add Soundable Laugh Hat", 305888394, "Sound Hat")
AddAvatarItem("🐔 Add Soundable Chicken Hat", 24112667, "Soundable Chicken")
AddAvatarItem("🟪 Add Soundable Purple Hat", 24114402, "Soundable Purple Hat")
AddAvatarItem("🎹 Add Soundable Hat", 33070696, "Soundable Hat")
AddAvatarItem("🔫 Sci-Fi Gun", 3013849063, "Gun")
AddAvatarItem("👑 Like Crown", 13632291015, "Crown")
AddAvatarItem("🔵 Blue Crown", 13632274891, "Blue Crown")
AddAvatarItem("🔴 Red Crown", 13634032867, "Red Crown")
AddAvatarItem("🟡 Yellow Crown", 13632296794, "Yellow Crown")
AddAvatarItem("🌈 Rainbow Crown", 13634162618, "Rainbow Crown")

AvatarTb:CreateSection("--- 🎭 Professional Animation Lists ---")
local AnimData = {
    Idle = {
        ["Adidas Stand"] = 126354114956642,
        ["Wicked Popular Idle"] = 101839542383818,
        ["Dancing Through"] = 82682578794949,
        ["Levitation"] = 619542203,
        ["Stylish"] = 619511648,
        ["No Boundaries"] = 18755930927,
        ["Borocks"] = 3710007708,
        ["Ud'zal"] = 3307605825,
        ["Idle Animation"] = 4418326547,
        ["Catwalk Glam"] = 101279640971758,
        ["Realistic Idle"] = 11600321661,
        ["Adidas Sport"] = 18538150608,
        ["NFS"] = 101094325978637,
        ["R15"] = 4211409027,
        ["Adidas Aura"] = 73137983344853,
        ["Adidas Community"] = 83682578794949,
        ["Unboxed"] = 82219139681769,
        ["Bold"] = 16744209868
    },
    Walk = {
        ["Adidas Walking"] = 106810508343012,
        ["Wicked Popular Walk"] = 133304526526319,
        ["Stylish Walk"] = 619511648,
        ["Realistic Walk"] = 11600321661,
        ["Adidas Sport"] = 18538146480,
        ["UD'ZAL"] = 3307608414,
        ["R15"] = 4211412518,
        ["Adidas Aura"] = 75183215343859,
        ["Adidas Community "] = 94133616443608,
        ["Unboxed"] = 128339543796138,
        ["Bold"] = 16744219182
    },
    Run = {
        ["Adidas Running"] = 124765145869332,
        ["Wicked Popular Run"] = 136276875045281,
        ["Fast Realistic Run"] = 11600321661,
        ["Adidas Sport"] = 18538133604,
        ["UD'ZAL"] = 3236849826,
        ["R15"] = 4211411570,
        ["Adidas Aura"] = 123973978164540,
        ["Adidas Community"] = 79789194522561,
        ["Unboxed"] = 114998633936467,
        ["Bold"] = 16744214662
    },
    Jump = {
        ["Adidas Jump"] = 115715495289805,
        ["Wicked Popular Jump"] = 130373407996664,
        ["Adidas Sport"] = 18538153691,
        ["R15"] = 4211410252,
        ["Adidas Aura "] =129527230938281,
        ["Adidas Community"] = 111157411630082,
        ["Unboxed"] = 110418911914024,
        ["Bold"] = 16744214662
    },
    Fall = {
        ["Adidas Fall"] = 93993406355955,
        ["Wicked Popular Fall"] = 83937116921114,
        ["Adidas Sport"] = 18538164337,
        ["Adidas Aura"] = 99457463463495,
        ["Adidas Community"] = 124742764102674,
        ["Unboxed"] = 125108870423182,
        ["Bold"] = 16744207822
    },
    Swim = {
        ["Adidas Swimming"] = 106537993816942,
        ["Wicked Popular Swim"] = 128475661806875,
        ["Adidas Sport"] = 18538158932,
        ["Adidas Aura "] = 119007025452432,
        ["Adidas Community "] = 135050138303161,
        ["Unboxed"] = 137392271797713,
        ["Bold"] = 16744217055
    },
    Climb = {
        ["Adidas Climb"] = 123695349157584,
        ["Wicked Popular Climb"] = 135810009801094,
        ["Adidas Sport"] = 18538170170,
        ["R15"] = 4211406184,
        ["Adidas Aura "] = 140398319728398,
        ["Adidas Community"]  = 123509187015792,
        ["Unboxed"] = 117011755848398,
        ["Bold"] = 6744204409
    }
}

local categories = {
    {Name = "Standing animation list-", Key = "Idle"},
    {Name = "Walking animation list-", Key = "Walk"},
    {Name = "Running animation list-", Key = "Run"},
    {Name = "Jump animation list-", Key = "Jump"},
    {Name = "Fall animation list-", Key = "Fall"},
    {Name = "Swim animation list-", Key = "Swim"},
    {Name = "Climb animation list-", Key = "Climb"}
}

for _, cat in ipairs(categories) do
    local options = {}
    for name, _ in pairs(AnimData[cat.Key]) do
        table.insert(options, name)
    end
    
    AvatarTb:CreateDropdown({
        Name = cat.Name,
        Options = options,
        CurrentOption = options[1],
        Callback = function(Option)
            ButtonPSound()
            local selectedName = type(Option) == "table" and Option[1] or Option
            local id = AnimData[cat.Key][selectedName]
            if id then ApplyAnimation(id, selectedName) end
        end,
    })
end

local Scripts = Window:CreateTab("🧾 Scripts", 4483362458)

Scripts:CreateSection("Fly GUI")
Scripts:CreateButton({
    Name = "Fly V3",
    Callback = function()
        ButtonPSound()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
    end
})

Scripts:CreateSection("Chat Spammer")
Scripts:CreateButton({
    Name = "ITMEANS Spammer",
    Callback = function()
        ButtonPSound()
        loadstring(game:HttpGet("https://pastebin.com/raw/bPnmeDGz"))()
    end
})

Scripts:CreateSection("Brookhaven hubs")
Scripts:CreateButton({
    Name = "Kakah Hub",
    Callback = function()
        ButtonPSound()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Brookhaven-RP-Kakah-Hub-75647"))()
    end
})

Scripts:CreateParagraph({
    Title = "Credits",
    Content = "ITMEANS (@itxalx)\nMade for Delta Android Executor"
})
