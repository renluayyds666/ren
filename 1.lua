function TurnInvisible()
	if IsInvis == true then return end
	IsInvis = true
	CF = workspace.CurrentCamera.CFrame
	local CF_1 = lp.Character.HumanoidRootPart.CFrame
	lp.Character.HumanoidRootPart.CFrame=CFrame.new(9e9, 9e9, 9e9)
	freezecam(true)
	wait(.6)
	freezecam(false)
	InvisibleCharacter = InvisibleCharacter
	Character0.Parent = game:GetService'Lighting'
	InvisibleCharacter.Parent = workspace
	InvisibleCharacter.HumanoidRootPart.CFrame = CF_1
	lp.Character = InvisibleCharacter
	FixCam()
	lp.Character.Animate.Disabled = true
	lp.Character.Animate.Disabled = false
end

function TurnVisible()
	if IsInvis == false then return end
	CF = workspace.CurrentCamera.CFrame
	Character0 = Character0
	local CF_1 = lp.Character.HumanoidRootPart.CFrame
	Character0.HumanoidRootPart.CFrame = CF_1
	InvisibleCharacter.Parent = game:GetService'Lighting'
	lp.Character = Character0
	Character0.Parent = workspace
	IsInvis = false
	FixCam()
	lp.Character.Animate.Disabled = true
	lp.Character.Animate.Disabled = false
end

loadstring(game:HttpGet("https://pastebin.com/raw/6xQ5gtbj"))();
local ui = loadstring(game:HttpGet"https://pastebin.com/raw/E9PzvbeX")()
local window = ui:new("忍 脚 本")

local UITab1 = window:Tab("UI设置",'6035145364')
local GYTab1 = window:Tab("关于",'6035145364')
local Player1 = window:Tab("基础功能",'6035145364')
local DoorsTab1 = window:Tab("Doors",'6035145364')
local FMTab1 = window:Tab("伐木大亨2",'6035145364')
local JY1 = window:Tab("监狱人生",'6035145364')
local JS1 = window:Tab("极速传奇",'6035145364')
local Tab1 = window:Tab("脚本中心",'6035145364')
local rc1 = window:Tab("rc",'6035145364')
local UITab = UITab1:section("UI设置",true)
local rc = rc1:section("UI设置",true)
local GYTab = GYTab1:section("作者",true)
local Player = Player1:section("基础功能",true)
local DoorsZWTab = DoorsTab1:section("中文脚本",false)
local DoorsZHTab = DoorsTab1:section("招换物品",false)
local DoorsQTTab = DoorsTab1:section("其他",false)
local DoorsTab = DoorsTab1:section("英语脚本",false)
local FMTab = FMTab1:section("伐木大亨2",true)
local JY = JY1:section("监狱人生",true)
local JS = JS1:section("极速传奇",true)
local Tab = Tab1:section("脚本中心",true)

GYTab:Button("作者：123fa98", function()
setclipboard("123fa98")
end)
GYTab:Button("作者QQ：397510573", function()
setclipboard("397510573")
end)


    UITab:Button("摧毁UI",function()
        game:GetService("CoreGui")["frosty"]:Destroy()
    end)

    UITab:Toggle("彩虹UI", "", false, function(state)
        if state then
        game:GetService("CoreGui")["frosty"].Main.Style = "DropShadow"
        else
            game:GetService("CoreGui")["frosty"].Main.Style = "Custom"
        end
    end)

Player:Button("飞行", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/28CWNSrK"))()
end)
Player:Button("阿尔宙斯飞行", function()
     loadstring(game:HttpGet('https://pastebin.com/raw/jQTcRnqz'))();
end)
JS:Button("极速传奇", function()
      loadstring(game:HttpGet('https://pastebin.com/raw/rqnKXF4h'))();
end)
Player:Button("点击传送工具", function()
    mouse = game.Players.LocalPlayer:GetMouse() tool = Instance.new("Tool") tool.RequiresHandle = false tool.Name = "作者:397510573" tool.Activated:connect(function() local pos = mouse.Hit+Vector3.new(0,2.5,0) pos = CFrame.new(pos.X,pos.Y,pos.Z) game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos end) tool.Parent = game.Players.LocalPlayer.Backpack
end)

JS:Button("返回出生岛", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9682.98828125, 58.87917709350586, 3099.033935546875)      
end)

JS:Button("白雪城", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9676.138671875, 58.87917709350586, 3782.69384765625)   
end)

JS:Button("熔岩城", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-11054.96875, 216.83917236328125, 4898.62841796875)       
end)

JS:Button("传奇公路", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13098.87109375, 216.83917236328125, 5907.6279296875)    
end)

Player:Toggle("无限跳", "", false, function(Value)
    Jump = Value
    game.UserInputService.JumpRequest:Connect(function()
        if Jump then
            game.Players.LocalPlayer.Character.Humanoid:ChangeState("Jumping")
        end
    end)
end)

Player:Toggle("穿墙", "", false, function(Value)
    Noclip = Value
    game.RunService.Stepped:Connect(function()
        if Noclip then
            game.Players.LocalPlayer.Character.Head.CanCollide = false
            game.Players.LocalPlayer.Character.Torso.CanCollide = false
        else
            game.Players.LocalPlayer.Character.Head.CanCollida = true
            game.Players.LocalPlayer.Character.Torso.CanCollide = true
        end
    end)
end)

Player:Toggle("夜视", "", false, function(Value)
    Light = Value
    game.RunService.Stepped:Connect(function()
        if Light then
            game.Lighting.Ambient = Color3.new(1, 1, 1)
        else
            game.Lighting.Ambient = Color3.new(0, 0, 0)
        end
    end)
end)

FMTab:Button("忍 脚 本 -- 伐木大亨2", function()
      loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\101\121\77\117\74\68\50\52\34\41\41\40\41\59\10")()
end)
       
FMTab:Button("Bark2.0", function()
       loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,110,111,111,98,54,49,54,49,54,49,47,82,79,66,76,79,88,47,109,97,105,110,47,98,97,114,107,50,46,48,46,108,117,97})end)())))();     
end)
                      
    
FMTab:Button("忍 脚 本 -- 伐木大亨2(盗版浮光掠影)", function()
      loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,112,97,115,116,101,98,105,110,46,99,111,109,47,114,97,119,47,98,51,115,84,68,86,112,116})end)())))();
end)

FMTab:Button("白脚本伐木[免费](已修复)", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/noob616161/KphoooOooooOoOo-wprfbdksorbfKvsdcIUH-194jddJ-___-_-lIlIIIllIIIlllIIIIlIlIIlIllIIIllllllIllllllIIIl/main/bai/%E4%BC%90%E6%9C%A8"))();
end)
    
FMTab:Button("伐木大亨2多功能", function()
      loadstring(game:HttpGet('https://raw.githubusercontent.com/Butterisgood/butter-hub/main/Butterhub.txt'))()
end)
  
    FMTab:Button("出生点",function()
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(154.9990234375, 2.9999992847442627, 73.999755859375)
    end)
  
    FMTab:Button("反斗城",function()
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(250.25030517578125, 2.9999992847442627, 58.71333694458008)
    end)
    
    FMTab:Button("土地商店",function()
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(247.29002380371094, 2.9999992847442627, -98.25011444091797)
    end)
    
    FMTab:Button("岗口",function()
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1135.178466796875, -1.200014591217041, -204.43283081054688)
    end)
    
    FMTab:Button("连接逻辑店",function()
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4609.23291015625, 7.0008392333984375, -775.59375)
    end)
        
    FMTab:Button("火山木",function()
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1615.8934326171875, 622.9998779296875, 1086.1234130859375)
    end)
JY:Button("循环杀戮", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/ngdnaZbf"))()
end)

JY:Toggle("杀戮光环", "", false, function(Value)
    Aura = Value
    game.RunService.Stepped:Connect(function()
        for i, e in pairs(game.Players:GetChildren()) do
            if Aura and e ~= game.Players.LocalPlayer then
                game.ReplicatedStorage.meleeEvent:FireServer(e)
            end
        end
    end)
end)

JY:Toggle("杀所有人", "", false, function(Value)
    All = Value
    game.RunService.Stepped:Connect(function()
        for i, e in pairs(game.Players:GetChildren()) do
            if All and e ~= game.Players.LocalPlayer and e.Character.Humanoid.Health ~= 0 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = e.Character.HumanoidRootPart.CFrame
                game.ReplicatedStorage.meleeEvent:FireServer(e)
                game.Players.LocalPlayer.Character.Humanoid:ChangeState("Jumping")
            end
        end
    end)
end)    
    
JY:Button("军械库", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(835.2199096679688, 99.99000549316406, 2267.0546875)
end)

JY:Button("仓库", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-943.4600219726562, 94.1287612915039, 2063.6298828125)
end)


JY:Button("监狱", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(918.77001953125, 99.98998260498047, 2379.070068359375)
end)

JY:Button("院子", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(779.8699951171875, 97.99992370605469, 2458.929931640625)
end)

JY:Button("屋顶", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(907.4030151367188, 138.5979766845703, 2309.357666015625)
end)

Tab:Button("电脑键盘", function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
end)
  
Tab:Button("USA脚本", function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/boyscp/beta/main/USA.lua"))()
end)
  
Tab:Button("河流脚本", function()
      loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\77\50\57\77\117\81\115\80"))()
end)
      
Tab:Button("BS脚本", function()
      loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,112,97,115,116,101,98,105,110,46,99,111,109,47,114,97,119,47,71,57,103,117,122,88,100,75})end)())))()--BS
end)
     
Tab:Button("跟踪玩家", function()
      loadstring(game:HttpGet("https://pastebin.com/raw/F9PNLcXk"))()
end)
      
Tab:Button("工具包", function()
	  loadstring(game:HttpGet("https://pastebin.com/raw/pSXLyFrt"))()	
end)    
         
Tab:Button("光影V4(不可关闭)", function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()
end)

Tab:Button("枫叶·脚本", function()
loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,112,97,115,116,101,98,105,110,46,99,111,109,47,114,97,119,47,115,55,120,86,99,114,120,106})end)())))();
end)
      
Tab:Button("金苹果", function()
--最新版金苹果脚本
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\87\114\51\67\100\65\122\119\34\41\41\40\41\59\10")()
end)
    
    FMTab:Button("蓝木",function()
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3581, -179.53941345214844, 430.001953125)
    end) 
    
         
                   

DoorsQTTab:Button("虚拟键盘", function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
end)

rc:Button("白脚本rc[免费](已修复)", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/noob616161/KphoooOooooOoOo-wprfbdksorbfKvsdcIUH-194jddJ-___-_-lIlIIIllIIIlllIIIIlIlIIlIllIIIllllllIllllllIIIl/main/bai/rc"))();
end)

DoorsQTTab:Button("自动通A1000", function()
loadstring(game:HttpGet("https://pastebin.com/raw/CA6Y4K0m"))();
end)

DoorsZWTab:Button("微山Doors(2.3.2)", function()
      loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\117\72\72\112\56\102\122\83"))()
end)
      
DoorsZWTab:Button("忍 脚 本 -- Doors", function()
      loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,112,97,115,116,101,98,105,110,46,99,111,109,47,114,97,119,47,52,117,109,83,68,85,57,87})end)())))();
end)      

DoorsZHTab:Button("可以清除东西的枪", function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Laser%20Gun"))()
end)                  
DoorsZHTab:Button("十字架", function()
      loadstring(game:HttpGet("https://pastebin.com/raw/FCSyG6Th"))();
end)
      
DoorsZHTab:Button("夜视仪", function()
      loadstring(game:HttpGet("https://pastebin.com/raw/4Vsv1Xwn"))()
end)


DoorsZHTab:Button("神圣炸弹", function()
      loadstring(game:HttpGet("https://pastebin.com/raw/u5B1UjGv"))()
end)
      
DoorsZHTab:Button("吸铁石", function()
      loadstring(game:HttpGet("https://pastebin.com/raw/xHxGDp51"))()
end)
      
DoorsZHTab:Button("剪刀", function()
      loadstring(game:HttpGet("https://pastebin.com/raw/v2yEJYmu"))()
end)

DoorsTab:Button("BlackKingq", function()
      loadstring(game:HttpGet(('https://pastebin.com/raw/R8QMbhzv')))()
end)
      
DoorsTab:Button("MS DOORS", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/mstudio45/MSDOORS/7bd97c2d956a775d683c2d7973d79715b30998ea/MSDOORS/Moonsec.lua'))()
end)

DoorsTab:Button("KINGHUB", function()
loadstring(game:HttpGet("https://pastebin.com/raw/x0EyeM6X"))();
end)

Player:Toggle("隐身", 'Toggleflag', false, function(state)
    if state then
        TurnInvisible()
    else
        TurnVisible()
    end
end)
