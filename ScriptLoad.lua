local UserInputService = game:GetService("UserInputService")

local function MakeDraggable(topbarobject, object)
	local Dragging = nil
	local DragInput = nil
	local DragStart = nil
	local StartPosition = nil
	local function Update(input)
		local Delta = input.Position - DragStart
		local pos =
			UDim2.new(
				StartPosition.X.Scale,
				StartPosition.X.Offset + Delta.X,
				StartPosition.Y.Scale,
				StartPosition.Y.Offset + Delta.Y
			)
		object.Position = pos
	end
	topbarobject.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			Dragging = true
			DragStart = input.Position
			StartPosition = object.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					Dragging = false
				end
			end)
		end
	end)
	topbarobject.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			DragInput = input
		end
	end)
	UserInputService.InputChanged:Connect(function(input)
		if input == DragInput and Dragging then
			Update(input)
		end
	end)
end

function MakePrGui()
	local PrEz = Instance.new("ScreenGui")
	local Back = Instance.new("ImageLabel")
	local RobloxLogo = Instance.new("ImageLabel")
	local ShopDomain = Instance.new("TextLabel")
	local Char1 = Instance.new("ImageLabel")
	local robux1 = Instance.new("ImageLabel")
	local eggo = Instance.new("TextLabel")
	local eggo2 = Instance.new("TextLabel")
	local robux2 = Instance.new("ImageLabel")
	local vip = Instance.new("ImageLabel")
	local robux3 = Instance.new("ImageLabel")
	local eggo2_2 = Instance.new("TextLabel")
	local vip2 = Instance.new("ImageLabel")
	local vip3 = Instance.new("ImageLabel")
	local vip4 = Instance.new("ImageLabel")
	local vip5 = Instance.new("ImageLabel")
	local vip6 = Instance.new("ImageLabel")
	local vip7 = Instance.new("ImageLabel")
	local CloseButton = Instance.new("TextButton")
	
	
	MakeDraggable(vip2,vip2)
	MakeDraggable(vip3,vip3)
	MakeDraggable(vip4,vip4)
	MakeDraggable(vip5,vip5)
	MakeDraggable(vip6,vip6)
	MakeDraggable(vip7,vip7)
	MakeDraggable(vip,vip)

	PrEz.Name = "PrEz"
	PrEz.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	PrEz.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Back.Name = "Back"
	Back.Parent = PrEz
	Back.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
	Back.BorderSizePixel = 0
	Back.Size = UDim2.new(0.627615035, 0, 1, 0)
	Back.Image = "rbxassetid://10527571475"

	RobloxLogo.Name = "RobloxLogo"
	RobloxLogo.Parent = PrEz
	RobloxLogo.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
	RobloxLogo.BackgroundTransparency = 1.000
	RobloxLogo.BorderSizePixel = 0
	RobloxLogo.Position = UDim2.new(0.0304482579, 0, 0.175281733, 0)
	RobloxLogo.Size = UDim2.new(0.205857739, 0, 0.191126287, 0)
	RobloxLogo.ZIndex = 2
	RobloxLogo.Image = "rbxassetid://657915514"

	ShopDomain.Name = "ShopDomain"
	ShopDomain.Parent = PrEz
	ShopDomain.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ShopDomain.BackgroundTransparency = 4.000
	ShopDomain.BorderSizePixel = 0
	ShopDomain.Position = UDim2.new(0.0301255248, 0, 0.332764506, 0)
	ShopDomain.Size = UDim2.new(0.512133896, 0, 0.129692838, 0)
	ShopDomain.ZIndex = 2
	ShopDomain.Font = Enum.Font.LuckiestGuy
	ShopDomain.Text = "english.shophohohub.com"
	ShopDomain.TextColor3 = Color3.fromRGB(255, 255, 255)
	ShopDomain.TextScaled = true
	ShopDomain.TextSize = 14.000
	ShopDomain.TextStrokeColor3 = Color3.fromRGB(0, 0, 255)
	ShopDomain.TextStrokeTransparency = 0.000
	ShopDomain.TextWrapped = true

	Char1.Name = "Char1"
	Char1.Parent = PrEz
	Char1.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
	Char1.BackgroundTransparency = 1.000
	Char1.BorderSizePixel = 0
	Char1.Position = UDim2.new(0.249557167, 0, -0.000714838505, 0)
	Char1.Size = UDim2.new(0.202510461, 0, 0.399317414, 0)
	Char1.Image = "rbxassetid://10110319522"

	robux1.Name = "robux1"
	robux1.Parent = PrEz
	robux1.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
	robux1.BackgroundTransparency = 1.000
	robux1.BorderSizePixel = 0
	robux1.Position = UDim2.new(0.0300490074, 0, 0.485633373, 0)
	robux1.Size = UDim2.new(0.0376569033, 0, 0.075085327, 0)
	robux1.Image = "rbxassetid://1080142088"

	eggo.Name = "eggo"
	eggo.Parent = PrEz
	eggo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	eggo.BackgroundTransparency = 4.000
	eggo.BorderSizePixel = 0
	eggo.Position = UDim2.new(0.0744769871, 0, 0.469283223, 0)
	eggo.Size = UDim2.new(0.388284504, 0, 0.105802044, 0)
	eggo.ZIndex = 2
	eggo.Font = Enum.Font.Cartoon
	eggo.Text = "Cheap Robux, Scripts & Game Services"
	eggo.TextColor3 = Color3.fromRGB(255, 255, 255)
	eggo.TextScaled = true
	eggo.TextSize = 14.000
	eggo.TextStrokeColor3 = Color3.fromRGB(0, 85, 0)
	eggo.TextStrokeTransparency = 0.000
	eggo.TextWrapped = true
	eggo.TextXAlignment = Enum.TextXAlignment.Left

	eggo2.Name = "eggo2"
	eggo2.Parent = PrEz
	eggo2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	eggo2.BackgroundTransparency = 4.000
	eggo2.BorderSizePixel = 0
	eggo2.Position = UDim2.new(0.0744769871, 0, 0.575085282, 0)
	eggo2.Size = UDim2.new(0.388284504, 0, 0.0904436857, 0)
	eggo2.ZIndex = 2
	eggo2.Font = Enum.Font.Cartoon
	eggo2.Text = "Lucky wheel give you up to 9999 robux"
	eggo2.TextColor3 = Color3.fromRGB(255, 255, 255)
	eggo2.TextScaled = true
	eggo2.TextSize = 14.000
	eggo2.TextStrokeColor3 = Color3.fromRGB(0, 85, 0)
	eggo2.TextStrokeTransparency = 0.000
	eggo2.TextWrapped = true
	eggo2.TextXAlignment = Enum.TextXAlignment.Left

	robux2.Name = "robux2"
	robux2.Parent = PrEz
	robux2.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
	robux2.BackgroundTransparency = 1.000
	robux2.BorderSizePixel = 0
	robux2.Position = UDim2.new(0.0300490074, 0, 0.582903028, 0)
	robux2.Size = UDim2.new(0.0376569033, 0, 0.075085327, 0)
	robux2.Image = "rbxassetid://1080142088"

	vip.Name = "vip"
	vip.Parent = PrEz
	vip.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
	vip.BackgroundTransparency = 1.000
	vip.BorderSizePixel = 0
	vip.Position = UDim2.new(0.48278597, 0, 0.158554122, 0)
	vip.Size = UDim2.new(0.0694560707, 0, 0.102389075, 0)
	vip.Image = "rbxassetid://89008441"

	robux3.Name = "robux3"
	robux3.Parent = PrEz
	robux3.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
	robux3.BackgroundTransparency = 1.000
	robux3.BorderSizePixel = 0
	robux3.Position = UDim2.new(0.0300490074, 0, 0.673346698, 0)
	robux3.Size = UDim2.new(0.0376569033, 0, 0.075085327, 0)
	robux3.Image = "rbxassetid://1080142088"

	eggo2_2.Name = "eggo2"
	eggo2_2.Parent = PrEz
	eggo2_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	eggo2_2.BackgroundTransparency = 4.000
	eggo2_2.BorderSizePixel = 0
	eggo2_2.Position = UDim2.new(0.0744769871, 0, 0.665528953, 0)
	eggo2_2.Size = UDim2.new(0.388284504, 0, 0.0904436857, 0)
	eggo2_2.ZIndex = 2
	eggo2_2.Font = Enum.Font.Cartoon
	eggo2_2.Text = "Server support 24/7 in discord.gg/hohohub"
	eggo2_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	eggo2_2.TextScaled = true
	eggo2_2.TextSize = 14.000
	eggo2_2.TextStrokeColor3 = Color3.fromRGB(0, 85, 0)
	eggo2_2.TextStrokeTransparency = 0.000
	eggo2_2.TextWrapped = true
	eggo2_2.TextXAlignment = Enum.TextXAlignment.Left

	vip2.Name = "vip2"
	vip2.Parent = PrEz
	vip2.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
	vip2.BackgroundTransparency = 1.000
	vip2.BorderSizePixel = 0
	vip2.Position = UDim2.new(0.420420021, 0, 0.846267462, 0)
	vip2.Size = UDim2.new(0.0744769871, 0, 0.139931738, 0)
	vip2.Image = "rbxassetid://2747399912"

	vip3.Name = "vip3"
	vip3.Parent = PrEz
	vip3.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
	vip3.BackgroundTransparency = 1.000
	vip3.BorderSizePixel = 0
	vip3.Position = UDim2.new(0.00703088567, 0, 0.0186223984, 0)
	vip3.Size = UDim2.new(0.066945605, 0, 0.139931738, 0)
	vip3.Image = "rbxassetid://8009374519"

	vip4.Name = "vip4"
	vip4.Parent = PrEz
	vip4.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
	vip4.BackgroundTransparency = 1.000
	vip4.BorderSizePixel = 0
	vip4.Position = UDim2.new(0.514143884, 0, 0.48449266, 0)
	vip4.Size = UDim2.new(0.0744769871, 0, 0.139931738, 0)
	vip4.Image = "rbxassetid://11147059397"

	vip5.Name = "vip5"
	vip5.Parent = PrEz
	vip5.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
	vip5.BackgroundTransparency = 1.000
	vip5.BorderSizePixel = 0
	vip5.Position = UDim2.new(0.44970876, 0, 0.745143771, 0)
	vip5.Size = UDim2.new(0.134728029, 0, 0.254266202, 0)
	vip5.Image = "rbxassetid://490683944"

	vip6.Name = "vip6"
	vip6.Parent = PrEz
	vip6.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
	vip6.BackgroundTransparency = 1.000
	vip6.BorderSizePixel = 0
	vip6.Position = UDim2.new(0.00696146116, 0, 0.802327693, 0)
	vip6.Size = UDim2.new(0.103765689, 0, 0.19624573, 0)
	vip6.Image = "rbxassetid://214488498"

	vip7.Name = "vip7"
	vip7.Parent = PrEz
	vip7.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
	vip7.BackgroundTransparency = 1.000
	vip7.BorderSizePixel = 0
	vip7.Position = UDim2.new(0.189128265, 0, 0.772447526, 0)
	vip7.Size = UDim2.new(0.0928870291, 0, 0.175767913, 0)
	vip7.Image = "rbxassetid://6023250471"

	CloseButton.Name = "CloseButton"
	CloseButton.Parent = PrEz
	CloseButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	CloseButton.BackgroundTransparency = 1.000
	CloseButton.Position = UDim2.new(0.441004187, 0, 0, 0)
	CloseButton.Size = UDim2.new(0.185774058, 0, 0.100682594, 0)
	CloseButton.Font = Enum.Font.Cartoon
	CloseButton.Text = "[Close]"
	CloseButton.TextColor3 = Color3.fromRGB(255, 0, 0)
	CloseButton.TextScaled = true
	CloseButton.TextSize = 14.000
	CloseButton.TextWrapped = true

	CloseButton.MouseButton1Click:Connect(function()
		game.Debris:AddItem(PrEz,0)
	end)
	
	local sec = 30
	game.Debris:AddItem(PrEz, 30)
	spawn(function()
		while wait(1) do
			if PrEz then
				sec = sec - 1
				CloseButton.Text = "[Close "..sec.."s ]"
			else
				break
			end
		end
	end)
end


function CreateSupportList(list_game)
	local function RainbowText(text)
		spawn(function()
			local add = 10
			wait(1)
			local k = 1
			while k <= 255 do
				text.TextColor3 = Color3.new(k/255,0/255,0/255)
				k = k + add
				wait()
			end
			while true do
				k = 1
				while k <= 255 do
					text.TextColor3 = Color3.new(255/255,k/255,0/255)
					k = k + add
					wait()
				end
				k = 1
				while k <= 255 do
					text.TextColor3 = Color3.new(255/255 - k/255,255/255,0/255)
					k = k + add
					wait()
				end
				k = 1
				while k <= 255 do
					text.TextColor3 = Color3.new(0/255,255/255,k/255)
					k = k + add
					wait()
				end
				k = 1
				while k <= 255 do
					text.TextColor3 = Color3.new(0/255,255/255 - k/255,255/255)
					k = k + add
					wait()
				end
				k = 1
				while k <= 255 do
					text.TextColor3 = Color3.new(k/255,0/255,255/255)
					k = k + add
					wait()
				end
				k = 1
				while k <= 255 do
					text.TextColor3 = Color3.new(255/255,0/255,255/255 - k/255)
					k = k + add
					wait()
				end
				while k <= 255 do
					text.TextColor3 = Color3.new(255/255 - k/255,0/255,0/255)
					k = k + add
					wait()
				end
			end
		end)
	end
	
	local Anh_Gai_Alimi = {"rbxassetid://6942501524","rbxassetid://7903531742","rbxassetid://7903522083","rbxassetid://6409799523","rbxassetid://8881175113",
		"rbxassetid://7584008919","rbxassetid://6271530098","rbxassetid://7388383866","rbxassetid://7962732035","rbxassetid://6842416695","rbxassetid://6576447146",
		"rbxassetid://10171317457","rbxassetid://10171317457","rbxassetid://8598068647","rbxassetid://8192162908","rbxassetid://8677814109","rbxassetid://4597457883"
	}
	
	local SupportUi = Instance.new("ScreenGui")
	local BackImg = Instance.new("ImageLabel")
	local Black = Instance.new("Frame")
	local Tittle = Instance.new("TextLabel")
	local ScrollingFrame = Instance.new("ScrollingFrame")
	local UIListLayout = Instance.new("UIListLayout")
	local CloseButton = Instance.new("TextButton")
	
	MakeDraggable(BackImg,BackImg)

	SupportUi.Name = "SupportUi"
	SupportUi.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	SupportUi.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	BackImg.Name = "BackImg"
	BackImg.Parent = SupportUi
	BackImg.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
	BackImg.BorderSizePixel = 0
	BackImg.Position = UDim2.new(0.667782426, 0, 0.33959043, 0)
	BackImg.Size = UDim2.new(0, 375, 0, 375)
	BackImg.Image = Anh_Gai_Alimi[math.random(1,#Anh_Gai_Alimi)]

	Black.Name = "Black"
	Black.Parent = BackImg
	Black.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Black.BackgroundTransparency = 0.4
	Black.BorderSizePixel = 0
	Black.Size = UDim2.new(0, 375, 0, 375)

	Tittle.Name = "Tittle"
	Tittle.Parent = Black
	Tittle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Tittle.BackgroundTransparency = 1.000
	Tittle.Position = UDim2.new(0.0399999991, 0, 0, 0)
	Tittle.Size = UDim2.new(0, 265, 0, 39)
	Tittle.Font = Enum.Font.Highway
	Tittle.Text = "Game Suported"
	Tittle.TextColor3 = Color3.fromRGB(255, 255, 255)
	Tittle.TextScaled = true
	Tittle.TextSize = 14.000
	Tittle.TextWrapped = true
	Tittle.TextXAlignment = Enum.TextXAlignment.Left

	ScrollingFrame.Parent = Black
	ScrollingFrame.Active = true
	ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ScrollingFrame.BackgroundTransparency = 1.000
	ScrollingFrame.BorderSizePixel = 0
	ScrollingFrame.Position = UDim2.new(0.0240000002, 0, 0.104000002, 0)
	ScrollingFrame.Size = UDim2.new(0, 366, 0, 329)
	ScrollingFrame.CanvasSize = UDim2.new(0, 0, 4, 0)
	ScrollingFrame.ScrollBarThickness = 10

	UIListLayout.Parent = ScrollingFrame
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

	CloseButton.Name = "CloseButton"
	CloseButton.Parent = Black
	CloseButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	CloseButton.BackgroundTransparency = 1.000
	CloseButton.BorderSizePixel = 0
	CloseButton.Position = UDim2.new(0.896000028, 0, 0, 0)
	CloseButton.Size = UDim2.new(0, 39, 0, 39)
	CloseButton.Font = Enum.Font.FredokaOne
	CloseButton.Text = "X"
	CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	CloseButton.TextScaled = true
	CloseButton.TextSize = 14.000
	CloseButton.TextWrapped = true
	
	RainbowText(Tittle)
	RainbowText(CloseButton)

	for i,v in pairs(list_game) do
		local TextLabel = Instance.new("TextLabel")
		TextLabel.Parent = ScrollingFrame
		TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel.BackgroundTransparency = 1.000
		TextLabel.Size = UDim2.new(0, 353, 0, 24)
		TextLabel.Font = Enum.Font.Highway
		TextLabel.Text = "		+ " .. v
		TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel.TextScaled = true
		TextLabel.TextSize = 14.000
		TextLabel.TextTransparency = 0.500
		TextLabel.TextWrapped = true
		TextLabel.TextXAlignment = Enum.TextXAlignment.Left
		RainbowText(TextLabel)
	end
	
	CloseButton.MouseButton1Click:Connect(function()
		game.Debris:AddItem(SupportUi, 0)
	end)
end

local list = {
	--BedWars
	[2619619496] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/GAME/main/bedwar.txt'))()",

	--Element Battle Ground
	[224422602] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/SCRIPTS/elementBattlegr.lua'))()",

	--King Legacy
	[1451439645] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/SCRIPTS/KingPiece.lua'))()",

	--Blox Fruit
	[994732206] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HohoV2/Free/BloxFruitFree.lua'))()",

	--Pet Simulator X
	[2316994223] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/SCRIPTS/PetXfolder/PetSimXMobile.lua'))()",

	--Zombie Attack
	[504035427]="loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/SCRIPTS/ZombieAtack.lua'))()",

	--Two Piece
	[5303541547]="loadstring(game:HttpGet('https://raw.githubusercontent.com/AlongNgu/alonebruh/main/twoPiecehoho.lua'))()",

	--Dungeon Quest
	[848145103]="loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/Paid/DunegonQuest.lua'))()",

	--Tradelands
	[92096286]="loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/SCRIPTS/TradeLands.lua'))()",

	--Anime Fighters Simulator
	[2324662457]="loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/SCRIPTS/anime%20fighters%20simulator.lua'))()",

	--Arsenal
	[111958650]="loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/SCRIPTS/Arsenal.lua'))()",

	--Break In
	[1318971886]="loadstring(game:HttpGet('https://pastebin.com/raw/xUGJt9Ry', true))()",

	--Tower of Hell
	[703124385]="loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/SCRIPTS/TowerOfHell.lua'))()",

	--steve's one piece
	[741590026]="loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/SCRIPTS/SteveOnePiece.lua'))()",

	--Murder Mystery 2
	[66654135]="loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/GAME/main/muder%20mys..2.txt'))()",

	--Giant Survival!
	[1342991001]="loadstring(game:HttpGet('https://pastebin.com/raw/zABEESgr', true))()",

	--Field Trip Z
	[1701332290]="loadstring(game:HttpGet('https://pastebin.com/raw/aY7Z3Nd3', true))()",

	--Mad City
	[498490399]="loadstring(game:HttpGet('https://pastebin.com/raw/EwnNCfin', true))()",

	--vn piece
	[1493595237]="loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/SCRIPTS/vn%20Piece%20script-obfuscated.lua', true))()",
	
	--Ro Fruit
	[3904583189]="loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HohoV2/Free/RoFruitFree.lua', true))()",

	--Collect All Pets
	[3359505957]="loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HohoV2/Free/CollectAllPetsFree.lua', true))()",
	
	--GPO
	[648454481]="loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HohoV2/Free/GPOFree.lua', true))()",

        --Murder Party (New)
        [5611648039]="loadstring(game:HttpGet('https://raw.githubusercontent.com/artas01/artas01/c50dad68804d1656a15f5357f9333daa4a4f15af/MurderParty_bylolProplayerlol'))()",

}

local listPre = {
	--BedWars
	[2619619496] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/GAME/main/bedwar.txt'))()",

	--Element Battle Ground
	[224422602] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/SCRIPTS/elementBattlegr.lua'))()",

	--King Legacy
	[1451439645] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/SCRIPTS/KingPiece.lua'))()",

	--Blox Fruit
	[994732206] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HohoV2/Pre/BloxFruitPre.lua'))()",

	--Pet Simulator X
	[2316994223] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/SCRIPTS/PetXfolder/PetSimXMobile.lua'))()",

	--Zombie Attack
	[504035427]="loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/SCRIPTS/ZombieAtack.lua'))()",

	--Two Piece
	[5303541547]="loadstring(game:HttpGet('https://raw.githubusercontent.com/AlongNgu/alonebruh/main/twoPiecehoho.lua'))()",

	--Dungeon Quest
	[848145103]="loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/Paid/DunegonQuest.lua'))()",

	--Tradelands
	[92096286]="loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/SCRIPTS/TradeLands.lua'))()",

	--Anime Fighters Simulator
	[2324662457]="loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/SCRIPTS/anime%20fighters%20simulator.lua'))()",

	--Arsenal
	[111958650]="loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/SCRIPTS/Arsenal.lua'))()",

	--Break In
	[1318971886]="loadstring(game:HttpGet('https://pastebin.com/raw/xUGJt9Ry', true))()",

	--Tower of Hell
	[703124385]="loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/SCRIPTS/TowerOfHell.lua'))()",

	--steve's one piece
	[741590026]="loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/SCRIPTS/SteveOnePiece.lua'))()",

	--Murder Mystery 2
	[66654135]="loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/GAME/main/muder%20mys..2.txt'))()",

	--Giant Survival!
	[1342991001]="loadstring(game:HttpGet('https://pastebin.com/raw/zABEESgr', true))()",

	--Field Trip Z
	[1701332290]="loadstring(game:HttpGet('https://pastebin.com/raw/aY7Z3Nd3', true))()",

	--Mad City
	[498490399]="loadstring(game:HttpGet('https://pastebin.com/raw/EwnNCfin', true))()",

	--vn piece
	[1493595237]="loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/SCRIPTS/vn%20Piece%20script-obfuscated.lua', true))()",
	
	--Ro Fruit
	[3904583189]="loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HohoV2/Pre/RoFruitPre.lua', true))()",
	
	--Collect All Pets
	[3359505957]="loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HohoV2/Pre/CollectAllPetsPre.lua', true))()",
	
	--GPO
	[648454481]="loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HohoV2/Pre/GPOPre.lua', true))()",

        --Murder Party (New)
        [5611648039]="loadstring(game:HttpGet('https://raw.githubusercontent.com/artas01/artas01/c50dad68804d1656a15f5357f9333daa4a4f15af/MurderParty_bylolProplayerlol'))()",

}

MakePrGui()
CreateSupportList({"GPO - Grand Piece Online","Blox Fruit","King Legacy","Ro Fruit","Collect All Pets","Tower of Hell","Murder Party (Made by fun4ng4mez)","Break In","Arsenal",
	"Pet Simulator X","Mad City","Viet Nam Piece","Field Trip Z","Giant Survival!",
	"Murder Mystery 2","steve's one piece","Anime Fighters Simulator","Tradelands","Dungeon Quest","Two Piece"
})
_G.HoHoLoaded = true
if getgenv().Key and listPre[game.GameId] ~= nil then
	getgenv().messagebox = function()end
	loadstring(listPre[tonumber(game.GameId)])()
elseif not getgenv().Key and list[game.GameId] ~= nil then
	loadstring(list[tonumber(game.GameId)])()
else
	game.Players.LocalPlayer:Kick("game not support, discord.gg/hohohub & https://discord.gg/aYkRMW4w")
end
