--[[
	public release + this is really outdated because i haven't updated this for ages.
	fixes one thing
]] 

versiondisplay = 'Deathsense'







































local bordercolorlist = {}

function findtextrandom(text)
    if text:find(' @r ') then 
        local b = text:split(' @r ')
        return b[math.random(#b)]
    else 
        return text
    end
end

function textboxtriggers(text)
	local triggers = {
		['@user'] = game.Players.LocalPlayer.Name,
		['@ping'] = game.Stats.PerformanceStats.Ping:GetValue(),
		['@time'] = os.date('%H:%M:%S'),
	}

	if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild('Humanoid') then 
		triggers['@health'] = game.Players.LocalPlayer.Character.Humanoid.Health
	end

	for a,b in next, triggers do 
		text = string.gsub(text, a, b)
	end

	return findtextrandom(text)
end

getgenv().values = {} 
local library = {}
local maincolor = Color3.fromRGB(28, 28, 28)
local Signal = loadstring(game:HttpGet('https://raw.githubusercontent.com/Quenty/NevermoreEngine/version2/Modules/Shared/Events/Signal.lua'))()
local ConfigSave = Signal.new('ConfigSave')
local ConfigLoad = Signal.new('ConfigLoad')

local txt = game:GetService('TextService')
local TweenService = game:GetService('TweenService')
function library:Tween(...) TweenService:Create(...):Play() end
local cfglocation = 'ovacfg/'
makefolder('ovacfg')

function createspecmenu()
	local Spec = Instance.new('ScreenGui')
	local holder = Instance.new('Frame')
	local Border = Instance.new('Frame')
	local Holder = Instance.new('Frame')
	local list = Instance.new('TextLabel')
	local example = Instance.new('TextLabel')
	
	Spec.Name = 'Spec'
	Spec.Parent = game.CoreGui
	Spec.ResetOnSpawn = false
	
	holder.Name = 'holder'
	holder.Parent = Spec
	holder.AnchorPoint = Vector2.new(0.5, 0)
	holder.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	holder.BorderColor3 = Color3.fromRGB(25, 25, 25)
	holder.BorderSizePixel = 0
	holder.Position = UDim2.new(0.0737913251, 0, 0.385276079, 5)
	holder.Size = UDim2.new(0.132315516, -10, 0.0110429451, 25)
	holder.ZIndex = 3
	
	Border.Name = 'Border'
	Border.Parent = holder
	Border.AnchorPoint = Vector2.new(0.5, 0.5)
	Border.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
	table.insert(bordercolorlist, Border)
	Border.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Border.Position = UDim2.new(0.5, 0, 0.5, 0)
	Border.Size = UDim2.new(1, 2, 1, 2)
	
	Holder.Name = 'Holder'
	Holder.Parent = holder
	Holder.AnchorPoint = Vector2.new(0.5, 0.5)
	Holder.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	Holder.BackgroundTransparency = 1.000
	Holder.BorderColor3 = Color3.fromRGB(25, 25, 25)
	Holder.BorderSizePixel = 0
	Holder.Position = UDim2.new(0.5, 0, 0.5, 0)
	Holder.Size = UDim2.new(1, 0, 1, 0)
	
	list.Name = 'list'
	list.Parent = Holder
	list.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	list.BackgroundTransparency = 1.000
	list.BorderColor3 = Color3.fromRGB(25, 25, 25)
	list.BorderSizePixel = 0
	list.Position = UDim2.new(0.0353535376, 0, 0, 0)
	list.Size = UDim2.new(0.338502645, -10, 0.0388244726, 15)
	list.ZIndex = 5
	list.Font = Enum.Font.SourceSans
	list.Text = 'Spectators:'
	list.TextColor3 = Color3.fromRGB(255, 255, 255)
	list.TextSize = 15.000
	list.TextStrokeTransparency = 0.750
	list.TextXAlignment = Enum.TextXAlignment.Left
	
	example.Name = 'example'
	example.Parent = list
	example.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	example.BackgroundTransparency = 1.000
	example.BorderColor3 = Color3.fromRGB(25, 25, 25)
	example.BorderSizePixel = 0
	example.Position = UDim2.new(0.0353535451, 0, 0.480001301, 10)
	example.Size = UDim2.new(0.458873928, -10, 0.443783849, 15)
	example.ZIndex = 5
	example.Font = Enum.Font.SourceSans
	example.Text = 'none'
	example.TextColor3 = Color3.fromRGB(255, 255, 255)
	example.TextSize = 15.000
	example.TextStrokeTransparency = 0.750
	example.TextXAlignment = Enum.TextXAlignment.Left
	example.TextYAlignment = Enum.TextYAlignment.Top

	return Spec
end

specmenu = createspecmenu()

specusers = {}

specmenu.Enabled = false

function update()
	local found = false
	local text = ''
	local total = 0
	
	for a,b in next, specusers do 
		found=true
		
		text = b..'\n'..text
		total=total+1
	end
	
	if not found then 
		text = 'none' 
	else 
	    if total > 1 then 
	        specmenu.holder.Size = UDim2.new(0.132315516, -10, 0.0110429451, 25 * (total/1.3))
	    end
	end
	
	specmenu.holder.Holder.list.example.Text = text
end

spawn(function()
    while wait(0.1) do 
        specusers = {}

        for a,b in next, game.Players:GetChildren() do
            local outcome = false
            if b:FindFirstChild('Status') and b:FindFirstChild('CameraCF') and b.Status.SpecMode.Value then 
                local cameracf = b.CameraCF

                if (cameracf.Value.Position - workspace.Camera.CFrame.p).Magnitude < 12 then 
                    outcome = true
                end
            end

            if outcome then 
                table.insert(specusers, b.Name)
            end
        end

        update()
    end
end)


-- caching
local Vec2 = Vector2.new
local Vec3 = Vector3.new
local CF = CFrame.new
local INST = Instance.new
local COL3 = Color3.new
local COL3RGB = Color3.fromRGB
local COL3HSV = Color3.fromHSV
local CLAMP = math.clamp
local DEG = math.deg
local FLOOR = math.floor
local ACOS = math.acos
local RANDOM = math.random
local ATAN2 = math.atan2
local HUGE = math.huge
local RAD = math.rad
local MIN = math.min
local POW = math.pow
local UDIM2 = UDim2.new
local CFAngles = CFrame.Angles

local FIND = string.find
local LEN = string.len
local SUB = string.sub
local GSUB = string.gsub
local RAY = Ray.new

local INSERT = table.insert
local TBLFIND = table.find
local TBLREMOVE = table.remove
local TBLSORT = table.sort
local PLAYERWALL01 = {}
function rgbtotbl(rgb)
	return {R = rgb.R, G = rgb.G, B = rgb.B}
end
function tbltorgb(tbl)
	return COL3(tbl.R, tbl.G, tbl.B)
end
function F_Tween(Target,Prop,Value,tweeninfo1,tweeninfo2,tweeninfo3, waitcom)
	local Tween = game:GetService('TweenService'):Create(Target,TweenInfo.new(tweeninfo1,tweeninfo2,tweeninfo3), {[Prop] = Value})
	Tween:Play() 
	if waitcom then 
		Tween.Completed:Wait()
	end
end
local function deepCopy(original)
	local copy = {}
	for k, v in pairs(original) do
		if type(v) == 'table' then
			v = deepCopy(v)
		end
		copy[k] = v
	end
	return copy
end
function library:ConfigFix(cfg)
	local copy = game:GetService('HttpService'):JSONDecode(readfile(cfglocation..cfg..'.txt'))
	for i,Tabs in pairs(copy) do
		for i,Sectors in pairs(Tabs) do
			for i,Elements in pairs(Sectors) do
				if Elements.Color ~= nil then
					local a = Elements.Color
					Elements.Color = tbltorgb(a)
				end
			end
		end
	end
	return copy
end
function library:SaveConfig(cfg)
	local copy = deepCopy(values)
	for i,Tabs in pairs(copy) do
		for i,Sectors in pairs(Tabs) do
			for i,Elements in pairs(Sectors) do
				if Elements.Color ~= nil then
					Elements.Color = {R=Elements.Color.R, G=Elements.Color.G, B=Elements.Color.B}
				end
			end
		end
	end
	writefile(cfglocation..cfg..'.txt', game:GetService('HttpService'):JSONEncode(copy))
end



local ovascreengui = nil
function library:New(name)
	local menu = {}

	local Ova = INST('ScreenGui')
	local Menu = INST('ImageLabel')
	local TextLabel = INST('TextLabel')
	local TabButtons = INST('Frame')
	local UIListLayout = INST('UIListLayout')
	local Tabs = INST('Frame')

	Ova.Name = 'electric boogalo'
	Ova.ResetOnSpawn = false
	Ova.ZIndexBehavior = 'Global'
	Ova.DisplayOrder = 420133769

	local UIScale = INST('UIScale')
	UIScale.Parent = Ova

	function menu:SetScale(scale)
		UIScale.Scale = scale
	end

	local but = INST('TextButton')
	but.Modal = true
	but.Text = ''
	but.BackgroundTransparency = 1
	but.Parent = Ova

	local cursor = INST('ImageLabel')
	cursor.Name = 'cursor'
	cursor.Parent = Ova
	cursor.BackgroundTransparency = 1
	cursor.Size = UDIM2(0,17,0,17)
	cursor.Image = 'rbxassetid://518398610'
	cursor.ZIndex = 1000
	cursor.ImageColor3 = COL3RGB(255,255,255)

	local Players = game:GetService('Players')
	local LocalPlayer = Players.LocalPlayer
	local Mouse = LocalPlayer:GetMouse()

	game:GetService('RunService').RenderStepped:connect(function()
		cursor.Visible = Ova.Enabled
		cursor.Position = UDIM2(0,Mouse.X-3,0,Mouse.Y+1)
	end)

	Menu.Name = 'Menu'
	Menu.Parent = Ova
	Menu.BackgroundColor3 = COL3RGB(30, 30, 30)
	Menu.Position = UDIM2(0.5, -300, 0.5, -300)
	Menu.Size = UDIM2(0, 600, 0, 610)
	Menu.BorderColor3 = Color3.fromRGB(25, 25, 25)
	Menu.BorderSizePixel = 0
	Menu.Image = ''

		
	local Border = Instance.new('Frame')

	Border.Name = 'Border'
	Border.Parent = Menu
	Border.AnchorPoint = Vector2.new(0.5, 0.5)
	Border.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
	table.insert(bordercolorlist, Border)
	Border.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Border.Position = UDim2.new(0.5, 0, 0.5, 0)
	Border.Size = UDim2.new(1, 2, 1, 2)
	Border.ZIndex = 0

	library.uiopen = true

	ovascreengui = { 
		['ova'] = Ova,
		['menu'] = Menu,
		['cursor'] = cursor,
	} -- needed for opening custom gui

	local KeybindList = INST('ScreenGui')
	do
		local TextLabel = INST('TextLabel')
		local Frame = INST('Frame')
		local UIListLayout = INST('UIListLayout')

		KeybindList.Name = 'KeybindList'
		KeybindList.ZIndexBehavior = Enum.ZIndexBehavior.Global
		KeybindList.Enabled = false

		TextLabel.Parent = KeybindList
		TextLabel.BackgroundColor3 = COL3RGB(30, 30, 39)
		TextLabel.BorderColor3 = COL3RGB(255, 255, 255)
		TextLabel.Position = UDIM2(0, 1, 0.300000012, 0)
		TextLabel.Size = UDIM2(0, 155, 0, 24)
		TextLabel.ZIndex = 2
		TextLabel.Font = Enum.Font.SourceSansSemibold
		TextLabel.Text = 'keybinds'
		TextLabel.TextColor3 = COL3RGB(255, 255, 255)
		TextLabel.TextSize = 14.000

		Frame.Parent = TextLabel
		Frame.BackgroundColor3 = COL3RGB(255, 255, 255)
		Frame.BackgroundTransparency = 1.000
		Frame.Position = UDIM2(0, 0, 1, 1)
		Frame.Size = UDIM2(1, 0, 1, 0)

		UIListLayout.Parent = Frame
		UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

		KeybindList.Parent = game.CoreGui
	end

	function keybindadd(text)
		if not KeybindList.TextLabel.Frame:FindFirstChild(text) then
			local TextLabel = INST('TextLabel')
			TextLabel.BackgroundColor3 = COL3RGB(30, 30, 39)
			TextLabel.BorderColor3 = COL3RGB(255, 255, 255)
			TextLabel.BorderSizePixel = 0
			TextLabel.Size = UDIM2(0, 155, 0, 24)
			TextLabel.ZIndex = 2
			TextLabel.Font = Enum.Font.SourceSansSemibold
			TextLabel.Text = text
			TextLabel.TextColor3 = COL3RGB(255, 255, 255)
			TextLabel.TextSize = 14.000
			TextLabel.Name = text
			TextLabel.Parent = KeybindList.TextLabel.Frame
		end
	end

	function keybindremove(text)
		if KeybindList.TextLabel.Frame:FindFirstChild(text) then
			KeybindList.TextLabel.Frame:FindFirstChild(text):Destroy()
		end
	end

	function library:SetKeybindVisible(Joe)
		KeybindList.Enabled = Joe
	end

	library.dragging = false
	do
		local UserInputService = game:GetService('UserInputService')
		local a = Menu
		local dragInput
		local dragStart
		local startPos
		local function update(input)
			local delta = input.Position - dragStart
			a.Position = UDIM2(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		end
		a.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				library.dragging = true
				dragStart = input.Position
				startPos = a.Position

				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						library.dragging = false
					end
				end)
			end
		end)
		a.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		end)
		UserInputService.InputChanged:Connect(function(input)
			if input == dragInput and library.dragging then
				update(input)
			end
		end)
	end

	TextLabel.Parent = Menu
	TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1
	TextLabel.Position = UDIM2(0, 7, 0, 0)
	TextLabel.Size = UDIM2(0, 0, 0, 29)
	TextLabel.Size = UDIM2(0, txt:GetTextSize(name, 15, Enum.Font.SourceSansSemibold, Vec2(700, TextLabel.AbsoluteSize.Y)).X, 0, 29)
	TextLabel.Font = Enum.Font.SourceSansSemibold
	TextLabel.Text = name
	TextLabel.TextColor3 = COL3RGB(255, 255, 255)
	TextLabel.TextSize = 15.000
	TextLabel.TextXAlignment = Enum.TextXAlignment.Left

	TabButtons.Name = 'TabButtons'
	TabButtons.Parent = Menu
	TabButtons.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	TabButtons.BorderColor3 = Color3.fromRGB(25, 25, 25)
	TabButtons.BorderSizePixel = 0
	TabButtons.Position = UDIM2(0, 3, 0, 27)
	TabButtons.Size = UDIM2(0, 594, 0, 20)
	TabButtons.ZIndex = 3

	local uselessfolder = Instance.new('Folder', TabButtons)

	local Border = Instance.new('Frame')

	Border.Name = 'Border'
	Border.Parent = uselessfolder
	Border.AnchorPoint = Vector2.new(0.5, 0.5)
	Border.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
	table.insert(bordercolorlist, Border)
	Border.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Border.Position = UDim2.new(0.5, 0, 0.5, 0)
	Border.Size = UDim2.new(1, 2, 1, 2)
	Border.ZIndex = 2
	

	UIListLayout.Parent = TabButtons
	UIListLayout.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center

	Tabs.Name = 'Tabs'
	Tabs.Parent = Menu
	Tabs.BackgroundColor3 = COL3RGB(255, 255, 255)
	Tabs.BackgroundTransparency = 1.000
	Tabs.Position = UDIM2(0, 1, 0, 52)
	Tabs.Size = UDIM2(0, 598, 0, 558)

	local first = true
	local currenttab

	function menu:Tab(text)
		local tabname
		tabname = text
		local Tab = {}
		values[tabname] = {}

		local TextButton = INST('TextButton')
		TextButton.ZIndex = 5
		TextButton.BackgroundColor3 = COL3RGB(255, 255, 255)
		TextButton.BackgroundTransparency = 1
		TextButton.Size = UDIM2(0, txt:GetTextSize(text, 15, Enum.Font.SourceSansSemibold, Vec2(700,700)).X+12, 1, 0)
		TextButton.Font = Enum.Font.SourceSansSemibold
		TextButton.Text = text
		TextButton.TextColor3 = COL3RGB(200, 200, 200)
		TextButton.TextSize = 15.000
		TextButton.Parent = TabButtons

		local TabGui = INST('ScrollingFrame')
		local Left = INST('Frame')
		local UIListLayout = INST('UIListLayout')
		local Right = INST('Frame')
		local UIListLayout_2 = INST('UIListLayout')

		TabGui.Name = 'TabGui'
		TabGui.Parent = Tabs
		TabGui.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
		TabGui.BorderColor3 = Color3.fromRGB(25, 25, 25)
		TabGui.BackgroundTransparency = 1
		TabGui.ScrollBarThickness = 4
		TabGui.BorderSizePixel = 0
		TabGui.ScrollBarImageTransparency = 0.9
		TabGui.Position = UDIM2(0, 5, 0, 2)
		TabGui.Size = UDIM2(0, 590, 1, 0)
		TabGui.Visible = false
		TabGui.CanvasSize = UDim2.new(0, 0, 4.5, 0)

		Left.Name = 'Left'
		Left.Parent = TabGui
		Left.BackgroundColor3 = COL3RGB(255, 255, 255)
		Left.BackgroundTransparency = 1.000
		Left.Position = UDIM2(0, 15, 0, 11)
		Left.Size = UDIM2(0, 279, 0, 543)

		UIListLayout.Parent = Left
		UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout.Padding = UDim.new(0, 10)

		Right.Name = 'Right'
		Right.Parent = TabGui
		Right.BackgroundColor3 = COL3RGB(255, 255, 255)
		Right.BackgroundTransparency = 1.000
		Right.Position = UDIM2(0, 303, 0, 11)
		Right.Size = UDIM2(0, 279, 0, 543)

		UIListLayout_2.Parent = Right
		UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout_2.Padding = UDim.new(0, 10)

		if first then
			TextButton.TextColor3 = COL3RGB(255, 255, 255)
			currenttab = text
			TabGui.Visible = true
			first = false
		end

		TextButton.MouseButton1Down:Connect(function()
			if currenttab ~= text then
				for i,v in pairs(TabButtons:GetChildren()) do
					if v:IsA('TextButton') then
						library:Tween(v, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(200, 200, 200)})
					end
				end
				for i,v in pairs(Tabs:GetChildren()) do
					v.Visible = false
				end
				library:Tween(TextButton, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})
				currenttab = text
				TabGui.Visible = true
			end
		end)

		function Tab:MSector(text, side)
			local sectorname = text
			local MSector = {}
			values[tabname][text] = {}


			local Section = INST('Frame')
			local SectionText = INST('TextLabel')
			local Inner = INST('Frame')
			local sectiontabs = INST('Frame')
			local UIListLayout_2 = INST('UIListLayout')

			Section.Name = 'Section'
			Section.Parent = TabGui[side]
			Section.BackgroundColor3 = COL3RGB(25,25,25)
			Section.BorderColor3 = COL3RGB(25,25,25)
			Section.BorderSizePixel = 1
			Section.BackgroundTransparency = 1
			Section.Size = UDIM2(1, 0, 0, 33)
			Section.ZIndex = 2

			
			local Border = Instance.new('Frame')

			Border.Name = 'Border'
			Border.Parent = Section
			Border.AnchorPoint = Vector2.new(0.5, 0.5)
			Border.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
	table.insert(bordercolorlist, Border)
			Border.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Border.Position = UDim2.new(0.5, 0, 0.5, 0)
			Border.Size = UDim2.new(1, 2, 1, 2)

			
			
			local Border2 = Instance.new('Frame')

			Border2.Name = 'Border'
			Border2.Parent = Section
			Border2.AnchorPoint = Vector2.new(0.5, 0.5)
			Border2.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
			Border2.BorderSizePixel = 0
			Border2.Position = UDim2.new(0.5, 0, 0.5, 0)
			Border2.Size = UDim2.new(1, 0, 1, 0)

			SectionText.Name = 'SectionText'
			SectionText.Parent = Section
			SectionText.BackgroundColor3 = COL3RGB(255, 255, 255)
			SectionText.BackgroundTransparency = 1.000
			SectionText.Position = UDIM2(0, 7, 0, -12)
			SectionText.Size = UDIM2(0, 270, 0, 19)
			SectionText.ZIndex = 2
			SectionText.Font = Enum.Font.SourceSansSemibold
			SectionText.Text = text
			SectionText.TextColor3 = COL3RGB(255, 255, 255)
			SectionText.TextSize = 15.000
			SectionText.TextXAlignment = Enum.TextXAlignment.Left

			Inner.Name = 'Inner'
			Inner.Parent = Section
			Inner.BackgroundColor3 = COL3RGB(25,25,25)
			Inner.BorderColor3 = COL3RGB(0, 0, 0)
			Inner.BackgroundTransparency = 1
			Inner.BorderSizePixel = 0
			Inner.Position = UDIM2(0, 1, 0, 1)
			Inner.Size = UDIM2(1, -2, 1, -9)

			sectiontabs.Name = 'sectiontabs'
			sectiontabs.Parent = Section
			sectiontabs.BackgroundColor3 = COL3RGB(255, 255, 255)
			sectiontabs.BackgroundTransparency = 1.000
			sectiontabs.Position = UDIM2(0, 0, 0, 6)
			sectiontabs.Size = UDIM2(1, 0, 0, 22)

			UIListLayout_2.Parent = sectiontabs
			UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal
			UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
			UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout_2.Padding = UDim.new(0,4)

			local firs = true
			local selected
			function MSector:Tab(text)
				local tab = {}
				values[tabname][sectorname][text] = {}
				local tabtext = text

				local tabsize = UDIM2(1, 0, 0, 44)

				local tab1 = INST('Frame')
				local UIPadding = INST('UIPadding')
				local UIListLayout = INST('UIListLayout')
				local TextButton = INST('TextButton')

				tab1.Name = text
				tab1.Parent = Inner
				tab1.BackgroundColor3 = COL3RGB(25,25,25)
				tab1.BackgroundTransparency = 1.000
				tab1.BorderColor3 = COL3RGB(27, 27, 35)
				tab1.BorderSizePixel = 0
				tab1.Position = UDIM2(0, 0, 0, 30)
				tab1.Size = UDIM2(1, 0, 1, -21)
				tab1.Name = text
				tab1.Visible = false

				UIPadding.Parent = tab1
				UIPadding.PaddingTop = UDim.new(0, 0)

				UIListLayout.Parent = tab1
				UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
				UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
				UIListLayout.Padding = UDim.new(0, 1)

				TextButton.Parent = sectiontabs
				TextButton.BackgroundColor3 = COL3RGB(255, 255, 255)
				TextButton.BackgroundTransparency = 1.000
				TextButton.Size = UDIM2(0, txt:GetTextSize(text, 14, Enum.Font.SourceSansSemibold, Vec2(700,700)).X + 2, 1, 0)
				TextButton.Font = Enum.Font.SourceSansSemibold
				TextButton.Text = text
				TextButton.TextColor3 = COL3RGB(200, 200, 200)
				TextButton.TextSize = 14.000
				TextButton.Name = text


				TextButton.MouseButton1Down:Connect(function()
					for i,v in pairs(Inner:GetChildren()) do
						v.Visible = false
					end
					for i,v in pairs(sectiontabs:GetChildren()) do
						if v:IsA('TextButton') then
							library:Tween(v, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(200,200,200)})
						end
					end
					Section.Size = tabsize
					tab1.Visible = true
					library:Tween(TextButton, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})
				end)

				function tab:Element(type, text, data, callback)
					local Element = {}
					data = data or {}
					callback = callback or function() end
					values[tabname][sectorname][tabtext][text] = {}

					if type == 'Jumbobox' then
						tabsize = tabsize + UDIM2(0,0,0, 39)
						Element.value = {Jumbobox = {}}
						data.options = data.options or {}

						local Dropdown = INST('Frame')
						local Button = INST('TextButton')
						local TextLabel = INST('TextLabel')
						local Drop = INST('ScrollingFrame')
						local Button_2 = INST('TextButton')
						local TextLabel_2 = INST('TextLabel')
						local UIListLayout = INST('UIListLayout')
						local ImageLabel = INST('ImageLabel')
						local TextLabel_3 = INST('TextLabel')

						Dropdown.Name = 'Dropdown'
						Dropdown.Parent = tab1
						Dropdown.BackgroundColor3 = COL3RGB(255, 255, 255)
						Dropdown.BackgroundTransparency = 1.000
						Dropdown.Position = UDIM2(0, 0, 0.255102038, 0)
						Dropdown.Size = UDIM2(1, 0, 0, 39)

						Button.Name = 'Button'
						Button.Parent = Dropdown
						Button.BackgroundColor3 = maincolor
						Button.BorderColor3 = COL3RGB(27, 27, 35)
						Button.Position = UDIM2(0, 30, 0, 16)
						Button.Size = UDIM2(0, 175, 0, 17)
						Button.AutoButtonColor = false
						Button.Font = Enum.Font.SourceSans
						Button.Text = ''
						Button.TextColor3 = COL3RGB(0, 0, 0)
						Button.TextSize = 14.000

						TextLabel.Parent = Button
						TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)
						TextLabel.BackgroundTransparency = 1.000
						TextLabel.BorderColor3 = COL3RGB(27, 42, 53)
						TextLabel.Position = UDIM2(0, 5, 0, 0)
						TextLabel.Size = UDIM2(-0.21714285, 208, 1, 0)
						TextLabel.Font = Enum.Font.SourceSansSemibold
						TextLabel.Text = '...'
						TextLabel.TextColor3 = COL3RGB(200, 200, 200)
						TextLabel.TextSize = 14.000
						TextLabel.TextXAlignment = Enum.TextXAlignment.Left

						local abcd = TextLabel

						Drop.Name = 'Drop'
						Drop.Parent = Button
						Drop.Active = true
						Drop.BackgroundColor3 = maincolor
						Drop.BorderColor3 = COL3RGB(27, 27, 35)
						Drop.Position = UDIM2(0, 0, 1, 1)
						Drop.Size = UDIM2(1, 0, 0, 20)
						Drop.Visible = false
						Drop.BottomImage = 'http://www.roblox.com/asset/?id=6724808282'
						Drop.CanvasSize = UDIM2(0, 0, 0, 0)
						Drop.ScrollBarThickness = 4
						Drop.TopImage = 'http://www.roblox.com/asset/?id=6724808282'
						Drop.MidImage = 'http://www.roblox.com/asset/?id=6724808282'
						Drop.AutomaticCanvasSize = 'Y'
						Drop.ZIndex = 5
						Drop.ScrollBarImageColor3 = COL3RGB(255, 255, 255)

						UIListLayout.Parent = Drop
						UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
						UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

						values[tabname][sectorname][tabtext][text] = Element.value
						local num = #data.options
						if num > 5 then
							Drop.Size = UDIM2(1, 0, 0, 85)
						else
							Drop.Size = UDIM2(1, 0, 0, 17*num)
						end
						local first = true

						local function updatetext()
							local old = {}
							for i,v in ipairs(data.options) do
								if TBLFIND(Element.value.Jumbobox, v) then
									INSERT(old, v)
								else
								end
							end
							local str = ''


							if #old == 0 then
								str = '...'
							else
								if #old == 1 then
									str = old[1]
								else
									for i,v in ipairs(old) do
										if i == 1 then
											str = v
										else
											if i > 2 then
												if i < 4 then
													str = str..',  ...'
												end
											else
												str = str..',  '..v
											end
										end
									end
								end
							end

							abcd.Text = str
						end
						for i,v in ipairs(data.options) do
							do
								local Button = INST('TextButton')
								local TextLabel = INST('TextLabel')
								local Gradient = Instance.new('UIGradient')

								Button.Name = v
								Button.Parent = Drop
								Button.BackgroundColor3 = COL3RGB(50, 50, 50)
								Button.BorderColor3 = COL3RGB(0, 0, 0)
								Button.Position = UDIM2(0, 30, 0, 16)
								Button.Size = UDIM2(0, 175, 0, 17)
								Button.AutoButtonColor = false
								Button.Font = Enum.Font.SourceSans
								Button.Text = ''
								Button.TextColor3 = COL3RGB(0, 0, 0)
								Button.TextSize = 14.000
								Button.BorderSizePixel = 1
								Button.ZIndex = 6


								TextLabel.Parent = Button
								TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)
								TextLabel.BackgroundTransparency = 1.000
								TextLabel.BorderColor3 = COL3RGB(27, 42, 53)
								TextLabel.Position = UDIM2(0, 5, 0, -1)
								TextLabel.Size = UDIM2(-0.21714285, 208, 1, 0)
								TextLabel.Font = Enum.Font.SourceSansSemibold
								TextLabel.Text = v
								TextLabel.TextColor3 = COL3RGB(200, 200, 200)
								TextLabel.TextSize = 14.000
								TextLabel.TextXAlignment = Enum.TextXAlignment.Left
								TextLabel.ZIndex = 6

								Button.MouseButton1Down:Connect(function()
									if TBLFIND(Element.value.Jumbobox, v) then
										for i,a in pairs(Element.value.Jumbobox) do
											if a == v then
												TBLREMOVE(Element.value.Jumbobox, i)
											end
										end
										library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})
									else
										INSERT(Element.value.Jumbobox, v)
										library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(150, 150, 150)})
									end
									updatetext()

									values[tabname][sectorname][tabtext][text] = Element.value
									callback(Element.value)
								end)
								Button.MouseEnter:Connect(function()
									if not TBLFIND(Element.value.Jumbobox, v) then
										library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})
									end
								end)
								Button.MouseLeave:Connect(function()
									if not TBLFIND(Element.value.Jumbobox, v) then
										library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(200, 200, 200)})
									end
								end)

								first = false
							end
						end
						function Element:SetValue(val)
							Element.value = val
							for i,v in pairs(Drop:GetChildren()) do
								if v.Name ~= 'UIListLayout' then
									if TBLFIND(val.Jumbobox, v.Name) then
										v.TextLabel.TextColor3 = COL3RGB(175, 175, 175)
									else
										v.TextLabel.TextColor3 = COL3RGB(200, 200, 200)
									end
								end
							end
							updatetext()
							values[tabname][sectorname][tabtext][text] = Element.value
							callback(val)
						end
						if data.default then
							Element:SetValue(data.default)
						end

						ImageLabel.Parent = Button
						ImageLabel.BackgroundColor3 = COL3RGB(255, 255, 255)
						ImageLabel.BackgroundTransparency = 1.000
						ImageLabel.Position = UDIM2(0, 165, 0, 6)
						ImageLabel.Size = UDIM2(0, 6, 0, 4)
						ImageLabel.Image = 'http://www.roblox.com/asset/?id=6724771531'

						TextLabel_3.Parent = Dropdown
						TextLabel_3.BackgroundColor3 = COL3RGB(200, 200, 200)
						TextLabel_3.BackgroundTransparency = 1.000
						TextLabel_3.Position = UDIM2(0, 32, 0, -1)
						TextLabel_3.Size = UDIM2(0.111913361, 208, 0.382215232, 0)
						TextLabel_3.Font = Enum.Font.SourceSansSemibold
						TextLabel_3.Text = text
						TextLabel_3.TextColor3 = COL3RGB(200, 200, 200)
						TextLabel_3.TextSize = 14.000
						TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left

						Button.MouseButton1Down:Connect(function()
							Drop.Visible = not Drop.Visible
							if not Drop.Visible then
								Drop.CanvasPosition = Vec2(0,0)
							end
						end)
						local indrop = false
						local ind = false
						Drop.MouseEnter:Connect(function()
							indrop = true
						end)
						Drop.MouseLeave:Connect(function()
							indrop = false
						end)
						Button.MouseEnter:Connect(function()
							ind = true
						end)
						Button.MouseLeave:Connect(function()
							ind = false
						end)
						game:GetService('UserInputService').InputBegan:Connect(function(input)
							if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.MouseButton2 then
								if Drop.Visible == true and not indrop and not ind then
									Drop.Visible = false
									Drop.CanvasPosition = Vec2(0,0)
								end
							end
						end)
					elseif type == 'TextBox' then

					elseif type == 'ToggleKeybind' then
						tabsize = tabsize + UDIM2(0,0,0,16)
						Element.value = {Toggle = data.default and data.default.Toggle or false, Key, Type = 'Always', Active = true}

						local Toggle = INST('Frame')
						local Button = INST('TextButton')
						local Color = INST('Frame')
						local TextLabel = INST('TextLabel')

						Toggle.Name = 'Toggle'
						Toggle.Parent = tab1
						Toggle.BackgroundColor3 = COL3RGB(255, 255, 255)
						Toggle.BackgroundTransparency = 1.000
						Toggle.Size = UDIM2(1, 0, 0, 15)

						Button.Name = 'Button'
						Button.Parent = Toggle
						Button.BackgroundColor3 = COL3RGB(255, 255, 255)
						Button.BackgroundTransparency = 1.000
						Button.Size = UDIM2(1, 0, 1, 0)
						Button.Font = Enum.Font.SourceSans
						Button.Text = ''
						Button.TextColor3 = COL3RGB(0, 0, 0)
						Button.TextSize = 14.000

						Color.Name = 'Color'
						Color.Parent = Button
						Color.BackgroundColor3 = maincolor
						Color.BorderColor3 = COL3RGB(27, 3275, 35)
						Color.Position = UDIM2(0, 15, 0.5, -5)
						Color.Size = UDIM2(0, 8, 0, 8)
						local binding = false
						TextLabel.Parent = Button
						TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)
						TextLabel.BackgroundTransparency = 1.000
						TextLabel.Position = UDIM2(0, 32, 0, -1)
						TextLabel.Size = UDIM2(0.111913361, 208, 1, 0)
						TextLabel.Font = Enum.Font.SourceSansSemibold
						TextLabel.Text = text
						TextLabel.TextColor3 = COL3RGB(200, 200, 200)
						TextLabel.TextSize = 14.000
						TextLabel.TextXAlignment = Enum.TextXAlignment.Left

						local function update()
							if Element.value.Toggle then
								tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = COL3RGB(255, 255, 255)})
								library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})
							else
								keybindremove(text)
								tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = maincolor})
								library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(200, 200, 200)})
							end
							values[tabname][sectorname][tabtext][text] = Element.value
							callback(Element.value)
						end

						Button.MouseButton1Down:Connect(function()
							if not binding then
								Element.value.Toggle = not Element.value.Toggle
								update()
								values[tabname][sectorname][tabtext][text] = Element.value
								callback(Element.value)
							end
						end)
						if data.default then
							update()
						end
						values[tabname][sectorname][tabtext][text] = Element.value
						do
							local Keybind = INST('TextButton')
							local Frame = INST('Frame')
							local Always = INST('TextButton')
							local UIListLayout = INST('UIListLayout')
							local Hold = INST('TextButton')
							local Toggle = INST('TextButton')

							Keybind.Name = 'Keybind'
							Keybind.Parent = Button
							Keybind.BackgroundColor3 = maincolor
							Keybind.BorderColor3 = COL3RGB(27, 27, 35)
							Keybind.Position = UDIM2(0, 270, 0.5, -6)
							Keybind.Text = 'NONE'
							Keybind.Size = UDIM2(0, 43, 0, 12)
							Keybind.Size = UDIM2(0,txt:GetTextSize('NONE', 14, Enum.Font.SourceSansSemibold, Vec2(700, 12)).X + 5,0, 12)
							Keybind.AutoButtonColor = false
							Keybind.Font = Enum.Font.SourceSansSemibold
							Keybind.TextColor3 = COL3RGB(200, 200, 200)
							Keybind.TextSize = 14.000
							Keybind.AnchorPoint = Vec2(1,0)
							Keybind.ZIndex = 3

							Frame.Parent = Keybind
							Frame.BackgroundColor3 = maincolor
							Frame.BorderColor3 = COL3RGB(27, 27, 35)
							Frame.Position = UDIM2(1, -49, 0, 1)
							Frame.Size = UDIM2(0, 49, 0, 49)
							Frame.Visible = false
							Frame.ZIndex = 3

							Always.Name = 'Always'
							Always.Parent = Frame
							Always.BackgroundColor3 = maincolor
							Always.BackgroundTransparency = 1.000
							Always.BorderColor3 = COL3RGB(27, 27, 35)
							Always.Position = UDIM2(-3.03289485, 231, 0.115384616, -6)
							Always.Size = UDIM2(1, 0, 0, 16)
							Always.AutoButtonColor = false
							Always.Font = Enum.Font.SourceSansBold
							Always.Text = 'Always'
							Always.TextColor3 = COL3RGB(255, 255, 255)
							Always.TextSize = 14.000
							Always.ZIndex = 3

							UIListLayout.Parent = Frame
							UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
							UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

							Hold.Name = 'Hold'
							Hold.Parent = Frame
							Hold.BackgroundColor3 = maincolor
							Hold.BackgroundTransparency = 1.000
							Hold.BorderColor3 = COL3RGB(27, 27, 35)
							Hold.Position = UDIM2(-3.03289485, 231, 0.115384616, -6)
							Hold.Size = UDIM2(1, 0, 0, 16)
							Hold.AutoButtonColor = false
							Hold.Font = Enum.Font.SourceSansSemibold
							Hold.Text = 'Hold'
							Hold.TextColor3 = COL3RGB(200, 200, 200)
							Hold.TextSize = 14.000
							Hold.ZIndex = 3

							Toggle.Name = 'Toggle'
							Toggle.Parent = Frame
							Toggle.BackgroundColor3 = maincolor
							Toggle.BackgroundTransparency = 1.000
							Toggle.BorderColor3 = COL3RGB(27, 27, 35)
							Toggle.Position = UDIM2(-3.03289485, 231, 0.115384616, -6)
							Toggle.Size = UDIM2(1, 0, 0, 16)
							Toggle.AutoButtonColor = false
							Toggle.Font = Enum.Font.SourceSansSemibold
							Toggle.Text = 'Toggle'
							Toggle.TextColor3 = COL3RGB(200, 200, 200)
							Toggle.TextSize = 14.000
							Toggle.ZIndex = 3

							for _,button in pairs(Frame:GetChildren()) do
								if button:IsA('TextButton') then
									button.MouseButton1Down:Connect(function()
										Element.value.Type = button.Text
										Frame.Visible = false
										Element.value.Active = Element.value.Type == 'Always' and true or false
										if Element.value.Type == 'Always' then
											keybindremove(text)
										end
										for _,button in pairs(Frame:GetChildren()) do
											if button:IsA('TextButton') and button.Text ~= Element.value.Type then
												button.Font = Enum.Font.SourceSansSemibold
												library:Tween(button, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(200,200,200)})
											end
										end
										button.Font = Enum.Font.SourceSansBold
										button.TextColor3 = COL3RGB(60, 0, 90)
										values[tabname][sectorname][tabtext][text] = Element.value
										callback(Element.value)
									end)
									button.MouseEnter:Connect(function()
										if Element.value.Type ~= button.Text then
											library:Tween(button, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255,255,255)})
										end
									end)
									button.MouseLeave:Connect(function()
										if Element.value.Type ~= button.Text then
											library:Tween(button, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(200,200,200)})
										end
									end)
								end
							end
							Keybind.MouseButton1Down:Connect(function()
								if not binding then
									wait()
									binding = true
									Keybind.Text = '...'
									Keybind.Size = UDIM2(0,txt:GetTextSize('...', 14, Enum.Font.SourceSansSemibold, Vec2(700, 12)).X + 4,0, 12)
								end
							end)
							Keybind.MouseButton2Down:Connect(function()
								if not binding then
									Frame.Visible = not Frame.Visible
								end
							end)
							local Player = game.Players.LocalPlayer
							local Mouse = Player:GetMouse()
							local InFrame = false
							Frame.MouseEnter:Connect(function()
								InFrame = true
							end)
							Frame.MouseLeave:Connect(function()
								InFrame = false
							end)
							local InFrame2 = false
							Keybind.MouseEnter:Connect(function()
								InFrame2 = true
							end)
							Keybind.MouseLeave:Connect(function()
								InFrame2 = false
							end)
							game:GetService('UserInputService').InputBegan:Connect(function(input)
								if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.MouseButton2 and not binding then
									if Frame.Visible == true and not InFrame and not InFrame2 then
										Frame.Visible = false
									end
								end
								if binding then
									binding = false
									Keybind.Text = input.KeyCode.Name ~= 'Unknown' and input.KeyCode.Name:upper() or input.UserInputType.Name:upper()
									Keybind.Size = UDIM2(0,txt:GetTextSize(Keybind.Text, 14, Enum.Font.SourceSansSemibold, Vec2(700, 12)).X + 5,0, 12)
									Element.value.Key = input.KeyCode.Name ~= 'Unknown' and input.KeyCode.Name or input.UserInputType.Name
									if input.KeyCode.Name == 'Backspace' then
										Keybind.Text = 'NONE'
										Keybind.Size = UDIM2(0,txt:GetTextSize(Keybind.Text, 14, Enum.Font.SourceSansSemibold, Vec2(700, 12)).X + 4,0, 12)
										Element.value.Key = nil
									end
								else
									if Element.value.Key ~= nil then
										if FIND(Element.value.Key, 'Mouse') then
											if input.UserInputType == Enum.UserInputType[Element.value.Key] then
												if Element.value.Type == 'Hold' then
													Element.value.Active = true
													if Element.value.Active and Element.value.Toggle then
														keybindadd(text)
													else
														keybindremove(text)
													end
												elseif Element.value.Type == 'Toggle' then
													Element.value.Active = not Element.value.Active
													if Element.value.Active and Element.value.Toggle then
														keybindadd(text)
													else
														keybindremove(text)
													end
												end
											end
										else
											if input.KeyCode == Enum.KeyCode[Element.value.Key] then
												if Element.value.Type == 'Hold' then
													Element.value.Active = true
													if Element.value.Active and Element.value.Toggle then
														keybindadd(text)
													else
														keybindremove(text)
													end
												elseif Element.value.Type == 'Toggle' then
													Element.value.Active = not Element.value.Active
													if Element.value.Active and Element.value.Toggle then
														keybindadd(text)
													else
														keybindremove(text)
													end
												end
											end
										end
									else
										Element.value.Active = true
									end
								end
								values[tabname][sectorname][tabtext][text] = Element.value
								callback(Element.value)
							end)
							game:GetService('UserInputService').InputEnded:Connect(function(input)
								if Element.value.Key ~= nil then
									if FIND(Element.value.Key, 'Mouse') then
										if input.UserInputType == Enum.UserInputType[Element.value.Key] then
											if Element.value.Type == 'Hold' then
												Element.value.Active = false
												if Element.value.Active and Element.value.Toggle then
													keybindadd(text)
												else
													keybindremove(text)
												end
											end
										end
									else
										if input.KeyCode == Enum.KeyCode[Element.value.Key] then
											if Element.value.Type == 'Hold' then
												Element.value.Active = false
												if Element.value.Active and Element.value.Toggle then
													keybindadd(text)
												else
													keybindremove(text)
												end
											end
										end
									end
								end
								values[tabname][sectorname][tabtext][text] = Element.value
								callback(Element.value)
							end)
						end
						function Element:SetValue(value)
							Element.value = value
							update()
						end
					elseif type == 'Toggle' then
						tabsize = tabsize + UDIM2(0,0,0,16)
						Element.value = {Toggle = data.default and data.default.Toggle or false}

						local Toggle = INST('Frame')
						local Button = INST('TextButton')
						local Color = INST('Frame')
						local TextLabel = INST('TextLabel')
						Toggle.Name = 'Toggle'
						Toggle.Parent = tab1
						Toggle.BackgroundColor3 = COL3RGB(255, 255, 255)
						Toggle.BackgroundTransparency = 1.000
						Toggle.Size = UDIM2(1, 0, 0, 15)

						Button.Name = 'Button'
						Button.Parent = Toggle
						Button.BackgroundColor3 = COL3RGB(255, 255, 255)
						Button.BackgroundTransparency = 1.000
						Button.Size = UDIM2(1, 0, 1, 0)
						Button.Font = Enum.Font.SourceSans
						Button.Text = ''
						Button.TextColor3 = COL3RGB(0, 0, 0)
						Button.TextSize = 14.000


						Color.Parent = Button
						Color.BackgroundColor3 = maincolor
						Color.BorderColor3 = COL3RGB(0, 0, 0)
						Color.Position = UDIM2(0, 15, 0.5, -5)
						Color.Size = UDIM2(0, 8, 0, 8)
						Color.Name = 'Color'



						TextLabel.Parent = Button
						TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)
						TextLabel.BackgroundTransparency = 1.000
						TextLabel.Position = UDIM2(0, 32, 0, -1)
						TextLabel.Size = UDIM2(0.111913361, 208, 1, 0)
						TextLabel.Font = Enum.Font.SourceSansSemibold
						TextLabel.Text = text
						TextLabel.TextColor3 = COL3RGB(200, 200, 200)
						TextLabel.TextSize = 14.000
						TextLabel.TextXAlignment = Enum.TextXAlignment.Left

						local function update()
							if Element.value.Toggle then
								tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = COL3RGB(255, 255, 255)})
								library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})
							else
								keybindremove(text)
								tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = maincolor})
								library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(200, 200, 200)})
							end
							values[tabname][sectorname][tabtext][text] = Element.value
						end

						Button.MouseButton1Down:Connect(function()
							Element.value.Toggle = not Element.value.Toggle
							update()
							values[tabname][sectorname][tabtext][text] = Element.value
							callback(Element.value)
						end)
						if data.default then
							update()
						end
						values[tabname][sectorname][tabtext][text] = Element.value
						function Element:SetValue(value)
							Element.value = value
							values[tabname][sectorname][tabtext][text] = Element.value
							update()
							callback(Element.value)
						end
					elseif type == 'ToggleColor' then
						tabsize = tabsize + UDIM2(0,0,0,16)
						Element.value = {Toggle = data.default and data.default.Toggle or false, Color = data.default and data.default.Color or COL3RGB(255,255,255)}

						local Toggle = INST('Frame')
						local Button = INST('TextButton')
						local Color = INST('Frame')
						local TextLabel = INST('TextLabel')

						Toggle.Name = 'Toggle'
						Toggle.Parent = tab1
						Toggle.BackgroundColor3 = COL3RGB(255, 255, 255)
						Toggle.BackgroundTransparency = 1.000
						Toggle.Size = UDIM2(1, 0, 0, 15)

						Button.Name = 'Button'
						Button.Parent = Toggle
						Button.BackgroundColor3 = COL3RGB(255, 255, 255)
						Button.BackgroundTransparency = 1.000
						Button.Size = UDIM2(1, 0, 1, 0)
						Button.Font = Enum.Font.SourceSans
						Button.Text = ''
						Button.TextColor3 = COL3RGB(0, 0, 0)
						Button.TextSize = 14.000

						Color.Name = 'Color'
						Color.Parent = Button
						Color.BackgroundColor3 = maincolor
						Color.BorderColor3 = COL3RGB(27, 27, 35)
						Color.Position = UDIM2(0, 15, 0.5, -5)
						Color.Size = UDIM2(0, 8, 0, 8)

						TextLabel.Parent = Button
						TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)
						TextLabel.BackgroundTransparency = 1.000
						TextLabel.Position = UDIM2(0, 32, 0, -1)
						TextLabel.Size = UDIM2(0.111913361, 208, 1, 0)
						TextLabel.Font = Enum.Font.SourceSansSemibold
						TextLabel.Text = text
						TextLabel.TextColor3 = COL3RGB(200, 200, 200)
						TextLabel.TextSize = 14.000
						TextLabel.TextXAlignment = Enum.TextXAlignment.Left

						local function update()
							if Element.value.Toggle then
								tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = COL3RGB(155, 155, 155)})
								library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})
							else
								tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = maincolor})
								library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(200, 200, 200)})
							end
							values[tabname][sectorname][tabtext][text] = Element.value
							callback(Element.value)
						end

						local ColorH,ColorS,ColorV

						local ColorP = INST('TextButton')
						local Frame = INST('Frame')
						local Colorpick = INST('ImageButton')
						local ColorDrag = INST('Frame')
						local Huepick = INST('ImageButton')
						local Huedrag = INST('Frame')

						ColorP.Name = 'ColorP'
						ColorP.Parent = Button
						ColorP.AnchorPoint = Vec2(1, 0)
						ColorP.BackgroundColor3 = COL3RGB(255, 0, 0)
						ColorP.BorderColor3 = COL3RGB(27, 27, 35)
						ColorP.Position = UDIM2(0, 270, 0.5, -4)
						ColorP.Size = UDIM2(0, 18, 0, 8)
						ColorP.AutoButtonColor = false
						ColorP.Font = Enum.Font.SourceSansSemibold
						ColorP.Text = ''
						ColorP.TextColor3 = COL3RGB(200, 200, 200)
						ColorP.TextSize = 14.000

						Frame.Parent = ColorP
						Frame.BackgroundColor3 = maincolor
						Frame.BorderColor3 = COL3RGB(27, 27, 35)
						Frame.Position = UDIM2(-0.666666687, -170, 1.375, 0)
						Frame.Size = UDIM2(0, 200, 0, 170)
						Frame.Visible = false
						Frame.ZIndex = 3

						Colorpick.Name = 'Colorpick'
						Colorpick.Parent = Frame
						Colorpick.BackgroundColor3 = COL3RGB(255, 255, 255)
						Colorpick.BorderColor3 = COL3RGB(27, 27, 35)
						Colorpick.ClipsDescendants = false
						Colorpick.Position = UDIM2(0, 40, 0, 10)
						Colorpick.Size = UDIM2(0, 150, 0, 150)
						Colorpick.AutoButtonColor = false
						Colorpick.Image = 'rbxassetid://4155801252'
						Colorpick.ImageColor3 = COL3RGB(255, 0, 0)
						Colorpick.ZIndex = 3

						ColorDrag.Name = 'ColorDrag'
						ColorDrag.Parent = Colorpick
						ColorDrag.AnchorPoint = Vec2(0.5, 0.5)
						ColorDrag.BackgroundColor3 = COL3RGB(255, 255, 255)
						ColorDrag.BorderColor3 = COL3RGB(27, 27, 35)
						ColorDrag.Size = UDIM2(0, 4, 0, 4)
						ColorDrag.ZIndex = 3

						Huepick.Name = 'Huepick'
						Huepick.Parent = Frame
						Huepick.BackgroundColor3 = COL3RGB(255, 255, 255)
						Huepick.BorderColor3 = COL3RGB(27, 27, 35)
						Huepick.ClipsDescendants = false
						Huepick.Position = UDIM2(0, 10, 0, 10)
						Huepick.Size = UDIM2(0, 20, 0, 150)
						Huepick.AutoButtonColor = false
						Huepick.Image = 'rbxassetid://3641079629'
						Huepick.ImageColor3 = COL3RGB(255, 0, 0)
						Huepick.ImageTransparency = 1
						Huepick.BackgroundTransparency = 0
						Huepick.ZIndex = 3

						local HueFrameGradient = INST('UIGradient')
						HueFrameGradient.Rotation = 90
						HueFrameGradient.Name = 'HueFrameGradient'
						HueFrameGradient.Parent = Huepick
						HueFrameGradient.Color = ColorSequence.new {
							ColorSequenceKeypoint.new(0.00, COL3RGB(255, 0, 0)),
							ColorSequenceKeypoint.new(0.17, COL3RGB(255, 0, 255)),
							ColorSequenceKeypoint.new(0.33, COL3RGB(0, 0, 255)),
							ColorSequenceKeypoint.new(0.50, COL3RGB(0, 255, 255)),
							ColorSequenceKeypoint.new(0.67, COL3RGB(0, 255, 0)),
							ColorSequenceKeypoint.new(0.83, COL3RGB(255, 255, 0)),
							ColorSequenceKeypoint.new(1.00, COL3RGB(255, 0, 0))
						}	

						Huedrag.Name = 'Huedrag'
						Huedrag.Parent = Huepick
						Huedrag.BackgroundColor3 = COL3RGB(255, 255, 255)
						Huedrag.BorderColor3 = COL3RGB(27, 27, 35)
						Huedrag.Size = UDIM2(1, 0, 0, 2)
						Huedrag.ZIndex = 3

						ColorP.MouseButton1Down:Connect(function()
							Frame.Visible = not Frame.Visible
						end)
						local abc = false
						local inCP = false
						ColorP.MouseEnter:Connect(function()
							abc = true
						end)
						ColorP.MouseLeave:Connect(function()
							abc = false
						end)
						Frame.MouseEnter:Connect(function()
							inCP = true
						end)
						Frame.MouseLeave:Connect(function()
							inCP = false
						end)

						ColorH = (CLAMP(Huedrag.AbsolutePosition.Y-Huepick.AbsolutePosition.Y, 0, Huepick.AbsoluteSize.Y)/Huepick.AbsoluteSize.Y)
						ColorS = 1-(CLAMP(ColorDrag.AbsolutePosition.X-Colorpick.AbsolutePosition.X, 0, Colorpick.AbsoluteSize.X)/Colorpick.AbsoluteSize.X)
						ColorV = 1-(CLAMP(ColorDrag.AbsolutePosition.Y-Colorpick.AbsolutePosition.Y, 0, Colorpick.AbsoluteSize.Y)/Colorpick.AbsoluteSize.Y)

						if data.default.Color ~= nil then
							ColorH, ColorS, ColorV = data.default.Color:ToHSV()

							ColorH = CLAMP(ColorH,0,1)
							ColorS = CLAMP(ColorS,0,1)
							ColorV = CLAMP(ColorV,0,1)
							ColorDrag.Position = UDIM2(1-ColorS,0,1-ColorV,0)
							Colorpick.ImageColor3 = COL3HSV(ColorH, 1, 1)

							ColorP.BackgroundColor3 = COL3HSV(ColorH, ColorS, ColorV)
							Huedrag.Position = UDIM2(0, 0, 1-ColorH, -1)
						end

						local mouse = LocalPlayer:GetMouse()
						game:GetService('UserInputService').InputBegan:Connect(function(input)
							if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.MouseButton2 then
								if not dragging and not abc and not inCP then
									Frame.Visible = false
								end
							end
						end)

						local function updateColor()
							local ColorX = (CLAMP(mouse.X - Colorpick.AbsolutePosition.X, 0, Colorpick.AbsoluteSize.X)/Colorpick.AbsoluteSize.X)
							local ColorY = (CLAMP(mouse.Y - Colorpick.AbsolutePosition.Y, 0, Colorpick.AbsoluteSize.Y)/Colorpick.AbsoluteSize.Y)
							ColorDrag.Position = UDIM2(ColorX, 0, ColorY, 0)
							ColorS = 1-ColorX
							ColorV = 1-ColorY
							Colorpick.ImageColor3 = COL3HSV(ColorH, 1, 1)
							ColorP.BackgroundColor3 = COL3HSV(ColorH, ColorS, ColorV)
							values[tabname][sectorname][tabtext][text] = Element.value
							Element.value.Color = COL3HSV(ColorH, ColorS, ColorV)
							callback(Element.value)
						end
						local function updateHue()
							local y = CLAMP(mouse.Y - Huepick.AbsolutePosition.Y, 0, 148)
							Huedrag.Position = UDIM2(0, 0, 0, y)
							hue = y/148
							ColorH = 1-hue
							Colorpick.ImageColor3 = COL3HSV(ColorH, 1, 1)
							ColorP.BackgroundColor3 = COL3HSV(ColorH, ColorS, ColorV)
							values[tabname][sectorname][tabtext][text] = Element.value
							Element.value.Color = COL3HSV(ColorH, ColorS, ColorV)
							callback(Element.value)
						end
						Colorpick.MouseButton1Down:Connect(function()
							updateColor()
							moveconnection = mouse.Move:Connect(function()
								updateColor()
							end)
							releaseconnection = game:GetService('UserInputService').InputEnded:Connect(function(Mouse)
								if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
									updateColor()
									moveconnection:Disconnect()
									releaseconnection:Disconnect()
								end
							end)
						end)
						Huepick.MouseButton1Down:Connect(function()
							updateHue()
							moveconnection = mouse.Move:Connect(function()
								updateHue()
							end)
							releaseconnection = game:GetService('UserInputService').InputEnded:Connect(function(Mouse)
								if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
									updateHue()
									moveconnection:Disconnect()
									releaseconnection:Disconnect()
								end
							end)
						end)

						Button.MouseButton1Down:Connect(function()
							Element.value.Toggle = not Element.value.Toggle
							update()
							values[tabname][sectorname][tabtext][text] = Element.value
							callback(Element.value)
						end)
						if data.default then
							update()
						end
						values[tabname][sectorname][tabtext][text] = Element.value
						function Element:SetValue(value)
							Element.value = value
							local duplicate = COL3(value.Color.R, value.Color.G, value.Color.B)
							ColorH, ColorS, ColorV = duplicate:ToHSV()
							ColorH = CLAMP(ColorH,0,1)
							ColorS = CLAMP(ColorS,0,1)
							ColorV = CLAMP(ColorV,0,1)

							ColorDrag.Position = UDIM2(1-ColorS,0,1-ColorV,0)
							Colorpick.ImageColor3 = COL3HSV(ColorH, 1, 1)
							ColorP.BackgroundColor3 = COL3HSV(ColorH, ColorS, ColorV)
							update()
							Huedrag.Position = UDIM2(0, 0, 1-ColorH, -1)
						end
					elseif type == 'ToggleTrans' then
						tabsize = tabsize + UDIM2(0,0,0,16)
						Element.value = {Toggle = data.default and data.default.Toggle or false, Color = data.default and data.default.Color or COL3RGB(255,255,255), Transparency = data.default and data.default.Transparency or 0}

						local Toggle = INST('Frame')
						local Button = INST('TextButton')
						local Color = INST('Frame')
						local TextLabel = INST('TextLabel')

						Toggle.Name = 'Toggle'
						Toggle.Parent = tab1
						Toggle.BackgroundColor3 = COL3RGB(255, 255, 255)
						Toggle.BackgroundTransparency = 1.000
						Toggle.Size = UDIM2(1, 0, 0, 15)

						Button.Name = 'Button'
						Button.Parent = Toggle
						Button.BackgroundColor3 = COL3RGB(255, 255, 255)
						Button.BackgroundTransparency = 1.000
						Button.Size = UDIM2(1, 0, 1, 0)
						Button.Font = Enum.Font.SourceSans
						Button.Text = ''
						Button.TextColor3 = COL3RGB(0, 0, 0)
						Button.TextSize = 14.000

						Color.Name = 'Color'
						Color.Parent = Button
						Color.BackgroundColor3 = maincolor
						Color.BorderColor3 = COL3RGB(27, 27, 35)
						Color.Position = UDIM2(0, 15, 0.5, -5)
						Color.Size = UDIM2(0, 8, 0, 8)

						TextLabel.Parent = Button
						TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)
						TextLabel.BackgroundTransparency = 1.000
						TextLabel.Position = UDIM2(0, 32, 0, -1)
						TextLabel.Size = UDIM2(0.111913361, 208, 1, 0)
						TextLabel.Font = Enum.Font.SourceSansSemibold
						TextLabel.Text = text
						TextLabel.TextColor3 = COL3RGB(200, 200, 200)
						TextLabel.TextSize = 14.000
						TextLabel.TextXAlignment = Enum.TextXAlignment.Left

						local function update()
							if Element.value.Toggle then
								tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = COL3RGB(155, 155, 155)})
								library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})
							else
								tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = maincolor})
								library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(200, 200, 200)})
							end
							values[tabname][sectorname][tabtext][text] = Element.value
							callback(Element.value)
						end

						local ColorH,ColorS,ColorV

						local ColorP = INST('TextButton')
						local Frame = INST('Frame')
						local Colorpick = INST('ImageButton')
						local ColorDrag = INST('Frame')
						local Huepick = INST('ImageButton')
						local Huedrag = INST('Frame')

						ColorP.Name = 'ColorP'
						ColorP.Parent = Button
						ColorP.AnchorPoint = Vec2(1, 0)
						ColorP.BackgroundColor3 = COL3RGB(255, 0, 0)
						ColorP.BorderColor3 = COL3RGB(27, 27, 35)
						ColorP.Position = UDIM2(0, 270, 0.5, -4)
						ColorP.Size = UDIM2(0, 18, 0, 8)
						ColorP.AutoButtonColor = false
						ColorP.Font = Enum.Font.SourceSansSemibold
						ColorP.Text = ''
						ColorP.TextColor3 = COL3RGB(200, 200, 200)
						ColorP.TextSize = 14.000

						Frame.Parent = ColorP
						Frame.BackgroundColor3 = maincolor
						Frame.BorderColor3 = COL3RGB(27, 27, 35)
						Frame.Position = UDIM2(-0.666666687, -170, 1.375, 0)
						Frame.Size = UDIM2(0, 200, 0, 190)
						Frame.Visible = false
						Frame.ZIndex = 3

						Colorpick.Name = 'Colorpick'
						Colorpick.Parent = Frame
						Colorpick.BackgroundColor3 = COL3RGB(255, 255, 255)
						Colorpick.BorderColor3 = COL3RGB(27, 27, 35)
						Colorpick.ClipsDescendants = false
						Colorpick.Position = UDIM2(0, 40, 0, 10)
						Colorpick.Size = UDIM2(0, 150, 0, 150)
						Colorpick.AutoButtonColor = false
						Colorpick.Image = 'rbxassetid://4155801252'
						Colorpick.ImageColor3 = COL3RGB(255, 0, 0)
						Colorpick.ZIndex = 3

						ColorDrag.Name = 'ColorDrag'
						ColorDrag.Parent = Colorpick
						ColorDrag.AnchorPoint = Vec2(0.5, 0.5)
						ColorDrag.BackgroundColor3 = COL3RGB(255, 255, 255)
						ColorDrag.BorderColor3 = COL3RGB(27, 27, 35)
						ColorDrag.Size = UDIM2(0, 4, 0, 4)
						ColorDrag.ZIndex = 3

						Huepick.Name = 'Huepick'
						Huepick.Parent = Frame
						Huepick.BackgroundColor3 = COL3RGB(255, 255, 255)
						Huepick.BorderColor3 = COL3RGB(27, 27, 35)
						Huepick.ClipsDescendants = true
						Huepick.Position = UDIM2(0, 10, 0, 10)
						Huepick.Size = UDIM2(0, 20, 0, 150)
						Huepick.AutoButtonColor = false
						Huepick.Image = 'rbxassetid://3641079629'
						Huepick.ImageColor3 = COL3RGB(255, 0, 0)
						Huepick.ImageTransparency = 1
						Huepick.BackgroundTransparency = 0
						Huepick.ZIndex = 3

						local HueFrameGradient = INST('UIGradient')
						HueFrameGradient.Rotation = 90
						HueFrameGradient.Name = 'HueFrameGradient'
						HueFrameGradient.Parent = Huepick
						HueFrameGradient.Color = ColorSequence.new {
							ColorSequenceKeypoint.new(0.00, COL3RGB(255, 0, 0)),
							ColorSequenceKeypoint.new(0.17, COL3RGB(255, 0, 255)),
							ColorSequenceKeypoint.new(0.33, COL3RGB(0, 0, 255)),
							ColorSequenceKeypoint.new(0.50, COL3RGB(0, 255, 255)),
							ColorSequenceKeypoint.new(0.67, COL3RGB(0, 255, 0)),
							ColorSequenceKeypoint.new(0.83, COL3RGB(255, 255, 0)),
							ColorSequenceKeypoint.new(1.00, COL3RGB(255, 0, 0))
						}	

						Huedrag.Name = 'Huedrag'
						Huedrag.Parent = Huepick
						Huedrag.BackgroundColor3 = COL3RGB(255, 255, 255)
						Huedrag.BorderColor3 = COL3RGB(27, 27, 35)
						Huedrag.Size = UDIM2(1, 0, 0, 2)
						Huedrag.ZIndex = 3

						local Transpick = INST('ImageButton')
						local Transcolor = INST('ImageLabel')
						local Transdrag = INST('Frame')

						Transpick.Name = 'Transpick'
						Transpick.Parent = Frame
						Transpick.BackgroundColor3 = COL3RGB(255, 255, 255)
						Transpick.BorderColor3 = COL3RGB(27, 27, 35)
						Transpick.Position = UDIM2(0, 10, 0, 167)
						Transpick.Size = UDIM2(0, 180, 0, 15)
						Transpick.AutoButtonColor = false
						Transpick.Image = 'rbxassetid://3887014957'
						Transpick.ScaleType = Enum.ScaleType.Tile
						Transpick.TileSize = UDIM2(0, 10, 0, 10)
						Transpick.ZIndex = 3

						Transcolor.Name = 'Transcolor'
						Transcolor.Parent = Transpick
						Transcolor.BackgroundColor3 = COL3RGB(255, 255, 255)
						Transcolor.BackgroundTransparency = 1.000
						Transcolor.Size = UDIM2(1, 0, 1, 0)
						Transcolor.Image = 'rbxassetid://3887017050'
						Transcolor.ImageColor3 = COL3RGB(255, 0, 4)
						Transcolor.ZIndex = 3

						Transdrag.Name = 'Transdrag'
						Transdrag.Parent = Transcolor
						Transdrag.BackgroundColor3 = COL3RGB(255, 255, 255)
						Transdrag.BorderColor3 = COL3RGB(27, 27, 35)
						Transdrag.Position = UDIM2(0, -1, 0, 0)
						Transdrag.Size = UDIM2(0, 2, 1, 0)
						Transdrag.ZIndex = 3

						ColorP.MouseButton1Down:Connect(function()
							Frame.Visible = not Frame.Visible
						end)
						local abc = false
						local inCP = false
						ColorP.MouseEnter:Connect(function()
							abc = true
						end)
						ColorP.MouseLeave:Connect(function()
							abc = false
						end)
						Frame.MouseEnter:Connect(function()
							inCP = true
						end)
						Frame.MouseLeave:Connect(function()
							inCP = false
						end)

						ColorH = (CLAMP(Huedrag.AbsolutePosition.Y-Huepick.AbsolutePosition.Y, 0, Huepick.AbsoluteSize.Y)/Huepick.AbsoluteSize.Y)
						ColorS = 1-(CLAMP(ColorDrag.AbsolutePosition.X-Colorpick.AbsolutePosition.X, 0, Colorpick.AbsoluteSize.X)/Colorpick.AbsoluteSize.X)
						ColorV = 1-(CLAMP(ColorDrag.AbsolutePosition.Y-Colorpick.AbsolutePosition.Y, 0, Colorpick.AbsoluteSize.Y)/Colorpick.AbsoluteSize.Y)

						if data.default.Color ~= nil then
							ColorH, ColorS, ColorV = data.default.Color:ToHSV()

							ColorH = CLAMP(ColorH,0,1)
							ColorS = CLAMP(ColorS,0,1)
							ColorV = CLAMP(ColorV,0,1)
							ColorDrag.Position = UDIM2(1-ColorS,0,1-ColorV,0)
							Colorpick.ImageColor3 = COL3HSV(ColorH, 1, 1)

							Transcolor.ImageColor3 = COL3HSV(ColorH, 1, 1)

							ColorP.BackgroundColor3 = COL3HSV(ColorH, ColorS, ColorV)
							Huedrag.Position = UDIM2(0, 0, 1-ColorH, -1)
						end
						if data.default.Transparency ~= nil then
							Transdrag.Position = UDIM2(data.default.Transparency, -1, 0, 0)
						end
						local mouse = LocalPlayer:GetMouse()
						game:GetService('UserInputService').InputBegan:Connect(function(input)
							if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.MouseButton2 then
								if not dragging and not abc and not inCP then
									Frame.Visible = false
								end
							end
						end)

						local function updateColor()
							local ColorX = (CLAMP(mouse.X - Colorpick.AbsolutePosition.X, 0, Colorpick.AbsoluteSize.X)/Colorpick.AbsoluteSize.X)
							local ColorY = (CLAMP(mouse.Y - Colorpick.AbsolutePosition.Y, 0, Colorpick.AbsoluteSize.Y)/Colorpick.AbsoluteSize.Y)
							ColorDrag.Position = UDIM2(ColorX, 0, ColorY, 0)
							ColorS = 1-ColorX
							ColorV = 1-ColorY
							Colorpick.ImageColor3 = COL3HSV(ColorH, 1, 1)
							ColorP.BackgroundColor3 = COL3HSV(ColorH, ColorS, ColorV)
							Transcolor.ImageColor3 = COL3HSV(ColorH, 1, 1)
							values[tabname][sectorname][tabtext][text] = Element.value
							Element.value.Color = COL3HSV(ColorH, ColorS, ColorV)
							callback(Element.value)
						end
						local function updateHue()
							local y = CLAMP(mouse.Y - Huepick.AbsolutePosition.Y, 0, 148)
							Huedrag.Position = UDIM2(0, 0, 0, y)
							hue = y/148
							ColorH = 1-hue
							Colorpick.ImageColor3 = COL3HSV(ColorH, 1, 1)
							Transcolor.ImageColor3 = COL3HSV(ColorH, 1, 1)
							ColorP.BackgroundColor3 = COL3HSV(ColorH, ColorS, ColorV)
							values[tabname][sectorname][tabtext][text] = Element.value
							Element.value.Color = COL3HSV(ColorH, ColorS, ColorV)
							callback(Element.value)
						end
						local function updateTrans()
							local x = CLAMP(mouse.X - Transpick.AbsolutePosition.X, 0, 178)
							Transdrag.Position = UDIM2(0, x, 0, 0)
							Element.value.Transparency = (x/178)
							values[tabname][sectorname][tabtext][text] = Element.value
							callback(Element.value)
						end
						Transpick.MouseButton1Down:Connect(function()
							updateTrans()
							moveconnection = mouse.Move:Connect(function()
								updateTrans()
							end)
							releaseconnection = game:GetService('UserInputService').InputEnded:Connect(function(Mouse)
								if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
									updateTrans()
									moveconnection:Disconnect()
									releaseconnection:Disconnect()
								end
							end)
						end)
						Colorpick.MouseButton1Down:Connect(function()
							updateColor()
							moveconnection = mouse.Move:Connect(function()
								updateColor()
							end)
							releaseconnection = game:GetService('UserInputService').InputEnded:Connect(function(Mouse)
								if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
									updateColor()
									moveconnection:Disconnect()
									releaseconnection:Disconnect()
								end
							end)
						end)
						Huepick.MouseButton1Down:Connect(function()
							updateHue()
							moveconnection = mouse.Move:Connect(function()
								updateHue()
							end)
							releaseconnection = game:GetService('UserInputService').InputEnded:Connect(function(Mouse)
								if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
									updateHue()
									moveconnection:Disconnect()
									releaseconnection:Disconnect()
								end
							end)
						end)

						Button.MouseButton1Down:Connect(function()
							Element.value.Toggle = not Element.value.Toggle
							update()
							values[tabname][sectorname][tabtext][text] = Element.value
							callback(Element.value)
						end)
						if data.default then
							update()
						end
						values[tabname][sectorname][tabtext][text] = Element.value
						function Element:SetValue(value)
							Element.value = value
							local duplicate = COL3(value.Color.R, value.Color.G, value.Color.B)
							ColorH, ColorS, ColorV = duplicate:ToHSV()
							ColorH = CLAMP(ColorH,0,1)
							ColorS = CLAMP(ColorS,0,1)
							ColorV = CLAMP(ColorV,0,1)

							ColorDrag.Position = UDIM2(1-ColorS,0,1-ColorV,0)
							Colorpick.ImageColor3 = COL3HSV(ColorH, 1, 1)
							ColorP.BackgroundColor3 = COL3HSV(ColorH, ColorS, ColorV)
							update()
							Huedrag.Position = UDIM2(0, 0, 1-ColorH, -1)
						end
					elseif type == 'Dropdown' then
						tabsize = tabsize + UDIM2(0,0,0,39)
						Element.value = {Dropdown = data.options[1]}

						local Dropdown = INST('Frame')
						local Button = INST('TextButton')
						local TextLabel = INST('TextLabel')
						local Drop = INST('ScrollingFrame')
						local Button_2 = INST('TextButton')
						local TextLabel_2 = INST('TextLabel')
						local UIListLayout = INST('UIListLayout')
						local ImageLabel = INST('ImageLabel')
						local TextLabel_3 = INST('TextLabel')

						Dropdown.Name = 'Dropdown'
						Dropdown.Parent = tab1
						Dropdown.BackgroundColor3 = COL3RGB(255, 255, 255)
						Dropdown.BackgroundTransparency = 1.000
						Dropdown.Position = UDIM2(0, 0, 0.255102038, 0)
						Dropdown.Size = UDIM2(1, 0, 0, 39)

						Button.Name = 'Button'
						Button.Parent = Dropdown
						Button.BackgroundColor3 = maincolor
						Button.BorderColor3 = COL3RGB(27, 27, 35)
						Button.Position = UDIM2(0, 30, 0, 16)
						Button.Size = UDIM2(0, 175, 0, 17)
						Button.AutoButtonColor = false
						Button.Font = Enum.Font.SourceSans
						Button.Text = ''
						Button.TextColor3 = COL3RGB(0, 0, 0)
						Button.TextSize = 14.000

						TextLabel.Parent = Button
						TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)
						TextLabel.BackgroundTransparency = 1.000
						TextLabel.BorderColor3 = COL3RGB(27, 42, 53)
						TextLabel.Position = UDIM2(0, 5, 0, 0)
						TextLabel.Size = UDIM2(-0.21714285, 208, 1, 0)
						TextLabel.Font = Enum.Font.SourceSansSemibold
						TextLabel.Text = Element.value.Dropdown
						TextLabel.TextColor3 = COL3RGB(200, 200, 200)
						TextLabel.TextSize = 14.000
						TextLabel.TextXAlignment = Enum.TextXAlignment.Left

						local abcd = TextLabel

						Drop.Name = 'Drop'
						Drop.Parent = Button
						Drop.Active = true
						Drop.BackgroundColor3 = maincolor
						Drop.BorderColor3 = COL3RGB(27, 27, 35)
						Drop.Position = UDIM2(0, 0, 1, 1)
						Drop.Size = UDIM2(1, 0, 0, 20)
						Drop.Visible = false
						Drop.BottomImage = 'http://www.roblox.com/asset/?id=6724808282'
						Drop.CanvasSize = UDIM2(0, 0, 0, 0)
						Drop.ScrollBarThickness = 4
						Drop.MidImage = 'http://www.roblox.com/asset/?id=6724808282'
						Drop.TopImage = 'http://www.roblox.com/asset/?id=6724808282'
						Drop.AutomaticCanvasSize = 'Y'
						Drop.ZIndex = 5
						Drop.ScrollBarImageColor3 = COL3RGB(255, 255, 255)

						UIListLayout.Parent = Drop
						UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
						UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

						local num = #data.options
						if num > 5 then
							Drop.Size = UDIM2(1, 0, 0, 85)
						else
							Drop.Size = UDIM2(1, 0, 0, 17*num)
						end
						Drop.CanvasSize = UDIM2(1, 0, 0, 17*num)
						local first = true
						for i,v in ipairs(data.options) do
							do
								local Button = INST('TextButton')
								local TextLabel = INST('TextLabel')

								Button.Name = v
								Button.Parent = Drop
								Button.BackgroundColor3 = maincolor
								Button.BorderColor3 = COL3RGB(27, 27, 35)
								Button.Position = UDIM2(0, 30, 0, 16)
								Button.Size = UDIM2(0, 175, 0, 17)
								Button.AutoButtonColor = false
								Button.Font = Enum.Font.SourceSans
								Button.Text = ''
								Button.TextColor3 = COL3RGB(0, 0, 0)
								Button.TextSize = 14.000
								Button.BorderSizePixel = 0
								Button.ZIndex = 6

								TextLabel.Parent = Button
								TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)
								TextLabel.BackgroundTransparency = 1.000
								TextLabel.BorderColor3 = COL3RGB(27, 42, 53)
								TextLabel.Position = UDIM2(0, 5, 0, -1)
								TextLabel.Size = UDIM2(-0.21714285, 208, 1, 0)
								TextLabel.Font = Enum.Font.SourceSansSemibold
								TextLabel.Text = v
								TextLabel.TextColor3 = COL3RGB(200, 200, 200)
								TextLabel.TextSize = 14.000
								TextLabel.TextXAlignment = Enum.TextXAlignment.Left
								TextLabel.ZIndex = 6

								Button.MouseButton1Down:Connect(function()
									Drop.Visible = false
									Element.value.Dropdown = v
									abcd.Text = v
									values[tabname][sectorname][tabtext][text] = Element.value
									callback(Element.value)
									Drop.CanvasPosition = Vec2(0,0)
								end)
								Button.MouseEnter:Connect(function()
									library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 =  COL3RGB(255, 255, 255)})
								end)
								Button.MouseLeave:Connect(function()
									library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 =  COL3RGB(200, 200, 200)})
								end)

								first = false
							end
						end

						function Element:SetValue(val)
							Element.value = val
							abcd.Text = val.Dropdown
							values[tabname][sectorname][tabtext][text] = Element.value
							callback(val)
						end

						ImageLabel.Parent = Button
						ImageLabel.BackgroundColor3 = COL3RGB(255, 255, 255)
						ImageLabel.BackgroundTransparency = 1.000
						ImageLabel.Position = UDIM2(0, 165, 0, 6)
						ImageLabel.Size = UDIM2(0, 6, 0, 4)
						ImageLabel.Image = 'http://www.roblox.com/asset/?id=6724771531'

						TextLabel_3.Parent = Dropdown
						TextLabel_3.BackgroundColor3 = COL3RGB(255, 255, 255)
						TextLabel_3.BackgroundTransparency = 1.000
						TextLabel_3.Position = UDIM2(0, 32, 0, -1)
						TextLabel_3.Size = UDIM2(0.111913361, 208, 0.382215232, 0)
						TextLabel_3.Font = Enum.Font.SourceSansSemibold
						TextLabel_3.Text = text
						TextLabel_3.TextColor3 = COL3RGB(200, 200, 200)
						TextLabel_3.TextSize = 14.000
						TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left

						Button.MouseButton1Down:Connect(function()
							Drop.Visible = not Drop.Visible
							if not Drop.Visible then
								Drop.CanvasPosition = Vec2(0,0)
							end
						end)
						local indrop = false
						local ind = false
						Drop.MouseEnter:Connect(function()
							indrop = true
						end)
						Drop.MouseLeave:Connect(function()
							indrop = false
						end)
						Button.MouseEnter:Connect(function()
							ind = true
						end)
						Button.MouseLeave:Connect(function()
							ind = false
						end)
						game:GetService('UserInputService').InputBegan:Connect(function(input)
							if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.MouseButton2 then
								if Drop.Visible == true and not indrop and not ind then
									Drop.Visible = false
									Drop.CanvasPosition = Vec2(0,0)
								end
							end
						end)
						values[tabname][sectorname][tabtext][text] = Element.value
					elseif type == 'Slider' then

						tabsize = tabsize + UDIM2(0,0,0,25)

						local Slider = INST('Frame')
						local TextLabel = INST('TextLabel')
						local Button = INST('TextButton')
						local Frame = INST('Frame')
						local Value = INST('TextBox')

						Slider.Name = 'Slider'
						Slider.Parent = tab1
						Slider.BackgroundColor3 = COL3RGB(255, 255, 255)
						Slider.BackgroundTransparency = 1.000
						Slider.Position = UDIM2(0, 0, 0.653061211, 0)
						Slider.Size = UDIM2(1, 0, 0, 25)

						TextLabel.Parent = Slider
						TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)
						TextLabel.BackgroundTransparency = 1.000
						TextLabel.Position = UDIM2(0, 32, 0, -2)
						TextLabel.Size = UDIM2(0, 100, 0, 15)
						TextLabel.Font = Enum.Font.SourceSansSemibold
						TextLabel.Text = text
						TextLabel.TextColor3 = COL3RGB(200, 200, 200)
						TextLabel.TextSize = 14.000
						TextLabel.TextXAlignment = Enum.TextXAlignment.Left

						Button.Name = 'Button'
						Button.Parent = Slider
						Button.BackgroundColor3 = maincolor
						Button.BorderColor3 = COL3RGB(27, 27, 35)
						Button.Position = UDIM2(0, 30, 0, 15)
						Button.Size = UDIM2(0, 175, 0, 5)
						Button.AutoButtonColor = false
						Button.Font = Enum.Font.SourceSans
						Button.Text = ''
						Button.TextColor3 = COL3RGB(0, 0, 0)
						Button.TextSize = 14.000

						Frame.Parent = Button
						Frame.BackgroundColor3 = COL3RGB(255, 255, 255)
						Frame.BorderSizePixel = 0
						Frame.Size = UDIM2(0.5, 0, 1, 0)

						Value.Name = 'Value'
						Value.Parent = Slider
						Value.BackgroundColor3 = COL3RGB(255, 255, 255)
						Value.BackgroundTransparency = 1.000
						Value.Position = UDIM2(0, 150, 0, -1)
						Value.Size = UDIM2(0, 55, 0, 15)
						Value.Font = Enum.Font.SourceSansSemibold
						Value.Text = '50'
						Value.TextColor3 = COL3RGB(200, 200, 200)
						Value.TextSize = 14.000
						Value.TextXAlignment = Enum.TextXAlignment.Right
						local min, max, default = data.min or 0, data.max or 100, data.default or 0
						Element.value = {Slider = default}

						function Element:SetValue(value)
							Element.value = value
							local a
							if min > 0 then
								a = ((Element.value.Slider - min)) / (max-min)
							else
								a = (Element.value.Slider-min)/(max-min)
							end
							Value.Text = Element.value.Slider
							Frame.Size = UDIM2(a,0,1,0)
							values[tabname][sectorname][tabtext][text] = Element.value
							callback(value)
						end
						local a
						if min > 0 then
							a = ((Element.value.Slider - min)) / (max-min)
						else
							a = (Element.value.Slider-min)/(max-min)
						end
						Value.Text = Element.value.Slider
						Frame.Size = UDIM2(a,0,1,0)
						values[tabname][sectorname][tabtext][text] = Element.value
						local uis = game:GetService('UserInputService')
						local mouse = game.Players.LocalPlayer:GetMouse()
						local val

						Value.FocusLost:Connect(function()
							values[tabname][sectorname][tabtext][text].Slider = tonumber(Value.Text)
							callback(tonumber(Value.Text))
							--Value.Text = Element.value.Slider
							Frame.Size = UDIM2((tonumber(Value.Text)-min)/(max-min),0,1,0)
						end)

						Button.MouseButton1Down:Connect(function()
							Frame.Size = UDIM2(0, CLAMP(mouse.X - Frame.AbsolutePosition.X, 0, 175), 0, 5)
							val = FLOOR((((tonumber(max) - tonumber(min)) / 175) * Frame.AbsoluteSize.X) + tonumber(min)) or 0
							Value.Text = val
							Element.value.Slider = val
							values[tabname][sectorname][tabtext][text] = Element.value
							callback(Element.value)
							moveconnection = mouse.Move:Connect(function()
								Frame.Size = UDIM2(0, CLAMP(mouse.X - Frame.AbsolutePosition.X, 0, 175), 0, 5)
								val = FLOOR((((tonumber(max) - tonumber(min)) / 175) * Frame.AbsoluteSize.X) + tonumber(min))
								Value.Text = val
								Element.value.Slider = val
								values[tabname][sectorname][tabtext][text] = Element.value
								callback(Element.value)
							end)
							releaseconnection = uis.InputEnded:Connect(function(Mouse)
								if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
									Frame.Size = UDIM2(0, CLAMP(mouse.X - Frame.AbsolutePosition.X, 0, 175), 0, 5)
									val = FLOOR((((tonumber(max) - tonumber(min)) / 175) * Frame.AbsoluteSize.X) + tonumber(min))
									values[tabname][sectorname][tabtext][text] = Element.value
									callback(Element.value)
									moveconnection:Disconnect()
									releaseconnection:Disconnect()
								end
							end)
						end)
					elseif type == 'Button' then

						tabsize = tabsize + UDIM2(0,0,0,24)
						local Button = INST('Frame')
						local Button_2 = INST('TextButton')
						local TextLabel = INST('TextLabel')

						Button.Name = 'Button'
						Button.Parent = tab1
						Button.BackgroundColor3 = COL3RGB(255, 255, 255)
						Button.BackgroundTransparency = 1.000
						Button.Position = UDIM2(0, 0, 0.236059487, 0)
						Button.Size = UDIM2(1, 0, 0, 24)

						Button_2.Name = 'Button'
						Button_2.Parent = Button
						Button_2.BackgroundColor3 = maincolor
						Button_2.BorderColor3 = COL3RGB(27, 27, 35)
						Button_2.Position = UDIM2(0, 30, 0.5, -9)
						Button_2.Size = UDIM2(0, 175, 0, 18)
						Button_2.AutoButtonColor = false
						Button_2.Font = Enum.Font.SourceSans
						Button_2.Text = ''
						Button_2.TextColor3 = COL3RGB(0, 0, 0)
						Button_2.TextSize = 14.000

						TextLabel.Parent = Button_2
						TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)
						TextLabel.BackgroundTransparency = 1.000
						TextLabel.BorderColor3 = COL3RGB(27, 42, 53)
						TextLabel.Size = UDIM2(1, 0, 1, 0)
						TextLabel.Font = Enum.Font.SourceSansSemibold
						TextLabel.Text = text
						TextLabel.TextColor3 = COL3RGB(200, 200, 200)
						TextLabel.TextSize = 14.000

						function Element:SetValue()
						end

						Button_2.MouseButton1Down:Connect(function()
							TextLabel.TextColor3 = COL3RGB(150, 150, 150)
							library:Tween(TextLabel, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(200, 200, 200)})
							callback()
						end)
						Button_2.MouseEnter:Connect(function()
							library:Tween(TextLabel, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})
						end)
						Button_2.MouseLeave:Connect(function()
							library:Tween(TextLabel, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(200, 200, 200)})
						end)
					end
					ConfigLoad:Connect(function(cfg)
						local fix = library:ConfigFix(cfg)
						if fix[tabname][sectorname][tabtext][text] ~= nil then
							Element:SetValue(fix[tabname][sectorname][tabtext][text])
						end
					end)

					return Element
				end


				if firs then
					coroutine.wrap(function()
						game:GetService('RunService').RenderStepped:Wait()
						Section.Size = tabsize
					end)()
					selected = text
					TextButton.TextColor3 = COL3RGB(255,255,255)
					tab1.Visible = true
					firs = false
				end

				return tab
			end

			return MSector
		end
		function Tab:Sector(text, side)
			local sectorname = text
			local Sector = {}
			values[tabname][text] = {}
			local Section = INST('Frame')
			local SectionText = INST('TextLabel')
			local Inner = INST('Frame')
			local UIListLayout = INST('UIListLayout')

			Section.Name = 'Section'
			Section.Parent = TabGui[side]
			Section.BackgroundColor3 = COL3RGB(25, 25, 25)
			Section.BorderColor3 = COL3RGB(27, 27, 35)
			Section.BorderSizePixel = 1
			Section.BackgroundTransparency = 0
			Section.Position = UDIM2(0.00358422939, 0, 0, 0)
			Section.Size = UDIM2(1, 0, 0, 22)

						
			local Border = Instance.new('Frame')

			Border.Name = 'Border'
			Border.Parent = Section
			Border.AnchorPoint = Vector2.new(0.5, 0.5)
			Border.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
	table.insert(bordercolorlist, Border)
			Border.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Border.Position = UDim2.new(0.5, 0, 0.5, 0)
			Border.Size = UDim2.new(1, 2, 1, 2)

			
			
			local Border2 = Instance.new('Frame')

			Border2.Name = 'Border'
			Border2.Parent = Section
			Border2.AnchorPoint = Vector2.new(0.5, 0.5)
			Border2.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
			Border2.BorderSizePixel = 0
			Border2.Position = UDim2.new(0.5, 0, 0.5, 0)
			Border2.Size = UDim2.new(1, 0, 1, 0)


			SectionText.Name = 'SectionText'
			SectionText.Parent = Section
			SectionText.BackgroundColor3 = COL3RGB(255, 255, 255)
			SectionText.BackgroundTransparency = 1.000
			SectionText.Position = UDIM2(0, 7, 0, -12)
			SectionText.Size = UDIM2(0, 270, 0, 19)
			SectionText.ZIndex = 2
			SectionText.Font = Enum.Font.SourceSansSemibold
			SectionText.Text = text
			SectionText.TextColor3 = COL3RGB(255, 255, 255)
			SectionText.TextSize = 15.000
			SectionText.TextXAlignment = Enum.TextXAlignment.Left

			Inner.Name = 'Inner'
			Inner.Parent = Section
			Inner.BackgroundColor3 = COL3RGB(25,25,25)
			Inner.BackgroundTransparency = 1.000
			Inner.BorderColor3 = COL3RGB(27, 27, 35)
			Inner.BorderSizePixel = 1
			Inner.Position = UDIM2(0, 1, 0, 1)
			Inner.Size = UDIM2(1, -2, 1, -2)

			local UIPadding = INST('UIPadding')

			UIPadding.Parent = Inner
			UIPadding.PaddingTop = UDim.new(0, 10)

			UIListLayout.Parent = Inner
			UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
			UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout.Padding = UDim.new(0,1)

			function Sector:Element(type, text, data, callback)
				local Element = {}
				data = data or {}
				callback = callback or function() end
				values[tabname][sectorname][text] = {}
				if type == 'ScrollDrop' then
					Section.Size = Section.Size + UDIM2(0,0,0,39)
					Section.BackgroundTransparency = 1.000
					Element.value = {Scroll = {}, Dropdown = ''}

					for i,v in pairs(data.options) do
						Element.value.Scroll[i] = v[1]
					end

					local joe = {}
					if data.alphabet then
						local copy = {}
						for i,v in pairs(data.options) do
							INSERT(copy, i)
						end
						TBLSORT(copy, function(a,b)
							return a < b
						end)
						joe = copy
					else
						for i,v in pairs(data.options) do
							INSERT(joe, i)
						end
					end

					local Dropdown = INST('Frame')
					local Button = INST('TextButton')
					local TextLabel = INST('TextLabel')
					local Drop = INST('ScrollingFrame')
					local Button_2 = INST('TextButton')
					local TextLabel_2 = INST('TextLabel')
					local UIListLayout = INST('UIListLayout')
					local ImageLabel = INST('ImageLabel')
					local TextLabel_3 = INST('TextLabel')

					Dropdown.Name = 'Dropdown'
					Dropdown.Parent = Inner
					Dropdown.BackgroundColor3 = COL3RGB(255, 255, 255)
					Dropdown.BackgroundTransparency = 1.000
					Dropdown.Position = UDIM2(0, 0, 0, 0)
					Dropdown.Size = UDIM2(1, 0, 0, 39)

					Button.Name = 'Button'
					Button.Parent = Dropdown
					Button.BackgroundColor3 = maincolor
					Button.BorderColor3 = COL3RGB(27, 27, 35)
					Button.Position = UDIM2(0, 30, 0, 16)
					Button.Size = UDIM2(0, 175, 0, 17)
					Button.AutoButtonColor = false
					Button.Font = Enum.Font.SourceSans
					Button.Text = ''
					Button.TextColor3 = COL3RGB(0, 0, 0)
					Button.TextSize = 14.000

					local TextLabel = INST('TextLabel')

					TextLabel.Parent = Button
					TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)
					TextLabel.BackgroundTransparency = 1.000
					TextLabel.BorderColor3 = COL3RGB(27, 42, 53)
					TextLabel.Position = UDIM2(0, 5, 0, 0)
					TextLabel.Size = UDIM2(-0.21714285, 208, 1, 0)
					TextLabel.Font = Enum.Font.SourceSansSemibold
					TextLabel.Text = 'lol'
					TextLabel.TextColor3 = COL3RGB(200, 200, 200)
					TextLabel.TextSize = 14.000
					TextLabel.TextXAlignment = Enum.TextXAlignment.Left

					local abcd = TextLabel

					Drop.Name = 'Drop'
					Drop.Parent = Button
					Drop.Active = true
					Drop.BackgroundColor3 = maincolor
					Drop.BorderColor3 = COL3RGB(27, 27, 35)
					Drop.Position = UDIM2(0, 0, 1, 1)
					Drop.Size = UDIM2(1, 0, 0, 20)
					Drop.Visible = false
					Drop.BottomImage = 'http://www.roblox.com/asset/?id=6724808282'
					Drop.CanvasSize = UDIM2(0, 0, 0, 0)
					Drop.ScrollBarThickness = 4
					Drop.TopImage = 'http://www.roblox.com/asset/?id=6724808282'
					Drop.MidImage = 'http://www.roblox.com/asset/?id=6724808282'
					Drop.AutomaticCanvasSize = 'Y'
					Drop.ZIndex = 5
					Drop.ScrollBarImageColor3 = COL3RGB(255, 255, 255)

					UIListLayout.Parent = Drop
					UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
					UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder


					local amount = data.Amount or 6
					Section.Size = Section.Size + UDIM2(0,0,0,amount * 16 + 8)
					Section.BackgroundTransparency = 1.000

					local num = #joe
					if num > 5 then
						Drop.Size = UDIM2(1, 0, 0, 85)
					else
						Drop.Size = UDIM2(1, 0, 0, 17*num)
					end
					local first = true
					for i,v in ipairs(joe) do
						do
							local joell = v
							local Scroll = INST('Frame')
							local joe2 = data.options[v]
							local Button = INST('TextButton')
							local TextLabel = INST('TextLabel')

							Button.Name = v
							Button.Parent = Drop
							Button.BackgroundColor3 = maincolor
							Button.BorderColor3 = COL3RGB(27, 27, 35)
							Button.Position = UDIM2(0, 30, 0, 16)
							Button.Size = UDIM2(0, 175, 0, 17)
							Button.AutoButtonColor = false
							Button.Font = Enum.Font.SourceSans
							Button.Text = ''
							Button.TextColor3 = COL3RGB(0, 0, 0)
							Button.TextSize = 14.000
							Button.BorderSizePixel = 0
							Button.ZIndex = 6

							TextLabel.Parent = Button
							TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)
							TextLabel.BackgroundTransparency = 1.000
							TextLabel.BorderColor3 = COL3RGB(27, 42, 53)
							TextLabel.Position = UDIM2(0, 5, 0, -1)
							TextLabel.Size = UDIM2(-0.21714285, 208, 1, 0)
							TextLabel.Font = Enum.Font.SourceSansSemibold
							TextLabel.Text = v
							TextLabel.TextColor3 = COL3RGB(200, 200, 200)
							TextLabel.TextSize = 14.000
							TextLabel.TextXAlignment = Enum.TextXAlignment.Left
							TextLabel.ZIndex = 6

							Button.MouseButton1Down:Connect(function()
								Drop.Visible = false
								Drop.CanvasPosition = Vec2(0,0)
								abcd.Text = v
								for i,v in pairs(Scroll.Parent:GetChildren()) do
									if v:IsA('Frame') then
										v.Visible = false
									end
								end
								Element.value.Dropdown = v
								Scroll.Visible = true
								callback(Element.value)
							end)
							Button.MouseEnter:Connect(function()
								library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 =  COL3RGB(255, 255, 255)})
							end)
							Button.MouseLeave:Connect(function()
								library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 =  COL3RGB(200, 200, 200)})
							end)

							if first then
								abcd.Text = v
								Element.value.Dropdown = v
							end
							local Frame = INST('ScrollingFrame')
							local UIListLayout = INST('UIListLayout')

							Scroll.Name = 'Scroll'
							Scroll.Parent = Dropdown
							Scroll.BackgroundColor3 = COL3RGB(255, 255, 255)
							Scroll.BackgroundTransparency = 1.000
							Scroll.Position = UDIM2(0, 0, 0, 0)
							Scroll.Size = UDIM2(1, 0, 0, amount * 16 + 8)
							Scroll.Visible = first
							Scroll.Name = v


							Frame.Name = 'Frame'
							Frame.Parent = Scroll
							Frame.Active = true
							Frame.BackgroundColor3 = maincolor
							Frame.BorderColor3 = COL3RGB(27, 27, 35)
							Frame.Position = UDIM2(0, 30, 0, 40)
							Frame.Size = UDIM2(0, 175, 0, 16 * amount)
							Frame.BottomImage = 'http://www.roblox.com/asset/?id=6724808282'
							Frame.CanvasSize = UDIM2(0, 0, 0, 0)
							Frame.MidImage = 'http://www.roblox.com/asset/?id=6724808282'
							Frame.ScrollBarThickness = 4
							Frame.TopImage = 'http://www.roblox.com/asset/?id=6724808282'
							Frame.AutomaticCanvasSize = 'Y'
							Frame.ScrollBarImageColor3 = COL3RGB(255, 255, 255)

							UIListLayout.Parent = Frame
							UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
							UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
							local joll = true
							for i,v in ipairs(joe2) do
								local Button = INST('TextButton')
								local TextLabel = INST('TextLabel')

								Button.Name = v
								Button.Parent = Frame
								Button.BackgroundColor3 = maincolor
								Button.BorderColor3 = COL3RGB(27, 27, 35)
								Button.BorderSizePixel = 0
								Button.Position = UDIM2(0, 30, 0, 16)
								Button.Size = UDIM2(1, 0, 0, 16)
								Button.AutoButtonColor = false
								Button.Font = Enum.Font.SourceSans
								Button.Text = ''
								Button.TextColor3 = COL3RGB(0, 0, 0)
								Button.TextSize = 14.000

								TextLabel.Parent = Button
								TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)
								TextLabel.BackgroundTransparency = 1.000
								TextLabel.BorderColor3 = COL3RGB(27, 42, 53)
								TextLabel.Position = UDIM2(0, 4, 0, -1)
								TextLabel.Size = UDIM2(1, 1, 1, 1)
								TextLabel.Font = Enum.Font.SourceSansSemibold
								TextLabel.Text = v
								TextLabel.TextColor3 = COL3RGB(200, 200, 200)
								TextLabel.TextSize = 14.000
								TextLabel.TextXAlignment = Enum.TextXAlignment.Left
								if joll then
									joll = false
									TextLabel.TextColor3 = COL3RGB(255, 255, 255)
								end

								Button.MouseButton1Down:Connect(function()

									for i,v in pairs(Frame:GetChildren()) do
										if v:IsA('TextButton') then
											library:Tween(v.TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(200, 200, 200)})
										end
									end

									library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})

									Element.value.Scroll[joell] = v

									values[tabname][sectorname][text] = Element.value
									callback(Element.value)
								end)
								Button.MouseEnter:Connect(function()
									if Element.value.Scroll[joell] ~= v then
										library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})
									end
								end)
								Button.MouseLeave:Connect(function()
									if Element.value.Scroll[joell] ~= v then
										library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(200, 200, 200)})
									end
								end)
							end
							first = false
						end
					end

					ImageLabel.Parent = Button
					ImageLabel.BackgroundColor3 = COL3RGB(255, 255, 255)
					ImageLabel.BackgroundTransparency = 1.000
					ImageLabel.Position = UDIM2(0, 165, 0, 6)
					ImageLabel.Size = UDIM2(0, 6, 0, 4)
					ImageLabel.Image = 'http://www.roblox.com/asset/?id=6724771531'

					TextLabel_3.Parent = Dropdown
					TextLabel_3.BackgroundColor3 = COL3RGB(255, 255, 255)
					TextLabel_3.BackgroundTransparency = 1.000
					TextLabel_3.Position = UDIM2(0, 32, 0, -1)
					TextLabel_3.Size = UDIM2(0.111913361, 208, 0.382215232, 0)
					TextLabel_3.Font = Enum.Font.SourceSansSemibold
					TextLabel_3.Text = text
					TextLabel_3.TextColor3 = COL3RGB(200, 200, 200)
					TextLabel_3.TextSize = 14.000
					TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left

					Button.MouseButton1Down:Connect(function()
						Drop.Visible = not Drop.Visible
						if not Drop.Visible then
							Drop.CanvasPosition = Vec2(0,0)
						end
					end)
					local indrop = false
					local ind = false
					Drop.MouseEnter:Connect(function()
						indrop = true
					end)
					Drop.MouseLeave:Connect(function()
						indrop = false
					end)
					Button.MouseEnter:Connect(function()
						ind = true
					end)
					Button.MouseLeave:Connect(function()
						ind = false
					end)
					game:GetService('UserInputService').InputBegan:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.MouseButton2 then
							if Drop.Visible == true and not indrop and not ind then
								Drop.Visible = false
								Drop.CanvasPosition = Vec2(0,0)
							end
						end
					end)

					function Element:SetValue(tbl)
						Element.value = tbl
						abcd.Text = tbl.Dropdown
						values[tabname][sectorname][text] = Element.value
						for i,v in pairs(Dropdown:GetChildren()) do
							if v:IsA('Frame') then
								if v.Name == Element.value.Dropdown then
									v.Visible = true
								else
									v.Visible = false
								end
								for _,bad in pairs(v.Frame:GetChildren()) do
									if bad:IsA('TextButton') then
										bad.TextLabel.TextColor3 = COL3RGB(200, 200, 200)
										if bad.Name == Element.value.Scroll[v.Name] then
											bad.TextLabel.TextColor3 = COL3RGB(255, 255, 255)
										end
									end
								end
							end
						end
					end

					if data.default then
						Element:SetValue(data.default)
					end

					values[tabname][sectorname][text] = Element.value

				elseif type == 'Scroll' then
					local amount = data.Amount or 6
					Section.Size = Section.Size + UDIM2(0,0,0,amount * 16 + 8)
					if data.alphabet then
						TBLSORT(data.options, function(a,b)
							return a < b
						end)
					end
					Element.value = {Scroll = data.default and data.default.Scroll or data.options[1]}

					local Scroll = INST('Frame')
					local Frame = INST('ScrollingFrame')
					local UIListLayout = INST('UIListLayout')

					Scroll.Name = 'Scroll'
					Scroll.Parent = Inner
					Scroll.BackgroundColor3 = COL3RGB(255, 255, 255)
					Scroll.BackgroundTransparency = 1.000
					Scroll.Position = UDIM2(0, 0, 00, 0)
					Scroll.Size = UDIM2(1, 0, 0, amount * 16 + 8)


					Frame.Name = 'Frame'
					Frame.Parent = Scroll
					Frame.Active = true
					Frame.BackgroundColor3 = maincolor
					Frame.BorderColor3 = COL3RGB(27, 27, 35)
					Frame.Position = UDIM2(0, 30, 0, 0)
					Frame.Size = UDIM2(0, 175, 0, 16 * amount)
					Frame.BottomImage = 'http://www.roblox.com/asset/?id=6724808282'
					Frame.CanvasSize = UDIM2(0, 0, 0, 0)
					Frame.MidImage = 'http://www.roblox.com/asset/?id=6724808282'
					Frame.ScrollBarThickness = 4
					Frame.TopImage = 'http://www.roblox.com/asset/?id=6724808282'
					Frame.AutomaticCanvasSize = 'Y'
					Frame.ScrollBarImageColor3 = COL3RGB(255, 255, 255)

					UIListLayout.Parent = Frame
					UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
					UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
					local first = true
					for i,v in ipairs(data.options) do
						local Button = INST('TextButton')
						local TextLabel = INST('TextLabel')

						Button.Name = v
						Button.Parent = Frame
						Button.BackgroundColor3 = maincolor
						Button.BorderColor3 = COL3RGB(27, 27, 35)
						Button.BorderSizePixel = 0
						Button.Position = UDIM2(0, 30, 0, 16)
						Button.Size = UDIM2(1, 0, 0, 16)
						Button.AutoButtonColor = false
						Button.Font = Enum.Font.SourceSans
						Button.Text = ''
						Button.TextColor3 = COL3RGB(0, 0, 0)
						Button.TextSize = 14.000

						TextLabel.Parent = Button
						TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)
						TextLabel.BackgroundTransparency = 1.000
						TextLabel.BorderColor3 = COL3RGB(27, 42, 53)
						TextLabel.Position = UDIM2(0, 4, 0, -1)
						TextLabel.Size = UDIM2(1, 1, 1, 1)
						TextLabel.Font = Enum.Font.SourceSansSemibold
						TextLabel.Text = v
						TextLabel.TextColor3 = COL3RGB(200, 200, 200)
						TextLabel.TextSize = 14.000
						TextLabel.TextXAlignment = Enum.TextXAlignment.Left
						if first then first = false
							TextLabel.TextColor3 = COL3RGB(255, 255, 255)
						end

						Button.MouseButton1Down:Connect(function()

							for i,v in pairs(Frame:GetChildren()) do
								if v:IsA('TextButton') then
									library:Tween(v.TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(200, 200, 200)})
								end
							end

							library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})

							Element.value.Scroll = v

							values[tabname][sectorname][text] = Element.value
							callback(Element.value)
						end)
						Button.MouseEnter:Connect(function()
							if Element.value.Scroll ~= v then
								library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})
							end
						end)
						Button.MouseLeave:Connect(function()
							if Element.value.Scroll ~= v then
								library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(200, 200, 200)})
							end
						end)
					end

					function Element:SetValue(val)
						Element.value = val

						for i,v in pairs(Frame:GetChildren()) do
							if v:IsA('TextButton') then
								library:Tween(v.TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(200, 200, 200)})
							end
						end

						library:Tween(Frame[Element.value.Scroll].TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})
						values[tabname][sectorname][text] = Element.value
						callback(Element.value)
					end
					values[tabname][sectorname][text] = Element.value
				elseif type == 'Jumbobox' then
					Section.Size = Section.Size + UDIM2(0,0,0,39)
					Element.value = {Jumbobox = {}}
					data.options = data.options or {}

					local Dropdown = INST('Frame')
					local Button = INST('TextButton')
					local TextLabel = INST('TextLabel')
					local Drop = INST('ScrollingFrame')
					local Button_2 = INST('TextButton')
					local TextLabel_2 = INST('TextLabel')
					local UIListLayout = INST('UIListLayout')
					local ImageLabel = INST('ImageLabel')
					local TextLabel_3 = INST('TextLabel')

					Dropdown.Name = 'Dropdown'
					Dropdown.Parent = Inner
					Dropdown.BackgroundColor3 = COL3RGB(33, 35, 255)
					Dropdown.BackgroundTransparency = 1.000
					Dropdown.Position = UDIM2(0, 0, 0.255102038, 0)
					Dropdown.Size = UDIM2(1, 0, 0, 39)

					Button.Name = 'Button'
					Button.Parent = Dropdown
					Button.BackgroundColor3 = maincolor
					Button.BorderColor3 = COL3RGB(27, 27, 35)
					Button.Position = UDIM2(0, 30, 0, 16)
					Button.Size = UDIM2(0, 175, 0, 17)
					Button.AutoButtonColor = false
					Button.Font = Enum.Font.SourceSans
					Button.Text = ''
					Button.TextColor3 = COL3RGB(0, 0, 0)
					Button.TextSize = 14.000

					TextLabel.Parent = Button
					TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)
					TextLabel.BackgroundTransparency = 1.000
					TextLabel.BorderColor3 = COL3RGB(27, 42, 53)
					TextLabel.Position = UDIM2(0, 5, 0, 0)
					TextLabel.Size = UDIM2(-0.21714285, 208, 1, 0)
					TextLabel.Font = Enum.Font.SourceSansSemibold
					TextLabel.Text = '...'
					TextLabel.TextColor3 = COL3RGB(200, 200, 200)
					TextLabel.TextSize = 14.000
					TextLabel.TextXAlignment = Enum.TextXAlignment.Left

					local abcd = TextLabel

					Drop.Name = 'Drop'
					Drop.Parent = Button
					Drop.Active = true
					Drop.BackgroundColor3 = maincolor
					Drop.BorderColor3 = COL3RGB(27, 27, 35)
					Drop.Position = UDIM2(0, 0, 1, 1)
					Drop.Size = UDIM2(1, 0, 0, 20)
					Drop.Visible = false
					Drop.BottomImage = 'http://www.roblox.com/asset/?id=6724808282'
					Drop.CanvasSize = UDIM2(0, 0, 0, 0)
					Drop.ScrollBarThickness = 4
					Drop.TopImage = 'http://www.roblox.com/asset/?id=6724808282'
					Drop.MidImage = 'http://www.roblox.com/asset/?id=6724808282'
					--Drop.AutomaticCanvasSize = 'Y'
					for i,v in pairs(data.options) do
						Drop.CanvasSize = Drop.CanvasSize + UDIM2(0, 0, 0, 17)
					end
					Drop.ZIndex = 5
					Drop.ScrollBarImageColor3 = COL3RGB(255, 255, 255)

					UIListLayout.Parent = Drop
					UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
					UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

					values[tabname][sectorname][text] = Element.value

					local num = #data.options
					if num > 5 then
						Drop.Size = UDIM2(1, 0, 0, 85)
					else
						Drop.Size = UDIM2(1, 0, 0, 17*num)
					end
					local first = true

					local function updatetext()
						local old = {}
						for i,v in ipairs(data.options) do
							if TBLFIND(Element.value.Jumbobox, v) then
								INSERT(old, v)
							else
							end
						end
						local str = ''


						if #old == 0 then
							str = '...'
						else
							if #old == 1 then
								str = old[1]
							else
								for i,v in ipairs(old) do
									if i == 1 then
										str = v
									else
										if i > 2 then
											if i < 4 then
												str = str..',  ...'
											end
										else
											str = str..',  '..v
										end
									end
								end
							end
						end

						abcd.Text = str
					end
					for i,v in ipairs(data.options) do
						do
							local Button = INST('TextButton')
							local TextLabel = INST('TextLabel')

							Button.Name = v
							Button.Parent = Drop
							Button.BackgroundColor3 = maincolor
							Button.BorderColor3 = COL3RGB(27, 27, 35)
							Button.Position = UDIM2(0, 30, 0, 16)
							Button.Size = UDIM2(0, 175, 0, 17)
							Button.AutoButtonColor = false
							Button.Font = Enum.Font.SourceSans
							Button.Text = ''
							Button.TextColor3 = COL3RGB(0, 0, 0)
							Button.TextSize = 14.000
							Button.BorderSizePixel = 0
							Button.ZIndex = 6

							TextLabel.Parent = Button
							TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)
							TextLabel.BackgroundTransparency = 1.000
							TextLabel.BorderColor3 = COL3RGB(27, 42, 53)
							TextLabel.Position = UDIM2(0, 5, 0, -1)
							TextLabel.Size = UDIM2(-0.21714285, 208, 1, 0)
							TextLabel.Font = Enum.Font.SourceSansSemibold
							TextLabel.Text = v
							TextLabel.TextColor3 = COL3RGB(200, 200, 200)
							TextLabel.TextSize = 14.000
							TextLabel.TextXAlignment = Enum.TextXAlignment.Left
							TextLabel.ZIndex = 6

							Button.MouseButton1Down:Connect(function()
								if TBLFIND(Element.value.Jumbobox, v) then
									for i,a in pairs(Element.value.Jumbobox) do
										if a == v then
											TBLREMOVE(Element.value.Jumbobox, i)
										end
									end
									library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})
								else
									INSERT(Element.value.Jumbobox, v)
									library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(150, 150, 150)})
								end
								updatetext()

								values[tabname][sectorname][text] = Element.value
								callback(Element.value)
							end)
							Button.MouseEnter:Connect(function()
								if not TBLFIND(Element.value.Jumbobox, v) then
									library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})
								end
							end)
							Button.MouseLeave:Connect(function()
								if not TBLFIND(Element.value.Jumbobox, v) then
									library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(200, 200, 200)})
								end
							end)

							first = false
						end
					end
					function Element:SetValue(val)
						Element.value = val
						for i,v in pairs(Drop:GetChildren()) do
							if v.Name ~= 'UIListLayout' then
								if TBLFIND(val.Jumbobox, v.Name) then
									v.TextLabel.TextColor3 = COL3RGB(150, 150, 150)
								else
									v.TextLabel.TextColor3 = COL3RGB(200, 200, 200)
								end
							end
						end
						updatetext()
						values[tabname][sectorname][text] = Element.value
						callback(val)
					end
					if data.default then
						Element:SetValue(data.default)
					end

					ImageLabel.Parent = Button
					ImageLabel.BackgroundColor3 = COL3RGB(255, 255, 255)
					ImageLabel.BackgroundTransparency = 1.000
					ImageLabel.Position = UDIM2(0, 165, 0, 6)
					ImageLabel.Size = UDIM2(0, 6, 0, 4)
					ImageLabel.Image = 'http://www.roblox.com/asset/?id=6724771531'

					TextLabel_3.Parent = Dropdown
					TextLabel_3.BackgroundColor3 = COL3RGB(255, 255, 255)
					TextLabel_3.BackgroundTransparency = 1.000
					TextLabel_3.Position = UDIM2(0, 32, 0, -1)
					TextLabel_3.Size = UDIM2(0.111913361, 208, 0.382215232, 0)
					TextLabel_3.Font = Enum.Font.SourceSansSemibold
					TextLabel_3.Text = text
					TextLabel_3.TextColor3 = COL3RGB(200, 200, 200)
					TextLabel_3.TextSize = 14.000
					TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left

					Button.MouseButton1Down:Connect(function()
						Drop.Visible = not Drop.Visible
						if not Drop.Visible then
							Drop.CanvasPosition = Vec2(0,0)
						end
					end)
					local indrop = false
					local ind = false
					Drop.MouseEnter:Connect(function()
						indrop = true
					end)
					Drop.MouseLeave:Connect(function()
						indrop = false
					end)
					Button.MouseEnter:Connect(function()
						ind = true
					end)
					Button.MouseLeave:Connect(function()
						ind = false
					end)
					
					game:GetService('UserInputService').InputBegan:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.MouseButton2 then
							if Drop.Visible == true and not indrop and not ind then
								Drop.Visible = false
								Drop.CanvasPosition = Vec2(0,0)
							end
						end
					end)
				elseif type == 'ToggleKeybind' then
					Section.Size = Section.Size + UDIM2(0,0,0,16)
					Element.value = {Toggle = data.default and data.default.Toggle or false, Key, Type = 'Always', Active = true}

					local Toggle = INST('Frame')
					local Button = INST('TextButton')
					local Color = INST('Frame')
					local TextLabel = INST('TextLabel')

					Toggle.Name = 'Toggle'
					Toggle.Parent = Inner
					Toggle.BackgroundColor3 = COL3RGB(255, 255, 255)
					Toggle.BackgroundTransparency = 1.000
					Toggle.Size = UDIM2(1, 0, 0, 15)

					Button.Name = 'Button'
					Button.Parent = Toggle
					Button.BackgroundColor3 = COL3RGB(255, 255, 255)
					Button.BackgroundTransparency = 1.000
					Button.Size = UDIM2(1, 0, 1, 0)
					Button.Font = Enum.Font.SourceSans
					Button.Text = ''
					Button.TextColor3 = COL3RGB(0, 0, 0)
					Button.TextSize = 14.000

					Color.Name = 'Color'
					Color.Parent = Button
					Color.BackgroundColor3 = maincolor
					Color.BorderColor3 = COL3RGB(0, 0, 0)
					Color.Position = UDIM2(0, 15, 0.5, -5)
					Color.Size = UDIM2(0, 8, 0, 8)

					local binding = false
					TextLabel.Parent = Button
					TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)
					TextLabel.BackgroundTransparency = 1.000
					TextLabel.Position = UDIM2(0, 32, 0, -1)
					TextLabel.Size = UDIM2(0.111913361, 208, 1, 0)
					TextLabel.Font = Enum.Font.SourceSansSemibold
					TextLabel.Text = text
					TextLabel.TextColor3 = COL3RGB(200, 200, 200)
					TextLabel.TextSize = 14.000
					TextLabel.TextXAlignment = Enum.TextXAlignment.Left

					local function update()
						if Element.value.Toggle then
							tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = COL3RGB(255, 255, 255)})
							library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})
						else
							keybindremove(text)
							tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = maincolor})
							library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(200, 200, 200)})
						end
						values[tabname][sectorname][text] = Element.value
						callback(Element.value)
					end

					Button.MouseButton1Down:Connect(function()
						if not binding then
							Element.value.Toggle = not Element.value.Toggle
							update()
							values[tabname][sectorname][text] = Element.value
							callback(Element.value)
						end
					end)
					if data.default then
						update()
					end
					values[tabname][sectorname][text] = Element.value
					do
						local Keybind = INST('TextButton')
						local Frame = INST('Frame')
						local Always = INST('TextButton')
						local UIListLayout = INST('UIListLayout')
						local Hold = INST('TextButton')
						local Toggle = INST('TextButton')

						Keybind.Name = 'Keybind'
						Keybind.Parent = Button
						Keybind.BackgroundColor3 = maincolor
						Keybind.BorderColor3 = COL3RGB(27, 27, 35)
						Keybind.Position = UDIM2(0, 270, 0.5, -6)
						Keybind.Text = 'NONE'
						Keybind.Size = UDIM2(0, 43, 0, 12)
						Keybind.Size = UDIM2(0,txt:GetTextSize('NONE', 14, Enum.Font.SourceSansSemibold, Vec2(700, 12)).X + 5,0, 12)
						Keybind.AutoButtonColor = false
						Keybind.Font = Enum.Font.SourceSansSemibold
						Keybind.TextColor3 = COL3RGB(200, 200, 200)
						Keybind.TextSize = 14.000
						Keybind.AnchorPoint = Vec2(1,0)
						Keybind.ZIndex = 3

						Frame.Parent = Keybind
						Frame.BackgroundColor3 = maincolor
						Frame.BorderColor3 = COL3RGB(27, 27, 35)
						Frame.Position = UDIM2(1, -49, 0, 1)
						Frame.Size = UDIM2(0, 49, 0, 49)
						Frame.Visible = false
						Frame.ZIndex = 3

						Always.Name = 'Always'
						Always.Parent = Frame
						Always.BackgroundColor3 = maincolor
						Always.BackgroundTransparency = 1.000
						Always.BorderColor3 = COL3RGB(27, 27, 35)
						Always.Position = UDIM2(-3.03289485, 231, 0.115384616, -6)
						Always.Size = UDIM2(1, 0, 0, 16)
						Always.AutoButtonColor = false
						Always.Font = Enum.Font.SourceSansBold
						Always.Text = 'Always'
						Always.TextColor3 = COL3RGB(255, 255, 255)
						Always.TextSize = 14.000
						Always.ZIndex = 3

						UIListLayout.Parent = Frame
						UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
						UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

						Hold.Name = 'Hold'
						Hold.Parent = Frame
						Hold.BackgroundColor3 = maincolor
						Hold.BackgroundTransparency = 1.000
						Hold.BorderColor3 = COL3RGB(27, 27, 35)
						Hold.Position = UDIM2(-3.03289485, 231, 0.115384616, -6)
						Hold.Size = UDIM2(1, 0, 0, 16)
						Hold.AutoButtonColor = false
						Hold.Font = Enum.Font.SourceSansSemibold
						Hold.Text = 'Hold'
						Hold.TextColor3 = COL3RGB(200, 200, 200)
						Hold.TextSize = 14.000
						Hold.ZIndex = 3

						Toggle.Name = 'Toggle'
						Toggle.Parent = Frame
						Toggle.BackgroundColor3 = maincolor
						Toggle.BackgroundTransparency = 1.000
						Toggle.BorderColor3 = COL3RGB(27, 27, 35)
						Toggle.Position = UDIM2(-3.03289485, 231, 0.115384616, -6)
						Toggle.Size = UDIM2(1, 0, 0, 16)
						Toggle.AutoButtonColor = false
						Toggle.Font = Enum.Font.SourceSansSemibold
						Toggle.Text = 'Toggle'
						Toggle.TextColor3 = COL3RGB(200, 200, 200)
						Toggle.TextSize = 14.000
						Toggle.ZIndex = 3

						for _,button in pairs(Frame:GetChildren()) do
							if button:IsA('TextButton') then
								button.MouseButton1Down:Connect(function()
									Element.value.Type = button.Text
									Frame.Visible = false
									if Element.value.Active ~= (Element.value.Type == 'Always' and true or false) then
										Element.value.Active = Element.value.Type == 'Always' and true or false
										callback(Element.value)
									end
									if button.Text == 'Always' then
										keybindremove(text)
									end
									for _,button in pairs(Frame:GetChildren()) do
										if button:IsA('TextButton') and button.Text ~= Element.value.Type then
											button.Font = Enum.Font.SourceSansSemibold
											library:Tween(button, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(200,200,200)})
										end
									end
									button.Font = Enum.Font.SourceSansBold
									button.TextColor3 = COL3RGB(255, 255, 255)
									values[tabname][sectorname][text] = Element.value
								end)
								button.MouseEnter:Connect(function()
									if Element.value.Type ~= button.Text then
										library:Tween(button, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255,255,255)})
									end
								end)
								button.MouseLeave:Connect(function()
									if Element.value.Type ~= button.Text then
										library:Tween(button, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(200,200,200)})
									end
								end)
							end
						end
						Keybind.MouseButton1Down:Connect(function()
							if not binding then
								wait()
								binding = true
								Keybind.Text = '...'
								Keybind.Size = UDIM2(0,txt:GetTextSize('...', 14, Enum.Font.SourceSansSemibold, Vec2(700, 12)).X + 4,0, 12)
							end
						end)
						Keybind.MouseButton2Down:Connect(function()
							if not binding then
								Frame.Visible = not Frame.Visible
							end
						end)
						local Player = game.Players.LocalPlayer
						local Mouse = Player:GetMouse()
						local InFrame = false
						Frame.MouseEnter:Connect(function()
							InFrame = true
						end)
						Frame.MouseLeave:Connect(function()
							InFrame = false
						end)
						local InFrame2 = false
						Keybind.MouseEnter:Connect(function()
							InFrame2 = true
						end)
						Keybind.MouseLeave:Connect(function()
							InFrame2 = false
						end)
						game:GetService('UserInputService').InputBegan:Connect(function(input)
							if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.MouseButton2 and not binding then
								if Frame.Visible == true and not InFrame and not InFrame2 then
									Frame.Visible = false
								end
							end
							if binding then
								binding = false
								Keybind.Text = input.KeyCode.Name ~= 'Unknown' and input.KeyCode.Name:upper() or input.UserInputType.Name:upper()
								Keybind.Size = UDIM2(0,txt:GetTextSize(Keybind.Text, 14, Enum.Font.SourceSansSemibold, Vec2(700, 12)).X + 5,0, 12)
								Element.value.Key = input.KeyCode.Name ~= 'Unknown' and input.KeyCode.Name or input.UserInputType.Name
								if input.KeyCode.Name == 'Backspace' then
									Keybind.Text = 'NONE'
									Keybind.Size = UDIM2(0,txt:GetTextSize(Keybind.Text, 14, Enum.Font.SourceSansSemibold, Vec2(700, 12)).X + 4,0, 12)
									Element.value.Key = nil
									Element.value.Active = true
								end
								callback(Element.value)
							else
								if Element.value.Key ~= nil then
									if FIND(Element.value.Key, 'Mouse') then
										if input.UserInputType == Enum.UserInputType[Element.value.Key] then
											if Element.value.Type == 'Hold' then
												Element.value.Active = true
												callback(Element.value)
												if Element.value.Active and Element.value.Toggle then
													keybindadd(text)
												else
													keybindremove(text)
												end
											elseif Element.value.Type == 'Toggle' then
												Element.value.Active = not Element.value.Active
												callback(Element.value)
												if Element.value.Active and Element.value.Toggle then
													keybindadd(text)
												else
													keybindremove(text)
												end
											end
										end
									else
										if input.KeyCode == Enum.KeyCode[Element.value.Key] then
											if Element.value.Type == 'Hold' then
												Element.value.Active = true
												callback(Element.value)
												if Element.value.Active and Element.value.Toggle then
													keybindadd(text)
												else
													keybindremove(text)
												end
											elseif Element.value.Type == 'Toggle' then
												Element.value.Active = not Element.value.Active
												callback(Element.value)
												if Element.value.Active and Element.value.Toggle then
													keybindadd(text)
												else
													keybindremove(text)
												end
											end
										end
									end
								else
									Element.value.Active = true
								end
							end
							values[tabname][sectorname][text] = Element.value
						end)
						game:GetService('UserInputService').InputEnded:Connect(function(input)
							if Element.value.Key ~= nil then
								if FIND(Element.value.Key, 'Mouse') then
									if input.UserInputType == Enum.UserInputType[Element.value.Key] then
										if Element.value.Type == 'Hold' then
											Element.value.Active = false
											callback(Element.value)
											if Element.value.Active then
												keybindadd(text)
											else
												keybindremove(text)
											end
										end
									end
								else
									if input.KeyCode == Enum.KeyCode[Element.value.Key] then
										if Element.value.Type == 'Hold' then
											Element.value.Active = false
											callback(Element.value)
											if Element.value.Active then
												keybindadd(text)
											else
												keybindremove(text)
											end
										end
									end
								end
							end
							values[tabname][sectorname][text] = Element.value
						end)
					end
					function Element:SetValue(value)
						Element.value = value
						update()
					end
				elseif type == 'Toggle' then
					Section.Size = Section.Size + UDIM2(0,0,0,16)
					Element.value = {Toggle = data.default and data.default.Toggle or false}

					local Toggle = INST('Frame')
					local Button = INST('TextButton')
					local Color = INST('Frame')
					local TextLabel = INST('TextLabel')
					Toggle.Name = 'Toggle'
					Toggle.Parent = Inner
					Toggle.BackgroundColor3 = COL3RGB(255, 255, 255)
					Toggle.BackgroundTransparency = 1.000
					Toggle.Size = UDIM2(1, 0, 0, 15)

					Button.Name = 'Button'
					Button.Parent = Toggle
					Button.BackgroundColor3 = COL3RGB(255, 255, 255)
					Button.BackgroundTransparency = 1.000
					Button.Size = UDIM2(1, 0, 1, 0)
					Button.Font = Enum.Font.SourceSans
					Button.Text = ''
					Button.TextColor3 = COL3RGB(0, 0, 0)
					Button.TextSize = 14.000

					Color.Name = 'Color'
					Color.Parent = Button
					Color.BackgroundColor3 = maincolor
					Color.BorderColor3 = COL3RGB(0, 0, 0)
					Color.Position = UDIM2(0, 15, 0.5, -5)
					Color.Size = UDIM2(0, 8, 0, 8)


					TextLabel.Parent = Button
					TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)
					TextLabel.BackgroundTransparency = 1.000
					TextLabel.Position = UDIM2(0, 32, 0, -1)
					TextLabel.Size = UDIM2(0.111913361, 208, 1, 0)
					TextLabel.Font = Enum.Font.SourceSansSemibold
					TextLabel.Text = text
					TextLabel.TextColor3 = COL3RGB(200, 200, 200)
					TextLabel.TextSize = 14.000
					TextLabel.TextXAlignment = Enum.TextXAlignment.Left

					local function update()
						if Element.value.Toggle then
							tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = COL3RGB(255, 255, 255)})
							library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})
						else
							tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = maincolor})
							library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(200, 200, 200)})
						end
						values[tabname][sectorname][text] = Element.value
					end

					Button.MouseButton1Down:Connect(function()
						Element.value.Toggle = not Element.value.Toggle
						update()
						values[tabname][sectorname][text] = Element.value
						callback(Element.value)
					end)
					if data.default then
						update()
					end
					values[tabname][sectorname][text] = Element.value
					function Element:SetValue(value)
						Element.value = value
						values[tabname][sectorname][text] = Element.value
						update()
						callback(Element.value)
					end
				elseif type == 'ToggleColor' then
					Section.Size = Section.Size + UDIM2(0,0,0,16)
					Element.value = {Toggle = data.default and data.default.Toggle or false, Color = data.default and data.default.Color or COL3RGB(255,255,255)}

					local Toggle = INST('Frame')
					local Button = INST('TextButton')
					local Color = INST('Frame')
					local TextLabel = INST('TextLabel')

					Toggle.Name = 'Toggle'
					Toggle.Parent = Inner
					Toggle.BackgroundColor3 = COL3RGB(255, 255, 255)
					Toggle.BackgroundTransparency = 1.000
					Toggle.Size = UDIM2(1, 0, 0, 15)

					Button.Name = 'Button'
					Button.Parent = Toggle
					Button.BackgroundColor3 = COL3RGB(255, 255, 255)
					Button.BackgroundTransparency = 1.000
					Button.Size = UDIM2(1, 0, 1, 0)
					Button.Font = Enum.Font.SourceSans
					Button.Text = ''
					Button.TextColor3 = COL3RGB(0, 0, 0)
					Button.TextSize = 14.000

					local Gradient = Instance.new('UIGradient')

					Color.Name = 'Color'
					Color.Parent = Button
					Color.BackgroundColor3 = maincolor
					Color.BorderColor3 = COL3RGB(0, 0, 0)
					Color.Position = UDIM2(0, 15, 0.5, -5)
					Color.Size = UDIM2(0, 8, 0, 8)

					Gradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(180, 180, 180))}
					Gradient.Rotation = 90
					Gradient.Name = 'Gradient'
					Gradient.Parent = Color

					TextLabel.Parent = Button
					TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)
					TextLabel.BackgroundTransparency = 1.000
					TextLabel.Position = UDIM2(0, 32, 0, -1)
					TextLabel.Size = UDIM2(0.111913361, 208, 1, 0)
					TextLabel.Font = Enum.Font.SourceSansSemibold
					TextLabel.Text = text
					TextLabel.TextColor3 = COL3RGB(200, 200, 200)
					TextLabel.TextSize = 14.000
					TextLabel.TextXAlignment = Enum.TextXAlignment.Left

					local function update()
						if Element.value.Toggle then
							tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = COL3RGB(255, 255, 255)})
							library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})
						else
							tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = maincolor})
							library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(200, 200, 200)})
						end
						values[tabname][sectorname][text] = Element.value
					end

					local ColorH,ColorS,ColorV

					local ColorP = INST('TextButton')
					local Frame = INST('Frame')
					local Colorpick = INST('ImageButton')
					local ColorDrag = INST('Frame')
					local Huepick = INST('ImageButton')
					local Huedrag = INST('Frame')

					ColorP.Name = 'ColorP'
					ColorP.Parent = Button
					ColorP.AnchorPoint = Vec2(1, 0)
					ColorP.BackgroundColor3 = COL3RGB(255, 0, 0)
					ColorP.BorderColor3 = COL3RGB(27, 27, 35)
					ColorP.Position = UDIM2(0, 270, 0.5, -4)
					ColorP.Size = UDIM2(0, 18, 0, 8)
					ColorP.AutoButtonColor = false
					ColorP.Font = Enum.Font.SourceSansSemibold
					ColorP.Text = ''
					ColorP.TextColor3 = COL3RGB(200, 200, 200)
					ColorP.TextSize = 14.000

					Frame.Parent = ColorP
					Frame.BackgroundColor3 = maincolor
					Frame.BorderColor3 = COL3RGB(27, 27, 35)
					Frame.Position = UDIM2(-0.666666687, -170, 1.375, 0)
					Frame.Size = UDIM2(0, 200, 0, 170)
					Frame.Visible = false
					Frame.ZIndex = 3

					Colorpick.Name = 'Colorpick'
					Colorpick.Parent = Frame
					Colorpick.BackgroundColor3 = COL3RGB(255, 255, 255)
					Colorpick.BorderColor3 = COL3RGB(27, 27, 35)
					Colorpick.ClipsDescendants = false
					Colorpick.Position = UDIM2(0, 40, 0, 10)
					Colorpick.Size = UDIM2(0, 150, 0, 150)
					Colorpick.AutoButtonColor = false
					Colorpick.Image = 'rbxassetid://4155801252'
					Colorpick.ImageColor3 = COL3RGB(255, 0, 0)
					Colorpick.ZIndex = 3

					ColorDrag.Name = 'ColorDrag'
					ColorDrag.Parent = Colorpick
					ColorDrag.AnchorPoint = Vec2(0.5, 0.5)
					ColorDrag.BackgroundColor3 = COL3RGB(255, 255, 255)
					ColorDrag.BorderColor3 = COL3RGB(27, 27, 35)
					ColorDrag.Size = UDIM2(0, 4, 0, 4)
					ColorDrag.ZIndex = 3

					Huepick.Name = 'Huepick'
					Huepick.Parent = Frame
					Huepick.BackgroundColor3 = COL3RGB(255, 255, 255)
					Huepick.BorderColor3 = COL3RGB(27, 27, 35)
					Huepick.ClipsDescendants = false
					Huepick.Position = UDIM2(0, 10, 0, 10)
					Huepick.Size = UDIM2(0, 20, 0, 150)
					Huepick.AutoButtonColor = false
					Huepick.Image = 'rbxassetid://3641079629'
					Huepick.ImageColor3 = COL3RGB(255, 0, 0)
					Huepick.ImageTransparency = 1
					Huepick.BackgroundTransparency = 0
					Huepick.ZIndex = 3

					local HueFrameGradient = INST('UIGradient')
					HueFrameGradient.Rotation = 90
					HueFrameGradient.Name = 'HueFrameGradient'
					HueFrameGradient.Parent = Huepick
					HueFrameGradient.Color = ColorSequence.new {
						ColorSequenceKeypoint.new(0.00, COL3RGB(255, 0, 0)),
						ColorSequenceKeypoint.new(0.17, COL3RGB(255, 0, 255)),
						ColorSequenceKeypoint.new(0.33, COL3RGB(0, 0, 255)),
						ColorSequenceKeypoint.new(0.50, COL3RGB(0, 255, 255)),
						ColorSequenceKeypoint.new(0.67, COL3RGB(0, 255, 0)),
						ColorSequenceKeypoint.new(0.83, COL3RGB(255, 255, 0)),
						ColorSequenceKeypoint.new(1.00, COL3RGB(255, 0, 0))
					}	

					Huedrag.Name = 'Huedrag'
					Huedrag.Parent = Huepick
					Huedrag.BackgroundColor3 = COL3RGB(255, 255, 255)
					Huedrag.BorderColor3 = COL3RGB(27, 27, 35)
					Huedrag.Size = UDIM2(1, 0, 0, 2)
					Huedrag.ZIndex = 3

					ColorP.MouseButton1Down:Connect(function()
						Frame.Visible = not Frame.Visible
					end)
					local abc = false
					local inCP = false
					ColorP.MouseEnter:Connect(function()
						abc = true
					end)
					ColorP.MouseLeave:Connect(function()
						abc = false
					end)
					Frame.MouseEnter:Connect(function()
						inCP = true
					end)
					Frame.MouseLeave:Connect(function()
						inCP = false
					end)

					ColorH = (CLAMP(Huedrag.AbsolutePosition.Y-Huepick.AbsolutePosition.Y, 0, Huepick.AbsoluteSize.Y)/Huepick.AbsoluteSize.Y)
					ColorS = 1-(CLAMP(ColorDrag.AbsolutePosition.X-Colorpick.AbsolutePosition.X, 0, Colorpick.AbsoluteSize.X)/Colorpick.AbsoluteSize.X)
					ColorV = 1-(CLAMP(ColorDrag.AbsolutePosition.Y-Colorpick.AbsolutePosition.Y, 0, Colorpick.AbsoluteSize.Y)/Colorpick.AbsoluteSize.Y)

					if data.default and data.default.Color ~= nil then
						ColorH, ColorS, ColorV = data.default.Color:ToHSV()

						ColorH = CLAMP(ColorH,0,1)
						ColorS = CLAMP(ColorS,0,1)
						ColorV = CLAMP(ColorV,0,1)
						ColorDrag.Position = UDIM2(1-ColorS,0,1-ColorV,0)
						Colorpick.ImageColor3 = COL3HSV(ColorH, 1, 1)

						ColorP.BackgroundColor3 = COL3HSV(ColorH, ColorS, ColorV)
						Huedrag.Position = UDIM2(0, 0, 1-ColorH, -1)

						values[tabname][sectorname][text] = data.default.Color
					end

					local mouse = LocalPlayer:GetMouse()
					game:GetService('UserInputService').InputBegan:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.MouseButton2 then
							if not dragging and not abc and not inCP then
								Frame.Visible = false
							end
						end
					end)

					local function updateColor()
						local ColorX = (CLAMP(mouse.X - Colorpick.AbsolutePosition.X, 0, Colorpick.AbsoluteSize.X)/Colorpick.AbsoluteSize.X)
						local ColorY = (CLAMP(mouse.Y - Colorpick.AbsolutePosition.Y, 0, Colorpick.AbsoluteSize.Y)/Colorpick.AbsoluteSize.Y)
						ColorDrag.Position = UDIM2(ColorX, 0, ColorY, 0)
						ColorS = 1-ColorX
						ColorV = 1-ColorY
						Colorpick.ImageColor3 = COL3HSV(ColorH, 1, 1)
						ColorP.BackgroundColor3 = COL3HSV(ColorH, ColorS, ColorV)
						values[tabname][sectorname][text] = Element.value
						Element.value.Color = COL3HSV(ColorH, ColorS, ColorV)
						callback(Element.value)
					end
					local function updateHue()
						local y = CLAMP(mouse.Y - Huepick.AbsolutePosition.Y, 0, 148)
						Huedrag.Position = UDIM2(0, 0, 0, y)
						hue = y/148
						ColorH = 1-hue
						Colorpick.ImageColor3 = COL3HSV(ColorH, 1, 1)
						ColorP.BackgroundColor3 = COL3HSV(ColorH, ColorS, ColorV)
						values[tabname][sectorname][text] = Element.value
						Element.value.Color = COL3HSV(ColorH, ColorS, ColorV)
						callback(Element.value)
					end
					Colorpick.MouseButton1Down:Connect(function()
						updateColor()
						moveconnection = mouse.Move:Connect(function()
							updateColor()
						end)
						releaseconnection = game:GetService('UserInputService').InputEnded:Connect(function(Mouse)
							if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
								updateColor()
								moveconnection:Disconnect()
								releaseconnection:Disconnect()
							end
						end)
					end)
					Huepick.MouseButton1Down:Connect(function()
						updateHue()
						moveconnection = mouse.Move:Connect(function()
							updateHue()
						end)
						releaseconnection = game:GetService('UserInputService').InputEnded:Connect(function(Mouse)
							if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
								updateHue()
								moveconnection:Disconnect()
								releaseconnection:Disconnect()
							end
						end)
					end)

					Button.MouseButton1Down:Connect(function()
						Element.value.Toggle = not Element.value.Toggle
						update()
						values[tabname][sectorname][text] = Element.value
						callback(Element.value)
					end)
					if data.default then
						update()
					end
					values[tabname][sectorname][text] = Element.value
					function Element:SetValue(value)
						Element.value = value
						local duplicate = COL3(value.Color.R, value.Color.G, value.Color.B)
						ColorH, ColorS, ColorV = duplicate:ToHSV()
						ColorH = CLAMP(ColorH,0,1)
						ColorS = CLAMP(ColorS,0,1)
						ColorV = CLAMP(ColorV,0,1)

						ColorDrag.Position = UDIM2(1-ColorS,0,1-ColorV,0)
						Colorpick.ImageColor3 = COL3HSV(ColorH, 1, 1)
						ColorP.BackgroundColor3 = COL3HSV(ColorH, ColorS, ColorV)
						update()
						Huedrag.Position = UDIM2(0, 0, 1-ColorH, -1)

						callback(value)
					end
				elseif type == 'ToggleTrans' then
					Section.Size = Section.Size + UDIM2(0,0,0,16)
					Element.value = {Toggle = data.default and data.default.Toggle or false, Color = data.default and data.default.Color or COL3RGB(255,255,255), Transparency = data.default and data.default.Transparency or 0}

					local Toggle = INST('Frame')
					local Button = INST('TextButton')
					local Color = INST('Frame')
					local TextLabel = INST('TextLabel')

					Toggle.Name = 'Toggle'
					Toggle.Parent = Inner
					Toggle.BackgroundColor3 = COL3RGB(255, 255, 255)
					Toggle.BackgroundTransparency = 1.000
					Toggle.Size = UDIM2(1, 0, 0, 15)

					Button.Name = 'Button'
					Button.Parent = Toggle
					Button.BackgroundColor3 = COL3RGB(255, 255, 255)
					Button.BackgroundTransparency = 1.000
					Button.Size = UDIM2(1, 0, 1, 0)
					Button.Font = Enum.Font.SourceSans
					Button.Text = ''
					Button.TextColor3 = COL3RGB(0, 0, 0)
					Button.TextSize = 14.000

					local Gradient = Instance.new('UIGradient')

					Color.Name = 'Color'
					Color.Parent = Button
					Color.BackgroundColor3 = maincolor
					Color.BorderColor3 = COL3RGB(0, 0, 0)
					Color.Position = UDIM2(0, 15, 0.5, -5)
					Color.Size = UDIM2(0, 8, 0, 8)

					Gradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(180, 180, 180))}
					Gradient.Rotation = 90
					Gradient.Name = 'Gradient'
					Gradient.Parent = Color

					TextLabel.Parent = Button
					TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)
					TextLabel.BackgroundTransparency = 1.000
					TextLabel.Position = UDIM2(0, 32, 0, -1)
					TextLabel.Size = UDIM2(0.111913361, 208, 1, 0)
					TextLabel.Font = Enum.Font.SourceSansSemibold
					TextLabel.Text = text
					TextLabel.TextColor3 = COL3RGB(200, 200, 200)
					TextLabel.TextSize = 14.000
					TextLabel.TextXAlignment = Enum.TextXAlignment.Left

					local function update()
						if Element.value.Toggle then
							tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = COL3RGB(155, 155, 155)})
							library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})
						else
							tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = maincolor})
							library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(200, 200, 200)})
						end
						values[tabname][sectorname][text] = Element.value
						callback(Element.value)
					end

					local ColorH,ColorS,ColorV

					local ColorP = INST('TextButton')
					local Frame = INST('Frame')
					local Colorpick = INST('ImageButton')
					local ColorDrag = INST('Frame')
					local Huepick = INST('ImageButton')
					local Huedrag = INST('Frame')

					ColorP.Name = 'ColorP'
					ColorP.Parent = Button
					ColorP.AnchorPoint = Vec2(1, 0)
					ColorP.BackgroundColor3 = COL3RGB(255, 0, 0)
					ColorP.BorderColor3 = COL3RGB(27, 27, 35)
					ColorP.Position = UDIM2(0, 270, 0.5, -4)
					ColorP.Size = UDIM2(0, 18, 0, 8)
					ColorP.AutoButtonColor = false
					ColorP.Font = Enum.Font.SourceSansSemibold
					ColorP.Text = ''
					ColorP.TextColor3 = COL3RGB(200, 200, 200)
					ColorP.TextSize = 14.000

					Frame.Parent = ColorP
					Frame.BackgroundColor3 = maincolor
					Frame.BorderColor3 = COL3RGB(27, 27, 35)
					Frame.Position = UDIM2(-0.666666687, -170, 1.375, 0)
					Frame.Size = UDIM2(0, 200, 0, 190)
					Frame.Visible = false
					Frame.ZIndex = 3

					Colorpick.Name = 'Colorpick'
					Colorpick.Parent = Frame
					Colorpick.BackgroundColor3 = COL3RGB(255, 255, 255)
					Colorpick.BorderColor3 = COL3RGB(27, 27, 35)
					Colorpick.ClipsDescendants = false
					Colorpick.Position = UDIM2(0, 40, 0, 10)
					Colorpick.Size = UDIM2(0, 150, 0, 150)
					Colorpick.AutoButtonColor = false
					Colorpick.Image = 'rbxassetid://4155801252'
					Colorpick.ImageColor3 = COL3RGB(255, 0, 0)
					Colorpick.ZIndex = 3

					ColorDrag.Name = 'ColorDrag'
					ColorDrag.Parent = Colorpick
					ColorDrag.AnchorPoint = Vec2(0.5, 0.5)
					ColorDrag.BackgroundColor3 = COL3RGB(255, 255, 255)
					ColorDrag.BorderColor3 = COL3RGB(27, 27, 35)
					ColorDrag.Size = UDIM2(0, 4, 0, 4)
					ColorDrag.ZIndex = 3

					Huepick.Name = 'Huepick'
					Huepick.Parent = Frame
					Huepick.BackgroundColor3 = COL3RGB(255, 255, 255)
					Huepick.BorderColor3 = COL3RGB(27, 27, 35)
					Huepick.ClipsDescendants = true
					Huepick.Position = UDIM2(0, 10, 0, 10)
					Huepick.Size = UDIM2(0, 20, 0, 150)
					Huepick.AutoButtonColor = false
					Huepick.Image = 'rbxassetid://3641079629'
					Huepick.ImageColor3 = COL3RGB(255, 0, 0)
					Huepick.ImageTransparency = 1
					Huepick.BackgroundTransparency = 0
					Huepick.ZIndex = 3

					local HueFrameGradient = INST('UIGradient')
					HueFrameGradient.Rotation = 90
					HueFrameGradient.Name = 'HueFrameGradient'
					HueFrameGradient.Parent = Huepick
					HueFrameGradient.Color = ColorSequence.new {
						ColorSequenceKeypoint.new(0.00, COL3RGB(255, 0, 0)),
						ColorSequenceKeypoint.new(0.17, COL3RGB(255, 0, 255)),
						ColorSequenceKeypoint.new(0.33, COL3RGB(0, 0, 255)),
						ColorSequenceKeypoint.new(0.50, COL3RGB(0, 255, 255)),
						ColorSequenceKeypoint.new(0.67, COL3RGB(0, 255, 0)),
						ColorSequenceKeypoint.new(0.83, COL3RGB(255, 255, 0)),
						ColorSequenceKeypoint.new(1.00, COL3RGB(255, 0, 0))
					}	

					Huedrag.Name = 'Huedrag'
					Huedrag.Parent = Huepick
					Huedrag.BackgroundColor3 = COL3RGB(255, 255, 255)
					Huedrag.BorderColor3 = COL3RGB(27, 27, 35)
					Huedrag.Size = UDIM2(1, 0, 0, 2)
					Huedrag.ZIndex = 3

					local Transpick = INST('ImageButton')
					local Transcolor = INST('ImageLabel')
					local Transdrag = INST('Frame')

					Transpick.Name = 'Transpick'
					Transpick.Parent = Frame
					Transpick.BackgroundColor3 = COL3RGB(255, 255, 255)
					Transpick.BorderColor3 = COL3RGB(27, 27, 35)
					Transpick.Position = UDIM2(0, 10, 0, 167)
					Transpick.Size = UDIM2(0, 180, 0, 15)
					Transpick.AutoButtonColor = false
					Transpick.Image = 'rbxassetid://3887014957'
					Transpick.ScaleType = Enum.ScaleType.Tile
					Transpick.TileSize = UDIM2(0, 10, 0, 10)
					Transpick.ZIndex = 3

					Transcolor.Name = 'Transcolor'
					Transcolor.Parent = Transpick
					Transcolor.BackgroundColor3 = COL3RGB(255, 255, 255)
					Transcolor.BackgroundTransparency = 1.000
					Transcolor.Size = UDIM2(1, 0, 1, 0)
					Transcolor.Image = 'rbxassetid://3887017050'
					Transcolor.ImageColor3 = COL3RGB(255, 0, 4)
					Transcolor.ZIndex = 3

					Transdrag.Name = 'Transdrag'
					Transdrag.Parent = Transcolor
					Transdrag.BackgroundColor3 = COL3RGB(255, 255, 255)
					Transdrag.BorderColor3 = COL3RGB(27, 27, 35)
					Transdrag.Position = UDIM2(0, -1, 0, 0)
					Transdrag.Size = UDIM2(0, 2, 1, 0)
					Transdrag.ZIndex = 3

					ColorP.MouseButton1Down:Connect(function()
						Frame.Visible = not Frame.Visible
					end)
					local abc = false
					local inCP = false
					ColorP.MouseEnter:Connect(function()
						abc = true
					end)
					ColorP.MouseLeave:Connect(function()
						abc = false
					end)
					Frame.MouseEnter:Connect(function()
						inCP = true
					end)
					Frame.MouseLeave:Connect(function()
						inCP = false
					end)

					ColorH = (CLAMP(Huedrag.AbsolutePosition.Y-Huepick.AbsolutePosition.Y, 0, Huepick.AbsoluteSize.Y)/Huepick.AbsoluteSize.Y)
					ColorS = 1-(CLAMP(ColorDrag.AbsolutePosition.X-Colorpick.AbsolutePosition.X, 0, Colorpick.AbsoluteSize.X)/Colorpick.AbsoluteSize.X)
					ColorV = 1-(CLAMP(ColorDrag.AbsolutePosition.Y-Colorpick.AbsolutePosition.Y, 0, Colorpick.AbsoluteSize.Y)/Colorpick.AbsoluteSize.Y)

					if data.default and data.default.Color ~= nil then
						ColorH, ColorS, ColorV = data.default.Color:ToHSV()

						ColorH = CLAMP(ColorH,0,1)
						ColorS = CLAMP(ColorS,0,1)
						ColorV = CLAMP(ColorV,0,1)
						ColorDrag.Position = UDIM2(1-ColorS,0,1-ColorV,0)
						Colorpick.ImageColor3 = COL3HSV(ColorH, 1, 1)

						Transcolor.ImageColor3 = COL3HSV(ColorH, 1, 1)

						ColorP.BackgroundColor3 = COL3HSV(ColorH, ColorS, ColorV)
						Huedrag.Position = UDIM2(0, 0, 1-ColorH, -1)
					end
					if data.default and data.default.Transparency ~= nil then
						Transdrag.Position = UDIM2(data.default.Transparency, -1, 0, 0)
					end
					local mouse = LocalPlayer:GetMouse()
					game:GetService('UserInputService').InputBegan:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.MouseButton2 then
							if not dragging and not abc and not inCP then
								Frame.Visible = false
							end
						end
					end)

					local function updateColor()
						local ColorX = (CLAMP(mouse.X - Colorpick.AbsolutePosition.X, 0, Colorpick.AbsoluteSize.X)/Colorpick.AbsoluteSize.X)
						local ColorY = (CLAMP(mouse.Y - Colorpick.AbsolutePosition.Y, 0, Colorpick.AbsoluteSize.Y)/Colorpick.AbsoluteSize.Y)
						ColorDrag.Position = UDIM2(ColorX, 0, ColorY, 0)
						ColorS = 1-ColorX
						ColorV = 1-ColorY
						Colorpick.ImageColor3 = COL3HSV(ColorH, 1, 1)
						ColorP.BackgroundColor3 = COL3HSV(ColorH, ColorS, ColorV)
						Transcolor.ImageColor3 = COL3HSV(ColorH, 1, 1)
						values[tabname][sectorname][text] = Element.value
						Element.value.Color = COL3HSV(ColorH, ColorS, ColorV)
						callback(Element.value)
					end
					local function updateHue()
						local y = CLAMP(mouse.Y - Huepick.AbsolutePosition.Y, 0, 148)
						Huedrag.Position = UDIM2(0, 0, 0, y)
						hue = y/148
						ColorH = 1-hue
						Colorpick.ImageColor3 = COL3HSV(ColorH, 1, 1)
						Transcolor.ImageColor3 = COL3HSV(ColorH, 1, 1)
						ColorP.BackgroundColor3 = COL3HSV(ColorH, ColorS, ColorV)
						values[tabname][sectorname][text] = Element.value
						Element.value.Color = COL3HSV(ColorH, ColorS, ColorV)
						callback(Element.value)
					end
					local function updateTrans()
						local x = CLAMP(mouse.X - Transpick.AbsolutePosition.X, 0, 178)
						Transdrag.Position = UDIM2(0, x, 0, 0)
						Element.value.Transparency = (x/178)
						values[tabname][sectorname][text] = Element.value
						callback(Element.value)
					end
					Transpick.MouseButton1Down:Connect(function()
						updateTrans()
						moveconnection = mouse.Move:Connect(function()
							updateTrans()
						end)
						releaseconnection = game:GetService('UserInputService').InputEnded:Connect(function(Mouse)
							if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
								updateTrans()
								moveconnection:Disconnect()
								releaseconnection:Disconnect()
							end
						end)
					end)
					Colorpick.MouseButton1Down:Connect(function()
						updateColor()
						moveconnection = mouse.Move:Connect(function()
							updateColor()
						end)
						releaseconnection = game:GetService('UserInputService').InputEnded:Connect(function(Mouse)
							if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
								updateColor()
								moveconnection:Disconnect()
								releaseconnection:Disconnect()
							end
						end)
					end)
					Huepick.MouseButton1Down:Connect(function()
						updateHue()
						moveconnection = mouse.Move:Connect(function()
							updateHue()
						end)
						releaseconnection = game:GetService('UserInputService').InputEnded:Connect(function(Mouse)
							if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
								updateHue()
								moveconnection:Disconnect()
								releaseconnection:Disconnect()
							end
						end)
					end)

					Button.MouseButton1Down:Connect(function()
						Element.value.Toggle = not Element.value.Toggle
						update()
						values[tabname][sectorname][text] = Element.value
						callback(Element.value)
					end)
					if data.default then
						if Element.value.Toggle then
							tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = COL3RGB(155, 155, 155)})
							library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})
						else
							tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = maincolor})
							library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(200, 200, 200)})
						end
						values[tabname][sectorname][text] = Element.value
					end
					values[tabname][sectorname][text] = Element.value
					function Element:SetValue(value)
						Element.value = value
						local duplicate = COL3(value.Color.R, value.Color.G, value.Color.B)
						ColorH, ColorS, ColorV = duplicate:ToHSV()
						ColorH = CLAMP(ColorH,0,1)
						ColorS = CLAMP(ColorS,0,1)
						ColorV = CLAMP(ColorV,0,1)

						ColorDrag.Position = UDIM2(1-ColorS,0,1-ColorV,0)
						Colorpick.ImageColor3 = COL3HSV(ColorH, 1, 1)
						ColorP.BackgroundColor3 = COL3HSV(ColorH, ColorS, ColorV)
						update()
						Huedrag.Position = UDIM2(0, 0, 1-ColorH, -1)
					end
				elseif type == 'TextBox' then
					Section.Size = Section.Size + UDIM2(0,0,0,30)
					Element.value = {Text = data.default and data.default.text or ''}

					local Box = INST('Frame')
					local TextBox = INST('TextBox')

					Box.Name = 'Box'
					Box.Parent = Inner
					Box.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
					Box.BackgroundTransparency = 1.000
					Box.BorderColor3 = Color3.fromRGB(25, 25, 25)
					Box.Position = UDIM2(0, 0, 0.542059898, 0)
					Box.Size = UDIM2(1, 0, 0, 30)

					TextBox.Parent = Box
					TextBox.BackgroundColor3 = maincolor
					TextBox.BorderColor3 = COL3RGB(27, 27, 35)
					TextBox.Position = UDIM2(0.108303241, 0, 0.224465579, 0)
					TextBox.Size = UDIM2(0, 175, 0, 20)
					TextBox.Font = Enum.Font.SourceSans
					TextBox.PlaceholderText = data.placeholder
					TextBox.Text = Element.value.Text
					TextBox.TextColor3 = COL3RGB(255, 255, 255)
					TextBox.TextSize = 14.000

					local Gradient = Instance.new('UIGradient')

					Gradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(180, 180, 180))}
					Gradient.Rotation = 90
					Gradient.Name = 'Gradient'
					Gradient.Parent = TextBox

					values[tabname][sectorname][text] = Element.value

					TextBox:GetPropertyChangedSignal('Text'):Connect(function()
						Element.value.Text = TextBox.Text
						values[tabname][sectorname][text] = Element.value
						callback(Element.value)
					end)

					function Element:SetValue(value)
						Element.value = value
						values[tabname][sectorname][text] = Element.value
						TextBox.Text = Element.value.Text
					end

				elseif type == 'Dropdown' then
					Section.Size = Section.Size + UDIM2(0,0,0,39)
					Element.value = {Dropdown = data.options[1]}

					local Dropdown = INST('Frame')
					local Button = INST('TextButton')
					local TextLabel = INST('TextLabel')
					local Drop = INST('ScrollingFrame')
					local Button_2 = INST('TextButton')
					local TextLabel_2 = INST('TextLabel')
					local UIListLayout = INST('UIListLayout')
					local ImageLabel = INST('ImageLabel')
					local TextLabel_3 = INST('TextLabel')

					Dropdown.Name = 'Dropdown'
					Dropdown.Parent = Inner
					Dropdown.BackgroundColor3 = COL3RGB(255, 255, 255)
					Dropdown.BackgroundTransparency = 1.000
					Dropdown.Position = UDIM2(0, 0, 0.255102038, 0)
					Dropdown.Size = UDIM2(1, 0, 0, 39)

					Button.Name = 'Button'
					Button.Parent = Dropdown
					Button.BackgroundColor3 = maincolor
					Button.BorderColor3 = COL3RGB(27, 27, 35)
					Button.Position = UDIM2(0, 30, 0, 16)
					Button.Size = UDIM2(0, 175, 0, 17)
					Button.AutoButtonColor = false
					Button.Font = Enum.Font.SourceSans
					Button.Text = ''
					Button.TextColor3 = COL3RGB(0, 0, 0)
					Button.TextSize = 14.000

					local Gradient = Instance.new('UIGradient')

					Gradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(180, 180, 180))}
					Gradient.Rotation = 90
					Gradient.Name = 'Gradient'
					Gradient.Parent = Button
					
					TextLabel.Parent = Button
					TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)
					TextLabel.BackgroundTransparency = 1.000
					TextLabel.BorderColor3 = COL3RGB(27, 42, 53)
					TextLabel.Position = UDIM2(0, 5, 0, 0)
					TextLabel.Size = UDIM2(-0.21714285, 208, 1, 0)
					TextLabel.Font = Enum.Font.SourceSansSemibold
					TextLabel.Text = Element.value.Dropdown
					TextLabel.TextColor3 = COL3RGB(200, 200, 200)
					TextLabel.TextSize = 14.000
					TextLabel.TextXAlignment = Enum.TextXAlignment.Left

					local abcd = TextLabel

					Drop.Name = 'Drop'
					Drop.Parent = Button
					Drop.Active = true
					Drop.BackgroundColor3 = maincolor
					Drop.BorderColor3 = COL3RGB(27, 27, 35)
					Drop.Position = UDIM2(0, 0, 1, 1)
					Drop.Size = UDIM2(1, 0, 0, 20)
					Drop.Visible = false
					Drop.BottomImage = 'http://www.roblox.com/asset/?id=6724808282'
					Drop.CanvasSize = UDIM2(0, 0, 0, 0)
					Drop.ScrollBarThickness = 4
					Drop.TopImage = 'http://www.roblox.com/asset/?id=6724808282'
					Drop.MidImage = 'http://www.roblox.com/asset/?id=6724808282'
					Drop.AutomaticCanvasSize = 'Y'
					Drop.ZIndex = 5
					Drop.ScrollBarImageColor3 = COL3RGB(200, 200, 200)

					UIListLayout.Parent = Drop
					UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
					UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

					local num = #data.options
					if num > 5 then
						Drop.Size = UDIM2(1, 0, 0, 85)
					else
						Drop.Size = UDIM2(1, 0, 0, 17*num)
					end
					local first = true
					for i,v in ipairs(data.options) do
						do
							local Button = INST('TextButton')
							local TextLabel = INST('TextLabel')

							Button.Name = v
							Button.Parent = Drop
							Button.BackgroundColor3 = maincolor
							Button.BorderColor3 = COL3RGB(27, 27, 35)
							Button.Position = UDIM2(0, 30, 0, 16)
							Button.Size = UDIM2(0, 175, 0, 17)
							Button.AutoButtonColor = false
							Button.Font = Enum.Font.SourceSans
							Button.Text = ''
							Button.TextColor3 = COL3RGB(0, 0, 0)
							Button.TextSize = 14.000
							Button.BorderSizePixel = 0
							Button.ZIndex = 6

							TextLabel.Parent = Button
							TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)
							TextLabel.BackgroundTransparency = 1.000
							TextLabel.BorderColor3 = COL3RGB(27, 42, 53)
							TextLabel.Position = UDIM2(0, 5, 0, -1)
							TextLabel.Size = UDIM2(-0.21714285, 208, 1, 0)
							TextLabel.Font = Enum.Font.SourceSansSemibold
							TextLabel.Text = v
							TextLabel.TextColor3 = COL3RGB(200, 200, 200)
							TextLabel.TextSize = 14.000
							TextLabel.TextXAlignment = Enum.TextXAlignment.Left
							TextLabel.ZIndex = 6

							Button.MouseButton1Down:Connect(function()
								Drop.Visible = false
								Element.value.Dropdown = v
								abcd.Text = v
								values[tabname][sectorname][text] = Element.value
								callback(Element.value)
								Drop.CanvasPosition = Vec2(0,0)
							end)
							Button.MouseEnter:Connect(function()
								library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 =  COL3RGB(255, 255, 255)})
							end)
							Button.MouseLeave:Connect(function()
								library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 =  COL3RGB(200, 200, 200)})
							end)

							first = false
						end
					end

					function Element:SetValue(val)
						Element.value = val
						abcd.Text = val.Dropdown
						values[tabname][sectorname][text] = Element.value
						callback(val)
					end

					ImageLabel.Parent = Button
					ImageLabel.BackgroundColor3 = COL3RGB(255, 255, 255)
					ImageLabel.BackgroundTransparency = 1.000
					ImageLabel.Position = UDIM2(0, 165, 0, 6)
					ImageLabel.Size = UDIM2(0, 6, 0, 4)
					ImageLabel.Image = 'http://www.roblox.com/asset/?id=6724771531'

					TextLabel_3.Parent = Dropdown
					TextLabel_3.BackgroundColor3 = COL3RGB(255, 255, 255)
					TextLabel_3.BackgroundTransparency = 1.000
					TextLabel_3.Position = UDIM2(0, 32, 0, -1)
					TextLabel_3.Size = UDIM2(0.111913361, 208, 0.382215232, 0)
					TextLabel_3.Font = Enum.Font.SourceSansSemibold
					TextLabel_3.Text = text
					TextLabel_3.TextColor3 = COL3RGB(200, 200, 200)
					TextLabel_3.TextSize = 14.000
					TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left

					Button.MouseButton1Down:Connect(function()
						Drop.Visible = not Drop.Visible
						if not Drop.Visible then
							Drop.CanvasPosition = Vec2(0,0)
						end
					end)
					local indrop = false
					local ind = false
					Drop.MouseEnter:Connect(function()
						indrop = true
					end)
					Drop.MouseLeave:Connect(function()
						indrop = false
					end)
					Button.MouseEnter:Connect(function()
						ind = true
					end)
					Button.MouseLeave:Connect(function()
						ind = false
					end)
					game:GetService('UserInputService').InputBegan:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.MouseButton2 then
							if Drop.Visible == true and not indrop and not ind then
								Drop.Visible = false
								Drop.CanvasPosition = Vec2(0,0)
							end
						end
					end)
					values[tabname][sectorname][text] = Element.value
				elseif type == 'Slider' then

					Section.Size = Section.Size + UDIM2(0,0,0,25)

					local Slider = INST('Frame')
					local TextLabel = INST('TextLabel')
					local Button = INST('TextButton')
					local Frame = INST('Frame')
					local Value = INST('TextBox')

					Slider.Name = 'Slider'
					Slider.Parent = Inner
					Slider.BackgroundColor3 = COL3RGB(255, 255, 255)
					Slider.BackgroundTransparency = 1.000
					Slider.Position = UDIM2(0, 0, 0.653061211, 0)
					Slider.Size = UDIM2(1, 0, 0, 25)

					local Gradient = Instance.new('UIGradient')

					Gradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(180, 180, 180))}
					Gradient.Rotation = 90
					Gradient.Name = 'Gradient'
					Gradient.Parent = Slider

					TextLabel.Parent = Slider
					TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)
					TextLabel.BackgroundTransparency = 1.000
					TextLabel.Position = UDIM2(0, 32, 0, -2)
					TextLabel.Size = UDIM2(0, 100, 0, 15)
					TextLabel.Font = Enum.Font.SourceSansSemibold
					TextLabel.Text = text
					TextLabel.TextColor3 = COL3RGB(200, 200, 200)
					TextLabel.TextSize = 14.000
					TextLabel.TextXAlignment = Enum.TextXAlignment.Left

					Button.Name = 'Button'
					Button.Parent = Slider
					Button.BackgroundColor3 = maincolor
					Button.BorderColor3 = COL3RGB(27, 27, 35)
					Button.Position = UDIM2(0, 30, 0, 15)
					Button.Size = UDIM2(0, 175, 0, 5)
					Button.AutoButtonColor = false
					Button.Font = Enum.Font.SourceSans
					Button.Text = ''
					Button.TextColor3 = COL3RGB(0, 0, 0)
					Button.TextSize = 14.000

					Frame.Parent = Button
					Frame.BackgroundColor3 = COL3RGB(255, 255, 255)
					Frame.BorderSizePixel = 0
					Frame.Size = UDIM2(0.5, 0, 1, 0)

					Value.Name = 'Value'
					Value.Parent = Slider
					Value.BackgroundColor3 = COL3RGB(255, 255, 255)
					Value.BackgroundTransparency = 1.000
					Value.Position = UDIM2(0, 150, 0, -1)
					Value.Size = UDIM2(0, 55, 0, 15)
					Value.Font = Enum.Font.SourceSansSemibold
					Value.Text = '50'
					Value.TextColor3 = COL3RGB(200, 200, 200)
					Value.TextSize = 14.000
					Value.TextXAlignment = Enum.TextXAlignment.Right
					local min, max, default = data.min or 0, data.max or 100, data.default or 0
					Element.value = {Slider = default}

					function Element:SetValue(value)
						Element.value = value
						local a
						if min > 0 then
							a = ((Element.value.Slider - min)) / (max-min)
						else
							a = (Element.value.Slider-min)/(max-min)
						end
						Value.Text = Element.value.Slider
						Frame.Size = UDIM2(a,0,1,0)
						values[tabname][sectorname][text] = Element.value
						callback(value)
					end
					local a
					if min > 0 then
						a = ((Element.value.Slider - min)) / (max-min)
					else
						a = (Element.value.Slider-min)/(max-min)
					end
					Value.Text = Element.value.Slider
					Frame.Size = UDIM2(a,0,1,0)
					values[tabname][sectorname][text] = Element.value
					local uis = game:GetService('UserInputService')
					local mouse = game.Players.LocalPlayer:GetMouse()
					local val

					
					Value.FocusLost:Connect(function()
						values[tabname][sectorname][text].Slider = tonumber(Value.Text)
						callback(tonumber(Value.Text))
						--Value.Text = Element.value.Slider
						Frame.Size = UDIM2((tonumber(Value.Text)-min)/(max-min),0,1,0)
					end)

					Button.MouseButton1Down:Connect(function()
						Frame.Size = UDIM2(0, CLAMP(mouse.X - Frame.AbsolutePosition.X, 0, 175), 0, 5)
						val = FLOOR((((tonumber(max) - tonumber(min)) / 175) * Frame.AbsoluteSize.X) + tonumber(min)) or 0
						Value.Text = val
						Element.value.Slider = val
						values[tabname][sectorname][text] = Element.value
						callback(Element.value)
						moveconnection = mouse.Move:Connect(function()
							Frame.Size = UDIM2(0, CLAMP(mouse.X - Frame.AbsolutePosition.X, 0, 175), 0, 5)
							val = FLOOR((((tonumber(max) - tonumber(min)) / 175) * Frame.AbsoluteSize.X) + tonumber(min))
							Value.Text = val
							Element.value.Slider = val
							values[tabname][sectorname][text] = Element.value
							callback(Element.value)
						end)
						releaseconnection = uis.InputEnded:Connect(function(Mouse)
							if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
								Frame.Size = UDIM2(0, CLAMP(mouse.X - Frame.AbsolutePosition.X, 0, 175), 0, 5)
								val = FLOOR((((tonumber(max) - tonumber(min)) / 175) * Frame.AbsoluteSize.X) + tonumber(min))
								values[tabname][sectorname][text] = Element.value
								callback(Element.value)
								moveconnection:Disconnect()
								releaseconnection:Disconnect()
							end
						end)
					end)
				elseif type == 'Button' then

					Section.Size = Section.Size + UDIM2(0,0,0,24)
					local Button = INST('Frame')
					local Button_2 = INST('TextButton')
					local TextLabel = INST('TextLabel')

					Button.Name = 'Button'
					Button.Parent = Inner
					Button.BackgroundColor3 = COL3RGB(255, 255, 255)
					Button.BackgroundTransparency = 1.000
					Button.Position = UDIM2(0, 0, 0.236059487, 0)
					Button.Size = UDIM2(1, 0, 0, 24)

					
					Button_2.Name = 'Button'
					Button_2.Parent = Button
					Button_2.BackgroundColor3 = maincolor
					Button_2.BorderColor3 = COL3RGB(27, 27, 35)
					Button_2.Position = UDIM2(0, 30, 0.5, -9)
					Button_2.Size = UDIM2(0, 175, 0, 18)
					Button_2.AutoButtonColor = false
					Button_2.Font = Enum.Font.SourceSans
					Button_2.Text = ''
					Button_2.TextColor3 = COL3RGB(0, 0, 0)
					Button_2.TextSize = 14.000

					local Gradient = Instance.new('UIGradient')

					Gradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(180, 180, 180))}
					Gradient.Rotation = 90
					Gradient.Name = 'Gradient'
					Gradient.Parent = Button_2

					TextLabel.Parent = Button_2
					TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)
					TextLabel.BackgroundTransparency = 1.000
					TextLabel.BorderColor3 = COL3RGB(27, 42, 53)
					TextLabel.Size = UDIM2(1, 0, 1, 0)
					TextLabel.Font = Enum.Font.SourceSansSemibold
					TextLabel.Text = text
					TextLabel.TextColor3 = COL3RGB(200, 200, 200)
					TextLabel.TextSize = 14.000

					function Element:SetValue()
					end

					Button_2.MouseButton1Down:Connect(function()
						TextLabel.TextColor3 = COL3RGB(175, 42, 86)
						library:Tween(TextLabel, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(200, 200, 200)})
						callback()
					end)
					Button_2.MouseEnter:Connect(function()
						library:Tween(TextLabel, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})
					end)
					Button_2.MouseLeave:Connect(function()
						library:Tween(TextLabel, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(200, 200, 200)})
					end)
				end
				ConfigLoad:Connect(function(cfg)
					pcall(function()
						local fix = library:ConfigFix(cfg)
						if fix[tabname][sectorname][text] ~= nil then
							Element:SetValue(fix[tabname][sectorname][text])
						end
					end)
				end)

				return Element
			end
			return Sector
		end

		return Tab
	end

	Ova.Parent = game.CoreGui

	return menu
end

local UserInputService = game:GetService('UserInputService')
local ReplicatedStorage = game:GetService('ReplicatedStorage')
local RunService = game:GetService('RunService')
local Lighting = game:GetService('Lighting')
local Players = game:GetService('Players')
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer.PlayerGui
local Mouse = LocalPlayer:GetMouse()
local Camera = workspace.CurrentCamera
local ClientScript = LocalPlayer.PlayerGui.Client
local Client = getsenv(ClientScript)

repeat RunService.RenderStepped:Wait() until game:IsLoaded()

local Crosshairs = PlayerGui.GUI.Crosshairs
local Crosshair = PlayerGui.GUI.Crosshairs.Crosshair
local oldcreatebullethole = Client.createbullethole
local LGlove, RGlove, LSleeve, RSleeve, RArm, LArm
local WeaponObj = {}
local SelfObj = {}
local Viewmodels =  ReplicatedStorage.Viewmodels
local Weapons =  ReplicatedStorage.Weapons
local ViewmodelOffset = CF(0,0,0)
local Smokes = {}
local Mollies = {}
local switch180roll = false
local RayIgnore = workspace.Ray_Ignore
local RageTarget
local GetIcon = require(game.ReplicatedStorage.GetIcon)
local BodyVelocity = INST('BodyVelocity')
BodyVelocity.MaxForce = Vec3(HUGE, 0, HUGE)
local Collision = {Camera, workspace.Ray_Ignore, workspace.Debris}
local FakelagFolder = INST('Folder', workspace.Camera)
FakelagFolder.Name = 'Fakelag'
local FakeAnim = INST('Animation', workspace)
FakeAnim.AnimationId = 'rbxassetid://0'
local Gloves = ReplicatedStorage.Gloves
if Gloves:FindFirstChild('ImageLabel') then
	Gloves.ImageLabel:Destroy()
end
local GloveModels = Gloves.Models
local Multipliers = {
	['Head'] = 4,
	['FakeHead'] = 4,
	['HeadHB'] = 4,
	['UpperTorso'] = 1,
	['LowerTorso'] = 1.25,
	['LeftUpperArm'] = 1,
	['LeftLowerArm'] = 1,
	['LeftHand'] = 1,
	['RightUpperArm'] = 1,
	['RightLowerArm'] = 1,
	['RightHand'] = 1,
	['LeftUpperLeg'] = 0.75,
	['LeftLowerLeg'] = 0.75,
	['LeftFoot'] = 0.75,
	['RightUpperLeg'] = 0.75,
	['RightLowerLeg'] = 0.75,
	['RightFoot'] = 0.75,
}
local ChamItems = {}
local Skyboxes = {
	['nebula'] = {
		SkyboxLf = 'rbxassetid://159454286',
		SkyboxBk = 'rbxassetid://159454299',
		SkyboxDn = 'rbxassetid://159454296',
		SkyboxFt = 'rbxassetid://159454293',
		SkyboxLf = 'rbxassetid://159454286',
		SkyboxRt = 'rbxassetid://159454300',
		SkyboxUp = 'rbxassetid://159454288',
	},
	['vaporwave'] = {
		SkyboxLf = 'rbxassetid://1417494402',
		SkyboxBk = 'rbxassetid://1417494030',
		SkyboxDn = 'rbxassetid://1417494146',
		SkyboxFt = 'rbxassetid://1417494253',
		SkyboxLf = 'rbxassetid://1417494402',
		SkyboxRt = 'rbxassetid://1417494499',
		SkyboxUp = 'rbxassetid://1417494643',
	},
	['clouds'] = {
		SkyboxLf = 'rbxassetid://570557620',
		SkyboxBk = 'rbxassetid://570557514',
		SkyboxDn = 'rbxassetid://570557775',
		SkyboxFt = 'rbxassetid://570557559',
		SkyboxLf = 'rbxassetid://570557620',
		SkyboxRt = 'rbxassetid://570557672',
		SkyboxUp = 'rbxassetid://570557727',
	},
	['twilight'] = {
		SkyboxLf = 'rbxassetid://264909758',
		SkyboxBk = 'rbxassetid://264908339',
		SkyboxDn = 'rbxassetid://264907909',
		SkyboxFt = 'rbxassetid://264909420',
		SkyboxLf = 'rbxassetid://264909758',
		SkyboxRt = 'rbxassetid://264908886',
		SkyboxUp = 'rbxassetid://264907379',
	},
}
local NewScope
do
	local ScreenGui = INST('ScreenGui')
	local Frame = INST('Frame')
	local Frame_2 = INST('Frame')

	ScreenGui.Enabled = false
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global
	ScreenGui.IgnoreGuiInset = true

	Frame.Parent = ScreenGui
	Frame.BackgroundColor3 = COL3RGB(0, 0, 0)
	Frame.BorderSizePixel = 0
	Frame.Position = UDIM2(0, 0, 0.5, 0)
	Frame.Size = UDIM2(1, 0, 0, 1)

	Frame_2.Parent = ScreenGui
	Frame_2.BackgroundColor3 = COL3RGB(0, 0, 0)
	Frame_2.BorderSizePixel = 0
	Frame_2.Position = UDIM2(0.5, 0, 0, 0)
	Frame_2.Size = UDIM2(0, 1, 1, 0)

	ScreenGui.Parent = game.CoreGui

	NewScope = ScreenGui
end
local oldSkybox

local function VectorRGB(RGB)
	return Vec3(RGB.R, RGB.G, RGB.B)
end
local function new(name, prop)
	local obj = INST(name)
	for i,v in pairs(prop) do
		if i ~= 'Parent' then
			obj[i] = v
		end
	end
	if prop['Parent'] ~= nil then
		obj.Parent = prop['Parent']
	end
end
local function UpdateAccessory(Accessory)
	Accessory.Material = values.visuals.effects['accessory material'].Dropdown == 'Smooth' and 'SmoothPlastic' or 'ForceField'
	Accessory.Mesh.VertexColor = VectorRGB(values.visuals.effects['accessory chams'].Color)
	Accessory.Color = values.visuals.effects['accessory chams'].Color
	Accessory.Transparency = values.visuals.effects['accessory chams'].Transparency
	if values.visuals.effects['accessory material'].Dropdown ~= 'ForceField' then
		Accessory.Mesh.TextureId = ''
	else
		Accessory.Mesh.TextureId = Accessory.StringValue.Value
	end
end
local function ReverseAccessory(Accessory)
	Accessory.Material = 'SmoothPlastic'
	Accessory.Mesh.VertexColor = Vec3(1,1,1)
	Accessory.Mesh.TextureId = Accessory.StringValue.Value
	Accessory.Transparency = 0
end
local function UpdateWeapon(obj)
	local selected = values.visuals.effects['weapon material'].Dropdown

	if obj:IsA('MeshPart') then obj.TextureID = '' end
	if obj:IsA('Part') and obj:FindFirstChild('Mesh') and not obj:IsA('BlockMesh') then
		obj.Mesh.VertexColor = VectorRGB(values.visuals.effects['weapon chams'].Color)
		if selected == 'Smooth' or selected == 'Glass' then
			obj.Mesh.TextureId = 'rbxassetid://0'
		else
			pcall(function()
				obj.Mesh.TextureId = obj.Mesh.OriginalTexture.Value
				obj.Mesh.TextureID = obj.Mesh.OriginalTexture.Value
			end)
		end
	end
	obj.Color = values.visuals.effects['weapon chams'].Color
	obj.Material = selected == 'Smooth' and 'SmoothPlastic' or selected == 'Flat' and 'Neon' or selected == 'ForceField' and 'ForceField' or 'Glass'
	obj.Reflectance = values.visuals.effects['reflectance'].Slider/10
	obj.Transparency = values.visuals.effects['weapon chams'].Transparency
end
local Skins = ReplicatedStorage.Skins
local function MapSkin(Gun, Skin, CustomSkin)
	if CustomSkin ~= nil then
		for _,Data in pairs(CustomSkin) do
			local Obj = Camera.Arms:FindFirstChild(Data.Name)
			if Obj ~= nil and Obj.Transparency ~= 1 then
				Obj.TextureId = Data.Value
			end
		end
	else
		local SkinData = Skins:FindFirstChild(Gun):FindFirstChild(Skin)
		if not SkinData:FindFirstChild('Animated') then
			for _,Data in pairs(SkinData:GetChildren()) do
				local Obj = Camera.Arms:FindFirstChild(Data.Name)
				if Obj ~= nil and Obj.Transparency ~= 1 then
					if Obj:FindFirstChild('Mesh') then
						Obj.Mesh.TextureId = v.Value
					elseif not Obj:FindFirstChild('Mesh') then
						Obj.TextureID = Data.Value
					end
				end
			end
		end
	end
end
local function ChangeCharacter(NewCharacter)
	for _,Part in pairs (LocalPlayer.Character:GetChildren()) do
		if Part:IsA('Accessory') then
			Part:Destroy()
		end
		if Part:IsA('BasePart') then
			if NewCharacter:FindFirstChild(Part.Name) then
				Part.Color = NewCharacter:FindFirstChild(Part.Name).Color
				Part.Transparency = NewCharacter:FindFirstChild(Part.Name).Transparency
			end
			if Part.Name == 'FakeHead' then
				Part.Color = NewCharacter:FindFirstChild('Head').Color
				Part.Transparency = NewCharacter:FindFirstChild('Head').Transparency
			end
		end

		if (Part.Name == 'Head' or Part.Name == 'FakeHead') and Part:FindFirstChildOfClass('Decal') and NewCharacter.Head:FindFirstChildOfClass('Decal') then
			Part:FindFirstChildOfClass('Decal').Texture = NewCharacter.Head:FindFirstChildOfClass('Decal').Texture
		end
	end

	if NewCharacter:FindFirstChildOfClass('Shirt') then
		if LocalPlayer.Character:FindFirstChildOfClass('Shirt') then
			LocalPlayer.Character:FindFirstChildOfClass('Shirt'):Destroy()
		end
		local Clone = NewCharacter:FindFirstChildOfClass('Shirt'):Clone()
		Clone.Parent = LocalPlayer.Character
	end

	if NewCharacter:FindFirstChildOfClass('Pants') then
		if LocalPlayer.Character:FindFirstChildOfClass('Pants') then
			LocalPlayer.Character:FindFirstChildOfClass('Pants'):Destroy()
		end
		local Clone = NewCharacter:FindFirstChildOfClass('Pants'):Clone()
		Clone.Parent = LocalPlayer.Character
	end

	for _,Part in pairs (NewCharacter:GetChildren()) do
		if Part:IsA('Accessory') then
			local Clone = Part:Clone()
			for _,Weld in pairs (Clone.Handle:GetChildren()) do
				if Weld:IsA('Weld') and Weld.Part1 ~= nil then
					Weld.Part1 = LocalPlayer.Character[Weld.Part1.Name]
				end
			end
			Clone.Parent = LocalPlayer.Character
		end
	end

	if LocalPlayer.Character:FindFirstChildOfClass('Shirt') then
		local String = INST('StringValue')
		String.Name = 'OriginalTexture'
		String.Value = LocalPlayer.Character:FindFirstChildOfClass('Shirt').ShirtTemplate
		String.Parent = LocalPlayer.Character:FindFirstChildOfClass('Shirt')

		if TBLFIND(values.visuals.effects.removals.Jumbobox, 'clothes') then
			LocalPlayer.Character:FindFirstChildOfClass('Shirt').ShirtTemplate = ''
		end
	end
	if LocalPlayer.Character:FindFirstChildOfClass('Pants') then
		local String = INST('StringValue')
		String.Name = 'OriginalTexture'
		String.Value = LocalPlayer.Character:FindFirstChildOfClass('Pants').PantsTemplate
		String.Parent = LocalPlayer.Character:FindFirstChildOfClass('Pants')

		if TBLFIND(values.visuals.effects.removals.Jumbobox, 'clothes') then
			LocalPlayer.Character:FindFirstChildOfClass('Pants').PantsTemplate = ''
		end
	end
	for i,v in pairs(LocalPlayer.Character:GetChildren()) do
		if v:IsA('BasePart') and v.Transparency ~= 1 then
			INSERT(SelfObj, v)
			local Color = INST('Color3Value')
			Color.Name = 'OriginalColor'
			Color.Value = v.Color
			Color.Parent = v

			local String = INST('StringValue')
			String.Name = 'OriginalMaterial'
			String.Value = v.Material.Name
			String.Parent = v
		elseif v:IsA('Accessory') and v.Handle.Transparency ~= 1 then
			INSERT(SelfObj, v.Handle)
			local Color = INST('Color3Value')
			Color.Name = 'OriginalColor'
			Color.Value = v.Handle.Color
			Color.Parent = v.Handle

			local String = INST('StringValue')
			String.Name = 'OriginalMaterial'
			String.Value = v.Handle.Material.Name
			String.Parent = v.Handle
		end
	end

	if values.visuals.self['self chams'].Toggle then
		for _,obj in pairs(SelfObj) do
			if obj.Parent ~= nil then
			
				obj.Material = values.visuals.self['self material'].Dropdown
				obj.Color = values.visuals.self['self chams'].Color
			end
		end
	end
end
local function GetDeg(pos1, pos2)
	local start = pos1.LookVector
	local vector = CF(pos1.Position, pos2).LookVector
	local angle = ACOS(start:Dot(vector))
	local deg = DEG(angle)
	return deg
end
local Ping = game.Stats.PerformanceStats.Ping:GetValue()
local saved

for i,v in pairs(Viewmodels:GetChildren()) do
	if v:FindFirstChild('HumanoidRootPart') and v.HumanoidRootPart.Transparency ~= 1 then
		v.HumanoidRootPart.Transparency = 1
	end
end

local Models = game:GetObjects('rbxassetid://6708336356')[1]
repeat wait() until Models ~= nil
local ChrModels = game:GetObjects('rbxassetid://7266357063')[1]
repeat wait() until ChrModels ~= nil

local AllKnives = {
	'CT Knife',
	'T Knife',
	'Banana',
	'Bayonet',
	'Bearded Axe',
	'Butterfly Knife',
	'Cleaver',
	'Crowbar',
	'Falchion Knife',
	'Flip Knife',
	'Gut Knife',
	'Huntsman Knife',
	'Karambit',
	'Sickle',
}

local AllGloves = {}


for _,fldr in pairs(Gloves:GetChildren()) do
	if fldr ~= GloveModels and fldr.Name ~= 'Racer' then
		AllGloves[fldr.Name] = {}
		for _2,modl in pairs(fldr:GetChildren()) do
			INSERT(AllGloves[fldr.Name], modl.Name)
		end
	end
end

for i,v in pairs(Models.Knives:GetChildren()) do
	INSERT(AllKnives, v.Name)
end

local AllSkins = {}
local AllWeapons = {}
local AllCharacters = {}

for i,v in pairs(ChrModels:GetChildren()) do
	INSERT(AllCharacters, v.Name)
end

local skins = {
	{['Weapon'] = 'AWP', ['SkinName'] = 'Bot', ['Skin'] = {['Scope'] = '6572594838', ['Handle'] = '6572594077'}}
}

for _,skin in pairs (skins) do
	local Folder = INST('Folder')
	Folder.Name = skin['SkinName']
	Folder.Parent = Skins[skin['Weapon']]

	for _,model in pairs (skin['Skin']) do
		local val = INST('StringValue')
		val.Name = _
		val.Value = 'rbxassetid://'..model
		val.Parent = Folder
	end
end

for i,v in pairs(Skins:GetChildren()) do
	INSERT(AllWeapons, v.Name)
end

TBLSORT(AllWeapons, function(a,b)
	return a < b
end)

for i,v in ipairs(AllWeapons) do
	AllSkins[v] = {}
	INSERT(AllSkins[v], 'Inventory')
	for _,v2 in pairs(Skins[v]:GetChildren()) do
		if not v2:FindFirstChild('Animated') then
			INSERT(AllSkins[v], v2.Name)
		end
	end
end

makefolder('ovalua')

local allluas = {}

for _,lua in pairs(listfiles('ovalua')) do
	local luaname = GSUB(lua, 'ovalua\\', '')
	INSERT(allluas, luaname)
end

RunService.RenderStepped:Wait()

local gui = library:New(versiondisplay)
local legit = gui:Tab('legit')
local rage = gui:Tab('rage')
local visuals = gui:Tab('visuals')
local misc = gui:Tab('misc')
local skins = gui:Tab('skins')
local luas = gui:Tab('luas')

getgenv().api = {}
api.newtab = function(name)
	return gui:Tab(name)
end
api.newsection = function(tab, name, side)
	return tab:Sector(name, side)
end
api.newelement = function(section, type, name, data, callback)
	section:Element(type, name, data, callback)
end


local luascripts = luas:Sector('lua scripts', 'Left')
luascripts:Element('Scroll', 'lua', {options = allluas, Amount = 5})
luascripts:Element('Button', 'load', {}, function()
	loadstring(readfile('ovalua\\'..values.luas['lua scripts'].lua.Scroll))()
end)

local knife = skins:Sector('knife', 'Left')
knife:Element('Toggle', 'knife changer')
knife:Element('Scroll', 'model', {options = AllKnives, Amount = 15})

local glove = skins:Sector('glove', 'Left')
glove:Element('Toggle', 'glove changer')
glove:Element('ScrollDrop', 'model', {options = AllGloves, Amount = 9})

local skin = skins:Sector('skins', 'Right')
skin:Element('Toggle', 'skin changer')
skin:Element('ScrollDrop', 'skin', {options = AllSkins, Amount = 15, alphabet = true})

local characters = skins:Sector('characters', 'Right')
characters:Element('Toggle', 'character changer', nil, function(tbl)
	if tbl.Toggle then
		if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild('Gun') then
			ChangeCharacter(ChrModels:FindFirstChild(values.skins.characters.skin.Scroll))
		end
	end
end)
characters:Element('Scroll', 'skin', {options = AllCharacters, Amount = 9, alphabet = true}, function(tbl)
	if values.skins.characters['character changer'].Toggle then
		if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild('Gun') then
			ChangeCharacter(ChrModels:FindFirstChild(tbl.Scroll))
		end
	end
end)

local aimbot = legit:Sector('aimbot', 'Left')
aimbot:Element('ToggleKeybind', 'aim assist')
aimbot:Element('ToggleKeybind', 'silent aim')
aimbot:Element('ToggleKeybind', 'triggerbot')

local main = legit:MSector('main', 'Left')
local default = main:Tab('default')
local pistol = main:Tab('pistol')
local smg = main:Tab('smg')
local rifle = main:Tab('rifle')
local sniper = main:Tab('sniper')

local function AddLegit(Tab)
	Tab:Element('Jumbobox', 'conditions', {options = {'visible', 'standing', 'blind', 'smoke'}})
	Tab:Element('Dropdown', 'target', {options = {'crosshair', 'health', 'distance'}})
	Tab:Element('Dropdown', 'hitbox', {options = {'closest', 'head', 'chest'}})
	Tab:Element('Slider', 'field of view', {min = 0, max = 420, default = 120})
	Tab:Element('Slider', 'smoothing', {min = 1, max = 50, default = 1})
	Tab:Element('Toggle', 'silent aim')
	Tab:Element('Slider', 'hitchance', {min = 1, max = 100, default = 100})
	Tab:Element('Dropdown', 'priority', {options = {'closest', 'head', 'chest'}})
	Tab:Element('Toggle', 'triggerbot')
	Tab:Element('Slider', 'delay (ms)', {min = 0, max = 300, default = 200})
	Tab:Element('Slider', 'minimum dmg', {min = 0, max = 100, default = 15})
end

AddLegit(default)

pistol:Element('Toggle', 'override default')
AddLegit(pistol)

smg:Element('Toggle', 'override default')
AddLegit(smg)

rifle:Element('Toggle', 'override default')
AddLegit(rifle)

sniper:Element('Toggle', 'override default')
AddLegit(sniper)

local settings = legit:Sector('settings', 'Right')
settings:Element('Toggle', 'free for all')
settings:Element('Toggle', 'forcefield check')
settings:Element('ToggleTrans', 'draw fov', {default = {Color = COL3RGB(255,255,255), Transparency = 0}})
settings:Element('Toggle', 'filled fov')
settings:Element('Slider', 'fov thickness', {min = 1, max = 10, default = 1})

local aimbot = rage:Sector('aimbot', 'Left')
aimbot:Element('Toggle', 'enabled')
aimbot:Element('Dropdown', 'origin', {options = {'character', 'camera'}})
aimbot:Element('Toggle', 'silent aim')
aimbot:Element('Dropdown', 'automatic fire', {options = {'off', 'standard', 'hitpart', 'silent'}})
aimbot:Element('Toggle', 'automatic penetration')
aimbot:Element('Dropdown', 'penetration', {options = {'normal', 'bad ver', 'extend'}})

aimbot:Element('Jumbobox', 'resolver', {options = {'pitch', 'roll', 'arms', 'animation'}})
aimbot:Element('Slider', 'resolver offset', {min = 0, max = 50, default = 0})
aimbot:Element('Toggle', 'delay shot')
aimbot:Element('Toggle', 'force hit')
aimbot:Element('Dropdown', 'prediction', {options = {'off', 'cframe', 'velocity', 'automatic'}})
aimbot:Element('Toggle', 'teammates')
aimbot:Element('Toggle', 'ignore on start')
aimbot:Element('ToggleKeybind', 'auto baim')
aimbot:Element('Toggle', 'knifebot')

local weapons = rage:MSector('weapons', 'Left')
local default = weapons:Tab('default')
local pistol = weapons:Tab('pistol')
local rifle = weapons:Tab('rifle')
local scout = weapons:Tab('scout')
local awp = weapons:Tab('awp')
local auto = weapons:Tab('auto')

local function AddRage(Tab)
	Tab:Element('Jumbobox', 'hitboxes', {options = {'head', 'torso', 'pelvis', 'arms', 'hand'}})
	Tab:Element('Toggle', 'prefer body')
	Tab:Element('Slider', 'minimum damage', {min = 1, max = 100, default = 20})
	Tab:Element('Slider', 'max fov', {min = 1, max = 180, default = 180})
end

default:Element('ToggleKeybind', 'override keybind')
AddRage(default)

pistol:Element('Toggle', 'override default')
AddRage(pistol)

rifle:Element('Toggle', 'override default')
AddRage(rifle)

scout:Element('Toggle', 'override default')
AddRage(scout)

awp:Element('Toggle', 'override default')
AddRage(awp)

auto:Element('Toggle', 'override default')
AddRage(auto)
local pitches = {'none', 'up', 'down', 'zero', '180', 'spin', 'random', 'among'}
local antiaim = rage:Sector('angles', 'Right')
antiaim:Element('ToggleKeybind', 'enabled')
antiaim:Element('Dropdown', 'yaw base', {options = {'camera', 'targets', 'spin', 'random'}})
antiaim:Element('Slider', 'yaw offset', {min = -180, max = 180, default = 0})
antiaim:Element('Toggle', 'jitter')
antiaim:Element('Slider', 'jitter offset', {min = -180, max = 180, default = 0})
antiaim:Element('Slider', 'jitter pitch', {min = -100, max = 100, default = 0})
antiaim:Element('Slider', 'jitter wait (ms)', {min = 0, max = 100, default = 0})
antiaim:Element('Toggle', 'shoot pitch')
antiaim:Element('Slider', 'offset', {min = -180, max = 180, default = 0})
antiaim:Element('Slider', 'pitch', {min = -100, max = 100, default = 0})
antiaim:Element('Slider', 'wait (ms)', {min = 0, max = 100, default = 0})
local shotthingy = false
game:GetService("Workspace").FunFacts["Shots were fired"].Changed:Connect(function()
	if not shotthingy then
		shotthingy = true 

		if values.rage.angles['shoot pitch'].Toggle then
			spawn(function()
				for i=1,10 do wait()
					pcall(function()
						game.ReplicatedStorage.Events.ControlTurn:FireServer(values.rage.angles['pitch'].Slider/7, game.Players.LocalPlayer.Character:FindFirstChild('Climbing') and true or false)
					end)
				end
			end)
		end

		wait(values.rage.angles['wait (ms)'].Slider/100)

		shotthingy = false
	end
end)
antiaim:Element('Dropdown', 'pitch', {options = pitches})
antiaim:Element('Toggle', 'custom pitch')
antiaim:Element('Slider', 'pitch value', {min = -100, max = 100, default = 0})

antiaim:Element('Toggle', 'extend pitch')
antiaim:Element('Dropdown', 'body roll', {options = {'off', '180', 'switch'}})
antiaim:Element('Slider', 'roll offset', {min = -200, max = 200, default = 0})

antiaim:Element('Slider', 'spin speed', {min = 1, max = 200, default = 4})

antiaim:Element('ToggleKeybind', 'overwrite keybind')
antiaim:Element('Dropdown', 'overwrite pitch', {options = pitches})
antiaim:Element('ToggleKeybind', 'lock yaw')


local others = rage:Sector('others', 'Right')
others:Element('Toggle', 'remove head')
others:Element('Toggle', 'no animations')
others:Element('Dropdown', 'leg movement', {options = {'off', 'slide'}})

local LagTick = 0
local fakelag = rage:Sector('fakelag', 'Right')
fakelag:Element('Slider', 'set ping', {min = -100, max = 100, default = 0})
game:GetService('Players').LocalPlayer.Ping.Changed:Connect(function()
	if values.rage.fakelag['set ping'].Slider ~= 0 then 
		game:GetService('ReplicatedStorage').Events.UpdatePing:FireServer( values.rage.fakelag['set ping'].Slider/10)
	end
end)
fakelag:Element('ToggleKeybind', 'enabled', {default = {Toggle = false}}, function(tbl)
	if tbl.Toggle then
	else
		FakelagFolder:ClearAllChildren()
		game:GetService('NetworkClient'):SetOutgoingKBPSLimit(9e9)
	end
end)
fakelag:Element('Dropdown', 'amount', {options = {'static', 'freeze', 'tfreeze', 'underfreeze'}})
fakelag:Element('Slider', 'limit', {min = 1, max = 16, default = 8})
fakelag:Element('Slider', 'under y', {min = 1, max = 50, default = 8})
fakelag:Element('Toggle', 'random')
fakelag:Element('ToggleColor', 'visualize lag', {default = {Toggle = false, Color = COL3RGB(255,255,255)}}, function(tbl)
	if tbl.Toggle then
		for _,obj in pairs(FakelagFolder:GetChildren()) do
			obj.Color = tbl.Color
		end
	else
		FakelagFolder:ClearAllChildren()
	end
end)

local savedcamerapart = Instance.new('Part', RayIgnore)
savedcamerapart.Anchored = true
savedcamerapart.CanCollide = false
savedcamerapart.Size = Vector3.new(1, 1, 1)
savedcamerapart.Transparency = 1
fakelag:Element('ToggleKeybind', 'ping spike')
coroutine.wrap(function()
	while wait(1/16) do
		LagTick = CLAMP(LagTick + 1, 0, values.rage.fakelag.limit.Slider)
		if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild('UpperTorso') and LocalPlayer.Character:FindFirstChild('HumanoidRootPart') and values.rage.fakelag.enabled.Toggle and values.rage.fakelag.enabled.Active then
			if LagTick >= (values.rage.fakelag.random.Toggle and math.random(0, values.rage.fakelag.limit.Slider) or values.rage.fakelag.limit.Slider)  then
				if values.rage.fakelag.amount.Dropdown == 'static' then 
					game:GetService('NetworkClient'):SetOutgoingKBPSLimit(9e9)
					FakelagFolder:ClearAllChildren()
					LagTick = 0
					if values.rage.fakelag['visualize lag'].Toggle then
						for _,hitbox in pairs(LocalPlayer.Character:GetChildren()) do
							if hitbox:IsA('BasePart') and hitbox.Name ~= 'HumanoidRootPart' then
								local part = INST('Part')
								part.CFrame = hitbox.CFrame
								part.Anchored = true
								part.CanCollide = false
								part.Material = Enum.Material.ForceField
								part.Color = values.rage.fakelag['visualize lag'].Color
								part.Name = hitbox.Name
								part.Transparency = 0
								part.Size = hitbox.Size
								part.Parent = FakelagFolder
							end
						end
					end
				elseif values.rage.fakelag.amount.Dropdown == 'freeze' and allowedtofreeze then 
					LagTick = 0
					FakelagFolder:ClearAllChildren()

					pcall(function()
						workspace.FreezeCharacter2:Remove()
					end)
					wait(0.1)
					
					pcall(function()
						local part = INST('Part', workspace)

						part.Size = Vector3.new(30, 1, 30) 
		
						
						part.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
						part.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
						part.CanCollide = false
						part.Transparency = 1
						part.Name = 'FreezeCharacter2'
		
	
						local weld = INST('Weld',part)
						weld.Part0 = part
						weld.Part1 = game.Players.LocalPlayer.Character.HumanoidRootPart
	
	
						if values.rage.fakelag['visualize lag'].Toggle then
							for _,hitbox in pairs(LocalPlayer.Character:GetChildren()) do
								if hitbox:IsA('BasePart') and hitbox.Name ~= 'HumanoidRootPart' then
									local part = INST('Part')
									part.CFrame = hitbox.CFrame
									part.Anchored = true
									part.CanCollide = false
									part.Material = Enum.Material.ForceField
									part.Color = values.rage.fakelag['visualize lag'].Color
									part.Name = hitbox.Name
									part.Transparency = 0
									part.Size = hitbox.Size
									part.Parent = FakelagFolder
								end
							end
						end
				    end)

					wait(0.1)
				elseif values.rage.fakelag.amount.Dropdown == 'tfreeze' and allowedtofreeze then 
					LagTick = 0
					FakelagFolder:ClearAllChildren()
					pcall(function()

					end)
					pcall(function()
						workspace.FreezeCharacter2:Remove()
					end)
					local loopstuff
					pcall(function()
						saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
						savedcamerapart.CFrame = workspace.Camera.Focus
						workspace.Camera.CameraSubject = savedcamerapart
						loopstuff = game:GetService('RunService').Stepped:Connect(function()
							savedcamerapart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.x, savedcamerapart.CFrame.y, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.z)
						end)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, -values.rage.fakelag['under y'].Slider, 0)
					end)

					wait(0.15)

					pcall(function()
						local part = INST('Part', workspace)

						part.Size = Vector3.new(30, 1, 30) 
		
						
						part.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
						part.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
						part.CanCollide = false
						part.Transparency = 1
						part.Name = 'FreezeCharacter2'
		
	
						local weld = INST('Weld',part)
						weld.Part0 = part
						weld.Part1 = game.Players.LocalPlayer.Character.HumanoidRootPart
	
	
						if values.rage.fakelag['visualize lag'].Toggle then
							for _,hitbox in pairs(LocalPlayer.Character:GetChildren()) do
								if hitbox:IsA('BasePart') and hitbox.Name ~= 'HumanoidRootPart' then
									local part = INST('Part')
									part.CFrame = hitbox.CFrame
									part.Anchored = true
									part.CanCollide = false
									part.Material = Enum.Material.ForceField
									part.Color = values.rage.fakelag['visualize lag'].Color
									part.Name = hitbox.Name
									part.Transparency = 0
									part.Size = hitbox.Size
									part.Parent = FakelagFolder
								end
							end
						end
				    end)
					
					wait(0.01)

					pcall(function()
						loopstuff:Disconnect()
						workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
						workspace.FreezeCharacter2.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.x, saved.y, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.z)
					end)


					wait(0.1)
				elseif values.rage.fakelag.amount.Dropdown == 'underfreeze'  and allowedtofreeze then 
					LagTick = 0
					FakelagFolder:ClearAllChildren()

					pcall(function()
						workspace.FreezeCharacter2:Remove()
					end)
					local loopstuff
					pcall(function()
						saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
						savedcamerapart.CFrame = workspace.Camera.Focus
						workspace.Camera.CameraSubject = savedcamerapart
						loopstuff = game:GetService('RunService').Stepped:Connect(function()
							savedcamerapart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.x, savedcamerapart.CFrame.y, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.z)
						end)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, -values.rage.fakelag['under y'].Slider, 0)
					end)

					wait(0.15)

					pcall(function()
						local part = INST('Part', workspace)

						part.Size = Vector3.new(30, 1, 30) 
		
						
						part.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
						part.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
						part.CanCollide = false
						part.Transparency = 1
						part.Name = 'FreezeCharacter2'
		
	
						local weld = INST('Weld',part)
						weld.Part0 = part
						weld.Part1 = game.Players.LocalPlayer.Character.HumanoidRootPart
	
	
						if values.rage.fakelag['visualize lag'].Toggle then
							for _,hitbox in pairs(LocalPlayer.Character:GetChildren()) do
								if hitbox:IsA('BasePart') and hitbox.Name ~= 'HumanoidRootPart' then
									local part = INST('Part')
									part.CFrame = hitbox.CFrame
									part.Anchored = true
									part.CanCollide = false
									part.Material = Enum.Material.ForceField
									part.Color = values.rage.fakelag['visualize lag'].Color
									part.Name = hitbox.Name
									part.Transparency = 0
									part.Size = hitbox.Size
									part.Parent = FakelagFolder
								end
							end
						end
				    end)
					
					wait(0.01)

					pcall(function()
						loopstuff:Disconnect()
						workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
						workspace.FreezeCharacter2.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.x, saved.y, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.z)
					end)


					wait(0.1)
				end
			else
				if values.rage.fakelag.enabled.Toggle and values.rage.fakelag.amount.Dropdown == 'static' then
					game:GetService('NetworkClient'):SetOutgoingKBPSLimit(1)
				end
			end
		else
			
			pcall(function()
				workspace.FreezeCharacter2:Remove()
			end)
			FakelagFolder:ClearAllChildren()
			game:GetService('NetworkClient'):SetOutgoingKBPSLimit(9e9)
		end
	end
end)()

freezebusy1 = false
freezebusy2 = false
local exploits = rage:Sector('exploits', 'Left')
exploits:Element('ToggleKeybind', 'around the world')
exploits:Element('Slider', 'height', {min = -200, max = 200, default = 0})
exploits:Element('Slider', 'distance', {min = 1, max = 500, default = 0})
exploits:Element('Slider', 'speed', {min = 1, max = 100, default = 0})

exploits:Element('ToggleKeybind', 'custom tap')
exploits:Element('Slider', 'tap amount', {min = 2, max = 10, default = 0})
exploits:Element('ToggleKeybind', 'kill all')
exploits:Element('Toggle', 'whizz all')
exploits:Element('ToggleKeybind', 'quick peek')
exploits:Element('Slider', 'wbr', {min = 1, max = 100, default = 1,})
exploits:Element('ToggleTrans', 'visualize circle', {default = {Color = COL3RGB(255,255,255)}})
exploits:Element('Toggle', 'unfreeze shoot')
exploits:Element('Dropdown', 'peek method', {options = {'freeze', 'teleport', 'tween'}})
exploits:Element('Slider', 'tween speed', {min = 1, max = 100, default = 1,})

exploits:Element('Toggle', 'limit peek')
exploits:Element('Slider', 'limit distance', {min = 1, max = 200, default = 10,})

peektimewait = 0
exploits:Element('Toggle', 'time limit')
exploits:Element('Slider', 'time duration', {min = 1, max = 85, default = 5,})

local players = visuals:Sector('players', 'Left')
players:Element('Toggle', 'teammates')
players:Element('ToggleColor', 'box', {default = {Color = COL3RGB(255,255,255)}})
players:Element('ToggleColor', 'name', {default = {Color = COL3RGB(255,255,255)}})
players:Element('ToggleColor', 'health', {default = {Color = COL3RGB(255,255,255)}})
players:Element('ToggleColor', 'weapon', {default = {Color = COL3RGB(255,255,255)}})
players:Element('ToggleColor', 'weapon icon', {default = {Color = COL3RGB(255,255,255)}})
players:Element('Jumbobox', 'indicators', {options = {'armor'}})
players:Element('Jumbobox', 'outlines', {options = {'drawings', 'text'}, default = {Jumbobox = {'drawings', 'text'}}})
players:Element('Dropdown', 'font', {options = {'Plex', 'Monospace', 'System', 'UI'}})
players:Element('Slider', 'size', {min = 12, max = 16, default = 13})

players:Element('Slider', 'cham thickness', {min = 0, max = 10, default = 0})

players:Element('ToggleTrans', 'chams', {default = {Color = COL3RGB(255,255,255), Transparency = 0}}, function(tbl)
	for _,Player in pairs(Players:GetPlayers()) do
		if Player.Character then
			for _2,Obj in pairs(Player.Character:GetDescendants()) do
				if Obj.Name == 'WallCham' then
					if tbl.Toggle then
						if values.visuals.players.teammates.Toggle or Player.Team ~= LocalPlayer.Team then
							Obj.Visible = true
							
						else
							Obj.Visible = false
						end
					else
						Obj.Visible = false
					end
					Obj.Color3 = tbl.Color
					Obj.Transparency = values.visuals.players['chams'].Transparency
				end
			end
		end
	end
end)

players:Element('Slider', 'vcham thickness', {min = 0, max = 10, default = 0})

players:Element('ToggleTrans', 'visible chams',  {default = {Color = COL3RGB(255,255,255), Transparency = 0}}, function(tbl)
	for _,Player in pairs(Players:GetPlayers()) do
		if Player.Character then
			for _2,Obj in pairs(Player.Character:GetDescendants()) do
				if Obj.Name == 'VisibleCham' then
					if tbl.Toggle then
						if values.visuals.players.teammates.Toggle or Player.Team ~= LocalPlayer.Team then
							Obj.Visible = true
						else
							Obj.Visible = false
						end
					else
						Obj.Visible = false
					end
					Obj.Color3 = tbl.Color
					Obj.Transparency = values.visuals.players['visible chams'].Transparency
				end
			end
		end
	end
end)

local effects = visuals:Sector('effects', 'Right')
effects:Element('ToggleTrans', 'weapon chams', {default = {Color = COL3RGB(255,255,255), Transparency = 0}}, function(tbl)
	if WeaponObj == nil then return end
	if tbl.Toggle then
		for i,v in pairs(WeaponObj) do
			UpdateWeapon(v)
		end
	else
		for i,v in pairs(WeaponObj) do
			if v:IsA('MeshPart') then v.TextureID = v.OriginalTexture.Value end
			if v:IsA('Part') and v:FindFirstChild('Mesh') and not v:IsA('BlockMesh') then
				v.Mesh.TextureId = v.Mesh.OriginalTexture.Value
				v.Mesh.VertexColor = Vec3(1,1,1)
			end
			v.Color = v.OriginalColor.Value
			v.Material = v.OriginalMaterial.Value
			v.Transparency = 0
		end
	end
end)
effects:Element('Dropdown', 'weapon material', {options = {'Smooth', 'Flat', 'ForceField', 'Glass'}}, function(tbl)
	if WeaponObj == nil then return end
	if values.visuals.effects['weapon chams'].Toggle then
		for i,v in pairs(WeaponObj) do
			UpdateWeapon(v)
		end
	end
end)
effects:Element('Slider', 'reflectance', {min = 0, max = 100, default = 0}, function(tbl)
	if values.visuals.effects['weapon chams'].Toggle then
		for i,v in pairs(WeaponObj) do
			UpdateWeapon(v)
		end
	end
end)
effects:Element('ToggleTrans', 'accessory chams', {default = {Color = COL3RGB(255,255,255)}}, function(val)
	if RArm == nil or LArm == nil then return end
	if val.Toggle then
		if RGlove ~= nil then
			UpdateAccessory(RGlove)
		end
		if RSleeve ~= nil then
			UpdateAccessory(RSleeve)
		end
		if LGlove ~= nil then
			UpdateAccessory(LGlove)
		end
		if LSleeve ~= nil then
			UpdateAccessory(LSleeve)
		end
	else
		if RGlove then
			ReverseAccessory(RGlove)
		end
		if LGlove then
			ReverseAccessory(LGlove)
		end
		if RSleeve then
			ReverseAccessory(RSleeve)
		end
		if LSleeve then
			ReverseAccessory(LSleeve)
		end
	end
end)
effects:Element('Dropdown', 'accessory material', {options = {'Smooth','ForceField'}}, function(val)
	if RArm == nil or LArm == nil then return end
	if values.visuals.effects['accessory chams'].Toggle then
		if RGlove ~= nil then
			UpdateAccessory(RGlove)
		end
		if RSleeve ~= nil then
			UpdateAccessory(RSleeve)
		end
		if LGlove ~= nil then
			UpdateAccessory(LGlove)
		end
		if LSleeve ~= nil then
			UpdateAccessory(LSleeve)
		end
	end
end)
effects:Element('ToggleTrans', 'arm chams', {default = {Color = COL3RGB(255,255,255)}}, function(val)
	if RArm == nil then return end
	if LArm == nil then return end
	if val.Toggle then
		RArm.Color = val.Color
		LArm.Color = val.Color
		RArm.Transparency = val.Transparency
		LArm.Transparency = val.Transparency
	else
		RArm.Color = RArm.Color3Value.Value
		LArm.Color = RArm.Color3Value.Value
		RArm.Transparency = 0
		LArm.Transparency = 0
	end
end)

effects:Element('Jumbobox', 'removals', {options = {'scope', 'scope lines', 'flash', 'smoke', 'decals', 'shadows', 'clothes'}}, function(val)
	local tbl = val.Jumbobox
	if TBLFIND(tbl, 'decals') then
		Client.createbullethole = function() end
		for i,v in pairs(workspace.Debris:GetChildren()) do
			if v.Name == 'Bullet' or v.Name == 'SurfaceGui' then
				v:Destroy()
			end
		end
	else
		Client.createbullethole = oldcreatebullethole
	end
	if TBLFIND(tbl, 'clothes') then
		if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild('UpperTorso') then
			if LocalPlayer.Character:FindFirstChild('Shirt') then
				LocalPlayer.Character:FindFirstChild('Shirt').ShirtTemplate = ''
			end
			if LocalPlayer.Character:FindFirstChild('Pants') then
				LocalPlayer.Character:FindFirstChild('Pants').PantsTemplate = ''
			end
		end
	else
		if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild('UpperTorso') then
			if LocalPlayer.Character:FindFirstChild('Shirt') then
				LocalPlayer.Character:FindFirstChild('Shirt').ShirtTemplate = LocalPlayer.Character:FindFirstChild('Shirt').OriginalTexture.Value
			end
			if LocalPlayer.Character:FindFirstChild('Pants') then
				LocalPlayer.Character:FindFirstChild('Pants').PantsTemplate = LocalPlayer.Character:FindFirstChild('Pants').OriginalTexture.Value
			end
		end
	end
	if TBLFIND(tbl, 'scope') then
		Crosshairs.Scope.ImageTransparency = 1
		Crosshairs.Scope.Scope.ImageTransparency = 1
		Crosshairs.Frame1.Transparency = 1
		Crosshairs.Frame2.Transparency = 1
		Crosshairs.Frame3.Transparency = 1
		Crosshairs.Frame4.Transparency = 1
	else
		Crosshairs.Scope.ImageTransparency = 0
		Crosshairs.Scope.Scope.ImageTransparency = 0
		Crosshairs.Frame1.Transparency = 0
		Crosshairs.Frame2.Transparency = 0
		Crosshairs.Frame3.Transparency = 0
		Crosshairs.Frame4.Transparency = 0
	end
	PlayerGui.Blnd.Enabled = not TBLFIND(tbl, 'flash') and true or false
	Lighting.GlobalShadows = not TBLFIND(tbl, 'shadows') and true or false
	if RayIgnore:FindFirstChild('Smokes') then
		if TBLFIND(tbl, 'smoke') then
			for i,smoke in pairs(RayIgnore.Smokes:GetChildren()) do
				smoke.ParticleEmitter.Rate = 0
			end
		else
			for i,smoke in pairs(RayIgnore.Smokes:GetChildren()) do
				smoke.ParticleEmitter.Rate = smoke.OriginalRate.Value
			end
		end
	end
end)
effects:Element('Toggle', 'force crosshair')
effects:Element('ToggleColor', 'world color', {default = {Color = COL3RGB(255,255,255)}}, function(val)
	if val.Toggle then
		Camera.ColorCorrection.TintColor = val.Color
	else
		Camera.ColorCorrection.TintColor = COL3RGB(255,255,255)
	end
end)
effects:Element('Toggle', 'shadowmap technology', nil, function(val) sethiddenproperty(Lighting, 'Technology', val.Toggle and 'ShadowMap' or 'Legacy') end)

local self = visuals:Sector('self', 'Right')
self:Element('ToggleKeybind', 'third person', {}, function(tbl)
	if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild('Humanoid') then
		if tbl.Toggle then
			if tbl.Active then
				LocalPlayer.CameraMaxZoomDistance = values.visuals.self.distance.Slider
				LocalPlayer.CameraMinZoomDistance = values.visuals.self.distance.Slider
				LocalPlayer.CameraMaxZoomDistance = values.visuals.self.distance.Slider
				LocalPlayer.CameraMinZoomDistance = values.visuals.self.distance.Slider
			else
				LocalPlayer.CameraMaxZoomDistance = 0
				LocalPlayer.CameraMinZoomDistance = 0
				LocalPlayer.CameraMaxZoomDistance = 0
				LocalPlayer.CameraMinZoomDistance = 0
			end
		else
			LocalPlayer.CameraMaxZoomDistance = 0
			LocalPlayer.CameraMinZoomDistance = 0
		end
	end
end)
self:Element('Toggle', 'hide arms')

self:Element('Slider', 'distance', {min = 6, max = 18, default = 12}, function(tbl)
	if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild('Humanoid') then
		if values.visuals.self['third person'].Toggle then
			if values.visuals.self['third person'].Active then
				LocalPlayer.CameraMaxZoomDistance = tbl.Slider
				LocalPlayer.CameraMinZoomDistance = tbl.Slider
				LocalPlayer.CameraMaxZoomDistance = tbl.Slider
				LocalPlayer.CameraMinZoomDistance = tbl.Slider
			else
				LocalPlayer.CameraMaxZoomDistance = 0
				LocalPlayer.CameraMinZoomDistance = 0
			end
		else
			LocalPlayer.CameraMaxZoomDistance = 0
			LocalPlayer.CameraMinZoomDistance = 0
		end
	end
end)
LocalPlayer:GetPropertyChangedSignal('CameraMinZoomDistance'):Connect(function(current)
	if values.visuals.self['third person'].Toggle then
		if values.visuals.self['third person'].Active then
			if current ~= values.visuals.self.distance.Slider then
				LocalPlayer.CameraMinZoomDistance = values.visuals.self.distance.Slider
			end
		end
	end
end)
self:Element('Slider', 'fov changer', {min = 0, max = 120, default = 80}, function(value)
	RunService.RenderStepped:Wait()
	if LocalPlayer.Character == nil then return end
	if fov == value.Slider then return end
	if values.visuals.self['on scope'].Toggle or not LocalPlayer.Character:FindFirstChild('AIMING') then
		Camera.FieldOfView = value.Slider
	end
end)
self:Element('Toggle', 'on scope')
self:Element('Toggle', 'viewmodel changer')
self:Element('Slider', 'viewmodel x', {min = -50, max = 50}, function(val)
	ViewmodelOffset = CF(values.visuals.self['viewmodel x'].Slider/7, values.visuals.self['viewmodel y'].Slider/7, values.visuals.self['viewmodel z'].Slider/7) * CFAngles(0, 0, values.visuals.self.roll.Slider/50)
end)
self:Element('Slider', 'viewmodel y', {min = -50, max = 50}, function(val)
	ViewmodelOffset = CF(values.visuals.self['viewmodel x'].Slider/7, values.visuals.self['viewmodel y'].Slider/7, values.visuals.self['viewmodel z'].Slider/7) * CFAngles(0, 0, values.visuals.self.roll.Slider/50)
end)
self:Element('Slider', 'viewmodel z', {min = -50, max = 50}, function(val)
	ViewmodelOffset = CF(values.visuals.self['viewmodel x'].Slider/7, values.visuals.self['viewmodel y'].Slider/7, values.visuals.self['viewmodel z'].Slider/7) * CFAngles(0, 0, values.visuals.self.roll.Slider/50)
end)
self:Element('Slider', 'roll', {min = -100, max = 100}, function(val)
	ViewmodelOffset = CF(values.visuals.self['viewmodel x'].Slider/7, values.visuals.self['viewmodel y'].Slider/7, values.visuals.self['viewmodel z'].Slider/7) * CFAngles(0, 0, values.visuals.self.roll.Slider/50)
end)
self:Element('ToggleColor', 'self chams', {default = {Color = COL3RGB(255,255,255)}}, function(tbl)
	if tbl.Toggle then
		for _,obj in pairs(SelfObj) do
			if obj.Parent ~= nil then
				obj.Material = values.visuals.self['self material'].Dropdown
				obj.Color = tbl.Color
			end
		end
	else
		for _,obj in pairs(SelfObj) do
			if obj.Parent ~= nil then
				obj.Material = obj.OriginalMaterial.Value
				obj.Color = obj.OriginalColor.Value
			end
		end
	end
end)
self:Element('Dropdown', 'self material', {options = {'Plastic', 'Neon', 'ForceField', 'Glass'}})

self:Element('Slider', 'scope blend', {min = 0, max = 100, default = 0})

local ads = Client.updateads
Client.updateads = function(self, ...)
	local args = {...}
	coroutine.wrap(function()
		wait()
		if LocalPlayer.Character ~= nil then
			for _,part in pairs(LocalPlayer.Character:GetDescendants()) do
				if part:IsA('Part') or part:IsA('MeshPart') then
					if part.Transparency ~= 1 then
						part.Transparency = LocalPlayer.Character:FindFirstChild('AIMING') and values.visuals.self['scope blend'].Slider/100 or 0
					end
				end
				if part:IsA('Accessory') then
					part.Handle.Transparency = LocalPlayer.Character:FindFirstChild('AIMING') and values.visuals.self['scope blend'].Slider/100 or 0
				end
			end
		end
	end)()
	return ads(self, ...)
end
local trail = visuals:Sector('trail', 'Left')

trail:Element('Toggle', 'enable', {Toggle = true})

trail:Element('Toggle', 'face camera', {Toggle = false})

trail:Element('ToggleColor', 'custom color', {default = {Color = COL3RGB(255,255,255)}})

trail:Element('Slider', 'size (x,z)', {min = 1, max = 50, default = 10})

trail:Element('Slider', 'offset (y)', {min = 1, max = 50, default = 10})

trail:Element('Slider', 'max length', {min = 1, max = 100, default = 20})

trail:Element('TextBox', 'image', {placeholder = 'image id here'})

local world = visuals:Sector('world', 'Left')
world:Element('ToggleTrans', 'molly radius', {default = {Color = COL3RGB(255,0,0)}}, function(tbl)
	if RayIgnore:FindFirstChild('Fires') == nil then return end
	if tbl.Toggle then
		for i,fire in pairs(RayIgnore:FindFirstChild('Fires'):GetChildren()) do
			fire.Transparency = tbl.Transparency
			fire.Color = tbl.Color
		end
	else
		for i,fire in pairs(RayIgnore:FindFirstChild('Fires'):GetChildren()) do
			fire.Transparency = 1
		end
	end
end)
world:Element('ToggleColor', 'smoke radius', {default = {Color = COL3RGB(0, 255, 0)}}, function(tbl)
	if RayIgnore:FindFirstChild('Smokes') == nil then return end
	if tbl.Toggle then
		for i,smoke in pairs(RayIgnore:FindFirstChild('Smokes'):GetChildren()) do
			smoke.Transparency = 0
			smoke.Color = tbl.Color
		end
	else
		for i,smoke in pairs(RayIgnore:FindFirstChild('Smokes'):GetChildren()) do
			smoke.Transparency = 1
		end
	end
end)
world:Element('ToggleTrans', 'bullet tracers', {default = {Color = COL3RGB(0, 0, 255)}})
world:Element('Dropdown', 'tracers material', {options = {'Smooth', 'Flat', 'ForceField', 'Glass'}})
world:Element('Slider', 'tracers duration', {min = 1, max = 5, default = 3})
world:Element('Slider', 'tracers thickness', {min = 0, max = 100, default = 0})

world:Element('ToggleTrans', 'impacts', {default = {Color = COL3RGB(255, 0, 0)}})
world:Element('Dropdown', 'impacts material', {options = {'Smooth', 'Flat', 'ForceField', 'Glass'}})
world:Element('Slider', 'impacts duration', {min = 1, max = 5, default = 3})
world:Element('Slider', 'impacts thickness', {min = 0, max = 100, default = 0})

world:Element('ToggleTrans', 'hit chams', {default = {Color = COL3RGB(0, 0, 255)}})
world:Element('Dropdown', 'hit material', {options = {'Smooth', 'Flat', 'ForceField', 'Glass'}})
world:Element('Slider', 'hit duration', {min = 1, max = 5, default = 3})

world:Element('Dropdown', 'hitsound', {options = {'none', 'skeet', 'neverlose', 'rust', 'bag', 'baimware', 'nn dog', 'retro', 'tf2'}})
world:Element('TextBox', 'customsound', {placeholder = 'sound id here'})

world:Element('Dropdown', 'killsound', {options = {'none', 'skeet', 'neverlose', 'rust', 'bag', 'baimware', 'nn dog', 'retro', 'tf2'}})

world:Element('Slider', 'sound volume', {min = 1, max = 5, default = 3})
world:Element('Dropdown', 'skybox', {options = {'none', 'nebula', 'vaporwave', 'clouds'}}, function(tbl)
	local sky = tbl.Dropdown
	if sky ~= 'none' then
		if Lighting:FindFirstChildOfClass('Sky') then Lighting:FindFirstChildOfClass('Sky'):Destroy() end
		local skybox = INST('Sky')
		skybox.SkyboxLf = Skyboxes[sky].SkyboxLf
		skybox.SkyboxBk = Skyboxes[sky].SkyboxBk
		skybox.SkyboxDn = Skyboxes[sky].SkyboxDn
		skybox.SkyboxFt = Skyboxes[sky].SkyboxFt
		skybox.SkyboxRt = Skyboxes[sky].SkyboxRt
		skybox.SkyboxUp = Skyboxes[sky].SkyboxUp
		skybox.Name = 'override'
		skybox.Parent = Lighting
	else
		if Lighting:FindFirstChildOfClass('Sky') then Lighting:FindFirstChildOfClass('Sky'):Destroy() end
		if oldSkybox ~= nil then oldSkybox:Clone().Parent = Lighting end
	end
end)
world:Element('ToggleColor', 'item esp', {default = {Color = COL3RGB(255, 255, 255)}}, function(tbl)
	for i,weapon in pairs(workspace.Debris:GetChildren()) do
		if weapon:IsA('BasePart') and Weapons:FindFirstChild(weapon.Name) then
			weapon.BillboardGui.ImageLabel.Visible = tbl.Toggle and TBLFIND(values.visuals.world['types'].Jumbobox, 'icon') and true or false
		end
	end
end)
world:Element('Jumbobox', 'types', {options = {'icon'}}, function(tbl)
	for i,weapon in pairs(workspace.Debris:GetChildren()) do
		if weapon:IsA('BasePart') and Weapons:FindFirstChild(weapon.Name) then
			weapon.BillboardGui.ImageLabel.Visible = values.visuals.world['item esp'].Toggle and TBLFIND(tbl.Jumbobox, 'icon') and true or false
			weapon.BillboardGui.ImageLabel.ImageColor3 = values.visuals.world['item esp'].Color
		end
	end
end)
local configs = misc:Sector('configs', 'Left')
configs:Element('TextBox', 'config', {placeholder = 'config name', Triggers = false})
configs:Element('Button', 'save', {}, function() if values.misc.configs.config.Text ~= '' then library:SaveConfig(values.misc.configs.config.Text) end end)
configs:Element('Button', 'load', {}, function() if values.misc.configs.config.Text ~= '' then ConfigLoad:Fire(values.misc.configs.config.Text) end end)
configs:Element('Toggle', 'keybind list', nil, function(tbl)
	library:SetKeybindVisible(tbl.Toggle)
end)

local crosshaireditor = misc:Sector('crosshair editor', 'Right')
local function UpdateCrosshair()
	if values.misc['crosshair editor'].enabled.Toggle then
		local length = values.misc['crosshair editor'].length.Slider
		Crosshair.LeftFrame.Size = UDIM2(0, length, 0, 2)
		Crosshair.RightFrame.Size = UDIM2(0, length, 0, 2)
		Crosshair.TopFrame.Size = UDIM2(0, 2, 0, length)
		Crosshair.BottomFrame.Size = UDIM2(0, 2, 0, length)
		for _,frame in pairs(Crosshair:GetChildren()) do
			if FIND(frame.Name, 'Frame') then
				frame.BorderColor3 = COL3(0,0,0)
				if values.misc['crosshair editor'].border.Toggle then
					frame.BorderSizePixel = 1
				else
					frame.BorderSizePixel = 0
				end
			end
		end
	else
		Crosshair.LeftFrame.Size = UDIM2(0, 10, 0, 2)
		Crosshair.RightFrame.Size = UDIM2(0, 10, 0, 2)
		Crosshair.TopFrame.Size = UDIM2(0, 2, 0, 10)
		Crosshair.BottomFrame.Size = UDIM2(0, 2, 0, 10)
		for _,frame in pairs(Crosshair:GetChildren()) do
			if FIND(frame.Name, 'Frame') then
				frame.BorderSizePixel = 0
			end
		end
	end
end
crosshaireditor:Element('Toggle', 'enabled', nil, UpdateCrosshair)
crosshaireditor:Element('Slider', 'length', {min = 1, max = 15, default = 10}, UpdateCrosshair)
crosshaireditor:Element('Toggle', 'border', nil, UpdateCrosshair)

local client = misc:Sector('client', 'Right')

client:Element('Toggle', 'auto join team')
client:Element('Dropdown', 'team', {options = {'CT', 'T'}})

client:Element('Toggle', 'infinite cash', nil, function(tbl)
	if tbl.Toggle then
		LocalPlayer.Cash.Value = 8000
	end
end)

client:Element('Toggle', 'infinite crouch')
client:Element('Jumbobox', 'damage bypass', {options = {'fire', 'fall'}})
client:Element('Jumbobox', 'gun modifiers', {options = {'recoil', 'spread', 'reload', 'equip', 'ammo', 'automatic', 'penetration', 'firerate'}})
client:Element('Toggle', 'remove killers', {}, function(tbl)
	if tbl.Toggle then
		if workspace:FindFirstChild('Map') and workspace:FindFirstChild('Map'):FindFirstChild('Killers') then
			local clone = workspace:FindFirstChild('Map'):FindFirstChild('Killers'):Clone()
			clone.Name = 'KillersClone'
			clone.Parent = workspace:FindFirstChild('Map')

			workspace:FindFirstChild('Map'):FindFirstChild('Killers'):Destroy()
		end
	else
		if workspace:FindFirstChild('Map') and workspace:FindFirstChild('Map'):FindFirstChild('KillersClone') then
			workspace:FindFirstChild('Map'):FindFirstChild('KillersClone').Name = 'Killers'
		end
	end
end)
client:Element('ToggleColor', 'hitmarker', {default = {Color = COL3RGB(255,255,255)}})
client:Element('Toggle', 'buy any grenade')
client:Element('Toggle', 'chat alive')
client:Element('Jumbobox', 'shop', {options = {'inf time', 'anywhere'}})
client:Element('Toggle', 'anti spectate')

local oldgrenadeallowed = Client.grenadeallowed
Client.grenadeallowed = function(...)
	if values.misc.client['buy any grenade'].Toggle then
		return true
	end

	return oldgrenadeallowed(...)
end

local movement = misc:Sector('movement', 'Left')
movement:Element('Toggle', 'bunny hop')
movement:Element('Dropdown', 'direction', {options = {'forward', 'directional', 'directional 2'}})
movement:Element('Dropdown', 'type', {options = {'gyro', 'cframe', 'velocity' , 'idk'}})
movement:Element('Slider', 'speed', {min = 0, max = 200, default = 40})
movement:Element('ToggleKeybind', 'overwrite')
movement:Element('Slider', 'overwrite speed', {min = 0, max = 200, default = 40})
movement:Element('Toggle', 'no gun')

movement:Element('Toggle', 'no velocity')

movement:Element('ToggleKeybind', 'no launch')

movement:Element('Slider', 'launch block (y velocity)', {min = 0, max = 100, default = 40})

movement:Element('ToggleKeybind', 'jump bug')
movement:Element('ToggleKeybind', 'edge jump')
movement:Element('ToggleKeybind', 'edge bug')

movement:Element('ToggleKeybind', 'gravity change')
movement:Element('Slider', 'gravity amount', {min = 0, max = 300, default = 80})

movement:Element('Toggle', 'height change')
movement:Element('Slider', 'height amount', {min = -35, max = 35, default = 0})

movement:Element('Toggle', 'client offset')
movement:Element('Slider', 'offset (y)', {min = -45, max = 45, default = 0})

local chat = misc:Sector('chat', 'Left')
chat:Element('Toggle', 'chat spam', nil, function(tbl)
	if tbl.Toggle then
		while values.misc.chat['chat spam'].Toggle do
			game:GetService('ReplicatedStorage').Events.PlayerChatted:FireServer(textboxtriggers(values.misc.chat['spam message'].Text), false, 'Innocent', false, true)
			wait(values.misc.chat['speed (ms)'].Slider/1000)
		end
	end
end)
chat:Element('TextBox', 'spam message', {placeholder = 'message'})
chat:Element('Slider', 'speed (ms)', {min = 150, max = 1000, default = 500})
chat:Element('Toggle', 'kill say')
chat:Element('TextBox', 'message', {placeholder = 'message'})
chat:Element('Toggle', 'no filter')

local grenades = misc:Sector('grenades', 'Right')
grenades:Element('ToggleKeybind', 'spam grenades')
coroutine.wrap(function()
	while true do
		wait(0.5)
		if values.misc.grenades['spam grenades'].Toggle and values.misc.grenades['spam grenades'].Active then
			local oh1 = game:GetService('ReplicatedStorage').Weapons[values.misc.grenades.grenade.Dropdown].Model
			local oh3 = 25
			local oh4 = 35
			local oh6 = ''
			local oh7 = ''
			game:GetService('ReplicatedStorage').Events.ThrowGrenade:FireServer(oh1, nil, oh3, oh4, Vec3(0,-100,0), oh6, oh7)
		end
	end
end)()

grenades:Element('Dropdown', 'grenade', {options = {'Flashbang', 'Smoke Grenade', 'Molotov', 'HE Grenade', 'Decoy Grenade'}})
grenades:Element('Button', 'crash server', {}, function()
	RunService.RenderStepped:Connect(function()
		if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild('UpperTorso') then
			local oh1 = game:GetService('ReplicatedStorage').Weapons[values.misc.grenades.grenade.Dropdown].Model
			local oh3 = 25
			local oh4 = 35
			local oh6 = ''
			local oh7 = ''
			game:GetService('ReplicatedStorage').Events.ThrowGrenade:FireServer(oh1, nil, oh3, oh4, Vec3(0,-100,0), oh6, oh7)
			game:GetService('ReplicatedStorage').Events.ThrowGrenade:FireServer(oh1, nil, oh3, oh4, Vec3(0,-100,0), oh6, oh7)
			game:GetService('ReplicatedStorage').Events.ThrowGrenade:FireServer(oh1, nil, oh3, oh4, Vec3(0,-100,0), oh6, oh7)
		end
	end)
end)

local Dance = INST('Animation')
Dance.AnimationId = ''
Dance.Name = 'Dance'

local LoadedAnim

local animations = misc:Sector('animations', 'Right')
animations:Element('ToggleKeybind', 'enabled', nil)

animations:Element('Slider', 'animation speed', {min = 0, max = 100, default = 1}, function()
	pcall(function()
		LoadedAnim:Stop()
	end)
end)

local animationsplay = {
	['idle'] = 'rbxassetid://2510196951',
	['fall over'] = 'rbxassetid://3716468774',
	['float'] = 'rbxassetid://1467170425',
	['sit down'] = 'rbxassetid://1467173451',
	['crouch'] = 'rbxassetid://896341616',
	['crunch'] = 'rbxassetid://4526742158',
    ['end spin'] = 'rbxassetid://6157859952',
	['headless pass'] = 'rbxassetid://5819194191',
	['floss'] = 'rbxassetid://5917459365',
	['default'] = 'rbxassetid://3732699835',
    ['Nothing'] = 'rbxassetid://2597335002',
	['toy walk'] = 'rbxassetid://6080889050',
	['laugh'] = 'rbxassetid://4529383951',
    ['Praisin'] = 'rbxassetid://2804019904',
	['grabbed'] = 'rbxassetid://5855133419',
	['getting eaten'] = 'rbxassetid://5855127786',
    ['No Touchin'] = 'rbxassetid://2805054405',
    ['Default'] = 'rbxassetid://3732699835',
    ['Thriller'] = 'rbxassetid://4174360426',
    ['Showtime Swing'] = 'rbxassetid://4802193849',
    ['Skateboard'] = 'rbxassetid://3725767158',
    ['Crazy Chainsaw'] = 'rbxassetid://5822705079',
    ['Summer Slack'] = 'rbxassetid://3226145532',
	['happy sit'] = 'rbxassetid://2743669791',
	['air sit'] = 'rbxassetid://5593420812',
	['sleep'] = 'rbxassetid://4165553098',
	['flying ragdoll'] = 'rbxassetid://5855128842',
	['naruto run'] = 'rbxassetid://4189480820',
	['hands on head'] = 'rbxassetid://6698274740',
	['sit'] = 'rbxassetid://507768133'
}

local animlist = {}

for a,b in next, animationsplay do 
	table.insert(animlist, a)
end
animations:Element('Dropdown', 'animation', {options = animlist}, function(tbl)
	pcall(function()
		LoadedAnim:Stop()
	end)

	Dance.AnimationId = animationsplay[tbl.Dropdown]
end)

animations:Element('TextBox', 'custom animation', {placeholder = 'animation id'}, function(tbl)
	pcall(function()
		LoadedAnim:Stop()
	end)

	Dance.AnimationId = 'rbxassetid://'..tbl.Text
end)

watermarkthemes = {}
watermarklocation = nil
fonts = {
	'Legacy',
	'Arial',
	'ArialBold',
	'SourceSans',
	'SourceSansBold',
	'SourceSansSemibold',
	'SourceSansLight',
	'SourceSansItalic',
	'Bodoni',
	'Garamond',
	'Cartoon',
	'Code',
	'Highway',
	'SciFi',
	'Arcade',
	'Fantasy',
	'Antique',
	'Gotham',
	'GothamSemibold',
	'GothamBold',
	'GothamBlack',
	'AmaticSC',
	'Bangers',
	'Creepster',
	'DenkOne',
	'Fondamento',
	'FredokaOne',
	'GrenzeGotisch',
	'IndieFlower',
	'JosefinSans',
	'Jura',
	'Kalam',
	'LuckiestGuy',
	'Merriweather',
	'Michroma',
	'Nunito',
	'Oswald',
	'PatrickHand',
	'PermanentMarker',
	'Roboto',
	'RobotoCondensed',
	'RobotoMono',
	'Sarpanch',
	'SpecialElite',
	'TitilliumWeb',
	'Ubuntu',
}

function instancethewatermark()
	local watermark = Instance.new('ScreenGui')
	local watermark_2 = Instance.new('Frame')
	local title = Instance.new('TextLabel')
	local none = Instance.new('UIGradient')
	local linetop = Instance.new('UIGradient')
	local linetopandbottem = Instance.new('UIGradient')
	local shadowatbottem = Instance.new('UIGradient')
	local shadowattop = Instance.new('UIGradient')
	local shadowattopandbottom = Instance.new('UIGradient')

	watermarklocation = watermark

	watermark.Name = 'watermark'
	watermark.Parent = game.CoreGui
	watermark.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	watermark_2.Name = 'watermark'
	watermark_2.Parent = watermark
	watermark_2.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
	watermark_2.BorderColor3 = Color3.fromRGB(255, 255, 255)
	watermark_2.Position = UDim2.new(0.912, 0, 0.00858895481, 0)
	watermark_2.Size = UDim2.new(0, 89, 0, 20)
	
	title.Name = 'title'
	title.Parent = watermark_2
	title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	title.BackgroundTransparency = 1.000
	title.Position = UDim2.new(0, 0, 0.0597654358, 0)
	title.Size = UDim2.new(0, 0, 0, 18)
	title.Font = Enum.Font.Nunito
	title.LineHeight = 1.21
	title.Text = '         yes.no'
	title.TextColor3 = Color3.fromRGB(255, 255, 255)
	title.TextSize = 16.000
	title.TextStrokeColor3 = Color3.fromRGB(25, 25, 25)
	title.TextStrokeTransparency = 0.000
	title.TextXAlignment = Enum.TextXAlignment.Left

	none.Enabled = false
	none.Color =ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))}
	none.Rotation = 0
	none.Name = 'none'
	none.Parent = watermark_2

	linetop.Enabled = false
	linetop.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(0.00, Color3.fromRGB(56, 56, 56)), ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(0.66, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(0.99, Color3.fromRGB(0, 0, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))}
	linetop.Rotation = -90
	linetop.Name = 'linetop'
	linetop.Parent = watermark_2
	
	shadowatbottem.Enabled = false
	shadowatbottem.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
	shadowatbottem.Rotation = 90
	shadowatbottem.Name = 'shadowatbottem'
	shadowatbottem.Parent = watermark_2

	shadowattop.Enabled = false
	shadowattop.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
	shadowattop.Rotation = -90
	shadowattop.Name = 'shadowattop'
	shadowattop.Parent = watermark_2

	shadowattopandbottom.Enabled = false
	shadowattopandbottom.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(25, 25, 25)), ColorSequenceKeypoint.new(0.59, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(25, 25, 25))}
	shadowattopandbottom.Rotation = -90
	shadowattopandbottom.Name = 'shadowattopandbottom'
	shadowattopandbottom.Parent = watermark_2

	for a,b in next, watermark_2:GetChildren() do -- inserts all the theme names into 'watermarkthemes'
		if b:IsA('UIGradient') then
			table.insert(watermarkthemes, b.Name)
		end
	end
end

instancethewatermark()

local ui = misc:Sector('ui', 'Left')


ui:Element('Toggle', 'spectate list', {default = {Toggle = false}}, function(tbl)
	specmenu.Enabled = tbl.Toggle
end)

ui:Element('ToggleColor', 'ui border', {default = {Color = COL3RGB(255,255,255)}})

ui:Element('ToggleKeybind', 'gui keybind', {default = {Key = RightShift, Type = Toggle, Toggle = true}}, function(tbl)
	if tbl.Toggle then
		watermarklocation.watermark.Draggable = tbl.Active
		ovascreengui['ova'].Enabled = tbl.Active
		library.uiopen = tbl.Active
	end
end)

local customtitleoffset = 5
local textsave = ''
ui:Element('TextBox', 'custom title', {placeholder = 'title name here'}, function(tbl)
	local lenght = string.len(tbl.Text)
	textsave = tbl.Text
	ovascreengui['ova'].Menu.TextLabel.Text = tbl.Text
end)

themebackground = {
    ['Default'] = 2151741365,
    ['Hearts'] = 6073763717,
    ['Abstract'] = 6073743871,
    ['Hexagon'] = 6073628839,
    ['Circles'] = 6071579801,
    ['Lace With Flowers'] = 6071575925,
    ['Floral'] = 5553946656,
}

Images_names = {}

for a,b in next, themebackground do 
    table.insert(Images_names, a)
end

ui:Element('Dropdown', 'background', {options = Images_names})

ui:Element('ToggleTrans', 'background color', {default = {Color = COL3RGB(25,25,25), Transparency = 0}})

local watermark = misc:Sector('watermark', 'Left')

watermark:Element('Toggle', 'enabled', {default = {Toggle = true}}, function(tbl)
	watermarklocation.Enabled = tbl.Toggle
end)

watermark:Element('Dropdown', 'themes', {options = watermarkthemes})


watermark:Element('TextBox', 'watermark text', {placeholder = 'text here', default = {text = '         yes.no'}}, function(tbl)

	local textierawr = textboxtriggers(tbl.Text)
	watermarklocation.watermark.title.Text = textierawr
end)

watermark:Element('Dropdown', 'text font', {options = fonts}, function(tbl)
	watermarklocation.watermark.title.Font = Enum.Font[tbl.Dropdown]
end)

watermark:Element('Slider', 'text size', {min = 0, max = 50, default = watermarklocation.watermark.title.TextSize}, function(tbl)
	watermarklocation.watermark.title.TextSize = tbl.Slider
end)

watermark:Element('Slider', 'text line height', {min = -50, max = 50, default = watermarklocation.watermark.title.LineHeight}, function(tbl)
	watermarklocation.watermark.title.LineHeight = 1.1 * (tbl.Slider / 10)
end)

watermark:Element('Slider', 'watermark lenght', {min = 0, max = 100, default = watermarklocation.watermark.Size.X.Scale}, function(tbl)
	watermarklocation.watermark.Size = UDim2.new(0, tbl.Slider * 5, 0, 20)
end)

watermark:Element('ToggleColor', 'border color', {default = {Color = COL3RGB(255,255,255)}}, function(tbl)
	watermarklocation.watermark.BorderColor3 = tbl.Color
end)

watermark:Element('ToggleColor', 'text color', {default = {Color = COL3RGB(255,255,255)}}, function(tbl)
	watermarklocation.watermark.title.TextColor3 = tbl.Color
end)


watermark:Element('Slider', 'watermark offset X', {min = -100, max = 0, default = watermarklocation.watermark.Position.X.Scale}, function(tbl)
	watermarklocation.watermark.Position = UDim2.new(0.912 + (tbl.Slider / 150), 0, watermarklocation.watermark.Position.Y.Scale, 0)
end)

watermark:Element('Slider', 'watermark offset y', {min = -100, max = 0, default = watermarklocation.watermark.Position.Y.Scale}, function(tbl)
	watermarklocation.watermark.Position = UDim2.new(watermarklocation.watermark.Position.X.Scale, 0,  0.00858895481 + (tbl.Slider / 150) , 0)
end)

local objects = {}
local utility = {}

do
	utility.default = {
		Line = {
			Thickness = 1.5,
			Color = COL3RGB(255, 255, 255),
			Visible = false
		},
		Text = {
			Size = 13,
			Center = true,
			Outline = true,
			Font = Drawing.Fonts.Plex,
			Color = COL3RGB(255, 255, 255),
			Visible = false
		},
		Square = {
			Thickness = 1.5,
			Filled = false,
			Color = COL3RGB(255, 255, 255),
			Visible = false
		},
	}
	function utility.create(type, isOutline)
		local drawing = Drawing.new(type)
		for i, v in pairs(utility.default[type]) do
			drawing[i] = v
		end
		if isOutline then
			drawing.Color = COL3(0,0,0)
			drawing.Thickness = 3
		end
		return drawing
	end
	function utility.add(plr)
		if not objects[plr] then
			objects[plr] = {
				Name = utility.create('Text'),
				Weapon = utility.create('Text'),
				Armor = utility.create('Text'),
				BoxOutline = utility.create('Square', true),
				Box = utility.create('Square'),
				HealthOutline = utility.create('Line', true),
				Health = utility.create('Line'),
			}
		end
	end
	for _,plr in pairs(Players:GetPlayers()) do
		if Player ~= LocalPlayer then
			utility.add(plr)
		end
	end
	Players.PlayerAdded:Connect(utility.add)
	Players.PlayerRemoving:Connect(function(plr)
		wait()
		if objects[plr] then
			for i,v in pairs(objects[plr]) do
				for i2,v2 in pairs(v) do
					if v then
						v:Remove()
					end
				end
			end

			objects[plr] = nil
		end
	end)
end
local Items = INST('ScreenGui')
Items.Name = 'Items'
Items.Parent = game.CoreGui
Items.ResetOnSpawn = false
Items.ZIndexBehavior = 'Global'
do
	function add(plr)
		local ImageLabel = INST('ImageLabel')
		ImageLabel.BackgroundColor3 = COL3RGB(255, 255, 255)
		ImageLabel.BackgroundTransparency = 1.000
		ImageLabel.Size = UDIM2(0, 62, 0, 25)
		ImageLabel.Visible = false
		ImageLabel.Image = 'rbxassetid://1784884358'
		ImageLabel.ScaleType = Enum.ScaleType.Fit
		ImageLabel.Name = plr.Name
		ImageLabel.AnchorPoint = Vec2(0.5,0.5)
		ImageLabel.Parent = Items
	end
	for _,plr in pairs(Players:GetPlayers()) do
		if Player ~= LocalPlayer then
			add(plr)
		end
	end
	Players.PlayerAdded:Connect(add)
	Players.PlayerRemoving:Connect(function(plr)
		wait()
		Items[plr.Name]:Destroy()
	end)
end
local debrisitems = {}
workspace.Debris.ChildAdded:Connect(function(obj)
	if obj:IsA('BasePart') and Weapons:FindFirstChild(obj.Name) then
		RunService.RenderStepped:Wait()

		local BillboardGui = INST('BillboardGui')
		BillboardGui.AlwaysOnTop = true
		BillboardGui.Size = UDIM2(0, 40, 0, 40)
		BillboardGui.Adornee = obj

		local ImageLabel = INST('ImageLabel')
		ImageLabel.Parent = BillboardGui
		ImageLabel.BackgroundTransparency = 1
		ImageLabel.Size = UDIM2(1, 0, 1, 0)
		ImageLabel.ImageColor3 = values.visuals.world['item esp'].Color
		ImageLabel.Image = GetIcon.getWeaponOfKiller(obj.Name)
		ImageLabel.ScaleType = Enum.ScaleType.Fit
		ImageLabel.Visible = values.visuals.world['item esp'].Toggle and TBLFIND(values.visuals.world['types'].Jumbobox, 'icon') and true or false

		BillboardGui.Parent = obj
	end
end)
for _, obj in pairs(workspace.Debris:GetChildren()) do
	if obj:IsA('BasePart') and Weapons:FindFirstChild(obj.Name) then
		RunService.RenderStepped:Wait()

		local BillboardGui = INST('BillboardGui')
		BillboardGui.AlwaysOnTop = true
		BillboardGui.Size = UDIM2(0, 40, 0, 40)
		BillboardGui.Adornee = obj

		local ImageLabel = INST('ImageLabel')
		ImageLabel.Parent = BillboardGui
		ImageLabel.BackgroundTransparency = 1
		ImageLabel.Size = UDIM2(1, 0, 1, 0)
		ImageLabel.ImageColor3 = values.visuals.world['item esp'].Color
		ImageLabel.Image = GetIcon.getWeaponOfKiller(obj.Name)
		ImageLabel.ScaleType = Enum.ScaleType.Fit
		ImageLabel.Visible = values.visuals.world['item esp'].Toggle and TBLFIND(values.visuals.world['types'].Jumbobox, 'icon') and true or false

		BillboardGui.Parent = obj
	end
end
local function YROTATION(cframe)
	local x, y, z = cframe:ToOrientation()
	return CF(cframe.Position) * CFAngles(0,y,0)
end
local function XYROTATION(cframe)
	local x, y, z = cframe:ToOrientation()
	return CF(cframe.Position) * CFAngles(x,y,0)
end
local weps = {
	Pistol = {'USP', 'P2000', 'Glock', 'DualBerettas', 'P250', 'FiveSeven', 'Tec9', 'CZ', 'DesertEagle', 'R8'},
	SMG = {'MP9', 'MAC10', 'MP7', 'UMP', 'P90', 'Bizon'},
	Rifle = {'M4A4', 'M4A1', 'AK47', 'Famas', 'Galil', 'AUG', 'SG'},
	Sniper = {'AWP', 'Scout', 'G3SG1'}
}
local weps2 = {
	Pistol = {'USP', 'P2000', 'Glock', 'DualBerettas', 'P250', 'FiveSeven', 'Tec9', 'CZ', 'DesertEagle', 'R8'},
	SMG = {'MP9', 'MAC10', 'MP7', 'UMP', 'P90', 'Bizon'},
	Rifle = {'M4A4', 'M4A1', 'AK47', 'Famas', 'Galil', 'AUG', 'SG'},
	Sniper = {'AWP', 'Scout', 'G3SG1'}
}
local function GetWeaponRage(weapon)
	return TBLFIND(weps.Pistol, weapon) and 'pistol' or TBLFIND(weps.Rifle, weapon) and 'rifle' or weapon == 'AWP' and 'awp' or weapon == 'G3SG1'  and 'auto' or weapon == 'Scout' and 'scout' or 'default'
end
local function GetStatsRage(weapon)
	if weapon == 'default' or values.rage.weapons.default['override keybind'].Toggle and values.rage.weapons.default['override keybind'].Active then
		return values.rage.weapons.default
	else
		if values.rage.weapons[weapon]['override default'].Toggle then
			return values.rage.weapons[weapon]
		else
			return values.rage.weapons.default
		end
	end
end
local function GetWeaponLegit(weapon)
	return TBLFIND(weps2.Pistol, weapon) and 'pistol' or TBLFIND(weps2.Rifle, weapon) and 'rifle' or TBLFIND(weps2.SMG, weapon) and 'smg' or TBLFIND(weps2.Sniper, weapon) and 'sniper' or 'default'
end
local function GetStatsLegit(weapon)
	if weapon == 'default' then
		return values.legit.main.default
	else
		if values.legit.main[weapon]['override default'].Toggle then
			return values.legit.main[weapon]
		else
			return values.legit.main.default
		end
	end
end

switchtrigger = {false, nil, nil}
savedspinpitch = 0
Jitter = false
jitterwait = false
lockyaw = false
Spin = 0
local RageTarget
Filter = false
local LastStep
TriggerDebounce = false
DisableAA = false
allowedtofreeze = true
local Fov = Drawing.new('Circle')
Fov.Filled = false
Fov.Color = COL3RGB(25,25,25)
Fov.Transparency = 1
Fov.Position = Vec2(Mouse.X, Mouse.Y + 16)
Fov.Radius = 120
Fov.Visible = true
Fov.Thickness = 1

aroundtheworld_value = 0
savedanimationdance = nil
local steppedlocal

Ping = game.Stats.PerformanceStats.Ping:GetValue()
RageTarget = nil
PlayerIsAlive = false
CamCFrame = Camera.CFrame
CamLook = CamCFrame.LookVector
Character = LocalPlayer.Character
local Root
local frchr
RageTarget = nil
Spin = CLAMP(Spin + values.rage.angles['spin speed'].Slider, 0, 360)

steppedlocal = game:GetService('RunService').Stepped:Connect(function(a)
	for a,b in next, game:GetService("Workspace")["Ray_Ignore"]:GetChildren() do 
	    if b.Name ~= 'MagDrop' and #b:GetChildren() == 0 then continue end 
		b:Destroy()
	end
	LastStep = a
	PlayerIsAlive = false

	if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild('Humanoid') and LocalPlayer.Character:FindFirstChild('Humanoid').Health > 0 and LocalPlayer.Character:FindFirstChild('UpperTorso') and LocalPlayer.Character:FindFirstChild('HumanoidRootPart') then
		PlayerIsAlive = true
	end
end)

game:GetService('RunService'):BindToRenderStep('Obama2', 0, function()
	if PlayerIsAlive then 
		local RageGuy
		if workspace:FindFirstChild('Map') and Client.gun ~= 'none' and Client.gun.Name ~= 'C4' then
			if values.rage.aimbot.enabled.Toggle and (LocalPlayer.Character.Humanoid.WalkSpeed ~= 0 or values.rage.aimbot['ignore on start'].Toggle) then
				local Origin = values.rage.aimbot.origin.Dropdown == 'character' and workspace.Camera.Focus.p or CamCFrame.p
				local Stats = GetStatsRage(GetWeaponRage(Client.gun.Name))
				
				for _, Player in next, Players:GetChildren() do
					if TBLFIND(values.misc.client['gun modifiers'].Jumbobox, 'firerate') then
						Client.DISABLED = false
					end
					if Player.Character and Player.Character:FindFirstChild('Humanoid') and Player.Character:FindFirstChild('Humanoid').Health > 0 and Player.Team ~= 'TTT' and Player ~= LocalPlayer then
						if TBLFIND(values.rage.aimbot.resolver.Jumbobox, 'pitch') then
							Player.Character.UpperTorso.Waist.C0 = CFrame.new(0, 0.5 * (values.rage.aimbot['resolver offset'].Slider / 10), 0)
                            Player.Character.Head.Neck.C0 = CFrame.new(0, 0.7 * (values.rage.aimbot['resolver offset'].Slider / 10), 0)
						end
						if TBLFIND(values.rage.aimbot.resolver.Jumbobox, 'roll') then
							Player.Character.Humanoid.MaxSlopeAngle = 0
						end
						if TBLFIND(values.rage.aimbot.resolver.Jumbobox, 'arms') then
							Player.Character.RightUpperArm:FindFirstChildWhichIsA('Motor6D').C0 = CFrame.new(1.5 * (values.rage.aimbot['resolver offset'].Slider / 10), 0.549999952, -0.2)
							Player.Character.LeftUpperArm:FindFirstChildWhichIsA('Motor6D').C0 = CFrame.new(-(1.5 * (values.rage.aimbot['resolver offset'].Slider / 10)), 0.549999952, -0.2)
						end
						if TBLFIND(values.rage.aimbot.resolver.Jumbobox, 'animation') then
							for a, b in next, Player.Character.Humanoid:GetPlayingAnimationTracks() do
								b:Stop()
							end
						end
					end
					if Player.Team ~= LocalPlayer.Team and Player.Character and Player.Character:FindFirstChild('Humanoid') and not Client.DISABLED and Player.Character:FindFirstChild('Humanoid').Health > 0 and Player.Team ~= 'TTT' and not Player.Character:FindFirstChildOfClass('ForceField') and GetDeg(CamCFrame, Player.Character.Head.Position) <= Stats['max fov'].Slider and Player ~= LocalPlayer then
						if Player.Team ~= game.Players.LocalPlayer.Team and Player:FindFirstChild('Status') and Player.Status.Team.Value ~= game.Players.LocalPlayer.Status.Team.Value and Player.Status.Alive.Value then
							if Client.gun:FindFirstChild('Melee') and values.rage.aimbot['knifebot'].Toggle then
								local Ignore = {unpack(Collision)}
								INSERT(Ignore, workspace.Map.Clips)
								INSERT(Ignore, workspace.Map.SpawnPoints)
								INSERT(Ignore, LocalPlayer.Character)
								INSERT(Ignore, Player.Character.HumanoidRootPart)
								if Player.Character:FindFirstChild('BackC4') then
									INSERT(Ignore, Player.Character.BackC4)
								end
								if Player.Character:FindFirstChild('Gun') then
									INSERT(Ignore, Player.Character.Gun)
								end

								local Ray = RAY(Origin, (Player.Character.Head.Position - Origin).unit * 40)
								local Hit, Pos = workspace:FindPartOnRayWithIgnoreList(Ray, Ignore, false, true)

								if Hit and Hit.Parent == Player.Character then                                    
									RageGuy = Hit
									RageTarget = Hit
									if not values.rage.aimbot['silent aim'].Toggle then
										Camera.CFrame = CF(CamCFrame.Position, Hit.Position)
									end
									Filter = true

									spawn(function()
										wait(0.9)
										--Client.firebullet()
										Filter = false
									end)

									local Arguments = {
										[1] = Hit,
										[2] = Hit.Position,
										[3] = Client.gun.Name,
										[4] = 4096,
										[5] = LocalPlayer.Character.Gun,
										[8] = 1,
										[9] = false,
										[10] = false,
										[11] = Vec3(),
										[12] = 16868,
										[13] = Vec3()
									}
									game.ReplicatedStorage.Events.HitPart:FireServer(unpack(Arguments))
								end
							else
								local Ignore = {unpack(Collision)}
								INSERT(Ignore, workspace.Map.Clips)
								INSERT(Ignore, workspace.Map.SpawnPoints)
								INSERT(Ignore, LocalPlayer.Character)
								INSERT(Ignore, Player.Character.HumanoidRootPart)
								if Player.Character:FindFirstChild('BackC4') then
									INSERT(Ignore, Player.Character.BackC4)
								end
								if Player.Character:FindFirstChild('Gun') then
									INSERT(Ignore, Player.Character.Gun)
								end

								local Hitboxes = {}
								for _,Hitbox in ipairs(Stats.hitboxes.Jumbobox) do
									if Stats['prefer body'].Toggle then
										if Hitbox == 'torso' then
											INSERT(Hitboxes, Player.Character.UpperTorso)
										elseif Hitbox == 'arms' then
											INSERT(Hitboxes, Player.Character.LeftUpperArm)
											INSERT(Hitboxes, Player.Character.RightUpperArm)
										elseif Hitbox == 'hand' then
											INSERT(Hitboxes, Player.Character.LeftHand)
											INSERT(Hitboxes, Player.Character.RightHand)
									    elseif Hitbox == 'head' and (not values.rage.aimbot['auto baim'].Toggle and not values.rage.aimbot['auto baim'].Active or Player.Character:FindFirstChild('FakeHead')) then
											INSERT(Hitboxes, Player.Character.Head)
										else
											INSERT(Hitboxes, Player.Character.LowerTorso) 
										end
									else
										if Hitbox == 'head' then
											INSERT(Hitboxes, Player.Character:FindFirstChild('Head'))
									    elseif Hitbox == 'torso' then
											INSERT(Hitboxes, Player.Character.UpperTorso)
										elseif Hitbox == 'arms' then
											INSERT(Hitboxes, Player.Character.LeftUpperArm)
											INSERT(Hitboxes, Player.Character.RightUpperArm)
										elseif Hitbox == 'hand' then
											INSERT(Hitboxes, Player.Character.LeftHand)
											INSERT(Hitboxes, Player.Character.RightHand)
										else
											INSERT(Hitboxes, Player.Character.LowerTorso) 
										end
									end
								end

								for _,Hitbox in ipairs(Hitboxes) do
									local wallbang = false
									local Ignore2 = {unpack(Ignore)}
									for _,Part in next, Player.Character:GetChildren() do
										if Part ~= Hitbox then INSERT(Ignore2, Part) end
									end

									for a,b in next, game.Players:GetChildren() do 
										if b ~= Player and b.Character then
											for i, h in next, b.Character:GetChildren() do 
												INSERT(Ignore2, h)
											end
										end 
									end

									if values.rage.aimbot['automatic penetration'].Toggle then
										local Hits = {}
										local EndHit, Hit, Pos
										
										local Ray1 = RAY(Origin, (Hitbox.Position  - Origin).unit * (Hitbox.Position - Origin).magnitude)
										repeat
											Hit, Pos = workspace:FindPartOnRayWithIgnoreList(Ray1, Ignore2, false, true)
											if Hit ~= nil and Hit.Parent ~= nil then
												if Hit and Multipliers[Hit.Name] ~= nil then
													EndHit = Hit
												else
													INSERT(Ignore2, Hit)
													INSERT(Hits, {['Position'] = Pos,['Hit'] = Hit})
												end
											end
										until EndHit ~= nil or #Hits >= 4 or Hit == nil 
										
										if EndHit ~= nil and Multipliers[EndHit.Name] ~= nil and #Hits <= 4 then
											if #Hits == 0 then
												local Damage = Client.gun.DMG.Value * Multipliers[EndHit.Name]
												if Player:FindFirstChild('Kevlar') then
													if FIND(EndHit.Name, 'Head') then
														if Player:FindFirstChild('Helmet') then
															Damage = (Damage / 100) * Client.gun.ArmorPenetration.Value
														end
													else
														Damage = (Damage / 100) * Client.gun.ArmorPenetration.Value
													end
												end
												Damage = Damage * (Client.gun.RangeModifier.Value/100 ^ ((Origin - EndHit.Position).Magnitude/500))/100
												if Damage >= Stats['minimum damage'].Slider then
													RageGuy = EndHit
													RageTarget = EndHit
													if not values.rage.aimbot['silent aim'].Toggle then
														Camera.CFrame = CF(CamCFrame.Position, EndHit.Position)
													end
													Filter = true
													if values.rage.aimbot['automatic fire'].Dropdown == 'standard' then

														Client.firebullet()
														
														if values.rage.exploits['custom tap'].Toggle and values.rage.exploits['custom tap'].Active then
															for chingchong = 2, values.rage.exploits['tap amount'].Slider do
																Client.firebullet()
															end
														end
													elseif values.rage.aimbot['automatic fire'].Dropdown == 'hitpart' then

														Client.firebullet()
														local Arguments = {
															[1] = EndHit,
															[2] = EndHit.Position,
															[3] = LocalPlayer.Character.EquippedTool.Value,
															[4] = 100,
															[5] = LocalPlayer.Character.Gun,
															[8] = 1,
															[9] = false,
															[10] = false,
															[11] = Vec3(),
															[12] = 100,
															[13] = Vec3()
														}
														game.ReplicatedStorage.Events.HitPart:FireServer(unpack(Arguments))
														if values.rage.exploits['custom tap'].Toggle and values.rage.exploits['custom tap'].Active then
															for chingchong = 2, values.rage.exploits['tap amount'].Slider do
																Client.firebullet()
																local Arguments = {
																	[1] = EndHit,
																	[2] = EndHit.Position,
																	[3] = LocalPlayer.Character.EquippedTool.Value,
																	[4] = 100,
																	[5] = LocalPlayer.Character.Gun,
																	[8] = 1,
																	[9] = false,
																	[10] = false,
																	[11] = Vec3(),
																	[12] = 100,
																	[13] = Vec3()
																}
																game.ReplicatedStorage.Events.HitPart:FireServer(unpack(Arguments))
															end
														end
													elseif values.rage.aimbot['automatic fire'].Dropdown == 'silent' then
														local Arguments = {
															[1] = EndHit,
															[2] = EndHit.Position,
															[3] = LocalPlayer.Character.EquippedTool.Value,
															[4] = 100,
															[5] = LocalPlayer.Character.Gun,
															[8] = 1,
															[9] = false,
															[10] = false,
															[11] = Vec3(),
															[12] = 100,
															[13] = Vec3()
														}
														game.ReplicatedStorage.Events.HitPart:FireServer(unpack(Arguments))
														if values.rage.exploits['custom tap'].Toggle and values.rage.exploits['custom tap'].Active then
															for chingchong = 2, values.rage.exploits['tap amount'].Slider do
																local Arguments = {
																	[1] = EndHit,
																	[2] = EndHit.Position,
																	[3] = LocalPlayer.Character.EquippedTool.Value,
																	[4] = 100,
																	[5] = LocalPlayer.Character.Gun,
																	[8] = 1,
																	[9] = false,
																	[10] = false,
																	[11] = Vec3(),
																	[12] = 100,
																	[13] = Vec3()
																}
																game.ReplicatedStorage.Events.HitPart:FireServer(unpack(Arguments))
															end
														end	
													end
													Filter = false
													break
												end
											else
												wallbang = true
												local penetration = Client.gun.Penetration.Value * 0.011


												if values.rage.aimbot['penetration'].Dropdown == 'extend' then 
													penetration = Client.gun.Penetration.Value * 10
												elseif values.rage.aimbot['penetration'].Dropdown == 'normal' then 
													penetration = Client.gun.Penetration.Value * 0.01
												end

												local limit = 0
												local dmgmodifier = 1
												for i = 1, #Hits do
													local data = Hits[i]
													local part = data['Hit']
													local pos = data['Position']
													local modifier = 1
													if part.Material == Enum.Material.DiamondPlate then
														modifier = 3
													end
													if part.Material == Enum.Material.CorrodedMetal or part.Material == Enum.Material.Metal or part.Material == Enum.Material.Concrete or part.Material == Enum.Material.Brick then
														modifier = 2
													end
													if part.Name == 'Grate' or part.Material == Enum.Material.Wood or part.Material == Enum.Material.WoodPlanks then
														modifier = 0.1
													end
													if part.Name == 'nowallbang' then
														modifier = 100
													end
													if part:FindFirstChild('PartModifier') then
														modifier = part.PartModifier.Value
													end
													if part.Transparency == 1 or part.CanCollide == false or part.Name == 'Glass' or part.Name == 'Cardboard' then
														modifier = 0
													end
													local direction = (Hitbox.Position - pos).unit * CLAMP(Client.gun.Range.Value, 1, 100)
													local ray = RAY(pos + direction * 1, direction * -2)
													local _,endpos = workspace:FindPartOnRayWithWhitelist(ray, {part}, true)
													local thickness = (endpos - pos).Magnitude
													thickness = thickness * modifier
													limit = MIN(penetration, limit + thickness)
													dmgmodifier = 1 - limit / penetration
												end
												local Damage = Client.gun.DMG.Value * Multipliers[EndHit.Name] * dmgmodifier
												if Player:FindFirstChild('Kevlar') then
													if FIND(EndHit.Name, 'Head') then
														if Player:FindFirstChild('Helmet') then
															Damage = (Damage / 100) * Client.gun.ArmorPenetration.Value
														end
													else
														Damage = (Damage / 100) * Client.gun.ArmorPenetration.Value
													end
												end
												Damage = Damage * (Client.gun.RangeModifier.Value/100 ^ ((Origin - EndHit.Position).Magnitude/500))/100

												if Damage >= Stats['minimum damage'].Slider then
													RageGuy = EndHit
													RageTarget = EndHit
													if not values.rage.aimbot['silent aim'].Toggle then
														Camera.CFrame = CF(CamCFrame.Position, EndHit.Position)
													end
													Filter = true
													if values.rage.aimbot['automatic fire'].Dropdown == 'standard' then
														Client.firebullet()
														if values.rage.exploits['custom tap'].Toggle and values.rage.exploits['custom tap'].Active then
															for chingchong = 2, values.rage.exploits['tap amount'].Slider do
																Client.firebullet()
															end
														end
													elseif values.rage.aimbot['automatic fire'].Dropdown == 'hitpart' then
														Client.firebullet()
														local Arguments = {
															[1] = EndHit,
															[2] = EndHit.Position,
															[3] = LocalPlayer.Character.EquippedTool.Value,
															[4] = 100,
															[5] = LocalPlayer.Character.Gun,
															[8] = 1,
															[9] = false,
															[10] = wallbang,
															[11] = Vec3(),
															[12] = 100,
															[13] = Vec3()
														}
														game.ReplicatedStorage.Events.HitPart:FireServer(unpack(Arguments))
														if values.rage.exploits['custom tap'].Toggle and values.rage.exploits['custom tap'].Active then
															for chingchong = 2, values.rage.exploits['tap amount'].Slider do
																Client.firebullet()
																local Arguments = {
																	[1] = EndHit,
																	[2] = EndHit.Position,
																	[3] = LocalPlayer.Character.EquippedTool.Value,
																	[4] = 100,
																	[5] = LocalPlayer.Character.Gun,
																	[8] = 1,
																	[9] = false,
																	[10] = wallbang,
																	[11] = Vec3(),
																	[12] = 100,
																	[13] = Vec3()
																}
																game.ReplicatedStorage.Events.HitPart:FireServer(unpack(Arguments))
															end
														end
													elseif values.rage.aimbot['automatic fire'].Dropdown == 'silent' then
														local Arguments = {
															[1] = EndHit,
															[2] = EndHit.Position,
															[3] = LocalPlayer.Character.EquippedTool.Value,
															[4] = 100,
															[5] = LocalPlayer.Character.Gun,
															[8] = 1,
															[9] = false,
															[10] = wallbang,
															[11] = Vec3(),
															[12] = 100,
															[13] = Vec3()
														}
														game.ReplicatedStorage.Events.HitPart:FireServer(unpack(Arguments))
														if values.rage.exploits['custom tap'].Toggle and values.rage.exploits['custom tap'].Active then
															for chingchong = 2, values.rage.exploits['tap amount'].Slider do
																local Arguments = {
																	[1] = EndHit,
																	[2] = EndHit.Position,
																	[3] = LocalPlayer.Character.EquippedTool.Value,
																	[4] = 100,
																	[5] = LocalPlayer.Character.Gun,
																	[8] = 1,
																	[9] = false,
																	[10] = wallbang,
																	[11] = Vec3(),
																	[12] = 100,
																	[13] = Vec3()
																}
																game.ReplicatedStorage.Events.HitPart:FireServer(unpack(Arguments))
															end
														end	
													end
													Filter = false
													break
												end
											end
										end
									else
										local Ray = RAY(Origin, (Hitbox.Position - Origin).unit * (Hitbox.Position - Origin).magnitude)
										local Hit, Pos = workspace:FindPartOnRayWithIgnoreList(Ray, Ignore2, false, true)

										if Hit and Multipliers[Hit.Name] ~= nil then
											local Damage = Client.gun.DMG.Value * Multipliers[Hit.Name]
											if Player:FindFirstChild('Kevlar') then
												if FIND(Hit.Name, 'Head') then
													if Player:FindFirstChild('Helmet') then
														Damage = (Damage / 100) * Client.gun.ArmorPenetration.Value
													end
												else
													Damage = (Damage / 100) * Client.gun.ArmorPenetration.Value
												end
											end
											Damage = Damage * (Client.gun.RangeModifier.Value/100 ^ ((Origin - Hit.Position).Magnitude/500))
											if Damage >= Stats['minimum damage'].Slider then
												RageGuy = Hit
												RageTarget = Hit
												if not values.rage.aimbot['silent aim'].Toggle then
													Camera.CFrame = CF(CamCFrame.Position, Hit.Position)
												end
												Filter = true
												if values.rage.aimbot['automatic fire'].Dropdown == 'standard' then
													Client.firebullet()
													if values.rage.exploits['custom tap'].Toggle and values.rage.exploits['custom tap'].Active then
														for chingchong = 2, values.rage.exploits['tap amount'].Slider do
															Client.firebullet()
														end
													end
												elseif values.rage.aimbot['automatic fire'].Dropdown == 'hitpart' then
													Client.firebullet()
													local Arguments = {
														[1] = EndHit,
														[2] = EndHit.Position,
														[3] = LocalPlayer.Character.EquippedTool.Value,
														[4] = 100,
														[5] = LocalPlayer.Character.Gun,
														[8] = 1,
														[9] = false,
														[10] = false,
														[11] = Vec3(),
														[12] = 100,
														[13] = Vec3()
													}
													game.ReplicatedStorage.Events.HitPart:FireServer(unpack(Arguments))
													if values.rage.exploits['custom tap'].Toggle and values.rage.exploits['custom tap'].Active then
														for chingchong = 2, values.rage.exploits['tap amount'].Slider do
															Client.firebullet()
															local Arguments = {
																[1] = EndHit,
																[2] = EndHit.Position,
																[3] = LocalPlayer.Character.EquippedTool.Value,
																[4] = 100,
																[5] = LocalPlayer.Character.Gun,
																[8] = 1,
																[9] = false,
																[10] = false,
																[11] = Vec3(),
																[12] = 100,
																[13] = Vec3()
															}
															game.ReplicatedStorage.Events.HitPart:FireServer(unpack(Arguments))
														end
													end
												end
												Filter = false
												break
											end
										end
									end
								end
							end
						end
					end
				end
			elseif values.legit.aimbot['aim assist'].Toggle and values.legit.aimbot['aim assist'].Active and not library.uiopen then
				local Stats = GetStatsLegit(GetWeaponLegit(Client.gun.Name))
				local Ignore = {LocalPlayer.Character, Camera, workspace.Map.Clips, workspace.Map.SpawnPoints, workspace.Debris}
				local Closest = 9999
				local Target

				

				if not TBLFIND(Stats.conditions.Jumbobox, 'smoke') then
					INSERT(Ignore, workspace.Ray_Ignore)
				end

				if not TBLFIND(Stats.conditions.Jumbobox, 'blind') or LocalPlayer.PlayerGui.Blnd.Blind.BackgroundTransparency > 0.9 then
					if not TBLFIND(Stats.conditions.Jumbobox, 'standing') or SelfVelocity.Magnitude < 3 then
						for _,Player in pairs(Players:GetPlayers()) do
							if Player.Character and Player.Character:FindFirstChild('Humanoid') and Player.Character:FindFirstChild('Humanoid').Health > 0 then
								if not values.legit.settings['forcefield check'].Toggle or not Player.Character:FindFirstChildOfClass('ForceField') then
									if Player.Team ~= LocalPlayer.Team or values.legit.settings['free for all'].Toggle then
										local Pos, onScreen = Camera:WorldToViewportPoint(Player.Character.HumanoidRootPart.Position)
										if onScreen then
											local Magnitude = (Vec2(Pos.X, Pos.Y) - Vec2(Mouse.X, Mouse.Y)).Magnitude
											if Magnitude < Stats['field of view'].Slider then
												local Hitbox = Stats.hitbox.Dropdown == 'head' and Player.Character.Head or Stats.hitbox.Dropdown == 'chest' and Player.Character.UpperTorso
												if Stats.hitbox.Dropdown == 'closest' then
													local HeadPos = Camera:WorldToViewportPoint(Player.Character.Head.Position)
													local TorsoPos = Camera:WorldToViewportPoint(Player.Character.UpperTorso.Position)
													local HeadDistance = (Vec2(HeadPos.X, HeadPos.Y) - Vec2(Mouse.X, Mouse.Y)).Magnitude
													local TorsoDistance = (Vec2(TorsoPos.X, TorsoPos.Y) - Vec2(Mouse.X, Mouse.Y)).Magnitude
													if HeadDistance < TorsoDistance then
														Hitbox = Player.Character.Head
													else
														Hitbox = Player.Character.UpperTorso
													end
												end
												if Hitbox ~= nil then
													if not TBLFIND(Stats.conditions.Jumbobox, 'visible') then
														Target = Hitbox
													else
														local Ray1 = RAY(Camera.CFrame.Position, (Hitbox.Position - Camera.CFrame.Position).unit * (Hitbox.Position - Camera.CFrame.Position).magnitude)
														local Hit, Pos = workspace:FindPartOnRayWithIgnoreList(Ray1, Ignore, false, true)
														if Hit and Hit:FindFirstAncestor(Player.Name) then
															Target = Hitbox
														end
													end
												end
											end
										end
									end
								end
							end
						end
					end
				end

				if Target ~= nil then
					local Pos = Camera:WorldToScreenPoint(Target.Position)
					local Magnitude = Vec2(Pos.X - Mouse.X, Pos.Y - Mouse.Y)
					mousemoverel(Magnitude.x/Stats.smoothing.Slider, Magnitude.y/Stats.smoothing.Slider)
				end
			end

			if not values.rage.aimbot.enabled.Toggle and values.legit.aimbot['triggerbot'].Toggle and values.legit.aimbot['triggerbot'].Active and not TriggerDebounce then
				local Stats = GetStatsLegit(GetWeaponLegit(Client.gun.Name))
				if Stats.triggerbot.Toggle then
					if not TBLFIND(Stats.conditions.Jumbobox, 'blind') or LocalPlayer.PlayerGui.Blnd.Blind.BackgroundTransparency > 0.9 then
						if not TBLFIND(Stats.conditions.Jumbobox, 'standing') or SelfVelocity.Magnitude < 3 then
							if Mouse.Target and Mouse.Target.Parent and Players:GetPlayerFromCharacter(Mouse.Target.Parent) and Multipliers[Mouse.Target.Name] ~= nil and Client.gun.DMG.Value * Multipliers[Mouse.Target.Name] >= Stats['minimum dmg'].Slider then
								local OldTarget = Mouse.Target
								local Player = Players:GetPlayerFromCharacter(Mouse.Target.Parent)
								if Player.Team ~= LocalPlayer.Team or values.legit.settings['free for all'].Toggle then
									coroutine.wrap(function()
										TriggerDebounce = true
										wait(Stats['delay (ms)'].Slider/1000)
										repeat RunService.RenderStepped:Wait()
											if not Client.DISABLED then
												Client.firebullet()
											end
										until Mouse.Target == nil or Player ~= Players:GetPlayerFromCharacter(Mouse.Target.Parent)
										TriggerDebounce = false
									end)()
								end
							end
						end
					end
				end
			end 
		end
	end	
end)

game:GetService('RunService'):BindToRenderStep('Obama', 0, function()	
	CamCFrame = Camera.CFrame
	CamLook = CamCFrame.LookVector

	RageTarget = nil
	
	pcall(function()
		Fov.Visible = values.legit.settings['draw fov'].Toggle

		Fov.Transparency = values.legit.settings['draw fov'].Transparency
	
		Fov.Color =  values.legit.settings['draw fov'].Color
		Fov.Position = Vec2(Camera.ViewportSize.X/2, Camera.ViewportSize.Y/2)
		Fov.Radius = GetStatsLegit(GetWeaponLegit(Client.gun.Name))['field of view'].Slider
		Fov.Thickness = values.legit.settings['fov thickness'].Slider
		Fov.Filled = values.legit.settings['filled fov'].Toggle
	end)



	
	if Spin == 360 then Spin = 0 end

	for i,v in pairs(ChamItems) do
		local cham = v[1]
		local fromobject = v[2]
		if cham.Parent == nil then
			TBLREMOVE(ChamItems, i)
		else 
			if cham.Name == 'WallCham' then 
				if cham:IsA('BoxHandleAdornment') then 
					cham.Size = fromobject.Size + Vector3.new( (values.visuals.players['cham thickness'].Slider/10),  (values.visuals.players['cham thickness'].Slider/10),  (values.visuals.players['cham thickness'].Slider/10))
				elseif cham:IsA('CylinderHandleAdornment') then 
					cham.Height = 1.2 + (values.visuals.players['cham thickness'].Slider/10)
					cham.Radius = 0.61 + (values.visuals.players['cham thickness'].Slider/10)
				end
			elseif cham.Name == 'VisibleCham' then
				if cham:IsA('BoxHandleAdornment') then 
					cham.Size = fromobject.Size + Vector3.new( (values.visuals.players['vcham thickness'].Slider/10),  (values.visuals.players['vcham thickness'].Slider/10),  (values.visuals.players['vcham thickness'].Slider/10))
				elseif cham:IsA('CylinderHandleAdornment') then 
					cham.Height = 1.2 + (values.visuals.players['vcham thickness'].Slider/10)
					cham.Radius = 0.61 + (values.visuals.players['vcham thickness'].Slider/10)
				end
			end
		end
	end

	if PlayerIsAlive then
		if values.rage.exploits['around the world'].Toggle and values.rage.exploits['around the world'].Active then 
			for i,v in next, Players:GetChildren() do
				if v ~= LocalPlayer and v.Team ~= LocalPlayer.Team then
					if v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
						aroundtheworld_value=aroundtheworld_value + (0.01 * values.rage.exploits['speed'].Slider)
						LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame*CFrame.Angles(0, aroundtheworld_value, 0)*CFrame.new(0, values.rage.exploits['height'].Slider, values.rage.exploits['distance'].Slider)
						break
					end
				end
			end
		end
		if values.visuals.trail['enable'].Toggle then
			pcall(function()
			if not LocalPlayer.Character.HumanoidRootPart:FindFirstChild('Trail') then 
				Part = LocalPlayer.Character.HumanoidRootPart
				offset = -2
				local Attachment = Instance.new('Attachment')
				Attachment.Name = 'A1'
				Attachment.Position = Vector3.new(-0.55602997541428, offset, 0)
				Attachment.Parent = Part
				
				local Trail = Instance.new('Trail')
				Trail.LightInfluence = 0
				Trail.TextureMode = Enum.TextureMode.Static
				Trail.LightEmission = 1
				Trail.MaxLength = 10
				Trail.Texture = 'rbxassetid://7485088415'
				Trail.Parent = Part
				Trail.Transparency = NumberSequence.new(0)
				Trail.FaceCamera = false

				local Attachment1 = Instance.new('Attachment')
				Attachment1.Name = 'A2'
				Attachment1.Position = Vector3.new(0.55602943897247, offset, 0)
				Attachment1.Parent = Part


				Trail.Attachment0 = Attachment
				Trail.Attachment1 = Attachment1
			else 
				local trail = LocalPlayer.Character.HumanoidRootPart.Trail
				local a1 = LocalPlayer.Character.HumanoidRootPart.A1
				local a2 = LocalPlayer.Character.HumanoidRootPart.A2

				trail.MaxLength = values.visuals.trail['max length'].Slider
				trail.Texture = 'rbxassetid://'..values.visuals.trail['image'].Text

				if values.visuals.trail['custom color'].Toggle then 
					trail.Color = ColorSequence.new(values.visuals.trail['custom color'].Color)
				else 
					trail.Color = ColorSequence.new(Color3.fromRGB(255, 255, 255))
				end

				a1.Position = Vector3.new(values.visuals.trail['size (x,z)'].Slider/10, 5-(values.visuals.trail['offset (y)'].Slider)/5, 0)
				a2.Position = Vector3.new(-values.visuals.trail['size (x,z)'].Slider/10, 5-(values.visuals.trail['offset (y)'].Slider/5), 0)
				trail.FaceCamera = values.visuals.trail['face camera'].Toggle

			end
		    end)
		elseif LocalPlayer.Character.HumanoidRootPart:FindFirstChild('Trail') then 
			LocalPlayer.Character.HumanoidRootPart.Trail:Remove()
		end
		
		local SelfVelocity = LocalPlayer.Character.HumanoidRootPart.Velocity
		if values.rage.fakelag['ping spike'].Toggle and values.rage.fakelag['ping spike'].Active then
			for count = 1, 20  do
				game:GetService('ReplicatedStorage').Events.RemoteEvent:FireServer({[1] = 'createparticle', [2] = 'bullethole', [3] = LocalPlayer.Character.Head, [4] = Vec3(0,0,0)}) 
			end
		end

		if values.misc.animations.enabled.Toggle then
			if LoadedAnim then 
				if savedanimationdance ~= Dance then 
					savedanimationdance = Dance
					LoadedAnim:Stop()
				end
				if not LoadedAnim.IsPlaying then 
					savedanimationdance = Dance
					LoadedAnim = LocalPlayer.Character.Humanoid:LoadAnimation(Dance)
					LoadedAnim.Priority = Enum.AnimationPriority.Action
					LoadedAnim:Play()
					LoadedAnim:AdjustSpeed(values.misc.animations['animation speed'].Slider)
				end
			else 
				savedanimationdance = Dance
				LoadedAnim = LocalPlayer.Character.Humanoid:LoadAnimation(Dance)
				LoadedAnim.Priority = Enum.AnimationPriority.Action
				LoadedAnim:Play()
				LoadedAnim:AdjustSpeed(values.misc.animations['animation speed'].Slider)
			end
		else 
			if LoadedAnim then 
				LoadedAnim:Stop()
			end
		end


		Root = LocalPlayer.Character.HumanoidRootPart
		frchr = workspace:FindFirstChild('FreezeCharacter2') or workspace:FindFirstChild('FreezeCharacter')
		if frchr and frchr.Size.x >= 5 then 
			Root = frchr
		end
		if values.misc.client['infinite crouch'].Toggle then
			Client.crouchcooldown = 0
		end
		if values.misc.client['auto join team'].Toggle then
			game:GetService('ReplicatedStorage').Events.JoinTeam:FireServer(values.misc.client['team'].Dropdown)
		end
		if TBLFIND(values.misc.client['gun modifiers'].Jumbobox, 'firerate') then
			Client.DISABLED = false
		end
		peektimewait=peektimewait+1
		if values.rage.exploits['quick peek'].Toggle and allowedtofreeze  then
			if values.rage.exploits['quick peek'].Active then 
				if not workspace:FindFirstChild('FreezeCharacter') then 
					local part = INST('Part', workspace)

					if values.rage.exploits['peek method'].Dropdown == 'freeze' then
						part.Size = Vector3.new(15,1,15) 
					else 
						part.Size = Vector3.new(0, 0, 0)
					end

					part.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
					part.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
					part.CanCollide = false
					part.Transparency = 1
					part.Name = 'FreezeCharacter'
		

					local weld = INST('Weld',part)
					weld.Part0 = part
					weld.Part1 = game.Players.LocalPlayer.Character.HumanoidRootPart

					local visualize = INST('MeshPart', part)
					visualize.Size = Vector3.new(0.5, 0.2, 0.5) 
					visualize.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position+Vector3.new(0, -3 , 0)
					visualize.CanCollide = false
					visualize.Anchored = true
					visualize.MeshId = 'rbxassetid://5536195161'
					visualize.Material = 'Neon'
					visualize.Color = values.rage.exploits['visualize circle'].Color

					visualize.Name = 'no'
					if values.rage.exploits['visualize circle'].Toggle then
						visualize.Transparency = values.rage.exploits['visualize circle'].Transparency
					else 
						visualize.Transparency = 1
					end

				else 
					if not freezebusy2 and values.rage.exploits['time limit'].Toggle then 
						if peektimewait >= values.rage.exploits['time duration'].Slider then 
							peektimewait = 0
							freezebusy2 = true

							wait(0.2)

							pcall(function()
								workspace.FreezeCharacter.Size = Vector3.new(0,0,0)

								wait(values.rage.exploits['wbr'].Slider/100)
	
								workspace.FreezeCharacter:Remove()
							end)


							freezebusy2 = false
						end
					end
					if not freezebusy1 and values.rage.exploits['limit peek'].Toggle then
						if workspace:FindFirstChild('FreezeCharacter') and (workspace.FreezeCharacter.no.Position - workspace.Camera.Focus.p).Magnitude > values.rage.exploits['limit distance'].Slider then
							freezebusy1 = true

							wait(0.2)

							pcall(function()
								workspace.FreezeCharacter.Size = Vector3.new(0,0,0)
								
								wait(values.rage.exploits['wbr'].Slider/100)

								workspace.FreezeCharacter:Remove()
							end)

							freezebusy1 = false
						end
					end
				end
			else 
				peektimewait=0

				if workspace:FindFirstChild('FreezeCharacter') then 
					workspace:FindFirstChild('FreezeCharacter'):Remove()
				end
			end 
		else 
			peektimewait=0

			if workspace:FindFirstChild('FreezeCharacter') then 
				workspace:FindFirstChild('FreezeCharacter'):Remove()
			end
		end
		if values.rage.exploits['whizz all'].Toggle and LocalPlayer.Character:FindFirstChild('Gun') then
			for _,Player in pairs(Players:GetPlayers()) do
				game:GetService('ReplicatedStorage').Events.Whizz:FireServer(Player)
			end
		end

		if values.rage.exploits['kill all'].Toggle and values.rage.exploits['kill all'].Active and LocalPlayer.Character:FindFirstChild('UpperTorso') and LocalPlayer.Character:FindFirstChild('Gun') then
			for _,Player in pairs(Players:GetPlayers()) do
				if Player.Character and Player.Team ~= LocalPlayer.Team and Player.Character:FindFirstChild('UpperTorso') then
					local oh1 = Player.Character.Head
					local oh2 = Player.Character.Head.CFrame.p
					local oh3 = Client.gun.Name
					local oh4 = 4096
					local oh5 = LocalPlayer.Character.Gun
					local oh8 = 15
					local oh9 = false
					local oh10 = false
					local oh11 = Vec3(0,0,0)
					local oh12 = 16868
					local oh13 = Vec3(0, 0, 0)
					game:GetService('ReplicatedStorage').Events.HitPart:FireServer(oh1, oh2, oh3, oh4, oh5, oh6, oh7, oh8, oh9, oh10, oh11, oh12, oh13)
				end
			end
		end
		if TBLFIND(values.visuals.effects.removals.Jumbobox, 'scope lines') then 
			NewScope.Enabled = LocalPlayer.Character:FindFirstChild('AIMING') and true or false
			Crosshairs.Scope.Visible = false
		else
			NewScope.Enabled = false
		end
		
		BodyVelocity:Destroy()
		BodyVelocity = INST('BodyVelocity')
		BodyVelocity.MaxForce = Vec3(HUGE,0,HUGE)
		if UserInputService:IsKeyDown('Space') and values.misc.movement['bunny hop'].Toggle then
			local add = 0
			if values.misc.movement.direction.Dropdown == 'directional' or values.misc.movement.direction.Dropdown == 'directional 2' then
				if UserInputService:IsKeyDown('A') then add = 90 end
				if UserInputService:IsKeyDown('S') then add = 180 end
				if UserInputService:IsKeyDown('D') then add = 270 end
				if UserInputService:IsKeyDown('A') and UserInputService:IsKeyDown('W') then add = 45 end
				if UserInputService:IsKeyDown('D') and UserInputService:IsKeyDown('W') then add = 315 end
				if UserInputService:IsKeyDown('D') and UserInputService:IsKeyDown('S') then add = 225 end
				if UserInputService:IsKeyDown('A') and UserInputService:IsKeyDown('S') then add = 145 end
			end
			local rot = YROTATION(CamCFrame) * CFAngles(0,RAD(add),0)
			local bhopspeed = values.misc.movement['overwrite'].Toggle and values.misc.movement['overwrite'].Active and values.misc.movement['overwrite speed'].Slider or values.misc.movement['speed'].Slider
			BodyVelocity.Parent = LocalPlayer.Character.UpperTorso
			LocalPlayer.Character.Humanoid.Jump = true
			BodyVelocity.Velocity = Vec3(rot.LookVector.X,0,rot.LookVector.Z) * (bhopspeed * 2)
			if add == 0 and values.misc.movement.direction.Dropdown == 'directional' and not UserInputService:IsKeyDown('W') then
				BodyVelocity:Destroy()
			else


				if values.misc.movement.type.Dropdown == 'cframe' then
					BodyVelocity:Destroy()
					Root.CFrame = Root.CFrame + Vec3(rot.LookVector.X,0,rot.LookVector.Z) * bhopspeed/50
				elseif values.misc.movement.type.Dropdown == 'velocity' then
					BodyVelocity:Destroy()
					Root.Velocity = Vec3(rot.LookVector.X * (bhopspeed * 2), Root.Velocity.y, rot.LookVector.Z * (bhopspeed * 2))
				elseif values.misc.movement.type.Dropdown == 'idk' then
					BodyVelocity:Destroy()
					spawn(function()
						if not switchtrigger[1]  then 
							switchtrigger[1] = true
							wait(0.5)
							switchtrigger[3] = Root.CFrame
							Root.CFrame = switchtrigger[2]
	
							wait(0.1)
							Root.CFrame = switchtrigger[3]
							switchtrigger[1] = false
						end
					end)
					
					Root.CFrame = Root.CFrame + Vec3(rot.LookVector.X, 0, rot.LookVector.Z) * bhopspeed/50
				end
			end
		end
		if values.misc.movement['gravity change'].Toggle and values.misc.movement['gravity change'].Active  then 
		    workspace.Gravity = values.misc.movement['gravity amount'].Slider
		else 
		    workspace.Gravity = 80
		end


		if values.misc.movement['no launch'].Toggle and values.misc.movement['no launch'].Active then 
			if Root.Velocity.Y > values.misc.movement['launch block (y velocity)'].Slider then 
				Root.Velocity = Vector3.new(Root.Velocity.x, 0, Root.Velocity.z)
			end
		end
		if values.misc.movement['edge jump'].Toggle and values.misc.movement['edge jump'].Active then
			if LocalPlayer.Character.Humanoid:GetState() ~= Enum.HumanoidStateType.Freefall and LocalPlayer.Character.Humanoid:GetState() ~= Enum.HumanoidStateType.Jumping then
				coroutine.wrap(function()
					RunService.RenderStepped:Wait()
					if LocalPlayer.Character ~= nil and LocalPlayer.Character:FindFirstChild('Humanoid') and LocalPlayer.Character.Humanoid:GetState() == Enum.HumanoidStateType.Freefall and LocalPlayer.Character.Humanoid:GetState() ~= Enum.HumanoidStateType.Jumping then
						LocalPlayer.Character.Humanoid:ChangeState('Jumping')
					end
				end)()
			end
		end

		spawn(function()
			if not jitterwait then
				jitterwait = true
				Jitter = not Jitter
				wait(values.rage.angles['jitter wait (ms)'].Slider/100) 
				jitterwait = false
			end
		end)
		
		LocalPlayer.Character.Humanoid.AutoRotate = false
		if values.rage.angles.enabled.Toggle and not DisableAA then
			local Angle = -ATAN2(CamLook.Z, CamLook.X) + RAD(-90)
			if values.rage.angles['yaw base'].Dropdown == 'spin' then
				Angle = Angle + RAD(Spin)
			end
			if values.rage.angles['yaw base'].Dropdown == 'random' then
				Angle = Angle + RAD(RANDOM(0, 360))
			end
			local Offset = RAD(-values.rage.angles['yaw offset'].Slider - (values.rage.angles.jitter.Toggle and Jitter and values.rage.angles['jitter offset'].Slider or values.rage.angles['shoot pitch'].Toggle and shotthingy and values.rage.angles['offset'].Slider or 0))
			local CFramePos = CF(Root.Position) * CFAngles(0, Angle + Offset, 0)

			if values.rage.angles['yaw base'].Dropdown == 'targets' then
				local part
				local closest = 9999999
				for _,plr in pairs(Players:GetPlayers()) do
					if plr.Character and plr.Character:FindFirstChild('Humanoid') and plr.Character:FindFirstChild('Humanoid').Health > 0 and plr.Team ~= LocalPlayer.Team then
						local pos, onScreen = Camera:WorldToViewportPoint(plr.Character.HumanoidRootPart.Position)
						local magnitude = (Vec2(pos.X, pos.Y) - Vec2(Mouse.X, Mouse.Y)).Magnitude
						if closest > magnitude then
							part = plr.Character.HumanoidRootPart
							closest = magnitude
						end
					end
				end
				if part ~= nil then
					CFramePos = CF(Root.Position, part.Position) * CFAngles(0, Offset, 0)
				end
			end
			if values.rage.angles['lock yaw'].Toggle and values.rage.angles['lock yaw'].Active then 
				if lockyaw == nil then 
					lockyaw = Angle
				end
				CFramePos = CF(Root.Position) * CFAngles(0, lockyaw + Offset, 0)
			else 
				lockyaw = Angle
			end
			Root.CFrame = YROTATION(CFramePos)
			switch180roll = not switch180roll
			if values.rage.angles['body roll'].Dropdown == 'switch' then
				if switch180roll then 
					Root.CFrame = Root.CFrame * CFAngles(RAD(180), 0, 0)
					LocalPlayer.Character.Humanoid.HipHeight = 1.5
					LocalPlayer.Character.Humanoid.CameraOffset = Vector3.new(0, -2.7, 0)
				else
					LocalPlayer.Character.Humanoid.HipHeight = 1.5
				end
			end

			if values.rage.angles['body roll'].Dropdown == '180' then
				Root.CFrame = Root.CFrame * CFAngles(values.rage.angles['body roll'].Dropdown == '180' and RAD(180 + values.rage.angles['roll offset'].Slider) or 0, 0, 0)
				LocalPlayer.Character.Humanoid.HipHeight = 2
			else
				LocalPlayer.Character.Humanoid.HipHeight = 2
			end

			savedspinpitch=savedspinpitch+0.25
			local Pitch = values.rage.angles['pitch'].Dropdown == 'none' and CamLook.Y or values.rage.angles['pitch'].Dropdown == 'up' and 1 or values.rage.angles['pitch'].Dropdown == 'down' and -1 or values.rage.angles['pitch'].Dropdown == 'zero' and 0 or values.rage.angles['pitch'].Dropdown == 'among' and math.huge or values.rage.angles['pitch'].Dropdown == 'random' and Random.new():NextNumber(-50,50) or values.rage.angles['pitch'].Dropdown == 'spin' and savedspinpitch 

			if values.rage.angles['extend pitch'].Toggle and (values.rage.angles['pitch'].Dropdown == 'up' or values.rage.angles['pitch'].Dropdown == 'down') then
				Pitch = (Pitch*2)/1.6
			end
			if values.rage.angles['custom pitch'].Toggle then
			    Pitch = values.rage.angles['pitch value'].Slider/7
			end
			if values.rage.angles.jitter.Toggle and Jitter then 
				Pitch = values.rage.angles['jitter pitch'].Slider/7
			end

			if values.rage.angles['shoot pitch'].Toggle and shotthingy then 
				Pitch = values.rage.angles['pitch'].Slider/7
			end

			if values.rage.angles['overwrite keybind'].Toggle and values.rage.angles['overwrite keybind'].Active then
				Pitch = values.rage.angles['overwrite pitch'].Dropdown == 'none' and CamLook.Y or values.rage.angles['overwrite pitch'].Dropdown == 'up' and 1 or values.rage.angles['overwrite pitch'].Dropdown == 'down' and -1 or values.rage.angles['overwrite pitch'].Dropdown == 'zero' and 0 or values.rage.angles['overwrite pitch'].Dropdown == 'among' and math.huge or values.rage.angles['overwrite pitch'].Dropdown == 'random' and Random.new():NextNumber(0.01,10) or values.rage.angles['overwrite pitch'].Dropdown == 'spin' and savedspinpitch
		    end

			game.ReplicatedStorage.Events.ControlTurn:FireServer(Pitch, LocalPlayer.Character:FindFirstChild('Climbing') and true or false)
		else
			LocalPlayer.Character.Humanoid.HipHeight = 2
			Root.CFrame = CF(Root.Position) * CFAngles(0, -ATAN2(CamLook.Z, CamLook.X) + RAD(270), 0)
			game.ReplicatedStorage.Events.ControlTurn:FireServer(CamLook.Y, LocalPlayer.Character:FindFirstChild('Climbing') and true or false)
		end
		if values.rage.others['remove head'].Toggle then
			if LocalPlayer.Character:FindFirstChild('FakeHead') then
				LocalPlayer.Character.FakeHead:Destroy()
			end
			if LocalPlayer.Character:FindFirstChild('HeadHB') then
				LocalPlayer.Character.HeadHB:Destroy()
			end
		end
		if TBLFIND(values.misc.client['gun modifiers'].Jumbobox, 'recoil') then
			Client.resetaccuracy()
			Client.RecoilX = 0
			Client.RecoilY = 0
		end
	else 
		pcall(function()
			workspace:FindFirstChild('FreezeCharacter'):Remove()
		end)
	end
	for _,Player in pairs(Players:GetPlayers()) do
		if Player.Character and Player ~= LocalPlayer and Player.Character:FindFirstChild('HumanoidRootPart') and Player.Character.HumanoidRootPart:FindFirstChild('OldPosition') then
			coroutine.wrap(function()
				local Position = Player.Character.HumanoidRootPart.Position
				RunService.RenderStepped:Wait()
				if Player.Character and Player ~= LocalPlayer and Player.Character:FindFirstChild('HumanoidRootPart') then
					if Player.Character.HumanoidRootPart:FindFirstChild('OldPosition') then
						Player.Character.HumanoidRootPart.OldPosition.Value = Position
					else
						local Value = INST('Vector3Value')
						Value.Name = 'OldPosition'
						Value.Value = Position
						Value.Parent = Player.Character.HumanoidRootPart
					end
				end
			end)()
		end
	end

	for _,Player in pairs(Players:GetPlayers()) do
		local tbl = objects[Player]
		if tbl == nil then return end
		if Player.Character and Player.Character:FindFirstChild('HumanoidRootPart') and Player.Team ~= 'TTT' and (Player.Team ~= LocalPlayer.Team or values.visuals.players.teammates.Toggle) and Player.Character:FindFirstChild('Gun') and Player.Character:FindFirstChild('Humanoid') and Player ~= LocalPlayer then
			local HumanoidRootPart = Player.Character.HumanoidRootPart
			local RootPosition = HumanoidRootPart.Position
			local Pos, OnScreen = Camera:WorldToViewportPoint(RootPosition)
			local Size = (Camera:WorldToViewportPoint(RootPosition - Vec3(0, 3, 0)).Y - Camera:WorldToViewportPoint(RootPosition + Vec3(0, 2.6, 0)).Y) / 2

			local Drawings, Text = TBLFIND(values.visuals.players.outlines.Jumbobox, 'drawings') ~= nil, TBLFIND(values.visuals.players.outlines.Jumbobox, 'text') ~= nil

			tbl.Box.Color = values.visuals.players.box.Color
			tbl.Box.Size = Vec2(Size * 1.5, Size * 1.9)
			tbl.Box.Position = Vec2(Pos.X - Size*1.5 / 2, (Pos.Y - Size*1.6 / 2))

			-- edited
			
			if values.visuals.players.box.Toggle then
				tbl.Box.Visible = OnScreen
				tbl.Box.Thickness = 0.001
				if Drawings then
					tbl.BoxOutline.Size = tbl.Box.Size
					tbl.BoxOutline.Position = tbl.Box.Position
					tbl.BoxOutline.Visible = OnScreen
				else
					tbl.BoxOutline.Visible = false
				end
			else
				tbl.Box.Visible = false
				tbl.BoxOutline.Visible = false
			end

			if values.visuals.players.health.Toggle then
				tbl.Health.Color = values.visuals.players.health.Color
				tbl.Health.From = Vec2((tbl.Box.Position.X - 5), tbl.Box.Position.Y + tbl.Box.Size.Y)
				tbl.Health.To = Vec2(tbl.Health.From.X, tbl.Health.From.Y - CLAMP(Player.Character.Humanoid.Health / Player.Character.Humanoid.MaxHealth, 0, 1) * tbl.Box.Size.Y)
				tbl.Health.Visible = OnScreen
				if Drawings then
					tbl.HealthOutline.From = Vec2(tbl.Health.From.X, tbl.Box.Position.Y + tbl.Box.Size.Y + 1)
					tbl.HealthOutline.To = Vec2(tbl.Health.From.X, (tbl.Health.From.Y - 1 * tbl.Box.Size.Y) -1)
					tbl.HealthOutline.Visible = OnScreen
				else
					tbl.HealthOutline.Visible = false
				end
			else
				tbl.Health.Visible = false
				tbl.HealthOutline.Visible = false
			end

			if values.visuals.players.weapon.Toggle then
				tbl.Weapon.Color = values.visuals.players.weapon.Color
				tbl.Weapon.Text = Player.Character.EquippedTool.Value
				tbl.Weapon.Position = Vec2(tbl.Box.Size.X/2 + tbl.Box.Position.X, tbl.Box.Size.Y + tbl.Box.Position.Y + 1)
				tbl.Weapon.Font = Drawing.Fonts[values.visuals.players.font.Dropdown]
				tbl.Weapon.Outline = Text
				tbl.Weapon.Size = values.visuals.players.size.Slider
				tbl.Weapon.Visible = OnScreen
			else
				tbl.Weapon.Visible = false
			end

			if values.visuals.players['weapon icon'].Toggle then
				Items[Player.Name].ImageColor3 = values.visuals.players['weapon icon'].Color
				Items[Player.Name].Image = GetIcon.getWeaponOfKiller(Player.Character.EquippedTool.Value)
				Items[Player.Name].Position = UDIM2(0, tbl.Box.Size.X/2 + tbl.Box.Position.X, 0, tbl.Box.Size.Y + tbl.Box.Position.Y + (values.visuals.players.weapon.Toggle and -10 or -22))
				Items[Player.Name].Visible = OnScreen
			else
				Items[Player.Name].Visible = false
			end

			if values.visuals.players.name.Toggle then
				tbl.Name.Color = values.visuals.players.name.Color
				tbl.Name.Text = Player.Name
				tbl.Name.Position = Vec2(tbl.Box.Size.X/2 + tbl.Box.Position.X,  tbl.Box.Position.Y - 16)
				tbl.Name.Font = Drawing.Fonts[values.visuals.players.font.Dropdown]
				tbl.Name.Outline = Text
				tbl.Name.Size = values.visuals.players.size.Slider
				tbl.Name.Visible = OnScreen
			else
				tbl.Name.Visible = false
			end
			local LastInfoPos = tbl.Box.Position.Y - 1
			if TBLFIND(values.visuals.players.indicators.Jumbobox, 'armor') and Player:FindFirstChild('Kevlar') then
				tbl.Armor.Color = COL3RGB(0, 150, 255)
				tbl.Armor.Text = Player:FindFirstChild('Helmet') and 'HK' or 'K'
				tbl.Armor.Position = Vec2(tbl.Box.Size.X + tbl.Box.Position.X + 12, LastInfoPos)
				tbl.Armor.Font = Drawing.Fonts[values.visuals.players.font.Dropdown]
				tbl.Armor.Outline = Text
				tbl.Armor.Size = values.visuals.players.size.Slider
				tbl.Armor.Visible = OnScreen

				LastInfoPos = LastInfoPos + values.visuals.players.size.Slider
			else
				tbl.Armor.Visible = false
			end
		else
			if Player.Name ~= LocalPlayer.Name then
				Items[Player.Name].Visible = false
				for i,v in pairs(tbl) do
					v.Visible = false
				end
			end
		end
	end

	if workspace:FindFirstChild('Map') and Client.gun ~= 'none' and Client.gun.Name ~= 'C4' then
		if values.misc.movement['height change'].Toggle then 
		pcall(function() LocalPlayer.Character.Humanoid.HipHeight = 2 * (values.misc.movement['height amount'].Slider/5) end)
	else 
	    pcall(function() LocalPlayer.Character.Humanoid.HipHeight = 2 end)
	end

	if values.misc.movement['no velocity'].Toggle then 
	   pcall(function() LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, LocalPlayer.Character.HumanoidRootPart.Velocity.y, 0) end)
	end

	if values.misc.movement['no gun'].Toggle then 
	   pcall(function() LocalPlayer.Character.Gun:Remove()end)
	end

	if values.misc.movement['client offset'].Toggle then 
       pcall(function() LocalPlayer.Character.LowerTorso:FindFirstChildWhichIsA('Motor6D').C0 = CFrame.new(0, (values.misc.movement['offset (y)'].Slider/5), 0) end)
    end

	end
end)

oldcamforfreeze = nil
local mt = getrawmetatable(game)
local oldNamecall = mt.__namecall
local oldIndex = mt.__index
local oldNewIndex = mt.__newindex
setreadonly(mt,false)
mt.__namecall = function(self, ...)
	local method = tostring(getnamecallmethod())
	local args = {...}

	if method == 'SetPrimaryPartCFrame' and self.Name == 'Arms' then
		if values.visuals.self['hide arms'].Toggle and LocalPlayer.Character then
			args[1] = args[1] * CF(99, 99, 99)
		else
			if values.visuals.self['viewmodel changer'].Toggle then
				args[1] = args[1] * ViewmodelOffset
			end
		end
	end
	if method == 'SetPrimaryPartCFrame' and self.Name ~= 'Arms' then
		args[1] = args[1] + Vec3(0, 3, 0)
		coroutine.wrap(function()
			DisableAA = true
			wait(2)
			DisableAA = false
		end)()
	end
	if method == 'Kick' then
		return
	end
	if method == 'FireServer' then
		if LEN(self.Name) == 38 then
			return
		elseif self.Name == 'FallDamage' and TBLFIND(values.misc.client['damage bypass'].Jumbobox, 'fall') or values.misc.movement['jump bug'].Toggle and values.misc.movement['jump bug'].Active then
			return
		elseif self.Name == 'BURNME' and TBLFIND(values.misc.client['damage bypass'].Jumbobox, 'fire') then
			return
		elseif self.Name == 'ControlTurn' and not checkcaller() then
			return
		end
		if self.Name == 'PlayerChatted' and values.misc.client['chat alive'].Toggle then
			args[2] = false
			args[3] = 'Innocent'
			args[4] = false
			args[5] = false
		end
		if self.Name == 'ReplicateCamera' then
			if values.misc.client['anti spectate'].Toggle then
				args[1] = CF()
			elseif values.visuals.self['third person'].Toggle and values.visuals.self['third person'].Active then
				local cframecam = args[1]*CFrame.new(0,0,-values.visuals.self.distance.Slider)
				args[1] = cframecam
			end
		end
		
	end
	if method == 'FindPartOnRayWithWhitelist' and not checkcaller() and Client.gun ~= 'none' and Client.gun.Name ~= 'C4' then
		if #args[2] == 1 and args[2][1].Name == 'SpawnPoints' then
			local Team = LocalPlayer.Status.Team.Value

			if TBLFIND(values.misc.client.shop.Jumbobox, 'anywhere') then
				return Team == 'T' and args[2][1].BuyArea or args[2][1].BuyArea2
			end
		end
	end
	if method == 'FindPartOnRayWithIgnoreList' and args[2][1] == workspace.Debris then
		if not checkcaller() or Filter then
			if TBLFIND(values.misc.client['gun modifiers'].Jumbobox, 'penetration') then
				INSERT(args[2], workspace.Map)
			end
			if TBLFIND(values.misc.client['gun modifiers'].Jumbobox, 'spread') then
				args[1] = RAY(Camera.CFrame.p, Camera.CFrame.LookVector * Client.gun.Range.Value)
			end
			local Stats = GetStatsLegit(GetWeaponLegit(Client.gun.Name))
			if values.legit.aimbot['silent aim'].Toggle and values.legit.aimbot['silent aim'].Active and Stats['silent aim'].Toggle then
				local Ignore = {LocalPlayer.Character, Camera, workspace.Map.Clips, workspace.Map.SpawnPoints, workspace.Debris}
				local Closest = 9999
				local Target

				if not TBLFIND(Stats.conditions.Jumbobox, 'smoke') then
					INSERT(Ignore, workspace.Ray_Ignore)
				end

				coroutine.wrap(function()
					if not TBLFIND(Stats.conditions.Jumbobox, 'blind') or LocalPlayer.PlayerGui.Blnd.Blind.BackgroundTransparency > 0.9 then
						if not TBLFIND(Stats.conditions.Jumbobox, 'blind') or SelfVelocity.Magnitude < 3 then
							for _,Player in pairs(Players:GetPlayers()) do
								if Player.Character and Player.Character:FindFirstChild('Humanoid') and Player.Character:FindFirstChild('Humanoid').Health > 0 then
									if not values.legit.settings['forcefield check'].Toggle or not Player.Character:FindFirstChildOfClass('ForceField') then
										if Player.Team ~= LocalPlayer.Team or values.legit.settings['free for all'].Toggle then
											local Pos, onScreen = Camera:WorldToViewportPoint(Player.Character.HumanoidRootPart.Position)
											if onScreen then
												local Magnitude = (Vec2(Pos.X, Pos.Y) - Vec2(Mouse.X, Mouse.Y)).Magnitude
												if Magnitude < Stats['field of view'].Slider then
													local Hitbox = Stats.priority.Dropdown == 'head' and Player.Character.Head or Stats.priority.Dropdown == 'chest' and Player.Character.UpperTorso
													if Stats.priority.Dropdown == 'closest' then
														local HeadPos = Camera:WorldToViewportPoint(Player.Character.Head.Position)
														local TorsoPos = Camera:WorldToViewportPoint(Player.Character.UpperTorso.Position)
														local HeadDistance = (Vec2(HeadPos.X, HeadPos.Y) - Vec2(Mouse.X, Mouse.Y)).Magnitude
														local TorsoDistance = (Vec2(TorsoPos.X, TorsoPos.Y) - Vec2(Mouse.X, Mouse.Y)).Magnitude
														if HeadDistance < TorsoDistance then
															Hitbox = Player.Character.Head
														else
															Hitbox = Player.Character.UpperTorso
														end
													end
													if Hitbox ~= nil then
														if not TBLFIND(Stats.conditions.Jumbobox, 'visible') then
															Target = Hitbox
														else
															local Ray1 = RAY(Camera.CFrame.Position, (Hitbox.Position - Camera.CFrame.Position).unit * (Hitbox.Position - Camera.CFrame.Position).magnitude)
															local Hit, Pos = workspace:FindPartOnRayWithIgnoreList(Ray1, Ignore, false, true)
															if Hit and Hit:FindFirstAncestor(Player.Name) then
																Target = Hitbox
															end
														end
													end
												end
											end
										end
									end
								end
							end
						end
					end

					local Hit = RANDOM(1, 100) <= Stats.hitchance.Slider
					if Target ~= nil and Hit then
						args[1] = RAY(Camera.CFrame.Position, (Target.Position - Camera.CFrame.Position).unit * (Target.Position - Camera.CFrame.Position).magnitude)
					end
				end)()
			end
			if RageTarget ~= nil then
				local Origin = values.rage.aimbot.origin.Dropdown == 'character' and LocalPlayer.Character.LowerTorso.Position + Vec3(0, 2.5, 0) or Camera.CFrame.p
				if values.rage.aimbot['delay shot'].Toggle then
					spawn(function()
						args[1] = RAY(Origin, (RageTarget.Position - Origin).unit * (RageTarget.Position - Origin).magnitude)
					end)
				else
					args[1] = RAY(Origin, (RageTarget.Position - Origin).unit * (RageTarget.Position - Origin).magnitude)
				end
			end
		end
	end
	if method == 'InvokeServer' then
		if self.Name == 'Moolah' then
			return
		elseif self.Name == 'Hugh' then
			return
		elseif self.Name == 'Filter' and values.misc.chat['no filter'].Toggle then
			return args[1]
		end
	end
	if method == 'LoadAnimation' and self.Name == 'Humanoid' then
		if values.rage.others['leg movement'].Dropdown == 'slide' then
			if FIND(args[1].Name, 'Walk') or FIND(args[1].Name, 'Run')  or FIND(args[1].Name, 'JumpAnim') then
				args[1] = FakeAnim
			end
		end
		if values.rage.others['no animations'].Toggle then
			if not FIND(args[1].Name, 'Dance') then 
				args[1] = FakeAnim
			end
		end
	end
	if method == 'FireServer' and self.Name == 'HitPart' then
		if values.rage.aimbot['force hit'].Toggle then
			args[1] = RageTarget
			args[2] = RageTarget.Position
		end
		
		spawn(function()
			if values.rage.exploits['peek method'].Dropdown == 'teleport' then 
				if workspace:FindFirstChild('FreezeCharacter') then
					LocalPlayer.Character.PrimaryPart.CFrame = workspace.FreezeCharacter.no.CFrame+Vector3.new(0, 3, 0)
				end
			end
			if values.rage.exploits['peek method'].Dropdown == 'tween' then 
				if workspace:FindFirstChild('FreezeCharacter') then
					F_Tween(LocalPlayer.Character.PrimaryPart, 'CFrame', CFrame.new(workspace.FreezeCharacter.no.CFrame.x, LocalPlayer.Character.PrimaryPart.CFrame.y, workspace.FreezeCharacter.no.CFrame.z), 1/values.rage.exploits['tween speed'].Slider,0 ,0, false)
				end
			end
			if values.rage.exploits['peek method'].Dropdown == 'freeze' and values.rage.exploits['unfreeze shoot'].Toggle then 
				pcall(function()
					workspace.FreezeCharacter.Size = Vector3.new(0,0,0)
					wait(0.1)
					workspace.FreezeCharacter:Remove()
				end)
			end
		end)
		if values.visuals.world['hit chams'].Toggle then
			coroutine.wrap(function()
				if Players:GetPlayerFromCharacter(args[1].Parent) and Players:GetPlayerFromCharacter(args[1].Parent).Team ~= LocalPlayer.Team then
					for _,hitbox in pairs(args[1].Parent:GetChildren()) do
						if hitbox:IsA('BasePart') or hitbox.Name == 'Head' then
							coroutine.wrap(function()
								local selected = values.visuals.world['hit material'].Dropdown
								local part = INST('Part')
								part.Transparency = values.visuals.world['hit chams'].Transparency
								part.CFrame = hitbox.CFrame
								part.Anchored = true
								part.CanCollide = false
								part.Material = Enum.Material[selected == 'Smooth' and 'SmoothPlastic' or selected == 'Flat' and 'Neon' or selected == 'ForceField' and 'ForceField' or 'Glass']
								part.Color = values.visuals.world['hit chams'].Color
								part.Size = hitbox.Size
								part.Parent = workspace.Camera
								spawn(function()
									local tweenstuffe = F_Tween(part, 'Transparency', 1 , values.visuals.world['hit duration'].Slider, 1, 1, true)
									part:Destroy()
								end)
							end)()
						end
					end
				end
			end)()
		end
		if values.visuals.world['bullet tracers'].Toggle then
			coroutine.wrap(function()
				local selected = values.visuals.world['tracers material'].Dropdown

				local beam = INST('Part')
				beam.Anchored = true
				beam.CanCollide = false
				beam.Material = Enum.Material[selected == 'Smooth' and 'SmoothPlastic' or selected == 'Flat' and 'Neon' or selected == 'ForceField' and 'ForceField' or 'Glass']
				beam.Transparency = values.visuals.world['bullet tracers'].Transparency
				beam.Color = values.visuals.world['bullet tracers'].Color

				if values.visuals.self['hide arms'].Toggle then 
					beam.Size = Vec3(0.001*values.visuals.world['tracers thickness'].Slider, 0.001*values.visuals.world['tracers thickness'].Slider, (workspace.Camera.CFrame.Position - args[2]).Magnitude)
					beam.CFrame = CF(workspace.Camera.CFrame.Position, args[2]) * CF(0, 0, -beam.Size.Z / 2)
				else
					pcall(function()
						 beam.Size = Vec3(0.001*values.visuals.world['tracers thickness'].Slider, 0.001*values.visuals.world['tracers thickness'].Slider, (workspace.Camera.Arms.Flash.CFrame.Position - args[2]).Magnitude)
						 beam.CFrame = CF(workspace.Camera.Arms.Flash.CFrame.Position, args[2]) * CF(0, 0, -beam.Size.Z / 2)
					end)
				end
				beam.Parent = workspace.Debris
				spawn(function()
				tweenstuff = F_Tween(beam, 'Transparency', 1 , values.visuals.world['hit duration'].Slider, 1, 1, true)
				beam:Destroy()
				end)
			end)()
		end
		if values.visuals.world['impacts'].Toggle then
			coroutine.wrap(function()
				
				local selected = values.visuals.world['impacts material'].Dropdown

				local hit = INST('Part')
				hit.Material = Enum.Material[selected == 'Smooth' and 'SmoothPlastic' or selected == 'Flat' and 'Neon' or selected == 'ForceField' and 'ForceField' or 'Glass']
				hit.Transparency = values.visuals.world['impacts'].Transparency
				hit.Anchored = true
				hit.CanCollide = false
				hit.Color = values.visuals.world['impacts'].Color
				hit.Size = Vec3(0.01*values.visuals.world['impacts thickness'].Slider,0.01*values.visuals.world['impacts thickness'].Slider,0.01*values.visuals.world['impacts thickness'].Slider)
				hit.Position = args[2]
				hit.Parent = workspace.Debris
				spawn(function()
				tweenstuff = F_Tween(hit, 'Transparency', 1 , values.visuals.world['hit duration'].Slider, 1, 1, true)
				hit:Destroy()
				end)
			end)()
		end
		if values.rage.aimbot['prediction'].Dropdown ~= 'off' and RageTarget ~= nil then
			coroutine.wrap(function()
				if Players:GetPlayerFromCharacter(args[1].Parent) or args[1] == RageTarget then
					if values.rage.aimbot['prediction'].Dropdown == 'automatic' then
						
						local hrp = RageTarget.Parent.HumanoidRootPart.Position
						local oldHrp = RageTarget.Parent.HumanoidRootPart.OldPosition.Value
		
						local vel = (Vec3(hrp.X, 0, hrp.Z) - Vec3(oldHrp.X, 0, oldHrp.Z)) / LastStep
						local dir = Vec3(vel.X / vel.magnitude, 0, vel.Z / vel.magnitude)
		
							
						args[2] = args[2] + dir * (Ping / (POW(Ping, (1.5))) * (dir / (dir / 2)))
						args[4] = 0
						args[12] = args[12] - (500)

					elseif values.rage.aimbot['prediction'].Dropdown == 'cframe' then
						local oldPos = RageTarget.Parent.HumanoidRootPart.Position
						local step = RS.RenderStepped:Wait()
						local newPos =RageTarget.Parent.HumanoidRootPart.Position
					
						local playerSpeed = (newPos - oldPos).magnitude / LastStep
						local direction = CFrame.new(oldPos, newPos)
					
						local final = (direction * CFrame.new(0, 0, -(playerSpeed * (ping / 1000)))).p

						args[2] = args[2] + (direction * CFrame.new(0, 0, -(playerSpeed * (ping / 1000)))).p
						args[4] = 0
						args[12] = args[12] - 500
					else
						local Velocity = RageTarget.Parent.HumanoidRootPart.Velocity
						local Direction = Vector3.new(Velocity.X/Velocity.magnitude, 0, Velocity.Z/Velocity.magnitude)
						if Velocity.magnitude >= 8 then
							args[2] = args[2] + Direction * (Velocity.magnitude*(Ping/1000) * (Ping > 200 and 1.5 or 2))
							args[4] = 0
							args[12] = args[12] - 500
						end
					end
				end
			end)()
		end
	end

	return oldNamecall(self, unpack(args))
end
mt.__index = function(self, key)
	local CallingScript = getcallingscript()

	if not checkcaller() and self == Viewmodels and LocalPlayer.Character ~= nil and LocalPlayer.Character:FindFirstChild('UpperTorso') then
		local WeaponName = GSUB(key, 'v_', '')
		if not FIND(WeaponName, 'Arms') then
			if Weapons[WeaponName]:FindFirstChild('Melee') and values.skins.knife['knife changer'].Toggle then
				if Viewmodels:FindFirstChild('v_'..values.skins.knife.model.Scroll) then
					return Viewmodels:FindFirstChild('v_'..values.skins.knife.model.Scroll)
				else
					local Clone = Models.Knives[values.skins.knife.model.Scroll]:Clone()
					return Clone
				end
			end
		end
	end
	if key == 'Value' then
		if self.Name == 'Auto' and TBLFIND(values.misc.client['gun modifiers'].Jumbobox, 'automatic') then
			return true
		elseif self.Name == 'ReloadTime' and TBLFIND(values.misc.client['gun modifiers'].Jumbobox, 'reload') then
			return 0.001
		elseif self.Name == 'EquipTime' and TBLFIND(values.misc.client['gun modifiers'].Jumbobox, 'equip') then
			return 0.001
		elseif self.Name == 'BuyTime' and TBLFIND(values.misc.client.shop.Jumbobox, 'inf time') then
			return 5
		end
	end

	return oldIndex(self, key)
end

local perf__ = LocalPlayer.PlayerGui.Performance.Perf

mt.__newindex = function(self, i, v)
	if self:IsA('Humanoid') and i == 'JumpPower' and not checkcaller() then
		if values.misc.movement['jump bug'].Toggle and values.misc.movement['jump bug'].Active then
			v = 24
		end
		if values.misc.movement['edge bug'].Toggle and values.misc.movement['edge bug'].Active then
			v = 0
		end
	elseif self:IsA('Humanoid') and i == 'CameraOffset' then
		if values.rage.angles.enabled.Toggle and values.rage.angles['body roll'].Dropdown == '180' and not DisableAA then
			v = v + Vec3(0, -3.5, 0)
		end
	end

	return oldNewIndex(self, i, v)
end

Crosshairs.Scope:GetPropertyChangedSignal('Visible'):Connect(function(current)
	if not TBLFIND(values.visuals.effects.removals.Jumbobox, 'scope lines') then return end

	if current ~= false then
		Crosshairs.Scope.Visible = false
	end
end)

Crosshair:GetPropertyChangedSignal('Visible'):Connect(function(current)
	if not LocalPlayer.Character then return end
	if not values.visuals.effects['force crosshair'].Toggle then return end
	if LocalPlayer.Character:FindFirstChild('AIMING') then return end

	Crosshair.Visible = true
end)

LocalPlayer.Additionals.TotalDamage:GetPropertyChangedSignal('Value'):Connect(function(current)
	if current == 0 then return end
	coroutine.wrap(function()
		if values.misc.client.hitmarker.Toggle then
			local Line = Drawing.new('Line')
			local Line2 = Drawing.new('Line')
			local Line3 = Drawing.new('Line')
			local Line4 = Drawing.new('Line')

			local x, y = Camera.ViewportSize.X/2, Camera.ViewportSize.Y/2

			Line.From = Vec2(x + 4, y + 4)
			Line.To = Vec2(x + 10, y + 10)
			Line.Color = values.misc.client.hitmarker.Color
			Line.Visible = true 

			Line2.From = Vec2(x + 4, y - 4)
			Line2.To = Vec2(x + 10, y - 10)
			Line2.Color = values.misc.client.hitmarker.Color
			Line2.Visible = true 

			Line3.From = Vec2(x - 4, y - 4)
			Line3.To = Vec2(x - 10, y - 10)
			Line3.Color = values.misc.client.hitmarker.Color
			Line3.Visible = true 

			Line4.From = Vec2(x - 4, y + 4)
			Line4.To = Vec2(x - 10, y + 10)
			Line4.Color = values.misc.client.hitmarker.Color
			Line4.Visible = true

			Line.Transparency = 1
			Line2.Transparency = 1
			Line3.Transparency = 1
			Line4.Transparency = 1

			Line.Thickness = 1
			Line2.Thickness = 1
			Line3.Thickness = 1
			Line4.Thickness = 1

			wait(0.3)
			for i = 1,0,-0.1 do
				wait()
				Line.Transparency = i 
				Line2.Transparency = i
				Line3.Transparency = i
				Line4.Transparency = i
			end
			Line:Remove()
			Line2:Remove()
			Line3:Remove()
			Line4:Remove()
		end
	end)()
	if values.visuals.world.hitsound.Dropdown == 'none' then return end
	local sound = INST('Sound')
	sound.Parent = game:GetService('SoundService')
	sound.SoundId = values.visuals.world.hitsound.Dropdown == 'skeet' and 'rbxassetid://5447626464' or values.visuals.world.hitsound.Dropdown == 'tf2' and 'rbxassetid://2868331684' or values.visuals.world.hitsound.Dropdown == 'rust' and 'rbxassetid://5043539486' or values.visuals.world.hitsound.Dropdown == 'retro' and 'rbxassetid://7293523910' or values.visuals.world.hitsound.Dropdown == 'bag' and 'rbxassetid://364942410' or values.visuals.world.hitsound.Dropdown == 'nn dog' and 'rbxassetid://5902468562' or values.visuals.world.hitsound.Dropdown == 'baimware' and 'rbxassetid://6607339542' or 'rbxassetid://6607204501'
	sound.Volume = values.visuals.world['sound volume'].Slider
	sound.PlayOnRemove = true
	sound:Destroy()
end)

lastcurrent = LocalPlayer.Status.Kills.Value
LocalPlayer.Status.Kills:GetPropertyChangedSignal('Value'):Connect(function(current)
	if current == 0 then return end

	if LocalPlayer.Status.Kills.Value > lastcurrent then 
		if  values.misc.chat['kill say'].Toggle then
			local texatee = textboxtriggers(values.misc.chat['message'].Text)
			game:GetService('ReplicatedStorage').Events.PlayerChatted:FireServer(values.misc.chat['message'].Text ~= '' and texatee or "rawrie what's that! no shiba.gang :(", false, 'Innocent', false, true)
		end	
		
		local sound = INST('Sound')
		sound.Parent = game:GetService('SoundService')
		sound.SoundId = values.visuals.world.killsound.Dropdown == 'skeet' and 'rbxassetid://5447626464' or values.visuals.world.killsound.Dropdown == 'tf2' and 'rbxassetid://2868331684' or values.visuals.world.killsound.Dropdown == 'rust' and 'rbxassetid://5043539486' or values.visuals.world.killsound.Dropdown == 'retro' and 'rbxassetid://7293523910' or values.visuals.world.killsound.Dropdown == 'bag' and 'rbxassetid://364942410' or values.visuals.world.killsound.Dropdown == 'nn dog' and 'rbxassetid://5902468562' or values.visuals.world.killsound.Dropdown == 'baimware' and 'rbxassetid://6607339542' or 'rbxassetid://6607204501'
		sound.Volume = values.visuals.world['sound volume'].Slider
		sound.PlayOnRemove = true
		sound:Destroy()
	end


	lastcurrent = LocalPlayer.Status.Kills.Value
end)

RayIgnore.ChildAdded:Connect(function(obj)
	if obj.Name == 'Fires' then
		obj.ChildAdded:Connect(function(fire)
			if values.visuals.world['molly radius'].Toggle then
				fire.Transparency = values.visuals.world['molly radius'].Transparency
				fire.Color = values.visuals.world['molly radius'].Color
			end
		end)
	end
	if obj.Name == 'Smokes' then
		obj.ChildAdded:Connect(function(smoke)
			RunService.RenderStepped:Wait()
			local OriginalRate = INST('NumberValue')
			OriginalRate.Value = smoke.ParticleEmitter.Rate
			OriginalRate.Name = 'OriginalRate'
			OriginalRate.Parent = smoke
			if TBLFIND(values.visuals.effects.removals.Jumbobox, 'smokes') then
				smoke.ParticleEmitter.Rate = 0
			end
			smoke.Material = Enum.Material.ForceField
			if values.visuals.world['smoke radius'].Toggle then
				smoke.Transparency = 0
				smoke.Color = values.visuals.world['smoke radius'].Color
			end
		end)
	end
end)
if RayIgnore:FindFirstChild('Fires') then
	RayIgnore:FindFirstChild('Fires').ChildAdded:Connect(function(fire)
		if values.visuals.world['molly radius'].Toggle then
			fire.Transparency = values.visuals.world['molly radius'].Transparency
			fire.Color = values.visuals.world['molly radius'].Color
		end
	end)
end
if RayIgnore:FindFirstChild('Smokes') then
	for _,smoke in pairs(RayIgnore:FindFirstChild('Smokes'):GetChildren()) do
		local OriginalRate = INST('NumberValue')
		OriginalRate.Value = smoke.ParticleEmitter.Rate
		OriginalRate.Name = 'OriginalRate'
		OriginalRate.Parent = smoke
		smoke.Material = Enum.Material.ForceField
	end
	RayIgnore:FindFirstChild('Smokes').ChildAdded:Connect(function(smoke)
		RunService.RenderStepped:Wait()
		local OriginalRate = INST('NumberValue')
		OriginalRate.Value = smoke.ParticleEmitter.Rate
		OriginalRate.Name = 'OriginalRate'
		OriginalRate.Parent = smoke
		if TBLFIND(values.visuals.effects.removals.Jumbobox, 'smokes') then
			smoke.ParticleEmitter.Rate = 0
		end
		smoke.Material = Enum.Material.ForceField
		if values.visuals.world['smoke radius'].Toggle then
			smoke.Transparency = 0
			smoke.Color = values.visuals.world['smoke radius'].Color
		end
	end)
end

Camera.ChildAdded:Connect(function(obj)
	if TBLFIND(values.misc.client['gun modifiers'].Jumbobox, 'ammo') then
		Client.ammocount = 999999
		Client.primarystored = 999999
		Client.ammocount2 = 999999
		Client.secondarystored = 999999
	end
	RunService.RenderStepped:Wait()
	if obj.Name ~= 'Arms' then return end
	local Model
	for i,v in pairs(obj:GetChildren()) do
		if v:IsA('Model') and (v:FindFirstChild('Right Arm') or v:FindFirstChild('Left Arm')) then
			Model = v
		end
	end
	if Model == nil then return end
	for i,v in pairs(obj:GetChildren()) do
		if (v:IsA('BasePart') or v:IsA('Part')) and v.Transparency ~= 1 and v.Name ~= 'Flash' then
			local valid = true
			if v:IsA('Part') and v:FindFirstChild('Mesh') and not v:IsA('BlockMesh') then
				valid = false
				local success, err = pcall(function()
					local OriginalTexture = INST('StringValue')
					OriginalTexture.Value = v.Mesh.TextureId
					OriginalTexture.Name = 'OriginalTexture'
					OriginalTexture.Parent = v.Mesh
				end)
				local success2, err2 = pcall(function()
					local OriginalTexture = INST('StringValue')
					OriginalTexture.Value = v.Mesh.TextureID
					OriginalTexture.Name = 'OriginalTexture'
					OriginalTexture.Parent = v.Mesh
				end)
				if success or success2 then valid = true end
			end

			for i2,v2 in pairs(v:GetChildren()) do
				if (v2:IsA('BasePart') or v2:IsA('Part')) then
					INSERT(WeaponObj, v2)
				end
			end

			if valid then
				INSERT(WeaponObj, v)
			end
		end
	end

	local gunname = Client.gun ~= 'none' and values.skins.knife['knife changer'].Toggle and Client.gun:FindFirstChild('Melee') and values.skins.knife.model.Scroll or Client.gun ~= 'none' and Client.gun.Name
	if values.skins.skins['skin changer'].Toggle and gunname ~= nil and Skins:FindFirstChild(gunname) then
		if values.skins.skins.skin.Scroll[gunname] ~= 'Inventory' then
			MapSkin(gunname, values.skins.skins.skin.Scroll[gunname])
		end
	end
	for _,v in pairs(WeaponObj) do
		if v:IsA('MeshPart') then
			local OriginalTexture = INST('StringValue')
			OriginalTexture.Value = v.TextureID
			OriginalTexture.Name = 'OriginalTexture'
			OriginalTexture.Parent = v
		end

		local OriginalColor = INST('Color3Value')
		OriginalColor.Value = v.Color
		OriginalColor.Name = 'OriginalColor'
		OriginalColor.Parent = v

		local OriginalMaterial = INST('StringValue')
		OriginalMaterial.Value = v.Material.Name
		OriginalMaterial.Name = 'OriginalMaterial'
		OriginalMaterial.Parent = v

		if values.visuals.effects['weapon chams'].Toggle then
			UpdateWeapon(v)
		end
	end
	RArm = Model:FindFirstChild('Right Arm'); LArm = Model:FindFirstChild('Left Arm')
	if RArm then
		local OriginalColor = INST('Color3Value')
		OriginalColor.Value = RArm.Color
		OriginalColor.Name = 'Color3Value'
		OriginalColor.Parent = RArm
		if values.visuals.effects['arm chams'].Toggle then
			RArm.Color = values.visuals.effects['arm chams'].Color
			RArm.Transparency = values.visuals.effects['arm chams'].Transparency
		end
		RGlove = RArm:FindFirstChild('Glove') or RArm:FindFirstChild('RGlove')
		if values.skins.glove['glove changer'].Toggle and Client.gun ~= 'none' then
			if RGlove then RGlove:Destroy() end
			RGlove = GloveModels[values.skins.glove.model.Dropdown].RGlove:Clone()
			RGlove.Mesh.TextureId = Gloves[values.skins.glove.model.Dropdown][values.skins.glove.model.Scroll[values.skins.glove.model.Dropdown]].Textures.TextureId
			RGlove.Parent = RArm
			RGlove.Transparency = 0
			RGlove.Welded.Part0 = RArm
		end
		if RGlove.Transparency == 1 then
			RGlove:Destroy()
			RGlove = nil
		else
			local GloveTexture = INST('StringValue')
			GloveTexture.Value = RGlove.Mesh.TextureId
			GloveTexture.Name = 'StringValue'
			GloveTexture.Parent = RGlove

			if values.visuals.effects['accessory chams'].Toggle then
				UpdateAccessory(RGlove)
			end
		end
		RSleeve = RArm:FindFirstChild('Sleeve')
		if RSleeve ~= nil then
			local SleeveTexture = INST('StringValue')
			SleeveTexture.Value = RSleeve.Mesh.TextureId
			SleeveTexture.Name = 'StringValue'
			SleeveTexture.Parent = RSleeve
			if values.visuals.effects['arm chams'].Toggle then
				LArm.Color = values.visuals.effects['arm chams'].Color
				LArm.Transparency = values.visuals.effects['arm chams'].Transparency
			end
			
			if values.visuals.effects['accessory chams'].Toggle then
				UpdateAccessory(RSleeve)
			end
		end
	end
	if LArm then
		local OriginalColor = INST('Color3Value')
		OriginalColor.Value = LArm.Color
		OriginalColor.Name = 'Color3Value'
		OriginalColor.Parent = LArm
		if values.visuals.effects['arm chams'].Toggle then
			LArm.Color = values.visuals.effects['arm chams'].Color
			LArm.Transparency = values.visuals.effects['arm chams'].Transparency
		end
		LGlove = LArm:FindFirstChild('Glove') or LArm:FindFirstChild('LGlove')
		if values.skins.glove['glove changer'].Toggle and Client.gun ~= 'none' then
			if LGlove then LGlove:Destroy() end
			LGlove = GloveModels[values.skins.glove.model.Dropdown].LGlove:Clone()
			LGlove.Mesh.TextureId = Gloves[values.skins.glove.model.Dropdown][values.skins.glove.model.Scroll[values.skins.glove.model.Dropdown]].Textures.TextureId
			LGlove.Transparency = 0
			LGlove.Parent = LArm
			LGlove.Welded.Part0 = LArm
		end
		if LGlove.Transparency == 1 then
			LGlove:Destroy()
			LGlove =  nil
		else
			local GloveTexture = INST('StringValue')
			GloveTexture.Value = LGlove.Mesh.TextureId
			GloveTexture.Name = 'StringValue'
			GloveTexture.Parent = LGlove

			if values.visuals.effects['accessory chams'].Toggle then
				UpdateAccessory(LGlove)
			end
		end
		LSleeve = LArm:FindFirstChild('Sleeve')
		if LSleeve ~= nil then
			local SleeveTexture = INST('StringValue')
			SleeveTexture.Value = LSleeve.Mesh.TextureId
			SleeveTexture.Name = 'StringValue'
			SleeveTexture.Parent = LSleeve

			if values.visuals.effects['accessory chams'].Toggle then
				UpdateAccessory(LSleeve)
			end
		end
	end
end)

Camera.ChildAdded:Connect(function(obj)
	if obj.Name == 'Arms' then
		RArm, LArm, RGlove, RSleeve, LGlove, LSleeve = nil, nil, nil, nil, nil, nil
		WeaponObj = {}
	end
end)

Camera:GetPropertyChangedSignal('FieldOfView'):Connect(function(fov)
	if LocalPlayer.Character == nil then return end
	if fov == values.visuals.self['fov changer'].Slider then return end
	if values.visuals.self['on scope'].Toggle or not LocalPlayer.Character:FindFirstChild('AIMING') then
		Camera.FieldOfView = values.visuals.self['fov changer'].Slider
	end
end)

LocalPlayer.Cash:GetPropertyChangedSignal('Value'):Connect(function(cash)
	if values.misc.client['infinite cash'].Toggle and cash ~= 8000 then
		LocalPlayer.Cash.Value = 8000
	end
end)

if workspace:FindFirstChild('Map') and workspace:FindFirstChild('Map'):FindFirstChild('Origin') then
	if workspace.Map.Origin.Value == 'de_cache' or workspace.Map.Origin.Value == 'de_vertigo' or workspace.Map.Origin.Value == 'de_nuke' or workspace.Map.Origin.Value == 'de_aztec' then
		oldSkybox = Lighting:FindFirstChildOfClass('Sky'):Clone()
	end
end

workspace.ChildAdded:Connect(function(obj)
	if obj.Name == 'Map' then
		wait(5)
		if values.misc.client['remove killers'].Toggle then
			if workspace:FindFirstChild('Map') and workspace:FindFirstChild('Map'):FindFirstChild('Killers') then
				local clone = workspace:FindFirstChild('Map'):FindFirstChild('Killers'):Clone()
				clone.Name = 'KillersClone'
				clone.Parent = workspace:FindFirstChild('Map')

				workspace:FindFirstChild('Map'):FindFirstChild('Killers'):Destroy()
			end
		end
		if oldSkybox ~= nil then
			oldSkybox:Destroy()
			oldSkybox = nil
		end
		local Origin = workspace.Map:WaitForChild('Origin')
		if workspace.Map.Origin.Value == 'de_cache' or workspace.Map.Origin.Value == 'de_vertigo' or workspace.Map.Origin.Value == 'de_nuke' or workspace.Map.Origin.Value == 'de_aztec' then
			oldSkybox = Lighting:FindFirstChildOfClass('Sky'):Clone()

			local sky = values.visuals.world.skybox.Dropdown
			if sky ~= 'none' then
				Lighting:FindFirstChildOfClass('Sky'):Destroy()
				local skybox = INST('Sky')
				skybox.SkyboxLf = Skyboxes[sky].SkyboxLf
				skybox.SkyboxBk = Skyboxes[sky].SkyboxBk
				skybox.SkyboxDn = Skyboxes[sky].SkyboxDn
				skybox.SkyboxFt = Skyboxes[sky].SkyboxFt
				skybox.SkyboxRt = Skyboxes[sky].SkyboxRt
				skybox.SkyboxUp = Skyboxes[sky].SkyboxUp
				skybox.Name = 'override'
				skybox.Parent = Lighting
			end
		else
			local sky = values.visuals.world.skybox.Dropdown
			if sky ~= 'none' then
				local skybox = INST('Sky')
				skybox.SkyboxLf = Skyboxes[sky].SkyboxLf
				skybox.SkyboxBk = Skyboxes[sky].SkyboxBk
				skybox.SkyboxDn = Skyboxes[sky].SkyboxDn
				skybox.SkyboxFt = Skyboxes[sky].SkyboxFt
				skybox.SkyboxRt = Skyboxes[sky].SkyboxRt
				skybox.SkyboxUp = Skyboxes[sky].SkyboxUp
				skybox.Name = 'override'
				skybox.Parent = Lighting
			end
		end
	end
end)

Lighting.ChildAdded:Connect(function(obj)
	if obj:IsA('Sky') and obj.Name ~= 'override' then
		oldSkybox = obj:Clone()
	end
end)

local function CollisionTBL(obj)
	if obj:IsA('Accessory') then
		INSERT(Collision, obj)
	end
	if obj:IsA('Part') then
		if obj.Name == 'HeadHB' or obj.Name == 'FakeHead' then
			INSERT(Collision, obj)
		end
	end
end
LocalPlayer.CharacterRemoving:Connect(function(char)
	allowedtofreeze = false
end)
LocalPlayer.CharacterAdded:Connect(function(char)
	allowedtofreeze = false
	repeat RunService.RenderStepped:Wait()
	until char:FindFirstChild('Gun')
	SelfObj = {}
	if values.skins.characters['character changer'].Toggle then
		ChangeCharacter(ChrModels:FindFirstChild(values.skins.characters.skin.Scroll))
	end
	if char:FindFirstChildOfClass('Shirt') then
		local String = INST('StringValue')
		String.Name = 'OriginalTexture'
		String.Value = char:FindFirstChildOfClass('Shirt').ShirtTemplate
		String.Parent = char:FindFirstChildOfClass('Shirt')

		if TBLFIND(values.visuals.effects.removals.Jumbobox, 'clothes') then
			char:FindFirstChildOfClass('Shirt').ShirtTemplate = ''
		end
	end
	if char:FindFirstChildOfClass('Pants') then
		local String = INST('StringValue')
		String.Name = 'OriginalTexture'
		String.Value = char:FindFirstChildOfClass('Pants').PantsTemplate
		String.Parent = char:FindFirstChildOfClass('Pants')

		if TBLFIND(values.visuals.effects.removals.Jumbobox, 'clothes') then
			char:FindFirstChildOfClass('Pants').PantsTemplate = ''
		end
	end
	if values.misc.animations.enabled.Toggle then
		wait(1)
		if LoadedAnim then 
			savedanimationdance = Dance
			LoadedAnim = LocalPlayer.Character.Humanoid:LoadAnimation(Dance)
			LoadedAnim.Priority = Enum.AnimationPriority.Action
			LoadedAnim:Play()
			LoadedAnim:AdjustSpeed(values.misc.animations['animation speed'].Slider)
		end
	end
	for i,v in pairs(char:GetChildren()) do
		if v:IsA('BasePart') and v.Transparency ~= 1 then
			INSERT(SelfObj, v)
			local Color = INST('Color3Value')
			Color.Name = 'OriginalColor'
			Color.Value = v.Color
			Color.Parent = v

			local String = INST('StringValue')
			String.Name = 'OriginalMaterial'
			String.Value = v.Material.Name
			String.Parent = v
		elseif v:IsA('Accessory') and v.Handle.Transparency ~= 1 then
			INSERT(SelfObj, v.Handle)
			local Color = INST('Color3Value')
			Color.Name = 'OriginalColor'
			Color.Value = v.Handle.Color
			Color.Parent = v.Handle

			local String = INST('StringValue')
			String.Name = 'OriginalMaterial'
			String.Value = v.Handle.Material.Name
			String.Parent = v.Handle
		end
	end
	if values.visuals.self['self chams'].Toggle then
		for _,obj in pairs(SelfObj) do
			if obj.Parent ~= nil then
				obj.Material = values.visuals.self['self material'].Dropdown
				obj.Color = values.visuals.self['self chams'].Color
			end
		end
	end
	allowedtofreeze = true
	LocalPlayer.Character.ChildAdded:Connect(function(Child)
		if Child:IsA('Accessory') and Child.Handle.Transparency ~= 1 then
			INSERT(SelfObj, Child.Handle)
			local Color = INST('Color3Value')
			Color.Name = 'OriginalColor'
			Color.Value = Child.Handle.Color
			Color.Parent = Child.Handle

			local String = INST('StringValue')
			String.Name = 'OriginalMaterial'
			String.Value = Child.Handle.Material.Name
			String.Parent = Child.Handle

			if values.visuals.self['self chams'].Toggle then
				for _,obj in pairs(SelfObj) do
					if obj.Parent ~= nil then
				obj.Material = values.visuals.self['self material'].Dropdown
				obj.Color = values.visuals.self['self chams'].Color
					end
				end
			end
		end
	end)
end)

if LocalPlayer.Character ~= nil then
	for i,v in pairs(LocalPlayer.Character:GetChildren()) do
		if v:IsA('BasePart') and v.Transparency ~= 1 then
			INSERT(SelfObj, v)
			local Color = INST('Color3Value')
			Color.Name = 'OriginalColor'
			Color.Value = v.Color
			Color.Parent = v

			local String = INST('StringValue')
			String.Name = 'OriginalMaterial'
			String.Value = v.Material.Name
			String.Parent = v
		elseif v:IsA('Accessory') and v.Handle.Transparency ~= 1 then
			INSERT(SelfObj, v.Handle)
			local Color = INST('Color3Value')
			Color.Name = 'OriginalColor'
			Color.Value = v.Handle.Color
			Color.Parent = v.Handle

			local String = INST('StringValue')
			String.Name = 'OriginalMaterial'
			String.Value = v.Handle.Material.Name
			String.Parent = v.Handle
		end
	end
	if values.visuals.self['self chams'].Toggle then
		for _,obj in pairs(SelfObj) do
			if obj.Parent ~= nil then
				obj.Material = values.visuals.self['self material'].Dropdown
				obj.Color = values.visuals.self['self chams'].Color
			end
		end
	end
	LocalPlayer.Character.ChildAdded:Connect(function(Child)
		if Child:IsA('Accessory') and Child.Handle.Transparency ~= 1 then
			INSERT(SelfObj, Child.Handle)
			local Color = INST('Color3Value')
			Color.Name = 'OriginalColor'
			Color.Value = Child.Handle.Color
			Color.Parent = Child.Handle

			local String = INST('StringValue')
			String.Name = 'OriginalMaterial'
			String.Value = Child.Handle.Material.Name
			String.Parent = Child.Handle

			if values.visuals.self['self chams'].Toggle then
				for _,obj in pairs(SelfObj) do
					if obj.Parent ~= nil then
						obj.Material = values.visuals.self['self material'].Dropdown
						obj.Color = values.visuals.self['self chams'].Color
					end
				end
			end
		end
	end)
end

Players.PlayerAdded:Connect(function(Player)
	Player:GetPropertyChangedSignal('Team'):Connect(function(new)
		wait()
		if Player.Character and Player.Character:FindFirstChild('HumanoidRootPart') then
			for _2,Obj in pairs(Player.Character:GetDescendants()) do
				if Obj.Name == 'VisibleCham' or Obj.Name == 'WallCham' then
					if values.visuals.players.chams.Toggle then
						if values.visuals.players.teammates.Toggle or Player.Team ~= LocalPlayer.Team then
							Obj.Visible = true
						else
							Obj.Visible = false
						end
					else
						Obj.Visible = false
					end
					Obj.Transparency = values.visuals.players.chams.Transparency
					Obj.Color3 = values.visuals.players.chams.Color
				end
			end
		end
	end)
	Player.CharacterAdded:Connect(function(Character)
		Character.ChildAdded:Connect(function(obj)
			wait(1)
			CollisionTBL(obj)
		end)
		wait(1)
		if Character ~= nil then
			local Value = INST('Vector3Value')
			Value.Name = 'OldPosition'
			Value.Value = Character.HumanoidRootPart.Position
			Value.Parent = Character.HumanoidRootPart
			for _,obj in pairs(Character:GetChildren()) do
				if obj:IsA('BasePart') and Player ~= LocalPlayer and obj.Name ~= 'HumanoidRootPart' and obj.Name ~= 'Head' and obj.Name ~= 'BackC4' and obj.Name ~= 'HeadHB' then
					local VisibleCham
					if obj.Name == 'FakeHead' then 
						VisibleCham = INST('CylinderHandleAdornment')
						VisibleCham.Height = 1.2 + (values.visuals.players['vcham thickness'].Slider/30)
						VisibleCham.Radius = 0.61 + (values.visuals.players['vcham thickness'].Slider/20)
						VisibleCham.CFrame = CFrame.new(0,0,0) * CFrame.Angles(1.6,0,0)
					else 
						VisibleCham = INST('BoxHandleAdornment')
						VisibleCham.Size = obj.Size + Vec3( (values.visuals.players['vcham thickness'].Slider/10),  (values.visuals.players['vcham thickness'].Slider/10),  (values.visuals.players['vcham thickness'].Slider/10))
					end
					VisibleCham.Name = 'VisibleCham'
					VisibleCham.AlwaysOnTop = false
					VisibleCham.ZIndex = 8
					VisibleCham.AlwaysOnTop = false
					VisibleCham.Transparency = values.visuals.players['visible chams'].Transparency

					local WallCham
					if obj.Name == 'FakeHead' then 
						WallCham = INST('CylinderHandleAdornment')
						WallCham.Height = 1.2 + (values.visuals.players['cham thickness'].Slider/20)
						WallCham.Radius = 0.61 + (values.visuals.players['cham thickness'].Slider/20)
						WallCham.CFrame = CFrame.new(0,0,0) * CFrame.Angles(1.6,0,0) 
					else 
						WallCham = INST('BoxHandleAdornment')
						WallCham.Size = obj.Size + Vec3( (values.visuals.players['cham thickness'].Slider/10),  (values.visuals.players['cham thickness'].Slider/10),  (values.visuals.players['cham thickness'].Slider/10))
					end
					WallCham.Name = 'WallCham'
					WallCham.AlwaysOnTop = true
					WallCham.ZIndex = 5
					WallCham.AlwaysOnTop = true
					WallCham.Transparency = values.visuals.players.chams.Transparency

					if values.visuals.players.chams.Toggle then
						if values.visuals.players.teammates.Toggle or Player.Team ~= LocalPlayer.Team then
							WallCham.Visible = true
						else
							WallCham.Visible = false
						end
					else
						WallCham.Visible = false
					end

					if values.visuals.players['visible chams'].Toggle then
						if values.visuals.players.teammates.Toggle or Player.Team ~= LocalPlayer.Team then
							VisibleCham.Visible = true
						else
							VisibleCham.Visible = false
						end
					else
						VisibleCham.Visible = false
					end

					INSERT(ChamItems, {VisibleCham, obj})
					INSERT(ChamItems, {WallCham, obj})

					VisibleCham.Color3 = values.visuals.players['visible chams'].Color
					WallCham.Color3 = values.visuals.players.chams.Color
	
					VisibleCham.Transparency = values.visuals.players['visible chams'].Transparency
					WallCham.Transparency = values.visuals.players.chams.Transparency
			
					VisibleCham.AdornCullingMode = 'Never'
					WallCham.AdornCullingMode = 'Never'

					VisibleCham.Adornee = obj
					VisibleCham.Parent = obj

					WallCham.Adornee = obj
					WallCham.Parent = obj
				end
			end
		end
	end)
end)

for _,Player in pairs(Players:GetPlayers()) do
	if Player ~= LocalPlayer then
		Player:GetPropertyChangedSignal('Team'):Connect(function(new)
			wait()
			if Player.Character and Player.Character:FindFirstChild('HumanoidRootPart') then
				for _2,Obj in pairs(Player.Character:GetDescendants()) do
					if Obj.Name == 'VisibleCham' or Obj.Name == 'WallCham' then
						if values.visuals.players.chams.Toggle then
							if values.visuals.players.teammates.Toggle or Player.Team ~= LocalPlayer.Team then
								Obj.Visible = true
							else
								Obj.Visible = false
							end
						else
							Obj.Visible = false
						end
						Obj.Color3 = values.visuals.players.chams.Color
						Obj.Transparency = values.visuals.players['visible chams'].Transparency
					end
				end
			end
		end)
	else
		LocalPlayer:GetPropertyChangedSignal('Team'):Connect(function(new)
			wait()
			for _,Player in pairs(Players:GetPlayers()) do
				if Player.Character then
					for _2,Obj in pairs(Player.Character:GetDescendants()) do
						if Obj.Name == 'VisibleCham' or Obj.Name == 'WallCham' then
							if values.visuals.players.chams.Toggle then
								if values.visuals.players.teammates.Toggle or Player.Team ~= LocalPlayer.Team then
									Obj.Visible = true
								else
									Obj.Visible = false
								end
							else
								Obj.Visible = false
							end
							Obj.Color3 = values.visuals.players.chams.Color
							Obj.Transparency = values.visuals.players.chams.Transparency
						end
					end
				end
			end
		end)
	end
	Player.CharacterAdded:Connect(function(Character)
		Character.ChildAdded:Connect(function(obj)
			wait(1)
			CollisionTBL(obj)
		end)
		wait(1)
		if Player.Character ~= nil and Player.Character:FindFirstChild('HumanoidRootPart') then
			local Value = INST('Vector3Value')
			Value.Value = Player.Character.HumanoidRootPart.Position
			Value.Name = 'OldPosition'
			Value.Parent = Player.Character.HumanoidRootPart
			for _,obj in pairs(Player.Character:GetChildren()) do
				if obj:IsA('BasePart') and Player ~= LocalPlayer and obj.Name ~= 'HumanoidRootPart' and obj.Name ~= 'Head' and obj.Name ~= 'BackC4' and obj.Name ~= 'HeadHB' then

					local VisibleCham
					if obj.Name == 'FakeHead' then 
						VisibleCham = INST('CylinderHandleAdornment')
						VisibleCham.Height = 1.2 + (values.visuals.players['vcham thickness'].Slider/30)
						VisibleCham.Radius = 0.61 + (values.visuals.players['vcham thickness'].Slider/20)
						VisibleCham.CFrame = CFrame.new(0,0,0) * CFrame.Angles(1.6,0,0)
					else 
						VisibleCham = INST('BoxHandleAdornment')
						VisibleCham.Size = obj.Size + Vec3( (values.visuals.players['vcham thickness'].Slider/10),  (values.visuals.players['vcham thickness'].Slider/10),  (values.visuals.players['vcham thickness'].Slider/10))
					end
					VisibleCham.Name = 'VisibleCham'
					VisibleCham.AlwaysOnTop = false
					VisibleCham.ZIndex = 5
					VisibleCham.AlwaysOnTop = false
					VisibleCham.Transparency = 0
					
					local WallCham
					if obj.Name == 'FakeHead' then 
						WallCham = INST('CylinderHandleAdornment')
						WallCham.Height = 1.2 + (values.visuals.players['cham thickness'].Slider/20)
						WallCham.Radius = 0.61 + (values.visuals.players['cham thickness'].Slider/20)
						WallCham.CFrame = CFrame.new(0,0,0) * CFrame.Angles(1.6,0,0)
					else 
						WallCham = INST('BoxHandleAdornment')
						WallCham.Size = obj.Size + Vec3( (values.visuals.players['cham thickness'].Slider/10),  (values.visuals.players['cham thickness'].Slider/10),  (values.visuals.players['cham thickness'].Slider/10))
					end
					WallCham.Name = 'WallCham'
					WallCham.AlwaysOnTop = true
					WallCham.ZIndex = 5
					WallCham.AlwaysOnTop = true
					WallCham.Transparency = 0.7


					if values.visuals.players.chams.Toggle then
						if values.visuals.players.teammates.Toggle or Player.Team ~= LocalPlayer.Team then
							WallCham.Visible = true
						else
							WallCham.Visible = false
						end
					else
						WallCham.Visible = false
					end

					if values.visuals.players['visible chams'].Toggle then
						if values.visuals.players.teammates.Toggle or Player.Team ~= LocalPlayer.Team then
							VisibleCham.Visible = true
						else
							VisibleCham.Visible = false
						end
					else
						VisibleCham.Visible = false
					end

					INSERT(ChamItems, {VisibleCham, obj})
					INSERT(ChamItems, {WallCham, obj})

					VisibleCham.Color3 = values.visuals.players['visible chams'].Color
					WallCham.Color3 = values.visuals.players.chams.Color
	
					VisibleCham.Transparency = values.visuals.players['visible chams'].Transparency
					WallCham.Transparency = values.visuals.players.chams.Transparency

					VisibleCham.AdornCullingMode = 'Never'
					WallCham.AdornCullingMode = 'Never'

					VisibleCham.Adornee = obj
					VisibleCham.Parent = obj

					WallCham.Adornee = obj
					WallCham.Parent = obj
				end
			end
		end
	end)
	if Player.Character ~= nil and Player.Character:FindFirstChild('UpperTorso') then
		local Value = INST('Vector3Value')
		Value.Name = 'OldPosition'
		Value.Value = Player.Character.HumanoidRootPart.Position
		Value.Parent = Player.Character.HumanoidRootPart
		for _,obj in pairs(Player.Character:GetChildren()) do
			CollisionTBL(obj)
			if obj:IsA('BasePart') and Player ~= LocalPlayer and obj.Name ~= 'HumanoidRootPart' and obj.Name ~= 'Head' and obj.Name ~= 'BackC4' and obj.Name ~= 'HeadHB' then
				
				local VisibleCham
				if obj.Name == 'FakeHead' then 
					VisibleCham = INST('CylinderHandleAdornment')
					VisibleCham.Height = 1.2 + (values.visuals.players['vcham thickness'].Slider/30)
					VisibleCham.Radius = 0.61 + (values.visuals.players['vcham thickness'].Slider/20)
					VisibleCham.CFrame = CFrame.new(0,0,0) * CFrame.Angles(1.6,0,0)
				else 
					VisibleCham = INST('BoxHandleAdornment')
					VisibleCham.Size = obj.Size +  Vec3( (values.visuals.players['vcham thickness'].Slider/10),  (values.visuals.players['vcham thickness'].Slider/10),  (values.visuals.players['vcham thickness'].Slider/10))
				end
				VisibleCham.Name = 'VisibleCham'
				VisibleCham.AlwaysOnTop = false
				VisibleCham.ZIndex = 5
				VisibleCham.AlwaysOnTop = false
				VisibleCham.Transparency = 0

				local WallCham
				if obj.Name == 'FakeHead' then 
					WallCham = INST('CylinderHandleAdornment')
					WallCham.Height = 1.2 + (values.visuals.players['cham thickness'].Slider/20)
					WallCham.Radius = 0.61 + (values.visuals.players['cham thickness'].Slider/20)
					WallCham.CFrame = CFrame.new(0,0,0) * CFrame.Angles(1.6,0,0)
				else 
					WallCham = INST('BoxHandleAdornment')
					WallCham.Size = obj.Size + Vec3( (values.visuals.players['cham thickness'].Slider/10),  (values.visuals.players['cham thickness'].Slider/10),  (values.visuals.players['cham thickness'].Slider/10))
				end
				WallCham.Name = 'WallCham'
				WallCham.AlwaysOnTop = true
				WallCham.ZIndex = 5
				WallCham.AlwaysOnTop = true
				WallCham.Transparency = 0.7

				if values.visuals.players.chams.Toggle then
					if values.visuals.players.teammates.Toggle or Player.Team ~= LocalPlayer.Team then
						VisibleCham.Visible = true
						WallCham.Visible = true
					else
						VisibleCham.Visible = false
						WallCham.Visible = false
					end
				else
					VisibleCham.Visible = false
					WallCham.Visible = false
				end

				if values.visuals.players.chams.Toggle then
					if values.visuals.players.teammates.Toggle or Player.Team ~= LocalPlayer.Team then
						VisibleCham.Visible = true
						WallCham.Visible = true
					else
						VisibleCham.Visible = false
						WallCham.Visible = false
					end
				else
					VisibleCham.Visible = false
					WallCham.Visible = false
				end

				INSERT(ChamItems, {VisibleCham, obj})
				INSERT(ChamItems, {WallCham, obj})

				VisibleCham.Color3 = values.visuals.players['visible chams'].Color
				WallCham.Color3 = values.visuals.players.chams.Color

				VisibleCham.Transparency = values.visuals.players['visible chams'].Transparency
				WallCham.Transparency = values.visuals.players.chams.Transparency

				VisibleCham.AdornCullingMode = 'Never'
				WallCham.AdornCullingMode = 'Never'

				VisibleCham.Adornee = obj
				VisibleCham.Parent = obj

				WallCham.Adornee = obj
				WallCham.Parent = obj
			end
		end
	end
end

while true do task.wait(1)
	for i,b in next, watermarklocation.watermark:GetChildren() do 
		if b:IsA('UIGradient') then 
			if b.Name == values.misc.watermark.themes.Dropdown then 
				b.Enabled = true
			else
				b.Enabled = false
			end
		end
	end;

	if ovascreengui['menu'].Image ~= 'rbxassetid://'..themebackground[values.misc.ui['background'].Dropdown] then 
		ovascreengui['menu'].Image = 'rbxassetid://'..themebackground[values.misc.ui['background'].Dropdown]
	end;

	ovascreengui['menu'].ImageColor3 = values.misc.ui['background color'].Color
	ovascreengui['menu'].ImageTransparency = values.misc.ui['background color'].Transparency

	if values.misc.ui['ui border'].Toggle then 
		ovascreengui['menu'].BorderSizePixel = 1
		ovascreengui['menu'].BorderColor3 = values.misc.ui['ui border'].Color
	else 
		ovascreengui['menu'].BorderSizePixel = 0
	end;
end;