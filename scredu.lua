
local ScreenGui = Instance.new("ScreenGui")
local Frame_1 = Instance.new("Frame")
local ImageButton_1 = Instance.new("ImageButton")

-- Properties:
ScreenGui.Parent = game.CoreGui

Frame_1.Parent = ScreenGui
Frame_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
Frame_1.Position = UDim2.new(0.0496077649, 0,0.134853914, 0)
Frame_1.Size = UDim2.new(0, 43,0, 41)

ImageButton_1.Parent = Frame_1
ImageButton_1.Active = true
ImageButton_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
ImageButton_1.BorderColor3 = Color3.fromRGB(128,17,255)
ImageButton_1.Position = UDim2.new(-0.00698809186, 0,-0.0136182783, 0)
ImageButton_1.Size = UDim2.new(0, 43,0, 41)
ImageButton_1.Image = "http://www.roblox.com/asset/?id=12514663645"
ImageButton_1.MouseButton1Down:Connect(function()
	game:GetService("VirtualInputManager"):SendKeyEvent(true, "RightControl" , false , game)
end)

local a=loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()local b=loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()b:Notify({Title="⚔Loading EDU HUB⚔",Description="Please Wait✅"},{OutlineColor=Color3.fromRGB(128,17,255),Time=3,Type="default"})wait(3)
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/EVILDARKSIDEUPV1/ui/main/README.md"))()
local Window = Library.CreateLib("EDU HUB : Stand Upright : Rebooted", "BloodTheme")

local Tab = Window:NewTab("Farm")
local Section = Tab:NewSection("Farm Level to Auto Quests.")
Section:NewSlider("Customize Y",10,-20,20,function(t)
        Disc = t
    end)
    
Section:NewSlider("Customize X",-4,-20,20,function(y)
        Disc2 = y
    end)
    
local Section = Tab:NewSection("Auto Use Skilll")

Section:NewToggle("Use Skill All", "Click to Use", function(sss)
_G.AutoSkill = sss
local plr = game:GetService("Players").LocalPlayer
local character = plr.Character
       while _G.AutoSkill do wait()
           for _, Event in ipairs(character.StandEvents:GetChildren()) do 
                   if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Aura").Value == false   then
                           game:GetService("Players").LocalPlayer.Character.StandEvents.Summon:FireServer()
                   end
                    if _G.AutoSkill == false   then
                           game:GetService("Players").LocalPlayer.Character:FindFirstChild("Aura").Value = false
                    end
                if Event.Name == "Block" then continue end
                if Event.Name == "Quote" then continue end
                if Event.Name == "Pose" then continue end
                if Event.Name == "Summon" then continue end
                if Event.Name == "Heal" then continue end
                if Event.Name == "Jump" then continue end
                if Event.Name == "TogglePilot" then continue end
                Event:FireServer(true)
           end
        end 
end)


local Section = Tab:NewSection("Use Skill Choice")

local SkillList = {
    "E",
    "R",
    "T",
    "Y",
    "F",
    "H",
    "J",
    "Z",
    "X",
}
Section:NewDropdown("Skill Choice", "Click to Select",SkillList, function(Sk)
   Chsk = Sk
end)

Section:NewToggle("Start using the skill", "", function(Ausk)
    _G.Asd = Ausk
    while _G.Asd do wait()
if Chsk == "E" then
game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game)  continue end
        
if Chsk == "R" then
game:GetService("VirtualInputManager"):SendKeyEvent(true,"R",false,game)  continue end

if Chsk == "T" then
game:GetService("VirtualInputManager"):SendKeyEvent(true,"T",false,game) continue end

if Chsk == "Y" then
game:GetService("VirtualInputManager"):SendKeyEvent(true,"Y",false,game)  continue end

if Chsk == "F" then
game:GetService("VirtualInputManager"):SendKeyEvent(true,"F",false,game) continue end

if Chsk == "H" then
game:GetService("VirtualInputManager"):SendKeyEvent(true,"H",false,game) continue end

if Chsk == "J" then
game:GetService("VirtualInputManager"):SendKeyEvent(true,"J",false,game) continue end

if Chsk == "Z" then
game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game) continue end

if Chsk == "X" then
game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game) continue end

end
end)

local Section = Tab:NewSection("Auto Farm Level to Auto Quests.")
local MonList = {
    "Bad Gi [Lvl. 1+]",
    "Scary Monster [Lvl. 10+]",
    "Giorno Giovanna [Lvl. 20+]",
    "Rker Dummy [Lvl. 30+]",
    "Yoshikage Kira [Lvl. 40+]",
    "Dio Over Heaven [Lvl. 50+]",
    "Angelo [Lvl. 75+]",
    "Alien [Lvl. 100+]",
    "Jotaro Part 4 [Lvl. 125+]",
    "Kakyoin [Lvl. 150+]",
    "Sewer Vampire [Lvl. 200+]",
    "Pillerman [Lvl. 275+]",
}

Section:NewDropdown("Select Farm Level", "Click to Select",MonList, function(NPC)
    Monkill = NPC
end)

Section:NewToggle("Start Farm Level", "Click to kill", function(ATKill)
if Monkill == "Bad Gi [Lvl. 1+]" then
local b=loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()b:Notify({Title="Bad Gi [Lvl. 1+]⚔",Description="Start Work ✅"},{OutlineColor=Color3.fromRGB(128,17,255),Time=1,Type="default"})wait(0.2)
_G.AutoFarm = ATKill

    
    if _G.AutoFarm then
        while _G.AutoFarm and task.wait() do
            pcall(function()
            for i, v in pairs(game:GetService("Workspace").Living:GetChildren()) do
                if v.Name == "Bad Gi" and v:FindFirstChild("Humanoid").Health ~= 0 and _G.AutoFarm == true then
                    workspace.Map.NPCs.Giorno.Done:FireServer()
                      workspace.Map.NPCs.Giorno.QuestDone:FireServer()
                         
                    repeat
                        task.wait()
                        pcall(function()
                            for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.CDgui.fortnite:GetChildren()) do
                                if v:IsA("Frame") and v.Textt.Text == "Punch" then
                                    
                                else
                                    game:GetService("Players").LocalPlayer.Character.StandEvents.M1:FireServer()
                                end
                            end
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kars") and ("Stand")  then
                                game:GetService("Players").LocalPlayer.Character.Stand:WaitForChild("HumanoidRootPart").CFrame = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
                            end
                            v.HumanoidRootPart.Anchored = true
                            if _G.AutoFarm == true then
                                game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,Disc2,Disc)
                                else
                                game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0, 0, 4)
                            end
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Aura").Value == false   then
                                game:GetService("Players").LocalPlayer.Character.StandEvents.Summon:FireServer()
                            end
                        end)
                    until v:FindFirstChild("Humanoid").Health == 0 or _G.AutoFarm == false
                    
                    if _G.AutoFarm == true then
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 0, 1000))
                    end
                    if _G.AutoFarm == true then
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 10, 0))
                    end
                end
            end
            end)
        end
    end
end
if Monkill == "Scary Monster [Lvl. 10+]" then
_G.AutoFarm = ATKill

local b=loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()b:Notify({Title="Scary Monster [Lvl. 10+]⚔",Description="Start Work ✅"},{OutlineColor=Color3.fromRGB(128,17,255),Time=1,Type="default"})wait(0.2)

    if _G.AutoFarm then
        while _G.AutoFarm and task.wait() do
            pcall(function()
            for i, v in pairs(game:GetService("Workspace").Living:GetChildren()) do
                if v.Name == "Scary Monster" and v:FindFirstChild("Humanoid").Health ~= 0 and _G.AutoFarm == true then
                    workspace.Map.NPCs:FindFirstChild("Scared Noob").Done:FireServer()
                       workspace.Map.NPCs:FindFirstChild("Scared Noob").QuestDone:FireServer()
                    
                    repeat
                        task.wait()
                        pcall(function()
                            for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.CDgui.fortnite:GetChildren()) do
                                if v:IsA("Frame") and v.Textt.Text == "Punch" then
                                    
                                else
                                    game:GetService("Players").LocalPlayer.Character.StandEvents.M1:FireServer()
                                end
                            end
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kars") and ("Stand")  then
                                game:GetService("Players").LocalPlayer.Character.Stand:WaitForChild("HumanoidRootPart").CFrame = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
                            end
                            v.HumanoidRootPart.Anchored = true
                            if _G.AutoFarm == true then
                                game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,Disc2,Disc)                            else
                                game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0, 0, 4)
                            end
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Aura").Value == false   then
                                game:GetService("Players").LocalPlayer.Character.StandEvents.Summon:FireServer()
                            end
                        end)
                    until v:FindFirstChild("Humanoid").Health == 0 or _G.AutoFarm == false
                    
                    if _G.AutoFarm == true then
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 0, 1000))
                    end
                    if _G.AutoFarm == true then
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 10, 0))
                    end
                end
            end
            end)
        end
    end
end
if Monkill == "Giorno Giovanna [Lvl. 20+]" then

local b=loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()b:Notify({Title="Giorno Giovanna [Lvl. 20+]⚔",Description="Start Work ✅"},{OutlineColor=Color3.fromRGB(128,17,255),Time=1,Type="default"})wait(0.2)

_G.AutoFarm = ATKill
        if _G.AutoFarm then

        while _G.AutoFarm and task.wait() do
            pcall(function()
            for i, v in pairs(game:GetService("Workspace").Living:GetChildren()) do
                if v.Name == "Giorno Giovanna" and v:FindFirstChild("Humanoid").Health ~= 0 and _G.AutoFarm == true then
                    workspace.Map.NPCs.Koichi.Done:FireServer()
                       workspace.Map.NPCs.Koichi.QuestDone:FireServer()
                    
                    repeat
                        task.wait()
                        pcall(function()
                            for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.CDgui.fortnite:GetChildren()) do
                                if v:IsA("Frame") and v.Textt.Text == "Punch" then
                                    
                                else
                                    game:GetService("Players").LocalPlayer.Character.StandEvents.M1:FireServer()
                                end
                            end
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kars") and ("Stand")  then
                                game:GetService("Players").LocalPlayer.Character.Stand:WaitForChild("HumanoidRootPart").CFrame = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
                            end
                            
                            if _G.AutoFarm == true then
                                game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,Disc2,Disc)
                                else
                                game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0, 0, 4)
                            end
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Aura").Value == false   then
                                game:GetService("Players").LocalPlayer.Character.StandEvents.Summon:FireServer()
                            end
                        end)
                    until v:FindFirstChild("Humanoid").Health == 0 or _G.AutoFarm == false
                    
                    if _G.AutoFarm == true then
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 0, 1000))
                    end
                    if _G.AutoFarm == true then
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 10, 0))
                    end
                end
            end
            end)
        end
    end
end
if Monkill == "Rker Dummy [Lvl. 30+]" then

local b=loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()b:Notify({Title="Rker Dummy [Lvl. 30+]⚔",Description="Start Work ✅"},{OutlineColor=Color3.fromRGB(128,17,255),Time=1,Type="default"})wait(0.2)

_G.AutoFarm = ATKill
    
    if _G.AutoFarm then
        while _G.AutoFarm and task.wait() do
            pcall(function()
            for i, v in pairs(game:GetService("Workspace").Living:GetChildren()) do
                if v.Name == "Rker Dummy" and v:FindFirstChild("Humanoid").Health ~= 0 and _G.AutoFarm == true then
                    workspace.Map.NPCs.aLLmemester.Done:FireServer()
                       workspace.Map.NPCs.aLLmemester.QuestDone:FireServer()
                    
                    repeat
                        task.wait()
                        pcall(function()
                            for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.CDgui.fortnite:GetChildren()) do
                                if v:IsA("Frame") and v.Textt.Text == "Punch" then
                                    
                                else
                                    game:GetService("Players").LocalPlayer.Character.StandEvents.M1:FireServer()
                                end
                            end
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kars") and ("Stand")  then
                                game:GetService("Players").LocalPlayer.Character.Stand:WaitForChild("HumanoidRootPart").CFrame = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
                            end
                            v.HumanoidRootPart.Anchored = true
                            if _G.AutoFarm == true then
                                game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,Disc2,Disc)
                                else
                                game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0, 0, 4)
                            end
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Aura").Value == false   then
                                game:GetService("Players").LocalPlayer.Character.StandEvents.Summon:FireServer()
                            end
                        end)
                    until v:FindFirstChild("Humanoid").Health == 0 or _G.AutoFarm == false
                    
                    if _G.AutoFarm == true then
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 0, 1000))
                    end
                    if _G.AutoFarm == true then
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 10, 0))
                    end
                end
            end
            end)
        end
    end
end
if Monkill == "Yoshikage Kira [Lvl. 40+]" then

local b=loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()b:Notify({Title="Yoshikage Kira [Lvl. 40+]⚔",Description="Start Work ✅"},{OutlineColor=Color3.fromRGB(128,17,255),Time=1,Type="default"})wait(0.2)

_G.AutoFarm = ATKill
    
    if _G.AutoFarm then
        while _G.AutoFarm and task.wait() do
            pcall(function()
            for i, v in pairs(game:GetService("Workspace").Living:GetChildren()) do
                if v.Name == "Yoshikage Kira" and v:FindFirstChild("Humanoid").Health ~= 0 and _G.AutoFarm == true then
                    workspace.Map.NPCs.Okayasu.Done:FireServer()
                      workspace.Map.NPCs.Okayasu.QuestDone:FireServer()
                    
                    repeat
                        task.wait()
                        pcall(function()
                            for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.CDgui.fortnite:GetChildren()) do
                                if v:IsA("Frame") and v.Textt.Text == "Punch" then
                                    
                                else
                                    game:GetService("Players").LocalPlayer.Character.StandEvents.M1:FireServer()
                                end
                            end
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kars") and ("Stand")  then
                                game:GetService("Players").LocalPlayer.Character.Stand:WaitForChild("HumanoidRootPart").CFrame = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
                            end
                            
                            if _G.AutoFarm == true then
                                game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,Disc2,Disc)                            else
                                game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0, 0, 4)
                            end
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Aura").Value == false   then
                                game:GetService("Players").LocalPlayer.Character.StandEvents.Summon:FireServer()
                            end
                        end)
                    until v:FindFirstChild("Humanoid").Health == 0 or _G.AutoFarm == false
                    
                    if _G.AutoFarm == true then
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 0, 1000))
                    end
                    if _G.AutoFarm == true then
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 10, 0))
                    end
                end
            end
            end)
        end
    end
end
if Monkill == "Dio Over Heaven [Lvl. 50+]" then

local b=loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()b:Notify({Title="Dio Over Heaven [Lvl. 50+]⚔",Description="Start Work ✅"},{OutlineColor=Color3.fromRGB(128,17,255),Time=1,Type="default"})wait(0.2)

_G.AutoFarm = ATKill
    
    if _G.AutoFarm then
        while _G.AutoFarm and task.wait() do
            pcall(function()
            for i, v in pairs(game:GetService("Workspace").Living:GetChildren()) do
                if v.Name == "Dio Over Heaven" and v:FindFirstChild("Humanoid").Health ~= 0 and _G.AutoFarm == true then
                    workspace.Map.NPCs:FindFirstChild("Joseph Joestar").Done:FireServer()
                        workspace.Map.NPCs:FindFirstChild("Joseph Joestar").QuestDone:FireServer()
                    
                    repeat
                        task.wait()
                        pcall(function()
                            for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.CDgui.fortnite:GetChildren()) do
                                if v:IsA("Frame") and v.Textt.Text == "Punch" then
                                    
                                else
                                    game:GetService("Players").LocalPlayer.Character.StandEvents.M1:FireServer()
                                end
                            end
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kars") and ("Stand")  then
                                game:GetService("Players").LocalPlayer.Character.Stand:WaitForChild("HumanoidRootPart").CFrame = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
                            end
                            
                            if _G.AutoFarm == true then
                                game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,Disc2,Disc)
                                else
                                game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0, 0, 4)
                            end
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Aura").Value == false   then
                                game:GetService("Players").LocalPlayer.Character.StandEvents.Summon:FireServer()
                            end
                        end)
                    until v:FindFirstChild("Humanoid").Health == 0 or _G.AutoFarm == false
                    
                    if _G.AutoFarm == true then
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 0, 1000))
                    end
                    if _G.AutoFarm == true then
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 10, 0))
                    end
                end
            end
            end)
        end
    end
end
if Monkill == "Angelo [Lvl. 75+]" then

local b=loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()b:Notify({Title="Angelo [Lvl. 75+]⚔",Description="Start Work ✅"},{OutlineColor=Color3.fromRGB(128,17,255),Time=1,Type="default"})wait(0.2)

_G.AutoFarm = ATKill
    
    if _G.AutoFarm then
        while _G.AutoFarm and task.wait() do
            pcall(function()
            for i, v in pairs(game:GetService("Workspace").Living:GetChildren()) do
                if v.Name == "Angelo" and v:FindFirstChild("Humanoid").Health ~= 0 and _G.AutoFarm == true then
                    workspace.Map.NPCs.Josuke.Done:FireServer()
                       workspace.Map.NPCs.Josuke.QuestDone:FireServer()
                    
                    repeat
                        task.wait()
                        pcall(function()
                            for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.CDgui.fortnite:GetChildren()) do
                                if v:IsA("Frame") and v.Textt.Text == "Punch" then
                                    
                                else
                                    game:GetService("Players").LocalPlayer.Character.StandEvents.M1:FireServer()
                                end
                            end
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kars") and ("Stand")  then
                                game:GetService("Players").LocalPlayer.Character.Stand:WaitForChild("HumanoidRootPart").CFrame = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
                            end
                            v.HumanoidRootPart.Anchored = true
                            if _G.AutoFarm == true then
                                game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,Disc2,Disc)
                                else
                                game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0, 0, 4)
                            end
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Aura").Value == false   then
                                game:GetService("Players").LocalPlayer.Character.StandEvents.Summon:FireServer()
                            end
                        end)
                    until v:FindFirstChild("Humanoid").Health == 0 or _G.AutoFarm == false
                    
                    if _G.AutoFarm == true then
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 0, 1000))
                    end
                    if _G.AutoFarm == true then
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 10, 0))
                    end
                end
            end
            end)
        end
    end
end
if Monkill == "Alien [Lvl. 100+]" then

local b=loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()b:Notify({Title="Alien [Lvl. 100+]⚔",Description="Start Work ✅"},{OutlineColor=Color3.fromRGB(128,17,255),Time=1,Type="default"})wait(0.2)

_G.AutoFarm = ATKill
    
    if _G.AutoFarm then
        while _G.AutoFarm and task.wait() do
            pcall(function()
            for i, v in pairs(game:GetService("Workspace").Living:GetChildren()) do
                if v.Name == "Alien" and v:FindFirstChild("Humanoid").Health ~= 0 and _G.AutoFarm == true then
                    workspace.Map.NPCs.Rohan.Done:FireServer()
                       workspace.Map.NPCs.Rohan.QuestDone:FireServer()
                    
                    repeat
                        task.wait()
                        pcall(function()
                            for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.CDgui.fortnite:GetChildren()) do
                                if v:IsA("Frame") and v.Textt.Text == "Punch" then
                                    
                                else
                                    game:GetService("Players").LocalPlayer.Character.StandEvents.M1:FireServer()
                                end
                            end
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kars") and ("Stand")  then
                                game:GetService("Players").LocalPlayer.Character.Stand:WaitForChild("HumanoidRootPart").CFrame = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
                            end
                            v.HumanoidRootPart.Anchored = true
                            if _G.AutoFarm == true then
                                game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,Disc2,Disc)
                                else
                                game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0, 0, 4)
                            end
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Aura").Value == false   then
                                game:GetService("Players").LocalPlayer.Character.StandEvents.Summon:FireServer()
                            end
                        end)
                    until v:FindFirstChild("Humanoid").Health == 0 or _G.AutoFarm == false
                    
                    if _G.AutoFarm == true then
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 0, 1000))
                    end
                    if _G.AutoFarm == true then
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 10, 0))
                    end
                end
            end
            end)
        end
    end
end
if Monkill == "Jotaro Part 4 [Lvl. 125+]" then

local b=loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()b:Notify({Title="Jotaro Part 4 [Lvl. 125+]⚔",Description="Start Work ✅"},{OutlineColor=Color3.fromRGB(128,17,255),Time=1,Type="default"})wait(0.2)

_G.AutoFarm = ATKill
    
    if _G.AutoFarm then
        while _G.AutoFarm and task.wait() do
            pcall(function()
            for i, v in pairs(game:GetService("Workspace").Living:GetChildren()) do
                if v.Name == "Jotaro Part 4" and v:FindFirstChild("Humanoid").Health ~= 0 and _G.AutoFarm == true then
                    workspace.Map.NPCs.DIO.Done:FireServer()
                        workspace.Map.NPCs.DIO.QuestDone:FireServer()
                    
                    repeat
                        task.wait()
                        pcall(function()
                            for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.CDgui.fortnite:GetChildren()) do
                                if v:IsA("Frame") and v.Textt.Text == "Punch" then
                                    
                                else
                                    game:GetService("Players").LocalPlayer.Character.StandEvents.M1:FireServer()
                                end
                            end
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kars") and ("Stand")  then
                                game:GetService("Players").LocalPlayer.Character.Stand:WaitForChild("HumanoidRootPart").CFrame = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
                            end
                            
                            if _G.AutoFarm == true then
                                game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,Disc2,Disc)
                                else
                                game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0, 0, 4)
                            end
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Aura").Value == false   then
                                game:GetService("Players").LocalPlayer.Character.StandEvents.Summon:FireServer()
                            end
                        end)
                    until v:FindFirstChild("Humanoid").Health == 0 or _G.AutoFarm == false
                    
                    if _G.AutoFarm == true then
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 0, 1000))
                    end
                    if _G.AutoFarm == true then
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 10, 0))
                    end
                end
            end
            end)
        end
    end
end
if Monkill == "Kakyoin [Lvl. 150+]" then

local b=loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()b:Notify({Title="Kakyoin [Lvl. 150+]⚔",Description="Start Work ✅"},{OutlineColor=Color3.fromRGB(128,17,255),Time=1,Type="default"})wait(0.2)

_G.AutoFarm = ATKill
    
    if _G.AutoFarm then
        while _G.AutoFarm and task.wait() do
            pcall(function()
            for i, v in pairs(game:GetService("Workspace").Living:GetChildren()) do
                if v.Name == "Kakyoin" and v:FindFirstChild("Humanoid").Health ~= 0 and _G.AutoFarm == true then
                    workspace.Map.NPCs:FindFirstChild("Muhammed Avdol").QuestDone:FireServer()
                      workspace.Map.NPCs:FindFirstChild("Muhammed Avdol").Done:FireServer()
                    
                    repeat
                        task.wait()
                        pcall(function()
                            for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.CDgui.fortnite:GetChildren()) do
                                if v:IsA("Frame") and v.Textt.Text == "Punch" then
                                    
                                else
                                    game:GetService("Players").LocalPlayer.Character.StandEvents.M1:FireServer()
                                end
                            end
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kars") and ("Stand")  then
                                game:GetService("Players").LocalPlayer.Character.Stand:WaitForChild("HumanoidRootPart").CFrame = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
                            end
                           
                            if _G.AutoFarm == true then
                                game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,Disc2,Disc)
                                else
                                game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0, 0, 4)
                            end
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Aura").Value == false   then
                                game:GetService("Players").LocalPlayer.Character.StandEvents.Summon:FireServer()
                            end
                        end)
                    until v:FindFirstChild("Humanoid").Health == 0 or _G.AutoFarm == false
                    
                    if _G.AutoFarm == true then
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 0, 1000))
                    end
                    if _G.AutoFarm == true then
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 10, 0))
                    end
                end
            end
            end)
        end
    end
end
if Monkill == "Sewer Vampire [Lvl. 200+]" then

local b=loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()b:Notify({Title="Sewer Vampire [Lvl. 200+]⚔",Description="Start Work ✅"},{OutlineColor=Color3.fromRGB(128,17,255),Time=1,Type="default"})wait(0.2)

_G.AutoFarm = ATKill
    
    if _G.AutoFarm then
        while _G.AutoFarm and task.wait() do
            pcall(function()
            for i, v in pairs(game:GetService("Workspace").Living:GetChildren()) do
                if v.Name == "Sewer Vampire" and v:FindFirstChild("Humanoid").Health ~= 0 and _G.AutoFarm == true then
                    game:GetService("Workspace").Map.NPCs["Zeppeli"].QuestDone:FireServer() 
                     game:GetService("Workspace").Map.NPCs["Zeppeli"].Done:FireServer() 
                    
                    repeat
                        task.wait()
                        pcall(function()
                            for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.CDgui.fortnite:GetChildren()) do
                                if v:IsA("Frame") and v.Textt.Text == "Punch" then
                                    
                                else
                                    game:GetService("Players").LocalPlayer.Character.StandEvents.M1:FireServer()
                                end
                            end
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kars") and ("Stand")  then
                                game:GetService("Players").LocalPlayer.Character.Stand:WaitForChild("HumanoidRootPart").CFrame = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
                            end
                            v.HumanoidRootPart.Anchored = true
                            if _G.AutoFarm == true then
                                game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,Disc2,Disc)                            
                                else
                                game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0, 0, 4)
                            end
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Aura").Value == false   then
                                game:GetService("Players").LocalPlayer.Character.StandEvents.Summon:FireServer()
                            end
                        end)
                    until v:FindFirstChild("Humanoid").Health == 0 or _G.AutoFarm == false
                    
                    if _G.AutoFarm == true then
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 0, 1000))
                    end
                    if _G.AutoFarm == true then
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 10, 0))
                    end
                end
            end
            end)
        end
    end
end
if Monkill == "Pillerman [Lvl. 275+]" then

local b=loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()b:Notify({Title="Pillerman [Lvl. 275+]⚔",Description="Start Work ✅"},{OutlineColor=Color3.fromRGB(128,17,255),Time=1,Type="default"})wait(0.2)

_G.AutoFarm = ATKill
    
    if _G.AutoFarm then
        while _G.AutoFarm and task.wait() do
            pcall(function()
            for i, v in pairs(game:GetService("Workspace").Living:GetChildren()) do
                if v.Name == "Pillerman" and v:FindFirstChild("Humanoid").Health ~= 0 and _G.AutoFarm == true then
                    game:GetService("Workspace").Map.NPCs["Young Joseph"].Done:FireServer() 
                      game:GetService("Workspace").Map.NPCs["Young Joseph"].QuestDone:FireServer()
                      
                    repeat
                        task.wait()
                        pcall(function()
                            for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.CDgui.fortnite:GetChildren()) do
                                if v:IsA("Frame") and v.Textt.Text == "Punch" then
                                    
                                else
                                    game:GetService("Players").LocalPlayer.Character.StandEvents.M1:FireServer()
                                end
                            end
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kars") and ("Stand")  then
                                game:GetService("Players").LocalPlayer.Character.Stand:WaitForChild("HumanoidRootPart").CFrame = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
                            end
                            v.HumanoidRootPart.Anchored = true
                            if _G.AutoFarm == true then
                                game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,Disc2,Disc)
                            else
                                game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0, 0, 4)
                            end
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Aura").Value == false   then
                                game:GetService("Players").LocalPlayer.Character.StandEvents.Summon:FireServer()
                            end
                        end)
                    until v:FindFirstChild("Humanoid").Health == 0 or _G.AutoFarm == false
                    
                    if _G.AutoFarm == true then
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 0, 1000))
                    end
                    if _G.AutoFarm == true then
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 10, 0))
                    end
                end
            end
            end)
        end
    end
end
end)

--]] ฟาร์มบอส โจทาโร่-นักบุญ


local Section = Tab:NewSection("Farm Boss Johnny Joestar-Jotaro Over Heaven")

Section:NewToggle("Auto Kill Johnny Joestar", "Click to Kill", function(AuKN)
    _G.AutoFarm = AuKN
    
    local Target = "Pillerman"
    if _G.AutoFarm then
        while _G.AutoFarm and task.wait() do
            pcall(function()
            for i, v in pairs(game:GetService("Workspace").Living:GetChildren()) do
                if v.Name == "JohnnyJoestar" and v:FindFirstChild("Humanoid").Health ~= 0 and _G.AutoFarm == true then
                    
                    
                    repeat
                        task.wait()
                        pcall(function()
                            for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.CDgui.fortnite:GetChildren()) do
                                if v:IsA("Frame") and v.Textt.Text == "Punch" then
                                    
                                else
                                    game:GetService("Players").LocalPlayer.Character.StandEvents.M1:FireServer()
                                end
                            end
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kars") and ("Stand")  then
                                game:GetService("Players").LocalPlayer.Character.Stand:WaitForChild("HumanoidRootPart").CFrame = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
                            end
                            if _G.AutoFarm == true then
                                game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,Disc2,Disc) -- -593.952698, 66.6276474, -783.119934, -0.707110405, -5.96460623e-08, -0.707103133, -8.71555841e-08, 1, 2.80376944e-09, 0.707103133, 6.36105568e-08, -0.707110405
                            end
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Aura").Value == false   then
                                game:GetService("Players").LocalPlayer.Character.StandEvents.Summon:FireServer()
                            end
                        end)
                    until v:FindFirstChild("Humanoid").Health == 0 or _G.AutoFarm == false
                                        for i,v in pairs(game:GetService("Workspace").Items:GetChildren()) do
   if v.ClassName == "Tool" then
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChild("Handle").CFrame
   end
end
                end
            end
            end)
        end
    end
end)

Section:NewToggle("Auto Kill Jotaro Over Heaven", "Click to Kill", function(AuKJ)
    _G.AutoFarm = AuKJ
local b=loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()b:Notify({Title="📒Jotaro Over Heaven📒",Description="Start Work ✅"},{OutlineColor=Color3.fromRGB(128,17,255),Time=1,Type="default"})wait(0.2)

    local Target = "Pillerman"
    if _G.AutoFarm then
        while _G.AutoFarm and task.wait() do
            pcall(function()
            for i, v in pairs(game:GetService("Workspace").Living:GetChildren()) do
                if v.Name == "Jotaro Over Heaven" and v:FindFirstChild("Humanoid").Health ~= 0 and _G.AutoFarm == true then
                    
                    
                    repeat
                        task.wait()
                        pcall(function()
                            for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.CDgui.fortnite:GetChildren()) do
                                if v:IsA("Frame") and v.Textt.Text == "Punch" then
                                    
                                else
                                    game:GetService("Players").LocalPlayer.Character.StandEvents.M1:FireServer()
                                end
                            end
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kars") and ("Stand")  then
                                game:GetService("Players").LocalPlayer.Character.Stand:WaitForChild("HumanoidRootPart").CFrame = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
                            end
                            
                            if _G.AutoFarm == true then
                                game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,Disc2,Disc) -- -593.952698, 66.6276474, -783.119934, -0.707110405, -5.96460623e-08, -0.707103133, -8.71555841e-08, 1, 2.80376944e-09, 0.707103133, 6.36105568e-08, -0.707110405
                            end
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Aura").Value == false   then
                                game:GetService("Players").LocalPlayer.Character.StandEvents.Summon:FireServer()
                            end
                        end)
                    until v:FindFirstChild("Humanoid").Health == 0 or _G.AutoFarm == false
                    for i,v in pairs(game:GetService("Workspace").Items:GetChildren()) do
   if v.ClassName == "Tool" then
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChild("Handle").CFrame
   end
end
                end
            end
            end)
        end
    end
end)

Section:NewToggle("PaPer farm", "ToggleInfo", function(AuKN)
    _G.AutoFarm = AuKN
    local b=loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()b:Notify({Title="📃PaPer📃",Description="Start Work ✅"},{OutlineColor=Color3.fromRGB(128,17,255),Time=1,Type="default"})wait(0.2)

    local Target = "Pillerman"
    if _G.AutoFarm then
        while _G.AutoFarm and task.wait() do
            pcall(function()
            for i, v in pairs(game:GetService("Workspace").Living:GetChildren()) do
                if v.Name == "Alternate Jotaro Part 4" and v:FindFirstChild("Humanoid").Health ~= 0 and _G.AutoFarm == true then
                    
                    
                    repeat
                        task.wait()
                        pcall(function()
                            for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.CDgui.fortnite:GetChildren()) do
                                if v:IsA("Frame") and v.Textt.Text == "Punch" then
                                    
                                else
                                    game:GetService("Players").LocalPlayer.Character.StandEvents.M1:FireServer()
                                end
                            end
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kars") and ("Stand")  then
                                game:GetService("Players").LocalPlayer.Character.Stand:WaitForChild("HumanoidRootPart").CFrame = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
                            end
                            
                            if _G.AutoFarm == true then
                                game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,Disc2,Disc) -- -593.952698, 66.6276474, -783.119934, -0.707110405, -5.96460623e-08, -0.707103133, -8.71555841e-08, 1, 2.80376944e-09, 0.707103133, 6.36105568e-08, -0.707110405
                            end
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Aura").Value == false   then
                                game:GetService("Players").LocalPlayer.Character.StandEvents.Summon:FireServer()
                            end
                        end)
                    until v:FindFirstChild("Humanoid").Health == 0 or _G.AutoFarm == false
                    
                    if _G.AutoFarm == true then
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 0, 1000))
                    end
                    if _G.AutoFarm == true then
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 10, 0))
                    end
                end
            end
            end)
        end
    end
end)

--]] ลงดัน

local Section = Tab:NewSection("Auto Farm Dungeon")
local DunLvl = {
    "Dungeon [Lvl.15+]",
    "Dungeon [Lvl.40+]",
    "Dungeon [Lvl.80+]",
    "Dungeon [Lvl.100+]",
    "Dungeon [Lvl.200+]",
}
Section:NewDropdown("Choose Dungeon", "", DunLvl, function(AuDun)
local b=loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()b:Notify({Title="Press Start Farm Dungeon✅",Description="Saving the Dungeon please wait......✅"},{OutlineColor=Color3.fromRGB(128,17,255),Time=2,Type="default"})wait(0.2)
   ChDun = AuDun
end)

Section:NewToggle("Start Farm Dungeon", "", function(AuFDun)
    if ChDun == "Dungeon [Lvl.15+]" then
    _G.AutoFarm1 = AuFDun

    if _G.AutoFarm1 then
        while _G.AutoFarm1 and task.wait() do
for i,v in pairs(game:GetService("Workspace").Map.NPCs:GetDescendants()) do
if v.Name == "i_stabman" or v.Name == "i_stabman [Lvl. 15+]" or v.Name == "i_stabman [Lvl. 40+]" or v.Name == "i_stabman [Lvl. 80+]" or v.Name == "i_stabman [Lvl. 100+]" or v.Name == "i_stabman [Lvl. 200+]" then
      if v:FindFirstChild("Head").Main.Text.Text == "i_stabman [Lvl. 15+]" then
          v:FindFirstChild("Done"):FireServer()
      end
   end
end
            pcall(function()
            for i, v in pairs(game:GetService("Workspace").Living:GetChildren()) do
                if v.Name == "Boss" and v:FindFirstChild("Humanoid").Health ~= 0 and _G.AutoFarm1 == true then
                    if v.Head.Display.Frame.t.Text == "Bad Gi Boss" then
                    repeat
                        task.wait()
                        pcall(function()
                            for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.CDgui.fortnite:GetChildren()) do
                                if v:IsA("Frame") and v.Textt.Text == "Punch" then
                                    
                                else
                                    game:GetService("Players").LocalPlayer.Character.StandEvents.M1:FireServer()
                                end
                            end
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kars") and ("Stand")  then
                                game:GetService("Players").LocalPlayer.Character.Stand:WaitForChild("HumanoidRootPart").CFrame = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
                            end
                            if _G.AutoFarm1 == true then
                                game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,Disc2,Disc) -- -593.952698, 66.6276474, -783.119934, -0.707110405, -5.96460623e-08, -0.707103133, -8.71555841e-08, 1, 2.80376944e-09, 0.707103133, 6.36105568e-08, -0.707110405
                            else
                                game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health = 0
                            end
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Aura").Value == false   then
                                game:GetService("Players").LocalPlayer.Character.StandEvents.Summon:FireServer()
                            end
                        end)
                    until v:FindFirstChild("Humanoid").Health == 0 or _G.AutoFarm1 == false
                    
                    if _G.AutoFarm1 == true then
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 0, 1000))
                    end
                    if _G.AutoFarm1 == true then
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 10, 0))
                    end
                    end
            end
            end
            end)
        end
    end
    end
    if ChDun == "Dungeon [Lvl.40+]" then
    _G.AutoFarm3 = AuFDun



    if _G.AutoFarm3 then
        while _G.AutoFarm3 and task.wait() do
for i,v in pairs(game:GetService("Workspace").Map.NPCs:GetDescendants()) do
if v.Name == "i_stabman" or v.Name == "i_stabman [Lvl. 15+]" or v.Name == "i_stabman [Lvl. 40+]" or v.Name == "i_stabman [Lvl. 80+]" or v.Name == "i_stabman [Lvl. 100+]" or v.Name == "i_stabman [Lvl. 200+]" then
      if v:FindFirstChild("Head").Main.Text.Text == "i_stabman [Lvl. 40+]" then
          v:FindFirstChild("Done"):FireServer()
      end
   end
end
            pcall(function()
            for i, v in pairs(game:GetService("Workspace").Living:GetChildren()) do
                if v.Name == "Boss" and v:FindFirstChild("Humanoid").Health ~= 0 and _G.AutoFarm3 == true then
                if v.Head.Display.Frame.t.Text == "Dio [Dungeon]" then
                    repeat
                        task.wait()
                        pcall(function()
                            for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.CDgui.fortnite:GetChildren()) do
                                if v:IsA("Frame") and v.Textt.Text == "Punch" then
                                    
                                else
                                    game:GetService("Players").LocalPlayer.Character.StandEvents.M1:FireServer()
                                end
                            end
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kars") and ("Stand")  then
                                game:GetService("Players").LocalPlayer.Character.Stand:WaitForChild("HumanoidRootPart").CFrame = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
                            end
                            if _G.AutoFarm3 == true then
                                game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,Disc2,Disc) -- -593.952698, 66.6276474, -783.119934, -0.707110405, -5.96460623e-08, -0.707103133, -8.71555841e-08, 1, 2.80376944e-09, 0.707103133, 6.36105568e-08, -0.707110405
                            else
                                game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health = 0
                            end
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Aura").Value == false   then
                                game:GetService("Players").LocalPlayer.Character.StandEvents.Summon:FireServer()
                            end
                        end)
                    until v:FindFirstChild("Humanoid").Health == 0 or _G.AutoFarm3 == false
                    
                    if _G.AutoFarm3 == true then
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 0, 1000))
                    end
                    if _G.AutoFarm3 == true then
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 10, 0))
                    end
                end
                end
        end
            end)
        end
    end
    end
    if ChDun == "Dungeon [Lvl.80+]" then
    _G.AutoFarm4 = AuFDun
    if _G.AutoFarm4 then
        while _G.AutoFarm4 and task.wait() do
for i,v in pairs(game:GetService("Workspace").Map.NPCs:GetDescendants()) do
if v.Name == "i_stabman" or v.Name == "i_stabman [Lvl. 15+]" or v.Name == "i_stabman [Lvl. 40+]" or v.Name == "i_stabman [Lvl. 80+]" or v.Name == "i_stabman [Lvl. 100+]" or v.Name == "i_stabman [Lvl. 200+]" then
      if v:FindFirstChild("Head").Main.Text.Text == "i_stabman [Lvl. 80+]" then
          v:FindFirstChild("Done"):FireServer()
      end
   end
end
            for i, v in pairs(game:GetService("Workspace").Living:GetChildren()) do
                if v.Name == "Boss" and v:FindFirstChild("Humanoid").Health ~= 0 and _G.AutoFarm4 == true then
                    if v.Head.Display.Frame.t.Text == "Homeless Lord" then
                    repeat
                        task.wait()
                        pcall(function()
                            for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.CDgui.fortnite:GetChildren()) do
                                if v:IsA("Frame") and v.Textt.Text == "Punch" then
                                    
                                else
                                    game:GetService("Players").LocalPlayer.Character.StandEvents.M1:FireServer()
                                end
                            end
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kars") and ("Stand")  then
                                game:GetService("Players").LocalPlayer.Character.Stand:WaitForChild("HumanoidRootPart").CFrame = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
                            end
                            if _G.AutoFarm4 == true then
                                game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,Disc2,Disc) -- -593.952698, 66.6276474, -783.119934, -0.707110405, -5.96460623e-08, -0.707103133, -8.71555841e-08, 1, 2.80376944e-09, 0.707103133, 6.36105568e-08, -0.707110405
                            else
                                game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health = 0
                            end
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Aura").Value == false   then
                                game:GetService("Players").LocalPlayer.Character.StandEvents.Summon:FireServer()
                            end
                        end)
                    until v:FindFirstChild("Humanoid").Health == 0 or _G.AutoFarm2 == false
                    
                    if _G.AutoFarm4 == true then
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 0, 1000))
                    end
                    if _G.AutoFarm4 == true then
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 10, 0))
                    end
                    end
            end
            end
        end
    end
    end
    if ChDun == "Dungeon [Lvl.100+]" then
    _G.AutoFarm4 = AuFDun


    if _G.AutoFarm4 then
        while _G.AutoFarm4 and task.wait() do
for i,v in pairs(game:GetService("Workspace").Map.NPCs:GetDescendants()) do
if v.Name == "i_stabman" or v.Name == "i_stabman [Lvl. 15+]" or v.Name == "i_stabman [Lvl. 40+]" or v.Name == "i_stabman [Lvl. 80+]" or v.Name == "i_stabman [Lvl. 100+]" or v.Name == "i_stabman [Lvl. 200+]" then
      if v:FindFirstChild("Head").Main.Text.Text == "i_stabman [Lvl. 100+]" then
          v:FindFirstChild("Done"):FireServer()
      end
   end
end
            for i, v in pairs(game:GetService("Workspace").Living:GetChildren()) do
                if v.Name == "Boss" and v:FindFirstChild("Humanoid").Health ~= 0 and _G.AutoFarm4 == true then
                if v.Head.Display.Frame.t.Text == "Diavolo [Dungeon]" then
                    repeat
                        task.wait()
                        pcall(function()
                            for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.CDgui.fortnite:GetChildren()) do
                                if v:IsA("Frame") and v.Textt.Text == "Punch" then
                                    
                                else
                                    game:GetService("Players").LocalPlayer.Character.StandEvents.M1:FireServer()
                                end
                            end
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kars") and ("Stand")  then
                                game:GetService("Players").LocalPlayer.Character.Stand:WaitForChild("HumanoidRootPart").CFrame = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
                            end
                            if _G.AutoFarm4 == true then
                                game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,Disc2,Disc) -- -593.952698, 66.6276474, -783.119934, -0.707110405, -5.96460623e-08, -0.707103133, -8.71555841e-08, 1, 2.80376944e-09, 0.707103133, 6.36105568e-08, -0.707110405
                            else
                                game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health = 0
                            end
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Aura").Value == false   then
                                game:GetService("Players").LocalPlayer.Character.StandEvents.Summon:FireServer()
                            end
                        end)
                    until v:FindFirstChild("Humanoid").Health == 0 or _G.AutoFarm4 == false
                    
                    if _G.AutoFarm4 == true then
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 0, 1000))
                    end
                    if _G.AutoFarm4 == true then
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 10, 0))
                    end
                end
                end
        end
        end
    end
    end
    if ChDun == "Dungeon [Lvl.200+]" then
    _G.AutoFarm5 = AuFDun

    if _G.AutoFarm5 then
        while _G.AutoFarm5 and task.wait() do
for i,v in pairs(game:GetService("Workspace").Map.NPCs:GetDescendants()) do
if v.Name == "i_stabman" or v.Name == "i_stabman [Lvl. 15+]" or v.Name == "i_stabman [Lvl. 40+]" or v.Name == "i_stabman [Lvl. 80+]" or v.Name == "i_stabman [Lvl. 100+]" or v.Name == "i_stabman [Lvl. 200+]" then
      if v:FindFirstChild("Head").Main.Text.Text == "i_stabman [Lvl. 200+]" then
          v:FindFirstChild("Done"):FireServer()
      end
   end
end
            pcall(function()
            for i, v in pairs(game:GetService("Workspace").Living:GetChildren()) do
                if v.Name == "Boss" and v:FindFirstChild("Humanoid").Health ~= 0 and _G.AutoFarm5 == true then
                if v.Head.Display.Frame.t.Text == "Jotaro P6 [Dungeon]" then
                    repeat
                        task.wait()
                        pcall(function()
                            for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.CDgui.fortnite:GetChildren()) do
                                if v:IsA("Frame") and v.Textt.Text == "Punch" then
                                    
                                else
                                    game:GetService("Players").LocalPlayer.Character.StandEvents.M1:FireServer()
                                end
                            end
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kars") and ("Stand")  then
                                game:GetService("Players").LocalPlayer.Character.Stand:WaitForChild("HumanoidRootPart").CFrame = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
                            end
                            if _G.AutoFarm5 == true then
                                game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,Disc2,Disc) -- -593.952698, 66.6276474, -783.119934, -0.707110405, -5.96460623e-08, -0.707103133, -8.71555841e-08, 1, 2.80376944e-09, 0.707103133, 6.36105568e-08, -0.707110405
                            else
                                game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health = 0
                            end
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Aura").Value == false   then
                                game:GetService("Players").LocalPlayer.Character.StandEvents.Summon:FireServer()
                            end
                        end)
                    until v:FindFirstChild("Humanoid").Health == 0 or _G.AutoFarm5 == false
                    
                    if _G.AutoFarm5 == true then
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 0, 1000))
                    end
                    if _G.AutoFarm5 == true then
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 10, 0))
                    end
                end
                end
        end
            end)
        end
    end
    end
end)

local Section = Tab:NewSection("Farm Female Immortal Dummy")
Section:NewToggle("Auto Farm Dummy", "ToggleInfo", function(t)
_G.AutoFarm = t
    
    local Target = "Pillerman"
    if _G.AutoFarm then
        while _G.AutoFarm and task.wait() do
            pcall(function()
            for i, v in pairs(game:GetService("Workspace").Living:GetChildren()) do
                if v.Name == "Female Immortal Dummy" and v:FindFirstChild("Humanoid").Health ~= 0 and _G.AutoFarm == true then
                    
                    
                    repeat
                        task.wait()
                        pcall(function()
                            for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.CDgui.fortnite:GetChildren()) do
                                if v:IsA("Frame") and v.Textt.Text == "Punch" then
                                    
                                else
                                    game:GetService("Players").LocalPlayer.Character.StandEvents.M1:FireServer()
                                end
                            end
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kars") and ("Stand")  then
                                game:GetService("Players").LocalPlayer.Character.Stand:WaitForChild("HumanoidRootPart").CFrame = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
                            end
                            if _G.AutoFarm == true then
                                game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0, -4, 3, 0.5, 0, 0, 1) -- -593.952698, 66.6276474, -783.119934, -0.707110405, -5.96460623e-08, -0.707103133, -8.71555841e-08, 1, 2.80376944e-09, 0.707103133, 6.36105568e-08, -0.707110405
                            else
                                game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0, 0, 4)
                            end
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
                            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Aura").Value == false   then
                                game:GetService("Players").LocalPlayer.Character.StandEvents.Summon:FireServer()
                            end
                        end)
                    until v:FindFirstChild("Humanoid").Health == 0 or _G.AutoFarm == false
                    
                    if _G.AutoFarm == true then
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 0, 1000))
                    end
                    if _G.AutoFarm == true then
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 10, 0))
                    end
                end
            end
            end)
        end
    end
end)

local Tab = Window:NewTab("Auto Buy Item ")
local Section = Tab:NewSection("ไปยืนไกล้ๆNpc และ ใส่จำนวนของก่อนกดซื้อ")

Section:NewButton("วาปไปจุดซื้อของ", "TextboxInfo", function()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(11927.1, -3.28935, -4488.59)
    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Stand") then
        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Stand").HumanoidRootPart.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
    end
end)
Section:NewTextBox("ใส่จำนวนที่จะซื้อ", "TextboxInfo", function(A)
    if tonumber(A) then
        if tonumber(A) >= 1 then
            Amount = tonumber(A)
            CreateNotification("Arctic", "Amount Set To : "..tostring(Amount), {})
        else
            CreateNotification("Arctic", "Please Set The Number Above 0+", {})
        end
    end
end)
Section:NewButton("Rokakaka ( 2,500c )", "Click To Teleport", function()

    for i = 1, Amount, 1 do
        game:GetService("ReplicatedStorage").Events.BuyItem:FireServer("MerchantAU", "Option2")
    end
end)

Section:NewButton("Stand Arrow ( 3,500c )", "Click To Teleport", function()
    for i = 1, Amount, 1 do
        game:GetService("ReplicatedStorage").Events.BuyItem:FireServer("MerchantAU", "Option4")
    end
end)

Section:NewButton("Charged Arrow ( 50,000c )", "Click To Teleport", function()
    for i = 1, Amount, 1 do
        game:GetService("ReplicatedStorage").Events.BuyItem:FireServer("Merchantlvl120", "Option2")
    end
end)

Section:NewButton("Dio Diary ( 1,500,000c )", "Click To Teleport", function()
    for i = 1, Amount, 1 do
        game:GetService("ReplicatedStorage").Events.BuyItem:FireServer("Merchantlvl120", "Option3")
    end
end)

Section:NewButton("Requiem Arrow ( 1,500,000c )", "Click To Teleport", function()
    for i = 1, Amount, 1 do
        game:GetService("ReplicatedStorage").Events.BuyItem:FireServer("Merchantlvl120", "Option4")
    end
end)

local Tab = Window:NewTab("Farm Stand")
local Section = Tab:NewSection("Stand Storage")
Section:NewButton("open stand storage", "Click to Use", function()
workspace.Map.NPCs.admpn.Done:FireServer()
end)

Section:NewButton("Farm Stand-Farm item", "Click ", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EVILDARKSIDEUPV1/scriptfarmstandvip/main/SCRIPT%20FARMSTAND.md"))()
        end)
        
local Tab = Window:NewTab("AFK 20 Minute")
local Section = Tab:NewSection("ห้ามให้จอดับหากว่าพักหน้าจอหรือจอดับก็หลุด")
Section:NewButton("AFK", "Click To Teleport", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EVILDARKSIDEUPV1/afk/main/README.md"))()
        end)        
        
        
local Tab = Window:NewTab("PVP")
local Section = Tab:NewSection("FOV-Fly")
Section:NewButton("FOV", "Click To Teleport", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EVILDARKSIDEUPV1/FOV/main/README.md"))()
        end)
Section:NewButton("Fly", "Click To Teleport", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EVILDARKSIDEUPV1/fly/main/README.md"))()
        end)
Section:NewButton("map", "Click To Teleport", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EVILDARKSIDEUPV1/map/main/README.md"))()
        end)
        
        

local Tab = Window:NewTab("Fps")
local Section = Tab:NewSection("Boot Fps 1")
Section:NewButton("Click Boot", "Click To Teleport", function()
        loadstring(game:HttpGet("https://pastebin.com/raw/qtu4MBV0"))()
        end)
        local Section = Tab:NewSection("Boot Fps 2")
        Section:NewButton("Click Boot", "Click To Teleport", function()
        _G.Settings = {
    Players = {
        ["Ignore Me"] = true, -- Ignore your Character
        ["Ignore Others"] = true-- Ignore other Characters
    },
    Meshes = {
        Destroy = false, -- Destroy Meshes
        LowDetail = true -- Low detail meshes (NOT SURE IT DOES ANYTHING)
    },
    Images = {
        Invisible = true, -- Invisible Images
        LowDetail = false, -- Low detail images (NOT SURE IT DOES ANYTHING)
        Destroy = false, -- Destroy Images
    },
    ["No Particles"] = true, -- Disables all ParticleEmitter, Trail, Smoke, Fire and Sparkles
    ["No Camera Effects"] = true, -- Disables all PostEffect's (Camera/Lighting Effects)
    ["No Explosions"] = true, -- Makes Explosion's invisible
    ["No Clothes"] = true, -- Removes Clothing from the game
    ["Low Water Graphics"] = true, -- Removes Water Quality
    ["No Shadows"] = true, -- Remove Shadows
    ["Low Rendering"] = true, -- Lower Rendering
    ["Low Quality Parts"] = true -- Lower quality parts
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/CasperFlyModz/discord.gg-rips/main/FPSBooster.lua"))()
          end)
            Section:NewButton("Draggable FPS Viewer", "ButtonInfo", function()
    -- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.ClipsDescendants = true
Frame.Position = UDim2.new(0.022813689, 0, 0.0541082174, 0)
Frame.Size = UDim2.new(0, 79, 0, 56)

UICorner.Parent = Frame

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.129077807, 0, 0.400000036, 0)
TextLabel.Size = UDim2.new(0, 31, 0, 30)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "60"
TextLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
TextLabel.TextSize = 34.000
TextLabel.TextWrapped = true

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(0.127986133, 0, 0.132142887, 0)
TextLabel_2.Size = UDim2.new(0, 29, 0, 15)
TextLabel_2.Font = Enum.Font.SourceSansBold
TextLabel_2.Text = "FPS"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 0, 0)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 34.000
TextLabel_2.TextWrapped = true

-- Scripts:

local function GZAQCE_fake_script() -- TextLabel.LocalScript 
	local script = Instance.new('LocalScript', TextLabel)

	local textLabel = script.Parent
	
	local runService = game:GetService("RunService")
	
	local goodFPS = 30
	local okFPS = 15
	
	runService.RenderStepped:Connect(function()
	
		local currentFPS = workspace:GetRealPhysicsFPS()
		textLabel.Text = math.floor(currentFPS)..""
	
		if currentFPS >= goodFPS then
	
			textLabel.TextColor3 = Color3.new(0,1,0)
	
		elseif currentFPS >= okFPS then
	
			textLabel.TextColor3 = Color3.new(1, 0.333333, 0)
	
		else
	
			textLabel.TextColor3 = Color3.new(1,0,0)
	
		end
	
	end)
end
coroutine.wrap(GZAQCE_fake_script)()
local function JMWW_fake_script() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)

	script.Parent.Draggable = true
	script.Parent.Active = true
	
end
coroutine.wrap(JMWW_fake_script)()
end)

local Tab = Window:NewTab("")
local Section = Tab:NewSection("KeybindInfo")
Section:NewKeybind("KeybindText", "KeybindInfo", Enum.KeyCode.RightControl, function()
	Library:ToggleUI()
end)
