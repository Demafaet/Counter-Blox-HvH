if game.CoreGui:FindFirstChild("loader") then
    game.CoreGui.loader:Destroy()
end    

local loader = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local outline = Instance.new("Frame")
local inner = Instance.new("Frame")
local upstuff = Instance.new("Frame")
local name = Instance.new("TextLabel")
local divider = Instance.new("Frame")
local blackdivider = Instance.new("Frame")
local group1 = Instance.new("Frame")
local infogroup = Instance.new("Frame")
local infogroupmain = Instance.new("Frame")
local infolabel = Instance.new("TextLabel")
local cbimage = Instance.new("ImageLabel")
local welcome = Instance.new("TextLabel")
local gamelabel = Instance.new("TextLabel")
local version = Instance.new("TextLabel")
local updated = Instance.new("TextLabel")
local status = Instance.new("TextLabel")
local infodivider = Instance.new("Frame")
local optionsgroup = Instance.new("Frame")
local optionsgroupmain = Instance.new("Frame")
local optionsdivider = Instance.new("Frame")
local optionslabel = Instance.new("TextLabel")
local load = Instance.new("Frame")
local loadlabel = Instance.new("TextLabel")
local UIGradient = Instance.new("UIGradient")
local loadbutton = Instance.new("TextButton")
local exit = Instance.new("Frame")
local exitbutton = Instance.new("TextButton")
local exitlabel = Instance.new("TextLabel")
local UIGradient_2 = Instance.new("UIGradient")

loader.Name = "loader"
loader.Parent = game.CoreGui
loader.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

main.Name = "main"
main.Parent = loader
main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
main.BorderColor3 = Color3.fromRGB(0, 0, 0)
main.Position = UDim2.new(0.553374231, -252, 0.42504409, -60) --UDim2.new(0.553374231, -200, 0.42504409, -92)
main.Size = UDim2.new(0, 313, 0, 268)
main.Active = true
main.Draggable = true

outline.Name = "outline"
outline.Parent = main
outline.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
outline.BorderColor3 = Color3.fromRGB(35, 35, 35)
outline.Position = UDim2.new(0, 1, 0, 1)
outline.Size = UDim2.new(1, -2, 1, -2)

inner.Name = "inner"
inner.Parent = outline
inner.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
inner.BorderColor3 = Color3.fromRGB(0, 0, 0)
inner.Position = UDim2.new(0, 1, 0, 1)
inner.Size = UDim2.new(1, -2, 1, -2)

upstuff.Name = "upstuff"
upstuff.Parent = inner
upstuff.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
upstuff.BorderSizePixel = 0
upstuff.Size = UDim2.new(1, 0, 0.125, 0)

name.Name = "name"
name.Parent = upstuff
name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
name.BackgroundTransparency = 1.000
name.Position = UDim2.new(0.0226537213, 0, 0.0303030312, 0)
name.Size = UDim2.new(0.249190941, 0, 1, 0)
name.Font = Enum.Font.Code
name.Text = "loader"
name.TextColor3 = Color3.fromRGB(210, 210, 210)
name.TextSize = 16.000
name.TextStrokeTransparency = 0.000
name.TextXAlignment = Enum.TextXAlignment.Left

divider.Name = "divider"
divider.Parent = upstuff
divider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
divider.BorderColor3 = Color3.fromRGB(0, 0, 0)
divider.Size = UDim2.new(1, 0, 0, 1)

blackdivider.Name = "blackdivider"
blackdivider.Parent = upstuff
blackdivider.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
blackdivider.BorderColor3 = Color3.fromRGB(0, 0, 0)
blackdivider.Position = UDim2.new(-4.65661287e-10, 0, 1, 0)
blackdivider.Size = UDim2.new(1, 0, 0, 1)

group1.Name = "group1"
group1.Parent = inner
group1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
group1.BorderColor3 = Color3.fromRGB(0, 0, 0)
group1.Position = UDim2.new(0.0250000004, 0, 0.170000002, 0)
group1.Size = UDim2.new(0.949999988, 0, 0.800000012, 0)

infogroup.Name = "infogroup"
infogroup.Parent = group1
infogroup.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
infogroup.BorderColor3 = Color3.fromRGB(35, 35, 35)
infogroup.Position = UDim2.new(0, 1, 0, 1)
infogroup.Size = UDim2.new(1, -2, 1, -2)

infogroupmain.Name = "infogroupmain"
infogroupmain.Parent = infogroup
infogroupmain.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
infogroupmain.BorderColor3 = Color3.fromRGB(0, 0, 0)
infogroupmain.Position = UDim2.new(0, 1, 0, 1)
infogroupmain.Size = UDim2.new(1, -2, 1, -2)

infolabel.Name = "infolabel"
infolabel.Parent = infogroupmain
infolabel.BackgroundTransparency = 1.000
infolabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
infolabel.BorderSizePixel = 2
infolabel.Position = UDim2.new(0, 11, 0, 6)
infolabel.Size = UDim2.new(0.350716531, -12, 0, 18)
infolabel.Font = Enum.Font.Code
infolabel.Text = "info"
infolabel.TextColor3 = Color3.fromRGB(210, 210, 210)
infolabel.TextSize = 15.000
infolabel.TextStrokeTransparency = 0.000
infolabel.TextXAlignment = Enum.TextXAlignment.Left

cbimage.Name = "cbimage"
cbimage.Parent = infogroupmain
cbimage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
cbimage.BorderColor3 = Color3.fromRGB(0, 0, 0)
cbimage.BorderSizePixel = 2
cbimage.Position = UDim2.new(0.0379899889, 0, 0.144787654, 0)
cbimage.Size = UDim2.new(0, 100, 0, 100)
cbimage.Image = "rbxassetid://7885626884"

welcome.Name = "welcome"
welcome.Parent = infogroupmain
welcome.BackgroundTransparency = 1.000
welcome.Position = UDim2.new(0, 120, 0, 30)
welcome.Size = UDim2.new(0.582110107, -12, 0, 18)
welcome.Font = Enum.Font.Code
welcome.Text = "hi, "..game.Players.LocalPlayer.Name
welcome.TextColor3 = Color3.fromRGB(210, 210, 210)
welcome.TextSize = 15.000
welcome.TextStrokeTransparency = 0.000
welcome.TextXAlignment = Enum.TextXAlignment.Left

gamelabel.Name = "gamelabel"
gamelabel.Parent = infogroupmain
gamelabel.BackgroundTransparency = 1.000
gamelabel.Position = UDim2.new(0, 120, 0, 48)
gamelabel.Size = UDim2.new(0.582110107, -12, 0, 18)
gamelabel.Font = Enum.Font.Code
gamelabel.Text = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
gamelabel.TextColor3 = Color3.fromRGB(210, 210, 210)
gamelabel.TextSize = 15.000
gamelabel.TextStrokeTransparency = 0.000
gamelabel.TextXAlignment = Enum.TextXAlignment.Left

version.Name = "version"
version.Parent = infogroupmain
version.BackgroundTransparency = 1.000
version.Position = UDim2.new(0, 120, 0, 66)
version.Size = UDim2.new(0.582110107, -12, 0, 18)
version.Font = Enum.Font.Code
version.Text = "ver: 0.86"
version.TextColor3 = Color3.fromRGB(210, 210, 210)
version.TextSize = 15.000
version.TextStrokeTransparency = 0.000
version.TextXAlignment = Enum.TextXAlignment.Left

updated.Name = "updated"
updated.Parent = infogroupmain
updated.BackgroundTransparency = 1.000
updated.Position = UDim2.new(0, 120, 0, 84)
updated.Size = UDim2.new(0.582110107, -12, 0, 18)
updated.Font = Enum.Font.Code
updated.Text = "updated: 29/01/23"
updated.TextColor3 = Color3.fromRGB(210, 210, 210)
updated.TextSize = 15.000
updated.TextStrokeTransparency = 0.000
updated.TextXAlignment = Enum.TextXAlignment.Left

status.Name = "status"
status.Parent = infogroupmain
status.BackgroundTransparency = 1.000
status.Position = UDim2.new(0, 120, 0, 102)
status.Size = UDim2.new(0.582110107, -12, 0, 18)
status.Font = Enum.Font.Code
status.Text = "status: works"
status.TextColor3 = Color3.fromRGB(210, 210, 210)
status.TextSize = 15.000
status.TextStrokeTransparency = 0.000
status.TextXAlignment = Enum.TextXAlignment.Left

infodivider.Name = "infodivider"
infodivider.Parent = infogroupmain
infodivider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
infodivider.BorderColor3 = Color3.fromRGB(0, 0, 0)
infodivider.Position = UDim2.new(0.00495079346, 0, -0.0008482915, 0)
infodivider.Size = UDim2.new(0.995049119, 0, 0, 1)

optionsgroup.Name = "optionsgroup"
optionsgroup.Parent = group1
optionsgroup.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
optionsgroup.BorderColor3 = Color3.fromRGB(35, 35, 35)
optionsgroup.Position = UDim2.new(0, 13, 0, 142)
optionsgroup.Size = UDim2.new(0.911429048, -2, 0.24737066, -2)

optionsgroupmain.Name = "optionsgroupmain"
optionsgroupmain.Parent = optionsgroup
optionsgroupmain.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
optionsgroupmain.BorderColor3 = Color3.fromRGB(0, 0, 0)
optionsgroupmain.Position = UDim2.new(-1.14922159e-07, 0, 0, 0)
optionsgroupmain.Size = UDim2.new(1.00753152, -2, 1.17912352, -2)

optionsdivider.Name = "optionsdivider"
optionsdivider.Parent = optionsgroupmain
optionsdivider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
optionsdivider.BorderColor3 = Color3.fromRGB(0, 0, 0)
optionsdivider.Position = UDim2.new(0, 0, -0.00299979653, 0)
optionsdivider.Size = UDim2.new(1.00004923, 0, 0, 1)

optionslabel.Name = "optionslabel"
optionslabel.Parent = optionsdivider
optionslabel.BackgroundTransparency = 1.000
optionslabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
optionslabel.BorderSizePixel = 2
optionslabel.Position = UDim2.new(0, 9, 0, 1)
optionslabel.Size = UDim2.new(0.350716531, -12, 0, 18)
optionslabel.Font = Enum.Font.Code
optionslabel.Text = "options"
optionslabel.TextColor3 = Color3.fromRGB(210, 210, 210)
optionslabel.TextSize = 15.000
optionslabel.TextStrokeTransparency = 0.000
optionslabel.TextXAlignment = Enum.TextXAlignment.Left

load.Name = "load"
load.Parent = optionsdivider
load.BackgroundTransparency = 1.000
load.LayoutOrder = 1
load.Position = UDim2.new(0.0338902585, 0, 51, -27)
load.Size = UDim2.new(0.42899999, 0, 0, 26)
load.ZIndex = 0

loadlabel.Name = "loadlabel"
loadlabel.Parent = load
loadlabel.AnchorPoint = Vector2.new(0.5, 1)
loadlabel.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
loadlabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
loadlabel.Position = UDim2.new(0.499768794, 0, 1, -5)
loadlabel.Size = UDim2.new(1.04346514, -12, 0, 18)
loadlabel.Font = Enum.Font.Code
loadlabel.Text = "load"
loadlabel.TextColor3 = Color3.fromRGB(255, 255, 255)
loadlabel.TextSize = 15.000

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(90, 90, 90))}
UIGradient.Rotation = 90
UIGradient.Parent = loadlabel

loadbutton.Name = "loadbutton"
loadbutton.Parent = load
loadbutton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
loadbutton.BackgroundTransparency = 0.990
loadbutton.BorderSizePixel = 0
loadbutton.Size = UDim2.new(0.992623329, 0, 1, 0)
loadbutton.Font = Enum.Font.SourceSans
loadbutton.Text = ""
loadbutton.TextColor3 = Color3.fromRGB(0, 0, 0)
loadbutton.TextSize = 14.000
loadbutton.MouseButton1Click:Connect(function()

task.wait(0.3)
game.CoreGui.loader:Destroy()

-- anti kick
hookfunction(game.Stats.GetMemoryUsageMbForTag, function()
  coroutine.yield()
end)

print("bloxware has loaded the anti-kick, enjoy")

getgenv().values = {}
library = {}
Signal = loadstring(game:HttpGet("https://raw.githubusercontent.com/Quenty/NevermoreEngine/version2/Modules/Shared/Events/Signal.lua"))()
local ConfigSave = Signal.new("ConfigSave")
local ConfigLoad = Signal.new("ConfigLoad")
txt = game:GetService("TextService")
TweenService = game:GetService("TweenService")
function library:Tween(...) TweenService:Create(...):Play() end
  cfglocation = "bloxware/configs/"
  makefolder("bloxware/configs")

  -- caching
  Vec2 = Vector2.new
  Vec3 = Vector3.new
  CF = CFrame.new
  INST = Instance.new
  COL3 = Color3.new
  COL3RGB = Color3.fromRGB
  COL3HSV = Color3.fromHSV
  CLAMP = math.clamp
  DEG = math.deg
  FLOOR = math.floor
  ACOS = math.acos
  RANDOM = math.random
  ATAN2 = math.atan2
  HUGE = math.huge
  RAD = math.rad
  MIN = math.min
  POW = math.pow
  UDIM2 = UDim2.new
  CFAngles = CFrame.Angles

  FIND = string.find
  LEN = string.len
  SUB = string.sub
  GSUB = string.gsub
  RAY = Ray.new

  INSERT = table.insert
  TBLFIND = table.find
  TBLREMOVE = table.remove
  TBLSORT = table.sort
  
  cwspammsg = {}
  spammessages = {}

  workspace.InterpolationThrottling = Enum.InterpolationThrottlingMode.Disabled

  function rgbtotbl(rgb)
    return {R = rgb.R, G = rgb.G, B = rgb.B}
  end
  function tbltorgb(tbl)
    return COL3(tbl.R, tbl.G, tbl.B)
  end
  local function deepCopy(original)
    local copy = {}
    for k, v in pairs(original) do
      if type(v) == "table" then
        v = deepCopy(v)
      end
      copy[k] = v
    end
    return copy
  end
  function library:ConfigFix(cfg)
    local copy = game:GetService("HttpService"):JSONDecode(readfile(cfglocation..cfg..".txt"))
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
    writefile(cfglocation..cfg..".txt", game:GetService("HttpService"):JSONEncode(copy))
  end
  function library:New(name)
    local menu = {}

    local salad = INST("ScreenGui")
    local Menu = INST("ImageLabel")
    local TextLabel = INST("TextLabel")
    local TabButtons = INST("Frame")
    local UIListLayout = INST("UIListLayout")
    local Tabs = INST("Frame")

    salad.Name = "bloxwaresaladtkshit"
    salad.ResetOnSpawn = false
    salad.ZIndexBehavior = "Global"
    salad.DisplayOrder = 420133769

    local UIScale = INST("UIScale")
    UIScale.Parent = salad

    function menu:SetScale(scale)
      UIScale.Scale = scale
    end

    local but = INST("TextButton")
    but.Modal = true
    but.Text = ""
    but.BackgroundTransparency = 1
    but.Parent = salad

    local cursor = INST("ImageLabel")
    cursor.Name = "cursor"
    cursor.Parent = salad
    cursor.BackgroundTransparency = 1
    cursor.Size = UDIM2(0,64,0,64)
    cursor.Image = "rbxassetid://7543116323"
    cursor.ZIndex = 1000
    cursor.ImageColor3 = COL3RGB(255,255,255)

    Players = game:GetService("Players")
    LocalPlayer = Players.LocalPlayer
    Mouse = LocalPlayer:GetMouse()

    game:GetService("RunService").RenderStepped:connect(function()
    cursor.Visible = salad.Enabled
    cursor.Position = UDIM2(0,Mouse.X-32,0,Mouse.Y-28)
    end)

    Menu.Name = "Menu"
    Menu.Parent = salad
    Menu.ImageColor3 = COL3RGB(30, 30, 30)
    Menu.Position = UDIM2(0.5, -300, 0.5, -300)
    Menu.Size = UDIM2(0, 600, 0, 680)
    Menu.Image = "rbxassetid://11331181899"
    Menu.BorderSizePixel = 0

    library.uiopen = true
    
    bloxwaremenu = {
      ['main'] = salad,
      ['menu'] = Menu
    }

    game:GetService("UserInputService").InputBegan:Connect(function(key)
    if key.KeyCode == Enum.KeyCode.Insert then
      salad.Enabled = not salad.Enabled
      library.uiopen = salad.Enabled
    end
    end)

    library.dragging = false
    do
      UserInputService = game:GetService("UserInputService")
      a = Menu
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
    TextLabel.BackgroundColor3 = COL3RGB(1, 1, 1)
    TextLabel.BackgroundTransparency = 1
    TextLabel.AnchorPoint = Vector2.new(0.5, 0)
    TextLabel.Position = UDIM2(0.5, 0, 0, 0)
    TextLabel.Size = UDIM2(0, 0, 0, 29)
    TextLabel.Size = UDIM2(0, txt:GetTextSize(name, 15, Enum.Font.Code, Vec2(700, TextLabel.AbsoluteSize.Y)).X, 0, 29)
    TextLabel.Font = Enum.Font.Code
    TextLabel.Text = name
    TextLabel.TextColor3 = COL3RGB(255, 255, 255)
    TextLabel.TextSize = 15.000
    TextLabel.TextXAlignment = Enum.TextXAlignment.Left

    TabButtons.Name = "TabButtons"
    TabButtons.Parent = Menu
    TabButtons.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TabButtons.BackgroundTransparency = 1
    TabButtons.Position = UDim2.new(0, 10, 0, 15)
    TabButtons.Size = UDim2.new(TextLabel.Size.X.Scale, 590-TextLabel.Size.X.Offset, 0, 49)

    UIListLayout.Parent = TabButtons
    UIListLayout.FillDirection = Enum.FillDirection.Horizontal
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center

    Tabs.Name = "Tabs"
    Tabs.Parent = Menu
    Tabs.BackgroundColor3 = COL3RGB(1, 1, 1)
    Tabs.BackgroundTransparency = 1.000
    Tabs.Position = UDIM2(0, 0, 0, 52)
    Tabs.Size = UDIM2(0, 600, 0, 568)

    first = true
    local currenttab

    function menu:Tab(text)
      local tabname
      tabname = text
      Tab = {}
      values[tabname] = {}

      local TextButton = INST("TextButton")
      TextButton.BackgroundColor3 = COL3RGB(255, 255, 255)
      TextButton.BackgroundTransparency = 1
      TextButton.Size = UDIM2(0, txt:GetTextSize(text, 15, Enum.Font.Code, Vec2(700,700)).X+12, 1, 0)
      TextButton.Font = Enum.Font.Code
      TextButton.Text = text
      TextButton.TextColor3 = COL3RGB(255, 255, 255)
      TextButton.TextSize = 15.000
      TextButton.Parent = TabButtons

      local TabGui = Instance.new("ScrollingFrame")
      local Left = INST("Frame")
      local UIListLayout = INST("UIListLayout")
      local Right = INST("Frame")
      local UIListLayout_2 = INST("UIListLayout")

      TabGui.Name = "TabGui"
      TabGui.Parent = Tabs
      TabGui.BackgroundColor3 = COL3RGB(255, 255, 255)
      TabGui.BackgroundTransparency = 1.000
      TabGui.CanvasSize = UDIM2(0, 0, 3, 0)
      TabGui.Size = UDIM2(1, 0, 1, 0)
      TabGui.Visible = false
      TabGui.ScrollBarThickness = 5

      Left.Name = "Left"
      Left.Parent = TabGui
      Left.BackgroundColor3 = COL3RGB(255, 255, 255)
      Left.BackgroundTransparency = 1.000
      Left.Position = UDIM2(0, 15, 0, 11)
      Left.Size = UDIM2(0, 279, 0, 543)

      UIListLayout.Parent = Left
      UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
      UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
      UIListLayout.Padding = UDim.new(0, 10)

      Right.Name = "Right"
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
          if v:IsA("TextButton") then
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


        local Section = INST("Frame")
        local SectionText = INST("TextLabel")
        local Inner = INST("Frame")
        local UIGradient = INST("UIGradient")
        local sectiontabs = INST("Frame")
        local UIListLayout_2 = INST("UIListLayout")

        Section.Name = "Section"
        Section.Parent = TabGui[side]
        Section.BackgroundColor3 = COL3RGB(1, 1, 1)
        Section.BorderColor3 = COL3RGB(30, 30, 30)
        Section.BorderSizePixel = 1
        Section.Size = UDIM2(1, 0, 0, 33)

        SectionText.Name = "SectionText"
        SectionText.Parent = Section
        SectionText.BackgroundColor3 = COL3RGB(255, 255, 255)
        SectionText.BackgroundTransparency = 1.000
        SectionText.Position = UDIM2(0, 0, 0, -12)
        SectionText.Size = UDIM2(0, 280, 0, 19)
        SectionText.ZIndex = 2
        SectionText.Font = Enum.Font.Code
        SectionText.Text = text
        SectionText.TextStrokeTransparency = 0
        SectionText.TextColor3 = COL3RGB(255, 255, 255)
        SectionText.TextSize = 15.000
        SectionText.TextXAlignment = Enum.TextXAlignment.Center

        Inner.Name = "Inner"
        Inner.Parent = Section
        Inner.BackgroundColor3 = COL3RGB(255, 255, 255)
        Inner.BorderColor3 = COL3RGB(0, 0, 0)
        Inner.BorderSizePixel = 1
        Inner.Position = UDIM2(0, 1, 0, 1)
        Inner.Size = UDIM2(1, -2, 1, -3)

        UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(40, 40, 40)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(25, 25, 25))}
        UIGradient.Rotation = 90
        UIGradient.Parent = Inner

        sectiontabs.Name = "sectiontabs"
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

          local tab1 = INST("Frame")
          local UIPadding = INST("UIPadding")
          local UIListLayout = INST("UIListLayout")
          local TextButton = INST("TextButton")

          tab1.Name = text
          tab1.Parent = Inner
          tab1.BackgroundColor3 = COL3RGB(1, 1, 1)
          tab1.BackgroundTransparency = 1.000
          tab1.BorderColor3 = COL3RGB(30, 30, 30)
          tab1.BorderSizePixel = 1
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
          TextButton.Size = UDIM2(0, txt:GetTextSize(text, 14, Enum.Font.Code, Vec2(700,700)).X + 2, 1, 0)
          TextButton.Font = Enum.Font.Code
          TextButton.Text = text
          TextButton.TextColor3 = COL3RGB(200, 200, 200)
          TextButton.TextSize = 14.000
          TextButton.Name = text

          TextButton.MouseButton1Down:Connect(function()
          for i,v in pairs(Inner:GetChildren()) do
			if v:IsA("Frame") then
				v.Visible = false
			end
		  end
          for i,v in pairs(sectiontabs:GetChildren()) do
            if v:IsA("TextButton") then
              library:Tween(v, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(200, 200, 200)})
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

            if type == "Jumbobox" then
              tabsize = tabsize + UDIM2(0,0,0, 39)
              Element.value = {Jumbobox = {}}
              data.options = data.options or {}

              local Dropdown = INST("Frame")
              local Button = INST("TextButton")
              local TextLabel = INST("TextLabel")
              local Drop = INST("ScrollingFrame")
              local Button_2 = INST("TextButton")
              local TextLabel_2 = INST("TextLabel")
              local UIListLayout = INST("UIListLayout")
              local ImageLabel = INST("ImageLabel")
              local TextLabel_3 = INST("TextLabel")

              Dropdown.Name = "Dropdown"
              Dropdown.Parent = tab1
              Dropdown.BackgroundColor3 = COL3RGB(255, 255, 255)
              Dropdown.BackgroundTransparency = 1.000
              Dropdown.Position = UDIM2(0, 0, 0.255102038, 0)
              Dropdown.Size = UDIM2(1, 0, 0, 39)

              Button.Name = "Button"
              Button.Parent = Dropdown
              Button.BackgroundColor3 = COL3RGB(25, 25, 25)
              Button.BorderColor3 = COL3RGB(0, 0, 0)
              Button.BorderSizePixel = 1
              Button.Position = UDIM2(0, 30, 0, 16)
              Button.Size = UDIM2(0, 175, 0, 17)
              Button.AutoButtonColor = false
              Button.Font = Enum.Font.SourceSans
              Button.Text = ""
              Button.TextColor3 = COL3RGB(0, 0, 0)
              Button.TextSize = 14.000

              TextLabel.Parent = Button
              TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)
              TextLabel.BackgroundTransparency = 1.000
              TextLabel.BorderColor3 = COL3RGB(0, 0, 0)
              TextLabel.Position = UDIM2(0, 5, 0, 0)
              TextLabel.Size = UDIM2(-0.21714285, 208, 1, 0)
              TextLabel.Font = Enum.Font.Code
              TextLabel.Text = "..."
              TextLabel.TextColor3 = COL3RGB(200, 200, 200)
              TextLabel.TextSize = 14.000
              TextLabel.TextXAlignment = Enum.TextXAlignment.Left

              local abcd = TextLabel

              Drop.Name = "Drop"
              Drop.Parent = Button
              Drop.Active = true
              Drop.BackgroundColor3 = COL3RGB(25, 25, 25)
              Drop.BorderColor3 = COL3RGB(0, 0, 0)
              Drop.BorderSizePixel = 1
              Drop.Position = UDIM2(0, 0, 1, 1)
              Drop.Size = UDIM2(1, 0, 0, 20)
              Drop.Visible = false
              Drop.BottomImage = "http://www.roblox.com/asset/?id=175158447" 
              Drop.CanvasSize = UDIM2(1, 1, 1, 1)
              Drop.ScrollBarThickness = 10
              Drop.TopImage = "http://www.roblox.com/asset/?id=175158447" 
              Drop.MidImage = "http://www.roblox.com/asset/?id=175158447" 
              Drop.AutomaticCanvasSize = "Y"
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
                local str = ""


                if #old == 0 then
                  str = "..."
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
                            str = str..",  ..."
                          end
                        else
                          str = str..",  "..v
                        end
                      end
                    end
                  end
                end

                abcd.Text = str
              end
              for i,v in ipairs(data.options) do
                do
                  local Button = INST("TextButton")
                  local TextLabel = INST("TextLabel")

                  Button.Name = v
                  Button.Parent = Drop
                  Button.BackgroundColor3 = COL3RGB(1, 1, 1)
                  Button.BorderColor3 = COL3RGB(0, 0, 0)
                  Button.Position = UDIM2(0, 30, 0, 16)
                  Button.Size = UDIM2(0, 175, 0, 17)
                  Button.AutoButtonColor = false
                  Button.Font = Enum.Font.SourceSans
                  Button.Text = ""
                  Button.TextColor3 = COL3RGB(0, 0, 0)
                  Button.TextSize = 14.000
                  Button.BorderSizePixel = 1
                  Button.ZIndex = 6

                  TextLabel.Parent = Button
                  TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)
                  TextLabel.BackgroundTransparency = 1.000
                  TextLabel.BorderColor3 = COL3RGB(25, 25, 25)
                  TextLabel.Position = UDIM2(0, 5, 0, -1)
                  TextLabel.Size = UDIM2(-0.21714285, 208, 1, 0)
                  TextLabel.Font = Enum.Font.Code
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
                    library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})
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
                  if v.Name ~= "UIListLayout" then
                    if TBLFIND(val.Jumbobox, v.Name) then
                      v.TextLabel.TextColor3 = COL3RGB(255, 255, 255)
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
              ImageLabel.Image = "http://www.roblox.com/asset/?id=6724771531"

              TextLabel_3.Parent = Dropdown
              TextLabel_3.BackgroundColor3 = COL3RGB(200, 200, 200)
              TextLabel_3.BackgroundTransparency = 1.000
              TextLabel_3.Position = UDIM2(0, 32, 0, -1)
              TextLabel_3.Size = UDIM2(0.111913361, 208, 0.382215232, 0)
              TextLabel_3.Font = Enum.Font.Code
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
              game:GetService("UserInputService").InputBegan:Connect(function(input)
              if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.MouseButton2 then
                if Drop.Visible == true and not indrop and not ind then
                  Drop.Visible = false
                  Drop.CanvasPosition = Vec2(0,0)
                end
              end
              end)
            elseif type == "TextBox" then

            elseif type == "ToggleKeybind" then
              tabsize = tabsize + UDIM2(0,0,0,16)
              Element.value = {Toggle = data.default and data.default.Toggle or false, Key, Type = "Always", Active = true}

              local Toggle = INST("Frame")
              local Button = INST("TextButton")
              local Color = INST("Frame")
              local TextLabel = INST("TextLabel")

              Toggle.Name = "Toggle"
              Toggle.Parent = tab1
              Toggle.BackgroundColor3 = COL3RGB(255, 255, 255)
              Toggle.BackgroundTransparency = 1.000
              Toggle.Size = UDIM2(1, 0, 0, 15)

              Button.Name = "Button"
              Button.Parent = Toggle
              Button.BackgroundColor3 = COL3RGB(255, 255, 255)
              Button.BackgroundTransparency = 1.000
              Button.Size = UDIM2(1, 0, 1, 0)
              Button.Font = Enum.Font.SourceSans
              Button.Text = ""
              Button.TextColor3 = COL3RGB(0, 0, 0)
              Button.TextSize = 14.000

              Color.Name = "Color"
              Color.Parent = Button
              Color.BackgroundColor3 = COL3RGB(255, 255, 255)
              Color.BorderColor3 = COL3RGB(30, 30, 30)
              Color.Position = UDIM2(0, 15, 0.5, -5)
              Color.Size = UDIM2(0, 8, 0, 8)
              local binding = false
              TextLabel.Parent = Button
              TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)
              TextLabel.BackgroundTransparency = 1.000
              TextLabel.Position = UDIM2(0, 32, 0, -1)
              TextLabel.Size = UDIM2(0.111913361, 208, 1, 0)
              TextLabel.Font = Enum.Font.Code
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
                  tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = COL3RGB(1, 1, 1)})
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
                local Keybind = INST("TextButton")
                local Frame = INST("Frame")
                local Always = INST("TextButton")
                local UIListLayout = INST("UIListLayout")
                local Hold = INST("TextButton")
                local Toggle = INST("TextButton")

                Keybind.Name = "Keybind"
                Keybind.Parent = Button
                Keybind.BackgroundColor3 = COL3RGB(1, 1, 1)
                Keybind.BorderColor3 = COL3RGB(30, 30, 30)
                Keybind.Position = UDIM2(0, 270, 0.5, -6)
                Keybind.Text = "None"
                Keybind.Size = UDIM2(0, 43, 0, 12)
                Keybind.Size = UDIM2(0,txt:GetTextSize("None", 14, Enum.Font.Code, Vec2(700, 12)).X + 5,0, 12)
                Keybind.AutoButtonColor = false
                Keybind.Font = Enum.Font.Code
                Keybind.TextColor3 = COL3RGB(200, 200, 200)
                Keybind.TextSize = 14.000
                Keybind.AnchorPoint = Vec2(1,0)
                Keybind.ZIndex = 3

                Frame.Parent = Keybind
                Frame.BackgroundColor3 = COL3RGB(1, 1, 1)
                Frame.BorderColor3 = COL3RGB(30, 30, 30)
                Frame.Position = UDIM2(1, -49, 0, 1)
                Frame.Size = UDIM2(0, 49, 0, 49)
                Frame.Visible = false
                Frame.ZIndex = 3

                Always.Name = "Always"
                Always.Parent = Frame
                Always.BackgroundColor3 = COL3RGB(1, 1, 1)
                Always.BackgroundTransparency = 1.000
                Always.BorderColor3 = COL3RGB(30, 30, 30)
                Always.Position = UDIM2(-3.03289485, 231, 0.115384616, -6)
                Always.Size = UDIM2(1, 0, 0, 16)
                Always.AutoButtonColor = false
                Always.Font = Enum.Font.SourceSansBold
                Always.Text = "Always"
                Always.TextColor3 = COL3RGB(255, 255, 255)
                Always.TextSize = 14.000
                Always.ZIndex = 3

                UIListLayout.Parent = Frame
                UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

                Hold.Name = "Hold"
                Hold.Parent = Frame
                Hold.BackgroundColor3 = COL3RGB(1, 1, 1)
                Hold.BackgroundTransparency = 1.000
                Hold.BorderColor3 = COL3RGB(30, 30, 30)
                Hold.Position = UDIM2(-3.03289485, 231, 0.115384616, -6)
                Hold.Size = UDIM2(1, 0, 0, 16)
                Hold.AutoButtonColor = false
                Hold.Font = Enum.Font.Code
                Hold.Text = "Hold"
                Hold.TextColor3 = COL3RGB(200, 200, 200)
                Hold.TextSize = 14.000
                Hold.ZIndex = 3

                Toggle.Name = "Toggle"
                Toggle.Parent = Frame
                Toggle.BackgroundColor3 = COL3RGB(1, 1, 1)
                Toggle.BackgroundTransparency = 1.000
                Toggle.BorderColor3 = COL3RGB(30, 30, 30)
                Toggle.Position = UDIM2(-3.03289485, 231, 0.115384616, -6)
                Toggle.Size = UDIM2(1, 0, 0, 16)
                Toggle.AutoButtonColor = false
                Toggle.Font = Enum.Font.Code
                Toggle.Text = "Toggle"
                Toggle.TextColor3 = COL3RGB(200, 200, 200)
                Toggle.TextSize = 14.000
                Toggle.ZIndex = 3

                for _,button in pairs(Frame:GetChildren()) do
                  if button:IsA("TextButton") then
                    button.MouseButton1Down:Connect(function()
                    Element.value.Type = button.Text
                    Frame.Visible = false
                    Element.value.Active = Element.value.Type == "Always" and true or false
                    if Element.value.Type == "Always" then
                      keybindremove(text)
                    end
                    for _,button in pairs(Frame:GetChildren()) do
                      if button:IsA("TextButton") and button.Text ~= Element.value.Type then
                        button.Font = Enum.Font.Code
                        library:Tween(button, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(200,200,200)})
                      end
                    end
                    button.Font = Enum.Font.SourceSansBold
                    button.TextColor3 = COL3RGB(255, 255, 255)
                    values[tabname][sectorname][tabtext][text] = Element.value
                    callback(Element.value)
                    end)
                    button.MouseEnter:Connect(function()
                    if Element.value.Type ~= button.Text then
                      library:Tween(button, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})
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
                  Keybind.Text = "..."
                  Keybind.Size = UDIM2(0,txt:GetTextSize("...", 14, Enum.Font.Code, Vec2(700, 12)).X + 4,0, 12)
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
                game:GetService("UserInputService").InputBegan:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.MouseButton2 and not binding then
                  if Frame.Visible == true and not InFrame and not InFrame2 then
                    Frame.Visible = false
                  end
                end
                if binding then
                  binding = false
                  Keybind.Text = input.KeyCode.Name ~= "Unknown" and input.KeyCode.Name:upper() or input.UserInputType.Name:upper()
                  Keybind.Size = UDIM2(0,txt:GetTextSize(Keybind.Text, 14, Enum.Font.Code, Vec2(700, 12)).X + 5,0, 12)
                  Element.value.Key = input.KeyCode.Name ~= "Unknown" and input.KeyCode.Name or input.UserInputType.Name
                  if input.KeyCode.Name == "Backspace" then
                    Keybind.Text = "None"
                    Keybind.Size = UDIM2(0,txt:GetTextSize(Keybind.Text, 14, Enum.Font.Code, Vec2(700, 12)).X + 4,0, 12)
                    Element.value.Key = nil
                  end
                else
                  if Element.value.Key ~= nil then
                    if FIND(Element.value.Key, "Mouse") then
                      if input.UserInputType == Enum.UserInputType[Element.value.Key] then
                        if Element.value.Type == "Hold" then
                          Element.value.Active = true
                          if Element.value.Active and Element.value.Toggle then
                            keybindadd(text)
                          else
                            keybindremove(text)
                          end
                        elseif Element.value.Type == "Toggle" then
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
                        if Element.value.Type == "Hold" then
                          Element.value.Active = true
                          if Element.value.Active and Element.value.Toggle then
                            keybindadd(text)
                          else
                            keybindremove(text)
                          end
                        elseif Element.value.Type == "Toggle" then
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
                game:GetService("UserInputService").InputEnded:Connect(function(input)
                if Element.value.Key ~= nil then
                  if FIND(Element.value.Key, "Mouse") then
                    if input.UserInputType == Enum.UserInputType[Element.value.Key] then
                      if Element.value.Type == "Hold" then
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
                      if Element.value.Type == "Hold" then
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
            elseif type == "Toggle" then
              tabsize = tabsize + UDIM2(0,0,0,16)
              Element.value = {Toggle = data.default and data.default.Toggle or false}

              local Toggle = INST("Frame")
              local Button = INST("TextButton")
              local Color = INST("Frame")
              local TextLabel = INST("TextLabel")

              Toggle.Name = "Toggle"
              Toggle.Parent = tab1
              Toggle.BackgroundColor3 = COL3RGB(255, 255, 255)
              Toggle.BackgroundTransparency = 1.000
              Toggle.Size = UDIM2(1, 0, 0, 15)

              Button.Name = "Button"
              Button.Parent = Toggle
              Button.BackgroundColor3 = COL3RGB(255, 255, 255)
              Button.BackgroundTransparency = 1.000
              Button.Size = UDIM2(1, 0, 1, 0)
              Button.Font = Enum.Font.SourceSans
              Button.Text = ""
              Button.TextColor3 = COL3RGB(0, 0, 0)
              Button.TextSize = 14.000

              Color.Name = "Color"
              Color.Parent = Button
              Color.BackgroundColor3 = COL3RGB(1, 1, 1)
              Color.BorderColor3 = COL3RGB(30, 30, 30)
              Color.Position = UDIM2(0, 15, 0.5, -5)
              Color.Size = UDIM2(0, 8, 0, 8)

              TextLabel.Parent = Button
              TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)
              TextLabel.BackgroundTransparency = 1.000
              TextLabel.Position = UDIM2(0, 32, 0, -1)
              TextLabel.Size = UDIM2(0.111913361, 208, 1, 0)
              TextLabel.Font = Enum.Font.Code
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
                  tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = COL3RGB(1, 1, 1)})
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
            elseif type == "ToggleColor" then
              tabsize = tabsize + UDIM2(0,0,0,16)
              Element.value = {Toggle = data.default and data.default.Toggle or false, Color = data.default and data.default.Color or COL3RGB(255,255,255)}

              local Toggle = INST("Frame")
              local Button = INST("TextButton")
              local Color = INST("Frame")
              local TextLabel = INST("TextLabel")

              Toggle.Name = "Toggle"
              Toggle.Parent = tab1
              Toggle.BackgroundColor3 = COL3RGB(255, 255, 255)
              Toggle.BackgroundTransparency = 1.000
              Toggle.Size = UDIM2(1, 0, 0, 15)

              Button.Name = "Button"
              Button.Parent = Toggle
              Button.BackgroundColor3 = COL3RGB(255, 255, 255)
              Button.BackgroundTransparency = 1.000
              Button.Size = UDIM2(1, 0, 1, 0)
              Button.Font = Enum.Font.SourceSans
              Button.Text = ""
              Button.TextColor3 = COL3RGB(0, 0, 0)
              Button.TextSize = 14.000

              Color.Name = "Color"
              Color.Parent = Button
              Color.BackgroundColor3 = COL3RGB(1, 1, 1)
              Color.BorderColor3 = COL3RGB(30, 30, 30)
              Color.Position = UDIM2(0, 15, 0.5, -5)
              Color.Size = UDIM2(0, 8, 0, 8)

              TextLabel.Parent = Button
              TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)
              TextLabel.BackgroundTransparency = 1.000
              TextLabel.Position = UDIM2(0, 32, 0, -1)
              TextLabel.Size = UDIM2(0.111913361, 208, 1, 0)
              TextLabel.Font = Enum.Font.Code
              TextLabel.Text = text
              TextLabel.TextColor3 = COL3RGB(200, 200, 200)
              TextLabel.TextSize = 14.000
              TextLabel.TextXAlignment = Enum.TextXAlignment.Left

              local function update()
                if Element.value.Toggle then
                  tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = COL3RGB(255, 255, 255)})
                  library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})
                else
                  tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = COL3RGB(1, 1, 1)})
                  library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(200, 200, 200)})
                end
                values[tabname][sectorname][tabtext][text] = Element.value
                callback(Element.value)
              end

              local ColorH,ColorS,ColorV

              local ColorP = INST("TextButton")
              local Frame = INST("Frame")
              local Colorpick = INST("ImageButton")
              local ColorDrag = INST("Frame")
              local Huepick = INST("ImageButton")
              local Huedrag = INST("Frame")

              ColorP.Name = "ColorP"
              ColorP.Parent = Button
              ColorP.AnchorPoint = Vec2(1, 0)
              ColorP.BackgroundColor3 = COL3RGB(255, 255, 255)
              ColorP.BorderColor3 = COL3RGB(30, 30, 30)
              ColorP.Position = UDIM2(0, 270, 0.5, -4)
              ColorP.Size = UDIM2(0, 18, 0, 8)
              ColorP.AutoButtonColor = false
              ColorP.Font = Enum.Font.Code
              ColorP.Text = ""
              ColorP.TextColor3 = COL3RGB(200, 200, 200)
              ColorP.TextSize = 14.000

              Frame.Parent = ColorP
              Frame.BackgroundColor3 = COL3RGB(1, 1, 1)
              Frame.BorderColor3 = COL3RGB(30, 30, 30)
              Frame.Position = UDIM2(-0.666666687, -170, 1.375, 0)
              Frame.Size = UDIM2(0, 200, 0, 170)
              Frame.Visible = false
              Frame.ZIndex = 3

              Colorpick.Name = "Colorpick"
              Colorpick.Parent = Frame
              Colorpick.BackgroundColor3 = COL3RGB(255, 255, 255)
              Colorpick.BorderColor3 = COL3RGB(30, 30, 30)
              Colorpick.ClipsDescendants = false
              Colorpick.Position = UDIM2(0, 40, 0, 10)
              Colorpick.Size = UDIM2(0, 150, 0, 150)
              Colorpick.AutoButtonColor = false
              Colorpick.Image = "rbxassetid://4155801252"
              Colorpick.ImageColor3 = COL3RGB(255, 255, 255)
              Colorpick.ZIndex = 3

              ColorDrag.Name = "ColorDrag"
              ColorDrag.Parent = Colorpick
              ColorDrag.AnchorPoint = Vec2(0.5, 0.5)
              ColorDrag.BackgroundColor3 = COL3RGB(255, 255, 255)
              ColorDrag.BorderColor3 = COL3RGB(30, 30, 30)
              ColorDrag.Size = UDIM2(0, 4, 0, 4)
              ColorDrag.ZIndex = 3

              Huepick.Name = "Huepick"
              Huepick.Parent = Frame
              Huepick.BackgroundColor3 = COL3RGB(255, 255, 255)
              Huepick.BorderColor3 = COL3RGB(30, 30, 30)
              Huepick.ClipsDescendants = false
              Huepick.Position = UDIM2(0, 10, 0, 10)
              Huepick.Size = UDIM2(0, 20, 0, 150)
              Huepick.AutoButtonColor = false
              Huepick.Image = "rbxassetid://3641079629"
              Huepick.ImageColor3 = COL3RGB(255, 255, 255)
              Huepick.ImageTransparency = 1
              Huepick.BackgroundTransparency = 0
              Huepick.ZIndex = 3

              local HueFrameGradient = INST("UIGradient")
              HueFrameGradient.Rotation = 90
              HueFrameGradient.Name = "HueFrameGradient"
              HueFrameGradient.Parent = Huepick
              HueFrameGradient.Color = ColorSequence.new {
                ColorSequenceKeypoint.new(0.00, COL3RGB(255, 0, 0)),
                ColorSequenceKeypoint.new(0.17, COL3RGB(255, 0, 255)),
                ColorSequenceKeypoint.new(0.33, COL3RGB(0, 0, 255)),
                ColorSequenceKeypoint.new(0.50, COL3RGB(0, 255, 255)),
                ColorSequenceKeypoint.new(0.67, COL3RGB(0, 255, 0)),
                ColorSequenceKeypoint.new(0.83, COL3RGB(255, 255, 255)),
                ColorSequenceKeypoint.new(1.00, COL3RGB(255, 0, 0))
              }

              Huedrag.Name = "Huedrag"
              Huedrag.Parent = Huepick
              Huedrag.BackgroundColor3 = COL3RGB(255, 255, 255)
              Huedrag.BorderColor3 = COL3RGB(30, 30, 30)
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
              game:GetService("UserInputService").InputBegan:Connect(function(input)
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
              releaseconnection = game:GetService("UserInputService").InputEnded:Connect(function(Mouse)
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
              releaseconnection = game:GetService("UserInputService").InputEnded:Connect(function(Mouse)
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
            elseif type == "ToggleTrans" then
              tabsize = tabsize + UDIM2(0,0,0,16)
              Element.value = {Toggle = data.default and data.default.Toggle or false, Color = data.default and data.default.Color or COL3RGB(255,255,255), Transparency = data.default and data.default.Transparency or 0}

              local Toggle = INST("Frame")
              local Button = INST("TextButton")
              local Color = INST("Frame")
              local TextLabel = INST("TextLabel")

              Toggle.Name = "Toggle"
              Toggle.Parent = tab1
              Toggle.BackgroundColor3 = COL3RGB(255, 255, 255)
              Toggle.BackgroundTransparency = 1.000
              Toggle.Size = UDIM2(1, 0, 0, 15)

              Button.Name = "Button"
              Button.Parent = Toggle
              Button.BackgroundColor3 = COL3RGB(255, 255, 255)
              Button.BackgroundTransparency = 1.000
              Button.Size = UDIM2(1, 0, 1, 0)
              Button.Font = Enum.Font.SourceSans
              Button.Text = ""
              Button.TextColor3 = COL3RGB(0, 0, 0)
              Button.TextSize = 14.000

              Color.Name = "Color"
              Color.Parent = Button
              Color.BackgroundColor3 = COL3RGB(1, 1, 1)
              Color.BorderColor3 = COL3RGB(30, 30, 30)
              Color.Position = UDIM2(0, 15, 0.5, -5)
              Color.Size = UDIM2(0, 8, 0, 8)

              TextLabel.Parent = Button
              TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)
              TextLabel.BackgroundTransparency = 1.000
              TextLabel.Position = UDIM2(0, 32, 0, -1)
              TextLabel.Size = UDIM2(0.111913361, 208, 1, 0)
              TextLabel.Font = Enum.Font.Code
              TextLabel.Text = text
              TextLabel.TextColor3 = COL3RGB(200, 200, 200)
              TextLabel.TextSize = 14.000
              TextLabel.TextXAlignment = Enum.TextXAlignment.Left

              local function update()
                if Element.value.Toggle then
                  tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = COL3RGB(255, 255, 255)})
                  library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})
                else
                  tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = COL3RGB(1, 1, 1)})
                  library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(200, 200, 200)})
                end
                values[tabname][sectorname][tabtext][text] = Element.value
                callback(Element.value)
              end

              local ColorH,ColorS,ColorV

              local ColorP = INST("TextButton")
              local Frame = INST("Frame")
              local Colorpick = INST("ImageButton")
              local ColorDrag = INST("Frame")
              local Huepick = INST("ImageButton")
              local Huedrag = INST("Frame")

              ColorP.Name = "ColorP"
              ColorP.Parent = Button
              ColorP.AnchorPoint = Vec2(1, 0)
              ColorP.BackgroundColor3 = COL3RGB(255, 255, 255)
              ColorP.BorderColor3 = COL3RGB(30, 30, 30)
              ColorP.Position = UDIM2(0, 270, 0.5, -4)
              ColorP.Size = UDIM2(0, 18, 0, 8)
              ColorP.AutoButtonColor = false
              ColorP.Font = Enum.Font.Code
              ColorP.Text = ""
              ColorP.TextColor3 = COL3RGB(200, 200, 200)
              ColorP.TextSize = 14.000

              Frame.Parent = ColorP
              Frame.BackgroundColor3 = COL3RGB(1, 1, 1)
              Frame.BorderColor3 = COL3RGB(30, 30, 30)
              Frame.Position = UDIM2(-0.666666687, -170, 1.375, 0)
              Frame.Size = UDIM2(0, 200, 0, 190)
              Frame.Visible = false
              Frame.ZIndex = 3

              Colorpick.Name = "Colorpick"
              Colorpick.Parent = Frame
              Colorpick.BackgroundColor3 = COL3RGB(255, 255, 255)
              Colorpick.BorderColor3 = COL3RGB(30, 30, 30)
              Colorpick.ClipsDescendants = false
              Colorpick.Position = UDIM2(0, 40, 0, 10)
              Colorpick.Size = UDIM2(0, 150, 0, 150)
              Colorpick.AutoButtonColor = false
              Colorpick.Image = "rbxassetid://4155801252"
              Colorpick.ImageColor3 = COL3RGB(255, 255, 255)
              Colorpick.ZIndex = 3

              ColorDrag.Name = "ColorDrag"
              ColorDrag.Parent = Colorpick
              ColorDrag.AnchorPoint = Vec2(0.5, 0.5)
              ColorDrag.BackgroundColor3 = COL3RGB(255, 255, 255)
              ColorDrag.BorderColor3 = COL3RGB(25, 25, 25)
              ColorDrag.Size = UDIM2(0, 4, 0, 4)
              ColorDrag.ZIndex = 3

              Huepick.Name = "Huepick"
              Huepick.Parent = Frame
              Huepick.BackgroundColor3 = COL3RGB(255, 255, 255)
              Huepick.BorderColor3 = COL3RGB(30, 30, 30)
              Huepick.ClipsDescendants = true
              Huepick.Position = UDIM2(0, 10, 0, 10)
              Huepick.Size = UDIM2(0, 20, 0, 150)
              Huepick.AutoButtonColor = false
              Huepick.Image = "rbxassetid://3641079629"
              Huepick.ImageColor3 = COL3RGB(255, 255, 255)
              Huepick.ImageTransparency = 1
              Huepick.BackgroundTransparency = 0
              Huepick.ZIndex = 3

              local HueFrameGradient = INST("UIGradient")
              HueFrameGradient.Rotation = 90
              HueFrameGradient.Name = "HueFrameGradient"
              HueFrameGradient.Parent = Huepick
              HueFrameGradient.Color = ColorSequence.new {
                ColorSequenceKeypoint.new(0.00, COL3RGB(255, 0, 0)),
                ColorSequenceKeypoint.new(0.17, COL3RGB(255, 0, 255)),
                ColorSequenceKeypoint.new(0.33, COL3RGB(0, 0, 255)),
                ColorSequenceKeypoint.new(0.50, COL3RGB(0, 255, 255)),
                ColorSequenceKeypoint.new(0.67, COL3RGB(0, 255, 0)),
                ColorSequenceKeypoint.new(0.83, COL3RGB(255, 255, 255)),
                ColorSequenceKeypoint.new(1.00, COL3RGB(255, 0, 0))
              }

              Huedrag.Name = "Huedrag"
              Huedrag.Parent = Huepick
              Huedrag.BackgroundColor3 = COL3RGB(255, 255, 255)
              Huedrag.BorderColor3 = COL3RGB(30, 30, 30)
              Huedrag.Size = UDIM2(1, 0, 0, 2)
              Huedrag.ZIndex = 3

              local Transpick = INST("ImageButton")
              local Transcolor = INST("ImageLabel")
              local Transdrag = INST("Frame")

              Transpick.Name = "Transpick"
              Transpick.Parent = Frame
              Transpick.BackgroundColor3 = COL3RGB(255, 255, 255)
              Transpick.BorderColor3 = COL3RGB(30, 30, 30)
              Transpick.Position = UDIM2(0, 10, 0, 167)
              Transpick.Size = UDIM2(0, 180, 0, 15)
              Transpick.AutoButtonColor = false
              Transpick.Image = "rbxassetid://3887014957"
              Transpick.ScaleType = Enum.ScaleType.Tile
              Transpick.TileSize = UDIM2(0, 10, 0, 10)
              Transpick.ZIndex = 3

              Transcolor.Name = "Transcolor"
              Transcolor.Parent = Transpick
              Transcolor.BackgroundColor3 = COL3RGB(255, 255, 255)
              Transcolor.BackgroundTransparency = 1.000
              Transcolor.Size = UDIM2(1, 0, 1, 0)
              Transcolor.Image = "rbxassetid://3887017050"
              Transcolor.ImageColor3 = COL3RGB(255, 0, 4)
              Transcolor.ZIndex = 3

              Transdrag.Name = "Transdrag"
              Transdrag.Parent = Transcolor
              Transdrag.BackgroundColor3 = COL3RGB(255, 255, 255)
              Transdrag.BorderColor3 = COL3RGB(30, 30, 30)
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
              game:GetService("UserInputService").InputBegan:Connect(function(input)
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
              releaseconnection = game:GetService("UserInputService").InputEnded:Connect(function(Mouse)
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
              releaseconnection = game:GetService("UserInputService").InputEnded:Connect(function(Mouse)
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
              releaseconnection = game:GetService("UserInputService").InputEnded:Connect(function(Mouse)
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
            elseif type == "Dropdown" then
              tabsize = tabsize + UDIM2(0,0,0,39)
              Element.value = {Dropdown = data.options[1]}

              local Dropdown = INST("Frame")
              local Button = INST("TextButton")
              local TextLabel = INST("TextLabel")
              local Drop = INST("ScrollingFrame")
              local Button_2 = INST("TextButton")
              local TextLabel_2 = INST("TextLabel")
              local UIListLayout = INST("UIListLayout")
              local ImageLabel = INST("ImageLabel")
              local TextLabel_3 = INST("TextLabel")

              Dropdown.Name = "Dropdown"
              Dropdown.Parent = tab1
              Dropdown.BackgroundColor3 = COL3RGB(255, 255, 255)
              Dropdown.BackgroundTransparency = 1.000
              Dropdown.Position = UDIM2(0, 0, 0.255102038, 0)
              Dropdown.Size = UDIM2(1, 0, 0, 39)

              Button.Name = "Button"
              Button.Parent = Dropdown
              Button.BackgroundColor3 = COL3RGB(25, 25, 25)
              Button.BorderColor3 = COL3RGB(0, 0, 0)
              Button.BorderSizePixel = 1
              Button.Position = UDIM2(0, 30, 0, 16)
              Button.Size = UDIM2(0, 175, 0, 17)
              Button.AutoButtonColor = false
              Button.Font = Enum.Font.SourceSans
              Button.Text = ""
              Button.TextColor3 = COL3RGB(0, 0, 0)
              Button.TextSize = 14.000

              TextLabel.Parent = Button
              TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)
              TextLabel.BackgroundTransparency = 1.000
              TextLabel.BorderColor3 = COL3RGB(30, 30, 30)
              TextLabel.Position = UDIM2(0, 5, 0, 0)
              TextLabel.Size = UDIM2(-0.21714285, 208, 1, 0)
              TextLabel.Font = Enum.Font.Code
              TextLabel.Text = Element.value.Dropdown
              TextLabel.TextColor3 = COL3RGB(200, 200, 200)
              TextLabel.TextSize = 14.000
              TextLabel.TextXAlignment = Enum.TextXAlignment.Left

              local abcd = TextLabel

              Drop.Name = "Drop"
              Drop.Parent = Button
              Drop.Active = true
              Drop.BackgroundColor3 = COL3RGB(25, 25, 25)
              Drop.BorderColor3 = COL3RGB(0, 0, 0)
              Drop.BorderSizePixel = 1
              Drop.Position = UDIM2(0, 0, 1, 1)
              Drop.Size = UDIM2(1, 0, 0, 20)
              Drop.Visible = false
              Drop.BottomImage = "http://www.roblox.com/asset/?id=175158447" 
              Drop.CanvasSize = UDIM2(1, 1, 1, 1)
              Drop.ScrollBarThickness = 5
              Drop.MidImage = "http://www.roblox.com/asset/?id=175158447" 
              Drop.TopImage = "http://www.roblox.com/asset/?id=175158447" 
              Drop.AutomaticCanvasSize = "Y"
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
                  local Button = INST("TextButton")
                  local TextLabel = INST("TextLabel")

                  Button.Name = v
                  Button.Parent = Drop
                  Button.BackgroundColor3 = COL3RGB(0, 0, 0)
                  Button.BorderColor3 = COL3RGB(0, 0, 0)
                  Button.Position = UDIM2(0, 30, 0, 16)
                  Button.Size = UDIM2(0, 175, 0, 17)
                  Button.AutoButtonColor = false
                  Button.Font = Enum.Font.SourceSans
                  Button.Text = ""
                  Button.TextColor3 = COL3RGB(0, 0, 0)
                  Button.TextSize = 14.000
                  Button.BorderSizePixel = 1
                  Button.ZIndex = 6

                  TextLabel.Parent = Button
                  TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)
                  TextLabel.BackgroundTransparency = 1.000
                  TextLabel.BorderColor3 = COL3RGB(30, 30, 30)
                  TextLabel.Position = UDIM2(0, 5, 0, -1)
                  TextLabel.Size = UDIM2(-0.21714285, 208, 1, 0)
                  TextLabel.Font = Enum.Font.Code
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
              ImageLabel.Image = "http://www.roblox.com/asset/?id=6724771531"

              TextLabel_3.Parent = Dropdown
              TextLabel_3.BackgroundColor3 = COL3RGB(255, 255, 255)
              TextLabel_3.BackgroundTransparency = 1.000
              TextLabel_3.Position = UDIM2(0, 32, 0, -1)
              TextLabel_3.Size = UDIM2(0.111913361, 208, 0.382215232, 0)
              TextLabel_3.Font = Enum.Font.Code
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
              game:GetService("UserInputService").InputBegan:Connect(function(input)
              if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.MouseButton2 then
                if Drop.Visible == true and not indrop and not ind then
                  Drop.Visible = false
                  Drop.CanvasPosition = Vec2(0,0)
                end
              end
              end)
              values[tabname][sectorname][tabtext][text] = Element.value
            elseif type == "Slider" then

              tabsize = tabsize + UDIM2(0,0,0,25)

              local Slider = INST("Frame")
              local TextLabel = INST("TextLabel")
              local Button = INST("TextButton")
              local Frame = INST("Frame")
              local UIGradient = INST("UIGradient")
              local Value = INST("TextLabel")

              Slider.Name = "Slider"
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
              TextLabel.Font = Enum.Font.Code
              TextLabel.Text = text
              TextLabel.TextColor3 = COL3RGB(200, 200, 200)
              TextLabel.TextSize = 14.000
              TextLabel.TextXAlignment = Enum.TextXAlignment.Left

              Button.Name = "Button"
              Button.Parent = Slider
              Button.BackgroundColor3 = COL3RGB(1, 1, 1)
              Button.BorderColor3 = COL3RGB(0, 0, 0)
              Button.Position = UDIM2(0, 30, 0, 15)
              Button.Size = UDIM2(0, 175, 0, 11)
              Button.AutoButtonColor = false
              Button.Font = Enum.Font.SourceSans
              Button.Text = ""
              Button.TextColor3 = COL3RGB(0, 0, 0)
              Button.TextSize = 14.000

              Frame.Parent = Button
              Frame.BackgroundColor3 = COL3RGB(255, 255, 255)
              Frame.BorderSizePixel = 1
             Frame.Size = UDIM2(0.5, 0, 1, 0)

              UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, COL3RGB(255, 255, 255)), ColorSequenceKeypoint.new(1, COL3RGB(0, 0, 0))}
              UIGradient.Rotation = 90
              UIGradient.Parent = Frame

              Value.Name = "Value"
              Value.Parent = Slider
              Value.BackgroundColor3 = COL3RGB(255, 255, 255)
              Value.BackgroundTransparency = 1.000
              Value.Position = UDIM2(0, 150, 0, -1)
              Value.Size = UDIM2(0, 55, 0, 15)
              Value.Font = Enum.Font.Code
              Value.Text = "50"
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
              local uis = game:GetService("UserInputService")
              local mouse = game.Players.LocalPlayer:GetMouse()
              local val
              Button.MouseButton1Down:Connect(function()
              Frame.Size = UDIM2(0, CLAMP(mouse.X - Frame.AbsolutePosition.X, 0, 175), 0, 11)
              val = FLOOR((((tonumber(max) - tonumber(min)) / 175) * Frame.AbsoluteSize.X) + tonumber(min)) or 0
              Value.Text = val
              Element.value.Slider = val
              values[tabname][sectorname][tabtext][text] = Element.value
              callback(Element.value)
              moveconnection = mouse.Move:Connect(function()
              Frame.Size = UDIM2(0, CLAMP(mouse.X - Frame.AbsolutePosition.X, 0, 175), 0, 11)
              val = FLOOR((((tonumber(max) - tonumber(min)) / 175) * Frame.AbsoluteSize.X) + tonumber(min))
              Value.Text = val
              Element.value.Slider = val
              values[tabname][sectorname][tabtext][text] = Element.value
              callback(Element.value)
              end)
              releaseconnection = uis.InputEnded:Connect(function(Mouse)
              if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
                Frame.Size = UDIM2(0, CLAMP(mouse.X - Frame.AbsolutePosition.X, 0, 175), 0, 11)
                val = FLOOR((((tonumber(max) - tonumber(min)) / 175) * Frame.AbsoluteSize.X) + tonumber(min))
                values[tabname][sectorname][tabtext][text] = Element.value
                callback(Element.value)
                moveconnection:Disconnect()
                releaseconnection:Disconnect()
              end
              end)
              end)
            elseif type == "Button" then

              tabsize = tabsize + UDIM2(0,0,0,24)
              local Button = INST("Frame")
              local Button_2 = INST("TextButton")
              local TextLabel = INST("TextLabel")

              Button.Name = "Button"
              Button.Parent = tab1
              Button.BackgroundColor3 = COL3RGB(255, 255, 255)
              Button.BackgroundTransparency = 1.000
              Button.Position = UDIM2(0, 0, 0.236059487, 0)
              Button.Size = UDIM2(1, 0, 0, 24)

              Button_2.Name = "Button"
              Button_2.Parent = Button
              Button_2.BackgroundColor3 = COL3RGB(25, 25, 25)
              Button_2.BorderColor3 = COL3RGB(30, 30, 30)
              Button_2.Position = UDIM2(0, 30, 0.5, -9)
              Button_2.Size = UDIM2(0, 175, 0, 18)
              Button_2.AutoButtonColor = false
              Button_2.Font = Enum.Font.SourceSans
              Button_2.Text = ""
              Button_2.TextColor3 = COL3RGB(0, 0, 0)
              Button_2.TextSize = 14.000

              TextLabel.Parent = Button_2
              TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)
              TextLabel.BackgroundTransparency = 1.000
              TextLabel.BorderColor3 = COL3RGB(30, 30, 30)
              TextLabel.Size = UDIM2(1, 0, 1, 0)
              TextLabel.Font = Enum.Font.Code
              TextLabel.Text = text
              TextLabel.TextColor3 = COL3RGB(200, 200, 200)
              TextLabel.TextSize = 14.000

              function Element:SetValue()
              end

              Button_2.MouseButton1Down:Connect(function()
              TextLabel.TextColor3 = COL3RGB(255, 255, 255)
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
            game:GetService("RunService").RenderStepped:Wait()
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
        local Section = INST("Frame")
        local SectionText = INST("TextLabel")
        local Inner = INST("Frame")
        local UIGradient = INST("UIGradient")
        local UIListLayout = INST("UIListLayout")

        Section.Name = "Section"
        Section.Parent = TabGui[side]
        Section.BackgroundColor3 = COL3RGB(1, 1, 1)
        Section.BorderColor3 = COL3RGB(30, 30, 30)
        Section.BorderSizePixel = 1
        Section.Position = UDIM2(0.00358422939, 0, 0, 0)
        Section.Size = UDIM2(1, 0, 0, 22)

        SectionText.Name = "SectionText"
        SectionText.Parent = Section
        SectionText.BackgroundColor3 = COL3RGB(255, 255, 255)
        SectionText.BackgroundTransparency = 1.000
        SectionText.Position = UDIM2(0, 0, 0, -12)
        SectionText.Size = UDIM2(0, 280, 0, 19)
        SectionText.ZIndex = 2
        SectionText.Font = Enum.Font.Code
        SectionText.Text = text
        SectionText.TextColor3 = COL3RGB(255, 255, 255)
        SectionText.TextStrokeTransparency = 0
        SectionText.TextSize = 15.000
        SectionText.TextXAlignment = Enum.TextXAlignment.Center

        Inner.Name = "Inner"
        Inner.Parent = Section
        Inner.BackgroundColor3 = COL3RGB(255, 255, 255)
        Inner.BorderColor3 = COL3RGB(0, 0, 0)
        Inner.BorderSizePixel = 1
        Inner.Position = UDIM2(0, 1, 0, 1)
        Inner.Size = UDIM2(1, -2, 1, -2)

        UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(40, 40, 40)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(25, 25, 25))}
        UIGradient.Rotation = 90
        UIGradient.Parent = Inner

        local UIPadding = INST("UIPadding")

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
          if type == "ScrollDrop" then
            Section.Size = Section.Size + UDIM2(0,0,0,39)
            Element.value = {Scroll = {}, Dropdown = ""}

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

            local Dropdown = INST("Frame")
            local Button = INST("TextButton")
            local TextLabel = INST("TextLabel")
            local Drop = INST("ScrollingFrame")
            local Button_2 = INST("TextButton")
            local TextLabel_2 = INST("TextLabel")
            local UIListLayout = INST("UIListLayout")
            local ImageLabel = INST("ImageLabel")
            local TextLabel_3 = INST("TextLabel")

            Dropdown.Name = "Dropdown"
            Dropdown.Parent = Inner
            Dropdown.BackgroundColor3 = COL3RGB(255, 255, 255)
            Dropdown.BackgroundTransparency = 1.000
            Dropdown.Position = UDIM2(0, 0, 0, 0)
            Dropdown.Size = UDIM2(1, 0, 0, 39)

            Button.Name = "Button"
            Button.Parent = Dropdown
            Button.BackgroundColor3 = COL3RGB(25, 25, 25)
            Button.BorderColor3 = COL3RGB(0, 0, 0)
            Button.BorderSizePixel = 1
            Button.Position = UDIM2(0, 30, 0, 16)
            Button.Size = UDIM2(0, 175, 0, 17)
            Button.AutoButtonColor = false
            Button.Font = Enum.Font.SourceSans
            Button.Text = ""
            Button.TextColor3 = COL3RGB(0, 0, 0)
            Button.TextSize = 14.000

            local TextLabel = INST("TextLabel")

            TextLabel.Parent = Button
            TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)
            TextLabel.BackgroundTransparency = 1.000
            TextLabel.BorderColor3 = COL3RGB(30, 30, 30)
            TextLabel.Position = UDIM2(0, 5, 0, 0)
            TextLabel.Size = UDIM2(-0.21714285, 208, 1, 0)
            TextLabel.Font = Enum.Font.Code
            TextLabel.Text = "lol"
            TextLabel.TextColor3 = COL3RGB(200, 200, 200)
            TextLabel.TextSize = 14.000
            TextLabel.TextXAlignment = Enum.TextXAlignment.Left

            local abcd = TextLabel

            Drop.Name = "Drop"
            Drop.Parent = Button
            Drop.Active = true
            Drop.BackgroundColor3 = COL3RGB(25, 25, 25)
            Drop.BorderColor3 = COL3RGB(0, 0, 0)
            Drop.BorderSizePixel = 1
            Drop.Position = UDIM2(0, 0, 1, 1)
            Drop.Size = UDIM2(1, 0, 0, 20)
            Drop.Visible = false
            Drop.BottomImage = "http://www.roblox.com/asset/?id=175158447" 
            Drop.CanvasSize = UDIM2(1, 1, 1, 1)
            Drop.ScrollBarThickness = 5
            Drop.TopImage = "http://www.roblox.com/asset/?id=175158447" 
            Drop.MidImage = "http://www.roblox.com/asset/?id=175158447" 
            Drop.AutomaticCanvasSize = "Y"
            Drop.ZIndex = 5
            Drop.ScrollBarImageColor3 = COL3RGB(255, 255, 255)
            UIListLayout.Parent = Drop
            UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
            UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder


            local amount = data.Amount or 6
            Section.Size = Section.Size + UDIM2(0,0,0,amount * 16 + 8)

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
                local Scroll = INST("Frame")
                local joe2 = data.options[v]
                local Button = INST("TextButton")
                local TextLabel = INST("TextLabel")

                Button.Name = v
                Button.Parent = Drop
                Button.BackgroundColor3 = COL3RGB(1, 1, 1)
                Button.BorderColor3 = COL3RGB(0, 0, 0)
                Button.Position = UDIM2(0, 30, 0, 16)
                Button.Size = UDIM2(0, 175, 0, 17)
                Button.AutoButtonColor = false
                Button.Font = Enum.Font.SourceSans
                Button.Text = ""
                Button.TextColor3 = COL3RGB(0, 0, 0)
                Button.TextSize = 14.000
                Button.BorderSizePixel = 1
                Button.ZIndex = 6

                TextLabel.Parent = Button
                TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)
                TextLabel.BackgroundTransparency = 1.000
                TextLabel.BorderColor3 = COL3RGB(30, 30, 30)
                TextLabel.Position = UDIM2(0, 5, 0, -1)
                TextLabel.Size = UDIM2(-0.21714285, 208, 1, 0)
                TextLabel.Font = Enum.Font.Code
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
                  if v:IsA("Frame") then
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
                local Frame = INST("ScrollingFrame")
                local UIListLayout = INST("UIListLayout")

                Scroll.Name = "Scroll"
                Scroll.Parent = Dropdown
                Scroll.BackgroundColor3 = COL3RGB(255, 255, 255)
                Scroll.BackgroundTransparency = 1.000
                Scroll.Position = UDIM2(0, 0, 0, 0)
                Scroll.Size = UDIM2(1, 0, 0, amount * 16 + 8)
                Scroll.Visible = first
                Scroll.Name = v


                Frame.Name = "Frame"
                Frame.Parent = Scroll
                Frame.Active = true
                Frame.BackgroundColor3 = COL3RGB(1, 1, 1)
                Frame.BorderColor3 = COL3RGB(30, 30, 30)
                Frame.Position = UDIM2(0, 30, 0, 40)
                Frame.Size = UDIM2(0, 175, 0, 16 * amount)
                Frame.BottomImage = "http://www.roblox.com/asset/?id=175158447" 
                Frame.CanvasSize = UDIM2(1, 1, 1, 1)
                Frame.MidImage = "http://www.roblox.com/asset/?id=175158447" 
                Frame.ScrollBarThickness = 5
                Frame.TopImage = "http://www.roblox.com/asset/?id=175158447" 
                Frame.AutomaticCanvasSize = "Y"
                Frame.ScrollBarImageColor3 = COL3RGB(255, 255, 255)

                UIListLayout.Parent = Frame
                UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                local joll = true
                for i,v in ipairs(joe2) do
                  local Button = INST("TextButton")
                  local TextLabel = INST("TextLabel")

                  Button.Name = v
                  Button.Parent = Frame
                  Button.BackgroundColor3 = COL3RGB(1, 1, 1)
                  Button.BorderColor3 = COL3RGB(0, 0, 0)
                  Button.BorderSizePixel = 1
                  Button.Position = UDIM2(0, 30, 0, 16)
                  Button.Size = UDIM2(1, 0, 0, 16)
                  Button.AutoButtonColor = false
                  Button.Font = Enum.Font.SourceSans
                  Button.Text = ""
                  Button.TextColor3 = COL3RGB(0, 0, 0)
                  Button.TextSize = 14.000

                  TextLabel.Parent = Button
                  TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)
                  TextLabel.BackgroundTransparency = 1.000
                  TextLabel.BorderColor3 = COL3RGB(30, 30, 30)
                  TextLabel.Position = UDIM2(0, 4, 0, -1)
                  TextLabel.Size = UDIM2(1, 1, 1, 1)
                  TextLabel.Font = Enum.Font.Code
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
                    if v:IsA("TextButton") then
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
            ImageLabel.Image = "http://www.roblox.com/asset/?id=6724771531"

            TextLabel_3.Parent = Dropdown
            TextLabel_3.BackgroundColor3 = COL3RGB(255, 255, 255)
            TextLabel_3.BackgroundTransparency = 1.000
            TextLabel_3.Position = UDIM2(0, 32, 0, -1)
            TextLabel_3.Size = UDIM2(0.111913361, 208, 0.382215232, 0)
            TextLabel_3.Font = Enum.Font.Code
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
            game:GetService("UserInputService").InputBegan:Connect(function(input)
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
                if v:IsA("Frame") then
                  if v.Name == Element.value.Dropdown then
                    v.Visible = true
                  else
                    v.Visible = false
                  end
                  for _,bad in pairs(v.Frame:GetChildren()) do
                    if bad:IsA("TextButton") then
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

          elseif type == "Scroll" then
            local amount = data.Amount or 6
            Section.Size = Section.Size + UDIM2(0,0,0,amount * 16 + 8)
            if data.alphabet then
              TBLSORT(data.options, function(a,b)
              return a < b
              end)
            end
            Element.value = {Scroll = data.default and data.default.Scroll or data.options[1]}

            local Scroll = INST("Frame")
            local Frame = INST("ScrollingFrame")
            local UIListLayout = INST("UIListLayout")

            Scroll.Name = "Scroll"
            Scroll.Parent = Inner
            Scroll.BackgroundColor3 = COL3RGB(255, 255, 255)
            Scroll.BackgroundTransparency = 1.000
            Scroll.Position = UDIM2(0, 0, 00, 0)
            Scroll.Size = UDIM2(1, 0, 0, amount * 16 + 8)


            Frame.Name = "Frame"
            Frame.Parent = Scroll
            Frame.Active = true
            Frame.BackgroundColor3 = COL3RGB(1, 1, 1)
            Frame.BorderColor3 = COL3RGB(30, 30, 30)
            Frame.Position = UDIM2(0, 30, 0, 0)
            Frame.Size = UDIM2(0, 175, 0, 16 * amount)
            Frame.BottomImage = "http://www.roblox.com/asset/?id=175158447" 
            Frame.CanvasSize = UDIM2(1, 1, 1, 1)
            Frame.MidImage = "http://www.roblox.com/asset/?id=175158447" 
            Frame.ScrollBarThickness = 0
            Frame.TopImage = "http://www.roblox.com/asset/?id=175158447" 
            Frame.AutomaticCanvasSize = "Y"
            Frame.ScrollBarImageColor3 = COL3RGB(255, 255, 255)

            UIListLayout.Parent = Frame
            UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
            UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
            local first = true
            for i,v in ipairs(data.options) do
              local Button = INST("TextButton")
              local TextLabel = INST("TextLabel")

              Button.Name = v
              Button.Parent = Frame
              Button.BackgroundColor3 = COL3RGB(1, 1, 1)
              Button.BorderColor3 = COL3RGB(0, 0, 0)
              Button.BorderSizePixel = 1
              Button.Position = UDIM2(0, 30, 0, 16)
              Button.Size = UDIM2(1, 0, 0, 16)
              Button.AutoButtonColor = false
              Button.Font = Enum.Font.SourceSans
              Button.Text = ""
              Button.TextColor3 = COL3RGB(0, 0, 0)
              Button.TextSize = 14.000

              TextLabel.Parent = Button
              TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)
              TextLabel.BackgroundTransparency = 1.000
              TextLabel.BorderColor3 = COL3RGB(30, 30, 30)
              TextLabel.Position = UDIM2(0, 4, 0, -1)
              TextLabel.Size = UDIM2(1, 1, 1, 1)
              TextLabel.Font = Enum.Font.Code
              TextLabel.Text = v
              TextLabel.TextColor3 = COL3RGB(200, 200, 200)
              TextLabel.TextSize = 14.000
              TextLabel.TextXAlignment = Enum.TextXAlignment.Left
              if first then first = false
              TextLabel.TextColor3 = COL3RGB(255, 255, 255)
            end

            Button.MouseButton1Down:Connect(function()

            for i,v in pairs(Frame:GetChildren()) do
              if v:IsA("TextButton") then
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
              if v:IsA("TextButton") then
                library:Tween(v.TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(200, 200, 200)})
              end
            end

            library:Tween(Frame[Element.value.Scroll].TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})
            values[tabname][sectorname][text] = Element.value
            callback(Element.value)
          end
          values[tabname][sectorname][text] = Element.value
        elseif type == "Jumbobox" then
          Section.Size = Section.Size + UDIM2(0,0,0,39)
          Element.value = {Jumbobox = {}}
          data.options = data.options or {}

          local Dropdown = INST("Frame")
          local Button = INST("TextButton")
          local TextLabel = INST("TextLabel")
          local Drop = INST("ScrollingFrame")
          local Button_2 = INST("TextButton")
          local TextLabel_2 = INST("TextLabel")
          local UIListLayout = INST("UIListLayout")
          local ImageLabel = INST("ImageLabel")
          local TextLabel_3 = INST("TextLabel")

          Dropdown.Name = "Dropdown"
          Dropdown.Parent = Inner
          Dropdown.BackgroundColor3 = COL3RGB(1, 1, 1)
          Dropdown.BackgroundTransparency = 1.000
          Dropdown.Position = UDIM2(0, 0, 0.255102038, 0)
          Dropdown.Size = UDIM2(1, 0, 0, 39)

          Button.Name = "Button"
          Button.Parent = Dropdown
          Button.BorderColor3 = COL3RGB(0, 0, 0)
          Button.BorderSizePixel = 1
          Button.BackgroundColor3 = COL3RGB(25, 25, 25)
          Button.Position = UDIM2(0, 30, 0, 16)
          Button.Size = UDIM2(0, 175, 0, 17)
          Button.AutoButtonColor = false
          Button.Font = Enum.Font.SourceSans
          Button.Text = ""
          Button.TextColor3 = COL3RGB(0, 0, 0)
          Button.TextSize = 14.000

          TextLabel.Parent = Button
          TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)
          TextLabel.BackgroundTransparency = 1.000
          TextLabel.BorderColor3 = COL3RGB(30, 30, 30)
          TextLabel.Position = UDIM2(0, 5, 0, 0)
          TextLabel.Size = UDIM2(-0.21714285, 208, 1, 0)
          TextLabel.Font = Enum.Font.Code
          TextLabel.Text = "..."
          TextLabel.TextColor3 = COL3RGB(200, 200, 200)
          TextLabel.TextSize = 14.000
          TextLabel.TextXAlignment = Enum.TextXAlignment.Left

          local abcd = TextLabel

          Drop.Name = "Drop"
          Drop.Parent = Button
          Drop.Active = true
          Drop.BackgroundColor3 = COL3RGB(25, 25, 25)
          Drop.BorderColor3 = COL3RGB(0, 0, 0)
          Drop.BorderSizePixel = 1
          Drop.Position = UDIM2(0, 0, 1, 1)
          Drop.Size = UDIM2(1, 0, 0, 20)
          Drop.Visible = false
          Drop.BottomImage = "http://www.roblox.com/asset/?id=175158447" 
          Drop.CanvasSize = UDIM2(1, 1, 1, 1)
          Drop.ScrollBarThickness = 0
          Drop.TopImage = "http://www.roblox.com/asset/?id=175158447" 
          Drop.MidImage = "http://www.roblox.com/asset/?id=175158447" 
          --Drop.AutomaticCanvasSize = "Y"
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
            local str = ""


            if #old == 0 then
              str = "..."
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
                        str = str..",  ..."
                      end
                    else
                      str = str..",  "..v
                    end
                  end
                end
              end
            end

            abcd.Text = str
          end
          for i,v in ipairs(data.options) do
            do
              local Button = INST("TextButton")
              local TextLabel = INST("TextLabel")

              Button.Name = v
              Button.Parent = Drop
              Button.BackgroundColor3 = COL3RGB(1, 1, 1)
              Button.BorderColor3 = COL3RGB(0, 0, 0)
              Button.Position = UDIM2(0, 30, 0, 16)
              Button.Size = UDIM2(0, 175, 0, 17)
              Button.AutoButtonColor = false
              Button.Font = Enum.Font.SourceSans
              Button.Text = ""
              Button.TextColor3 = COL3RGB(0, 0, 0)
              Button.TextSize = 14.000
              Button.BorderSizePixel = 1
              Button.ZIndex = 6

              TextLabel.Parent = Button
              TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)
              TextLabel.BackgroundTransparency = 1.000
              TextLabel.BorderColor3 = COL3RGB(30, 30, 30)
              TextLabel.Position = UDIM2(0, 5, 0, -1)
              TextLabel.Size = UDIM2(-0.21714285, 208, 1, 0)
              TextLabel.Font = Enum.Font.Code
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
                library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})
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
              if v.Name ~= "UIListLayout" then
                if TBLFIND(val.Jumbobox, v.Name) then
                  v.TextLabel.TextColor3 = COL3RGB(255, 255, 255)
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
          ImageLabel.Image = "http://www.roblox.com/asset/?id=6724771531"

          TextLabel_3.Parent = Dropdown
          TextLabel_3.BackgroundColor3 = COL3RGB(255, 255, 255)
          TextLabel_3.BackgroundTransparency = 1.000
          TextLabel_3.Position = UDIM2(0, 32, 0, -1)
          TextLabel_3.Size = UDIM2(0.111913361, 208, 0.382215232, 0)
          TextLabel_3.Font = Enum.Font.Code
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
          game:GetService("UserInputService").InputBegan:Connect(function(input)
          if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.MouseButton2 then
            if Drop.Visible == true and not indrop and not ind then
              Drop.Visible = false
              Drop.CanvasPosition = Vec2(0,0)
            end
          end
          end)
        elseif type == "ToggleKeybind" then
          Section.Size = Section.Size + UDIM2(0,0,0,16)
          Element.value = {Toggle = data.default and data.default.Toggle or false, Key, Type = "Always", Active = true}

          local Toggle = INST("Frame")
          local Button = INST("TextButton")
          local Color = INST("Frame")
          local TextLabel = INST("TextLabel")

          Toggle.Name = "Toggle"
          Toggle.Parent = Inner
          Toggle.BackgroundColor3 = COL3RGB(255, 255, 255)
          Toggle.BackgroundTransparency = 1.000
          Toggle.Size = UDIM2(1, 0, 0, 15)

          Button.Name = "Button"
          Button.Parent = Toggle
          Button.BackgroundColor3 = COL3RGB(255, 255, 255)
          Button.BackgroundTransparency = 1.000
          Button.Size = UDIM2(1, 0, 1, 0)
          Button.Font = Enum.Font.SourceSans
          Button.Text = ""
          Button.TextColor3 = COL3RGB(0, 0, 0)
          Button.TextSize = 14.000

          Color.Name = "Color"
          Color.Parent = Button
          Color.BackgroundColor3 = COL3RGB(1, 1, 1)
          Color.BorderColor3 = COL3RGB(30, 30, 30)
          Color.Position = UDIM2(0, 15, 0.5, -5)
          Color.Size = UDIM2(0, 8, 0, 8)
          local binding = false
          TextLabel.Parent = Button
          TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)
          TextLabel.BackgroundTransparency = 1.000
          TextLabel.Position = UDIM2(0, 32, 0, -1)
          TextLabel.Size = UDIM2(0.111913361, 208, 1, 0)
          TextLabel.Font = Enum.Font.Code
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
              tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = COL3RGB(1, 1, 1)})
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
            local Keybind = INST("TextButton")
            local Frame = INST("Frame")
            local Always = INST("TextButton")
            local UIListLayout = INST("UIListLayout")
            local Hold = INST("TextButton")
            local Toggle = INST("TextButton")

            Keybind.Name = "Keybind"
            Keybind.Parent = Button
            Keybind.BackgroundColor3 = COL3RGB(1, 1, 1)
            Keybind.BorderColor3 = COL3RGB(30, 30, 30)
            Keybind.Position = UDIM2(0, 270, 0.5, -6)
            Keybind.Text = "None"
            Keybind.Size = UDIM2(0, 43, 0, 12)
            Keybind.Size = UDIM2(0,txt:GetTextSize("None", 14, Enum.Font.Code, Vec2(700, 12)).X + 5,0, 12)
            Keybind.AutoButtonColor = false
            Keybind.Font = Enum.Font.Code
            Keybind.TextColor3 = COL3RGB(200, 200, 200)
            Keybind.TextSize = 14.000
            Keybind.AnchorPoint = Vec2(1,0)
            Keybind.ZIndex = 3

            Frame.Parent = Keybind
            Frame.BackgroundColor3 = COL3RGB(1, 1, 1)
            Frame.BorderColor3 = COL3RGB(0, 0, 0)
            Frame.Position = UDIM2(1, -49, 0, 1)
            Frame.Size = UDIM2(0, 49, 0, 49)
            Frame.Visible = false
            Frame.ZIndex = 3

            Always.Name = "Always"
            Always.Parent = Frame
            Always.BackgroundColor3 = COL3RGB(1, 1, 1)
            Always.BackgroundTransparency = 1.000
            Always.BorderColor3 = COL3RGB(30, 30, 30)
            Always.Position = UDIM2(-3.03289485, 231, 0.115384616, -6)
            Always.Size = UDIM2(1, 0, 0, 16)
            Always.AutoButtonColor = false
            Always.Font = Enum.Font.SourceSansBold
            Always.Text = "Always"
            Always.TextColor3 = COL3RGB(255, 255, 255)
            Always.TextSize = 14.000
            Always.ZIndex = 3

            UIListLayout.Parent = Frame
            UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
            UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

            Hold.Name = "Hold"
            Hold.Parent = Frame
            Hold.BackgroundColor3 = COL3RGB(11, 1, 1)
            Hold.BackgroundTransparency = 1.000
            Hold.BorderColor3 = COL3RGB(30, 30, 30)
            Hold.Position = UDIM2(-3.03289485, 231, 0.115384616, -6)
            Hold.Size = UDIM2(1, 0, 0, 16)
            Hold.AutoButtonColor = false
            Hold.Font = Enum.Font.Code
            Hold.Text = "Hold"
            Hold.TextColor3 = COL3RGB(200, 200, 200)
            Hold.TextSize = 14.000
            Hold.ZIndex = 3

            Toggle.Name = "Toggle"
            Toggle.Parent = Frame
            Toggle.BackgroundColor3 = COL3RGB(1, 1, 1)
            Toggle.BackgroundTransparency = 1.000
            Toggle.BorderColor3 = COL3RGB(30, 30, 30)
            Toggle.Position = UDIM2(-3.03289485, 231, 0.115384616, -6)
            Toggle.Size = UDIM2(1, 0, 0, 16)
            Toggle.AutoButtonColor = false
            Toggle.Font = Enum.Font.Code
            Toggle.Text = "Toggle"
            Toggle.TextColor3 = COL3RGB(200, 200, 200)
            Toggle.TextSize = 14.000
            Toggle.ZIndex = 3

            for _,button in pairs(Frame:GetChildren()) do
              if button:IsA("TextButton") then
                button.MouseButton1Down:Connect(function()
                Element.value.Type = button.Text
                Frame.Visible = false
                if Element.value.Active ~= (Element.value.Type == "Always" and true or false) then
                  Element.value.Active = Element.value.Type == "Always" and true or false
                  callback(Element.value)
                end
                if button.Text == "Always" then
                  keybindremove(text)
                end
                for _,button in pairs(Frame:GetChildren()) do
                  if button:IsA("TextButton") and button.Text ~= Element.value.Type then
                    button.Font = Enum.Font.Code
                    library:Tween(button, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(200,200,200)})
                  end
                end
                button.Font = Enum.Font.SourceSansBold
                button.TextColor3 = COL3RGB(255, 255, 255)
                values[tabname][sectorname][text] = Element.value
                end)
                button.MouseEnter:Connect(function()
                if Element.value.Type ~= button.Text then
                  library:Tween(button, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})
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
              Keybind.Text = "..."
              Keybind.Size = UDIM2(0,txt:GetTextSize("...", 14, Enum.Font.Code, Vec2(700, 12)).X + 4,0, 12)
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
            game:GetService("UserInputService").InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.MouseButton2 and not binding then
              if Frame.Visible == true and not InFrame and not InFrame2 then
                Frame.Visible = false
              end
            end
            if binding then
              binding = false
              Keybind.Text = input.KeyCode.Name ~= "Unknown" and input.KeyCode.Name:upper() or input.UserInputType.Name:upper()
              Keybind.Size = UDIM2(0,txt:GetTextSize(Keybind.Text, 14, Enum.Font.Code, Vec2(700, 12)).X + 5,0, 12)
              Element.value.Key = input.KeyCode.Name ~= "Unknown" and input.KeyCode.Name or input.UserInputType.Name
              if input.KeyCode.Name == "Backspace" then
                Keybind.Text = "None"
                Keybind.Size = UDIM2(0,txt:GetTextSize(Keybind.Text, 14, Enum.Font.Code, Vec2(700, 12)).X + 4,0, 12)
                Element.value.Key = nil
                Element.value.Active = true
              end
              callback(Element.value)
            else
              if Element.value.Key ~= nil then
                if FIND(Element.value.Key, "Mouse") then
                  if input.UserInputType == Enum.UserInputType[Element.value.Key] then
                    if Element.value.Type == "Hold" then
                      Element.value.Active = true
                      callback(Element.value)
                      if Element.value.Active and Element.value.Toggle then
                        keybindadd(text)
                      else
                        keybindremove(text)
                      end
                    elseif Element.value.Type == "Toggle" then
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
                    if Element.value.Type == "Hold" then
                      Element.value.Active = true
                      callback(Element.value)
                      if Element.value.Active and Element.value.Toggle then
                        keybindadd(text)
                      else
                        keybindremove(text)
                      end
                    elseif Element.value.Type == "Toggle" then
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
            game:GetService("UserInputService").InputEnded:Connect(function(input)
            if Element.value.Key ~= nil then
              if FIND(Element.value.Key, "Mouse") then
                if input.UserInputType == Enum.UserInputType[Element.value.Key] then
                  if Element.value.Type == "Hold" then
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
                  if Element.value.Type == "Hold" then
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
        elseif type == "Toggle" then
          Section.Size = Section.Size + UDIM2(0,0,0,16)
          Element.value = {Toggle = data.default and data.default.Toggle or false}

          local Toggle = INST("Frame")
          local Button = INST("TextButton")
          local Color = INST("Frame")
          local TextLabel = INST("TextLabel")

          Toggle.Name = "Toggle"
          Toggle.Parent = Inner
          Toggle.BackgroundColor3 = COL3RGB(255, 255, 255)
          Toggle.BackgroundTransparency = 1.000
          Toggle.Size = UDIM2(1, 0, 0, 15)

          Button.Name = "Button"
          Button.Parent = Toggle
          Button.BackgroundColor3 = COL3RGB(255, 255, 255)
          Button.BackgroundTransparency = 1.000
          Button.Size = UDIM2(1, 0, 1, 0)
          Button.Font = Enum.Font.SourceSans
          Button.Text = ""
          Button.TextColor3 = COL3RGB(0, 0, 0)
          Button.TextSize = 14.000

          Color.Name = "Color"
          Color.Parent = Button
          Color.BackgroundColor3 = COL3RGB(1, 1, 1)
          Color.BorderColor3 = COL3RGB(30, 30, 30)
          Color.Position = UDIM2(0, 15, 0.5, -5)
          Color.Size = UDIM2(0, 8, 0, 8)

          TextLabel.Parent = Button
          TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)
          TextLabel.BackgroundTransparency = 1.000
          TextLabel.Position = UDIM2(0, 32, 0, -1)
          TextLabel.Size = UDIM2(0.111913361, 208, 1, 0)
          TextLabel.Font = Enum.Font.Code
          TextLabel.Text = text
          TextLabel.TextColor3 = COL3RGB(200, 200, 200)
          TextLabel.TextSize = 14.000
          TextLabel.TextXAlignment = Enum.TextXAlignment.Left

          local function update()
            if Element.value.Toggle then
              tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = COL3RGB(255, 255, 255)})
              library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})
            else
              tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = COL3RGB(1, 1, 1)})
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
        elseif type == "ToggleColor" then
          Section.Size = Section.Size + UDIM2(0,0,0,16)
          Element.value = {Toggle = data.default and data.default.Toggle or false, Color = data.default and data.default.Color or COL3RGB(255,255,255)}

          local Toggle = INST("Frame")
          local Button = INST("TextButton")
          local Color = INST("Frame")
          local TextLabel = INST("TextLabel")

          Toggle.Name = "Toggle"
          Toggle.Parent = Inner
          Toggle.BackgroundColor3 = COL3RGB(255, 255, 255)
          Toggle.BackgroundTransparency = 1.000
          Toggle.Size = UDIM2(1, 0, 0, 15)

          Button.Name = "Button"
          Button.Parent = Toggle
          Button.BackgroundColor3 = COL3RGB(255, 255, 255)
          Button.BackgroundTransparency = 1.000
          Button.Size = UDIM2(1, 0, 1, 0)
          Button.Font = Enum.Font.SourceSans
          Button.Text = ""
          Button.TextColor3 = COL3RGB(0, 0, 0)
          Button.TextSize = 14.000

          Color.Name = "Color"
          Color.Parent = Button
          Color.BackgroundColor3 = COL3RGB(1, 1, 1)
          Color.BorderColor3 = COL3RGB(30, 30, 30)
          Color.Position = UDIM2(0, 15, 0.5, -5)
          Color.Size = UDIM2(0, 8, 0, 8)

          TextLabel.Parent = Button
          TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)
          TextLabel.BackgroundTransparency = 1.000
          TextLabel.Position = UDIM2(0, 32, 0, -1)
          TextLabel.Size = UDIM2(0.111913361, 208, 1, 0)
          TextLabel.Font = Enum.Font.Code
          TextLabel.Text = text
          TextLabel.TextColor3 = COL3RGB(200, 200, 200)
          TextLabel.TextSize = 14.000
          TextLabel.TextXAlignment = Enum.TextXAlignment.Left

          local function update()
            if Element.value.Toggle then
              tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = COL3RGB(255, 255, 255)})
              library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})
            else
              tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = COL3RGB(1, 1, 1)})
              library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(200, 200, 200)})
            end
            values[tabname][sectorname][text] = Element.value
          end

          local ColorH,ColorS,ColorV

          local ColorP = INST("TextButton")
          local Frame = INST("Frame")
          local Colorpick = INST("ImageButton")
          local ColorDrag = INST("Frame")
          local Huepick = INST("ImageButton")
          local Huedrag = INST("Frame")

          ColorP.Name = "ColorP"
          ColorP.Parent = Button
          ColorP.AnchorPoint = Vec2(1, 0)
          ColorP.BackgroundColor3 = COL3RGB(255, 255, 255)
          ColorP.BorderColor3 = COL3RGB(30, 30, 30)
          ColorP.Position = UDIM2(0, 270, 0.5, -4)
          ColorP.Size = UDIM2(0, 18, 0, 8)
          ColorP.AutoButtonColor = false
          ColorP.Font = Enum.Font.Code
          ColorP.Text = ""
          ColorP.TextColor3 = COL3RGB(200, 200, 200)
          ColorP.TextSize = 14.000

          Frame.Parent = ColorP
          Frame.BackgroundColor3 = COL3RGB(1, 1, 1)
          Frame.BorderColor3 = COL3RGB(30, 30, 30)
          Frame.Position = UDIM2(-0.666666687, -170, 1.375, 0)
          Frame.Size = UDIM2(0, 200, 0, 170)
          Frame.Visible = false
          Frame.ZIndex = 3

          Colorpick.Name = "Colorpick"
          Colorpick.Parent = Frame
          Colorpick.BackgroundColor3 = COL3RGB(255, 255, 255)
          Colorpick.BorderColor3 = COL3RGB(30, 30, 30)
          Colorpick.ClipsDescendants = false
          Colorpick.Position = UDIM2(0, 40, 0, 10)
          Colorpick.Size = UDIM2(0, 150, 0, 150)
          Colorpick.AutoButtonColor = false
          Colorpick.Image = "rbxassetid://4155801252"
          Colorpick.ImageColor3 = COL3RGB(255, 255, 255)
          Colorpick.ZIndex = 3

          ColorDrag.Name = "ColorDrag"
          ColorDrag.Parent = Colorpick
          ColorDrag.AnchorPoint = Vec2(0.5, 0.5)
          ColorDrag.BackgroundColor3 = COL3RGB(255, 255, 255)
          ColorDrag.BorderColor3 = COL3RGB(30, 30, 30)
          ColorDrag.Size = UDIM2(0, 4, 0, 4)
          ColorDrag.ZIndex = 3

          Huepick.Name = "Huepick"
          Huepick.Parent = Frame
          Huepick.BackgroundColor3 = COL3RGB(255, 255, 255)
          Huepick.BorderColor3 = COL3RGB(30, 30, 30)
          Huepick.ClipsDescendants = false
          Huepick.Position = UDIM2(0, 10, 0, 10)
          Huepick.Size = UDIM2(0, 20, 0, 150)
          Huepick.AutoButtonColor = false
          Huepick.Image = "rbxassetid://3641079629"
          Huepick.ImageColor3 = COL3RGB(255, 255, 255)
          Huepick.ImageTransparency = 1
          Huepick.BackgroundTransparency = 0
          Huepick.ZIndex = 3

          local HueFrameGradient = INST("UIGradient")
          HueFrameGradient.Rotation = 90
          HueFrameGradient.Name = "HueFrameGradient"
          HueFrameGradient.Parent = Huepick
          HueFrameGradient.Color = ColorSequence.new {
            ColorSequenceKeypoint.new(0.00, COL3RGB(255, 0, 0)),
            ColorSequenceKeypoint.new(0.17, COL3RGB(255, 0, 255)),
            ColorSequenceKeypoint.new(0.33, COL3RGB(0, 0, 255)),
            ColorSequenceKeypoint.new(0.50, COL3RGB(0, 255, 255)),
            ColorSequenceKeypoint.new(0.67, COL3RGB(0, 255, 0)),
            ColorSequenceKeypoint.new(0.83, COL3RGB(255, 255, 255)),
            ColorSequenceKeypoint.new(1.00, COL3RGB(255, 0, 0))
          }

          Huedrag.Name = "Huedrag"
          Huedrag.Parent = Huepick
          Huedrag.BackgroundColor3 = COL3RGB(255, 255, 255)
          Huedrag.BorderColor3 = COL3RGB(30, 30, 30)
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
          game:GetService("UserInputService").InputBegan:Connect(function(input)
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
          releaseconnection = game:GetService("UserInputService").InputEnded:Connect(function(Mouse)
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
          releaseconnection = game:GetService("UserInputService").InputEnded:Connect(function(Mouse)
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
        elseif type == "ToggleTrans" then
          Section.Size = Section.Size + UDIM2(0,0,0,16)
          Element.value = {Toggle = data.default and data.default.Toggle or false, Color = data.default and data.default.Color or COL3RGB(255,255,255), Transparency = data.default and data.default.Transparency or 0}

          local Toggle = INST("Frame")
          local Button = INST("TextButton")
          local Color = INST("Frame")
          local TextLabel = INST("TextLabel")

          Toggle.Name = "Toggle"
          Toggle.Parent = Inner
          Toggle.BackgroundColor3 = COL3RGB(255, 255, 255)
          Toggle.BackgroundTransparency = 1.000
          Toggle.Size = UDIM2(1, 0, 0, 15)

          Button.Name = "Button"
          Button.Parent = Toggle
          Button.BackgroundColor3 = COL3RGB(255, 255, 255)
          Button.BackgroundTransparency = 1.000
          Button.Size = UDIM2(1, 0, 1, 0)
          Button.Font = Enum.Font.SourceSans
          Button.Text = ""
          Button.TextColor3 = COL3RGB(0, 0, 0)
          Button.TextSize = 14.000

          Color.Name = "Color"
          Color.Parent = Button
          Color.BackgroundColor3 = COL3RGB(1, 1, 1)
          Color.BorderColor3 = COL3RGB(30, 30, 30)
          Color.Position = UDIM2(0, 15, 0.5, -5)
          Color.Size = UDIM2(0, 8, 0, 8)

          TextLabel.Parent = Button
          TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)
          TextLabel.BackgroundTransparency = 1.000
          TextLabel.Position = UDIM2(0, 32, 0, -1)
          TextLabel.Size = UDIM2(0.111913361, 208, 1, 0)
          TextLabel.Font = Enum.Font.Code
          TextLabel.Text = text
          TextLabel.TextColor3 = COL3RGB(200, 200, 200)
          TextLabel.TextSize = 14.000
          TextLabel.TextXAlignment = Enum.TextXAlignment.Left

          local function update()
            if Element.value.Toggle then
              tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = COL3RGB(255, 255, 255)})
              library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})
            else
              tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = COL3RGB(1, 1, 1)})
              library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(200, 200, 200)})
            end
            values[tabname][sectorname][text] = Element.value
            callback(Element.value)
          end

          local ColorH,ColorS,ColorV

          local ColorP = INST("TextButton")
          local Frame = INST("Frame")
          local Colorpick = INST("ImageButton")
          local ColorDrag = INST("Frame")
          local Huepick = INST("ImageButton")
          local Huedrag = INST("Frame")

          ColorP.Name = "ColorP"
          ColorP.Parent = Button
          ColorP.AnchorPoint = Vec2(1, 0)
          ColorP.BackgroundColor3 = COL3RGB(255, 255, 255)
          ColorP.BorderColor3 = COL3RGB(30, 30, 30)
          ColorP.Position = UDIM2(0, 270, 0.5, -4)
          ColorP.Size = UDIM2(0, 18, 0, 8)
          ColorP.AutoButtonColor = false
          ColorP.Font = Enum.Font.Code
          ColorP.Text = ""
          ColorP.TextColor3 = COL3RGB(200, 200, 200)
          ColorP.TextSize = 14.000

          Frame.Parent = ColorP
          Frame.BackgroundColor3 = COL3RGB(1, 1, 1)
          Frame.BorderColor3 = COL3RGB(30, 30, 30)
          Frame.Position = UDIM2(-0.666666687, -170, 1.375, 0)
          Frame.Size = UDIM2(0, 200, 0, 190)
          Frame.Visible = false
          Frame.ZIndex = 3

          Colorpick.Name = "Colorpick"
          Colorpick.Parent = Frame
          Colorpick.BackgroundColor3 = COL3RGB(255, 255, 255)
          Colorpick.BorderColor3 = COL3RGB(30, 30, 30)
          Colorpick.ClipsDescendants = false
          Colorpick.Position = UDIM2(0, 40, 0, 10)
          Colorpick.Size = UDIM2(0, 150, 0, 150)
          Colorpick.AutoButtonColor = false
          Colorpick.Image = "rbxassetid://4155801252"
          Colorpick.ImageColor3 = COL3RGB(255, 255, 255)
          Colorpick.ZIndex = 3

          ColorDrag.Name = "ColorDrag"
          ColorDrag.Parent = Colorpick
          ColorDrag.AnchorPoint = Vec2(0.5, 0.5)
          ColorDrag.BackgroundColor3 = COL3RGB(255, 255, 255)
          ColorDrag.BorderColor3 = COL3RGB(30, 30, 30)
          ColorDrag.Size = UDIM2(0, 4, 0, 4)
          ColorDrag.ZIndex = 3

          Huepick.Name = "Huepick"
          Huepick.Parent = Frame
          Huepick.BackgroundColor3 = COL3RGB(255, 255, 255)
          Huepick.BorderColor3 = COL3RGB(30, 30, 30)
          Huepick.ClipsDescendants = true
          Huepick.Position = UDIM2(0, 10, 0, 10)
          Huepick.Size = UDIM2(0, 20, 0, 150)
          Huepick.AutoButtonColor = false
          Huepick.Image = "rbxassetid://3641079629"
          Huepick.ImageColor3 = COL3RGB(255, 255, 255)
          Huepick.ImageTransparency = 1
          Huepick.BackgroundTransparency = 0
          Huepick.ZIndex = 3

          local HueFrameGradient = INST("UIGradient")
          HueFrameGradient.Rotation = 90
          HueFrameGradient.Name = "HueFrameGradient"
          HueFrameGradient.Parent = Huepick
          HueFrameGradient.Color = ColorSequence.new {
            ColorSequenceKeypoint.new(0.00, COL3RGB(255, 0, 0)),
            ColorSequenceKeypoint.new(0.17, COL3RGB(255, 0, 255)),
            ColorSequenceKeypoint.new(0.33, COL3RGB(0, 0, 255)),
            ColorSequenceKeypoint.new(0.50, COL3RGB(0, 255, 255)),
            ColorSequenceKeypoint.new(0.67, COL3RGB(0, 255, 0)),
            ColorSequenceKeypoint.new(0.83, COL3RGB(255, 255, 255)),
            ColorSequenceKeypoint.new(1.00, COL3RGB(255, 0, 0))
          }

          Huedrag.Name = "Huedrag"
          Huedrag.Parent = Huepick
          Huedrag.BackgroundColor3 = COL3RGB(255, 255, 255)
          Huedrag.BorderColor3 = COL3RGB(30, 30, 30)
          Huedrag.Size = UDIM2(1, 0, 0, 2)
          Huedrag.ZIndex = 3

          local Transpick = INST("ImageButton")
          local Transcolor = INST("ImageLabel")
          local Transdrag = INST("Frame")

          Transpick.Name = "Transpick"
          Transpick.Parent = Frame
          Transpick.BackgroundColor3 = COL3RGB(255, 255, 255)
          Transpick.BorderColor3 = COL3RGB(30, 30, 30)
          Transpick.Position = UDIM2(0, 10, 0, 167)
          Transpick.Size = UDIM2(0, 180, 0, 15)
          Transpick.AutoButtonColor = false
          Transpick.Image = "rbxassetid://3887014957"
          Transpick.ScaleType = Enum.ScaleType.Tile
          Transpick.TileSize = UDIM2(0, 10, 0, 10)
          Transpick.ZIndex = 3

          Transcolor.Name = "Transcolor"
          Transcolor.Parent = Transpick
          Transcolor.BackgroundColor3 = COL3RGB(255, 255, 255)
          Transcolor.BackgroundTransparency = 1.000
          Transcolor.Size = UDIM2(1, 0, 1, 0)
          Transcolor.Image = "rbxassetid://3887017050"
          Transcolor.ImageColor3 = COL3RGB(255, 0, 4)
          Transcolor.ZIndex = 3

          Transdrag.Name = "Transdrag"
          Transdrag.Parent = Transcolor
          Transdrag.BackgroundColor3 = COL3RGB(255, 255, 255)
          Transdrag.BorderColor3 = COL3RGB(30, 30, 30)
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
          game:GetService("UserInputService").InputBegan:Connect(function(input)
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
            callback(Element.value)   -- this has been made by Bad#9672, tested by WetIDreamz#0001 and zeox#9999 -- this has been made by Bad#9672, tested by WetIDreamz#0001 and zeox#9999 -- this has been made by Bad#9672, tested by WetIDreamz#0001 and zeox#9999 -- this has been made by Bad#9672, tested by WetIDreamz#0001 and zeox#9999
          end
          Transpick.MouseButton1Down:Connect(function()
          updateTrans()
          moveconnection = mouse.Move:Connect(function()
          updateTrans()
          end)
          releaseconnection = game:GetService("UserInputService").InputEnded:Connect(function(Mouse)
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
          releaseconnection = game:GetService("UserInputService").InputEnded:Connect(function(Mouse)
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
          releaseconnection = game:GetService("UserInputService").InputEnded:Connect(function(Mouse)
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
              tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = COL3RGB(255, 255, 255)})
              library:Tween(TextLabel, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextColor3 = COL3RGB(255, 255, 255)})
            else
              tween = library:Tween(Color, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = COL3RGB(1, 1, 1)})
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
        elseif type == "TextBox" then
          Section.Size = Section.Size + UDIM2(0,0,0,30)
          Element.value = {Text = data.default and data.default.text or ""}

          local Box = INST("Frame")
          local TextBox = INST("TextBox")

          Box.Name = "Box"
          Box.Parent = Inner
          Box.BackgroundColor3 = COL3RGB(255, 255, 255)
          Box.BackgroundTransparency = 1.000
          Box.Position = UDIM2(0, 0, 0.542059898, 0)
          Box.Size = UDIM2(1, 0, 0, 30)

          TextBox.Parent = Box
          TextBox.BackgroundColor3 = COL3RGB(20, 20, 20)
          TextBox.BorderColor3 = COL3RGB(30, 30, 30)
          TextBox.Position = UDIM2(0.108303241, 0, 0.224465579, 0)
          TextBox.Size = UDIM2(0, 175, 0, 20)
          TextBox.Font = Enum.Font.SourceSans
          TextBox.PlaceholderText = data.placeholder
          TextBox.Text = Element.value.Text
          TextBox.TextColor3 = COL3RGB(255, 255, 255)
          TextBox.TextSize = 14.000

          values[tabname][sectorname][text] = Element.value

          TextBox:GetPropertyChangedSignal("Text"):Connect(function()
          if LEN(TextBox.Text) > 50 then
            TextBox.Text = SUB(TextBox.Text, 1, 50)
          end
          Element.value.Text = TextBox.Text
          values[tabname][sectorname][text] = Element.value
          callback(Element.value)
          end)

          function Element:SetValue(value)
            Element.value = value
            values[tabname][sectorname][text] = Element.value
            TextBox.Text = Element.value.Text
          end

        elseif type == "Dropdown" then
          Section.Size = Section.Size + UDIM2(0,0,0,39)
          Element.value = {Dropdown = data.options[1]}

          local Dropdown = INST("Frame")
          local Button = INST("TextButton")
          local TextLabel = INST("TextLabel")
          local Drop = INST("ScrollingFrame")
          local Button_2 = INST("TextButton")
          local TextLabel_2 = INST("TextLabel")
          local UIListLayout = INST("UIListLayout")
          local ImageLabel = INST("ImageLabel")
          local TextLabel_3 = INST("TextLabel")

          Dropdown.Name = "Dropdown"
          Dropdown.Parent = Inner
          Dropdown.BackgroundColor3 = COL3RGB(255, 255, 255)
          Dropdown.BackgroundTransparency = 1.000
          Dropdown.Position = UDIM2(0, 0, 0.255102038, 0)
          Dropdown.Size = UDIM2(1, 0, 0, 39)

          Button.Name = "Button"
          Button.Parent = Dropdown
          Button.BackgroundColor3 = COL3RGB(25, 25, 25)
          Button.BorderColor3 = COL3RGB(0, 0, 0)
          Button.BorderSizePixel = 1
          Button.Position = UDIM2(0, 30, 0, 16)
          Button.Size = UDIM2(0, 175, 0, 17)
          Button.AutoButtonColor = false
          Button.Font = Enum.Font.SourceSans
          Button.Text = ""
          Button.TextColor3 = COL3RGB(0, 0, 0)
          Button.TextSize = 14.000

          TextLabel.Parent = Button
          TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)
          TextLabel.BackgroundTransparency = 1.000
          TextLabel.BorderColor3 = COL3RGB(30, 30, 30)
          TextLabel.Position = UDIM2(0, 5, 0, 0)
          TextLabel.Size = UDIM2(-0.21714285, 208, 1, 0)
          TextLabel.Font = Enum.Font.Code
          TextLabel.Text = Element.value.Dropdown
          TextLabel.TextColor3 = COL3RGB(200, 200, 200)
          TextLabel.TextSize = 14.000
          TextLabel.TextXAlignment = Enum.TextXAlignment.Left

          local abcd = TextLabel

          Drop.Name = "Drop"
          Drop.Parent = Button
          Drop.Active = true
          Drop.BackgroundColor3 = COL3RGB(25, 25, 25)
          Drop.BorderColor3 = COL3RGB(0, 0, 0)
          Drop.BorderSizePixel = 1
          Drop.Position = UDIM2(0, 0, 1, 1)
          Drop.Size = UDIM2(1, 0, 0, 20)
          Drop.Visible = false
          Drop.BottomImage = "http://www.roblox.com/asset/?id=175158447" 
          Drop.CanvasSize = UDIM2(1, 1, 1, 1)
          Drop.ScrollBarThickness = 0
          Drop.TopImage = "http://www.roblox.com/asset/?id=175158447" 
          Drop.MidImage = "http://www.roblox.com/asset/?id=175158447" 
          Drop.AutomaticCanvasSize = "Y"
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
          local first = true
          for i,v in ipairs(data.options) do
            do
              local Button = INST("TextButton")
              local TextLabel = INST("TextLabel")

              Button.Name = v
              Button.Parent = Drop
              Button.BackgroundColor3 = COL3RGB(1, 1, 1)
              Button.BorderColor3 = COL3RGB(0, 0, 0)
              Button.Position = UDIM2(0, 30, 0, 16)
              Button.Size = UDIM2(0, 175, 0, 17)
              Button.AutoButtonColor = false
              Button.Font = Enum.Font.SourceSans
              Button.Text = ""
              Button.TextColor3 = COL3RGB(0, 0, 0)
              Button.TextSize = 14.000
              Button.BorderSizePixel = 1
              Button.ZIndex = 6

              TextLabel.Parent = Button
              TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)
              TextLabel.BackgroundTransparency = 1.000
              TextLabel.BorderColor3 = COL3RGB(30, 30, 30)
              TextLabel.Position = UDIM2(0, 5, 0, -1)
              TextLabel.Size = UDIM2(-0.21714285, 208, 1, 0)
              TextLabel.Font = Enum.Font.Code
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
          ImageLabel.Image = "http://www.roblox.com/asset/?id=6724771531"

          TextLabel_3.Parent = Dropdown
          TextLabel_3.BackgroundColor3 = COL3RGB(255, 255, 255)
          TextLabel_3.BackgroundTransparency = 1.000
          TextLabel_3.Position = UDIM2(0, 32, 0, -1)
          TextLabel_3.Size = UDIM2(0.111913361, 208, 0.382215232, 0)
          TextLabel_3.Font = Enum.Font.Code
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
          game:GetService("UserInputService").InputBegan:Connect(function(input)
          if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.MouseButton2 then
            if Drop.Visible == true and not indrop and not ind then
              Drop.Visible = false
              Drop.CanvasPosition = Vec2(0,0)
            end
          end
          end)
          values[tabname][sectorname][text] = Element.value
        elseif type == "Slider" then

          Section.Size = Section.Size + UDIM2(0,0,0,25)

          local Slider = INST("Frame")
          local TextLabel = INST("TextLabel")
          local Button = INST("TextButton")
          local Frame = INST("Frame")
          local UIGradient = INST("UIGradient")
          local Value = INST("TextLabel")

          Slider.Name = "Slider"
          Slider.Parent = Inner
          Slider.BackgroundColor3 = COL3RGB(255, 255, 255)
          Slider.BackgroundTransparency = 1.000
          Slider.Position = UDIM2(0, 0, 0.653061211, 0)
          Slider.Size = UDIM2(1, 0, 0, 25)

          TextLabel.Parent = Slider
          TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)
          TextLabel.BackgroundTransparency = 1.000
          TextLabel.Position = UDIM2(0, 32, 0, -2)
          TextLabel.Size = UDIM2(0, 100, 0, 15)
          TextLabel.Font = Enum.Font.Code
          TextLabel.Text = text
          TextLabel.TextColor3 = COL3RGB(200, 200, 200)
          TextLabel.TextSize = 14.000
          TextLabel.TextXAlignment = Enum.TextXAlignment.Left

          Button.Name = "Button"
          Button.Parent = Slider
          Button.BackgroundColor3 = COL3RGB(10, 10, 10)
          Button.BorderColor3 = COL3RGB(0, 0, 0)
          Button.BorderSizePixel = 1
          Button.Position = UDIM2(0, 30, 0, 15)
          Button.Size = UDIM2(0, 175, 0, 11)
          Button.AutoButtonColor = false
          Button.Font = Enum.Font.SourceSans
          Button.Text = ""
          Button.TextColor3 = COL3RGB(0, 0, 0)
          Button.TextSize = 14.000

          Frame.Parent = Button
          Frame.BackgroundColor3 = COL3RGB(255, 255, 255)
          Frame.BorderSizePixel = 1
          Frame.Size = UDIM2(0.5, 0, 1, 0)

          UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, COL3RGB(255, 255, 255)), ColorSequenceKeypoint.new(1, COL3RGB(175, 175, 175))}
          UIGradient.Rotation = 90
          UIGradient.Parent = Frame

          Value.Name = "Value"
          Value.Parent = Slider
          Value.BackgroundColor3 = COL3RGB(255, 255, 255)
          Value.BackgroundTransparency = 1.000
          Value.Position = UDIM2(0, 150, 0, -1)
          Value.Size = UDIM2(0, 55, 0, 15)
          Value.Font = Enum.Font.Code
          Value.Text = "50"
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
          local uis = game:GetService("UserInputService")
          local mouse = game.Players.LocalPlayer:GetMouse()
          local val
          Button.MouseButton1Down:Connect(function()
          Frame.Size = UDIM2(0, CLAMP(mouse.X - Frame.AbsolutePosition.X, 0, 175), 0, 11)
          val = FLOOR((((tonumber(max) - tonumber(min)) / 175) * Frame.AbsoluteSize.X) + tonumber(min)) or 0
          Value.Text = val
          Element.value.Slider = val
          values[tabname][sectorname][text] = Element.value
          callback(Element.value)
          moveconnection = mouse.Move:Connect(function()
          Frame.Size = UDIM2(0, CLAMP(mouse.X - Frame.AbsolutePosition.X, 0, 175), 0, 11)
          val = FLOOR((((tonumber(max) - tonumber(min)) / 175) * Frame.AbsoluteSize.X) + tonumber(min))
          Value.Text = val
          Element.value.Slider = val
          values[tabname][sectorname][text] = Element.value
          callback(Element.value)
          end)
          releaseconnection = uis.InputEnded:Connect(function(Mouse)
          if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
            Frame.Size = UDIM2(0, CLAMP(mouse.X - Frame.AbsolutePosition.X, 0, 175), 0, 11)
            val = FLOOR((((tonumber(max) - tonumber(min)) / 175) * Frame.AbsoluteSize.X) + tonumber(min))
            values[tabname][sectorname][text] = Element.value
            callback(Element.value)
            moveconnection:Disconnect()
            releaseconnection:Disconnect()
          end
          end)
          end)
        elseif type == "Button" then

          Section.Size = Section.Size + UDIM2(0,0,0,24)
          local Button = INST("Frame")
          local Button_2 = INST("TextButton")
          local TextLabel = INST("TextLabel")

          Button.Name = "Button"
          Button.Parent = Inner
          Button.BackgroundColor3 = COL3RGB(255, 255, 255)
          Button.BackgroundTransparency = 1.000
          Button.Position = UDIM2(0, 0, 0.236059487, 0)
          Button.Size = UDIM2(1, 0, 0, 24)

          Button_2.Name = "Button"
          Button_2.Parent = Button
          Button_2.BackgroundColor3 = COL3RGB(25, 25, 25)
          Button_2.BorderColor3 = COL3RGB(0, 0, 0)
          Button_2.BorderSizePixel = 1
          Button_2.Position = UDIM2(0, 30, 0.5, -9)
          Button_2.Size = UDIM2(0, 175, 0, 18)
          Button_2.AutoButtonColor = false
          Button_2.Font = Enum.Font.SourceSans
          Button_2.Text = ""
          Button_2.TextColor3 = COL3RGB(0, 0, 0)
          Button_2.TextSize = 14.000

          TextLabel.Parent = Button_2
          TextLabel.BackgroundColor3 = COL3RGB(255, 255, 255)
          TextLabel.BackgroundTransparency = 1.000
          TextLabel.BorderColor3 = COL3RGB(30, 30, 30)
          TextLabel.Size = UDIM2(1, 0, 1, 0)
          TextLabel.Font = Enum.Font.Code
          TextLabel.Text = text
          TextLabel.TextColor3 = COL3RGB(200, 200, 200)
          TextLabel.TextSize = 14.000

          function Element:SetValue()
          end

          Button_2.MouseButton1Down:Connect(function()
          TextLabel.TextColor3 = COL3RGB(255, 255, 255)
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

  salad.Parent = game.CoreGui

  return menu
end

local UserInputService = game:GetService("UserInputService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local Lighting = game:GetService("Lighting")
local Players = game:GetService("Players")
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
  local RayIgnore = workspace.Ray_Ignore
  local RageTarget
  local GetIcon = require(game.ReplicatedStorage.GetIcon)
  local BodyVelocity = INST("BodyVelocity")
  BodyVelocity.MaxForce = Vec3(HUGE, 0, HUGE)
  local Collision = {Camera, workspace.Ray_Ignore, workspace.Debris}
  local FakelagFolder = INST("Folder", workspace)
  FakelagFolder.Name = "Fakelag"
  local FakeAnim = INST("Animation", workspace)
  FakeAnim.AnimationId = "rbxassetid://0"
  local Gloves = ReplicatedStorage.Gloves
  if Gloves:FindFirstChild("ImageLabel") then
    Gloves.ImageLabel:Destroy()
  end
  local GloveModels = Gloves.Models
  local Multipliers = {
    ["Head"] = 4,
    ["FakeHead"] = 4,
    ["HeadHB"] = 4,
    ["UpperTorso"] = 1,
    ["LowerTorso"] = 1.25,
    ["LeftUpperArm"] = 1,
    ["LeftLowerArm"] = 1,
    ["LeftHand"] = 1,
    ["RightUpperArm"] = 1,
    ["RightLowerArm"] = 1,
    ["RightHand"] = 1,
    ["LeftUpperLeg"] = 0.75,
    ["LeftLowerLeg"] = 0.75,
    ["LeftFoot"] = 0.75,
    ["RightUpperLeg"] = 0.75,
    ["RightLowerLeg"] = 0.75,
    ["RightFoot"] = 0.75,
  }
  local ChamItems = {}
  local Skyboxes = {
    ["Minecraft"] = {
      SkyboxLf = "rbxassetid://3822391866",
      SkyboxBk = "rbxassetid://3822390508",
      SkyboxDn = "rbxassetid://3822392871",
      SkyboxFt = "rbxassetid://3822391392",
      SkyboxLf = "rbxassetid://3822391866",
      SkyboxRt = "rbxassetid://3822390968",
      SkyboxUp = "rbxassetid://3822392413",
	},  
    ["Nebula"] = {      
		SkyboxLf = "rbxassetid://159454286",      
		SkyboxBk = "rbxassetid://159454299",      
		SkyboxDn = "rbxassetid://159454296",      
		SkyboxFt = "rbxassetid://159454293",      
		SkyboxLf = "rbxassetid://159454286",      
		SkyboxRt = "rbxassetid://159454300",      
		SkyboxUp = "rbxassetid://159454288",      
	},      
	["Vaporwave"] = {      
		SkyboxLf = "rbxassetid://1417494402",      
		SkyboxBk = "rbxassetid://1417494030",      
		SkyboxDn = "rbxassetid://1417494146",      
		SkyboxFt = "rbxassetid://1417494253",      
		SkyboxLf = "rbxassetid://1417494402",      
		SkyboxRt = "rbxassetid://1417494499",      
		SkyboxUp = "rbxassetid://1417494643",      
	},      
	["Clouds"] = {      
		SkyboxLf = "rbxassetid://570557620",      
		SkyboxBk = "rbxassetid://570557514",      
		SkyboxDn = "rbxassetid://570557775",      
		SkyboxFt = "rbxassetid://570557559",      
		SkyboxLf = "rbxassetid://570557620",      
		SkyboxRt = "rbxassetid://570557672",      
		SkyboxUp = "rbxassetid://570557727",      
	},      
	["Twilight"] = {      
		SkyboxLf = "rbxassetid://264909758",      
		SkyboxBk = "rbxassetid://264908339",      
		SkyboxDn = "rbxassetid://264907909",      
		SkyboxFt = "rbxassetid://264909420",      
		SkyboxLf = "rbxassetid://264909758",      
		SkyboxRt = "rbxassetid://264908886",      
		SkyboxUp = "rbxassetid://264907379",      
	},      
   ["Red Mountain"] = {  
		SkyboxLf = "rbxassetid://6636457509",  
		SkyboxBk = "rbxassetid://6636457509",  
		SkyboxDn = "rbxassetid://6636457509",  
		SkyboxFt = "rbxassetid://6636457509",  
		SkyboxLf = "rbxassetid://6636457509",  
		SkyboxRt = "rbxassetid://6636457509",  
		SkyboxUp = "rbxassetid://6636457509",  
	},
	["Cloudy Skies"] = {
		SkyboxLf = "rbxassetid://252760980",
		SkyboxBk = "rbxassetid://252760981",
		SkyboxDn = "rbxassetid://252763035",
		SkyboxFt = "rbxassetid://252761439",
		SkyboxRt = "rbxassetid://252760986",
		SkyboxUp = "rbxassetid://252762652",
	},
	["Dark Blue"] = {
		SkyboxLf = "rbxassetid://30306626",
		SkyboxBk = "rbxassetid://30306692",
		SkyboxDn = "rbxassetid://25901058",
		SkyboxFt = "rbxassetid://30306730",
		SkyboxRt = "rbxassetid://30306661",
		SkyboxUp = "rbxassetid://30306770",
	},
	["Pink Daylight"] = {
		SkyboxBk = "rbxassetid://271042516",
		SkyboxDn = "rbxassetid://271077243",
		SkyboxFt = "rbxassetid://271042556",
		SkyboxLf = "rbxassetid://271042310",
		SkyboxRt = "rbxassetid://271042467",
		SkyboxUp = "rbxassetid://271077958",
	},
	["Night"] = {
		["SkyboxBk"] = "http://www.roblox.com/asset/?id=12064107",
		["SkyboxDn"] = "http://www.roblox.com/asset/?id=12064152",
		["SkyboxFt"] = "http://www.roblox.com/asset/?id=12064121",
		["SkyboxLf"] = "http://www.roblox.com/asset/?id=12063984",
		["SkyboxRt"] = "http://www.roblox.com/asset/?id=12064115",
		["SkyboxUp"] = "http://www.roblox.com/asset/?id=12064131",
	},
	["Space"] = {

		["SkyboxBk"] = "http://www.roblox.com/asset/?id=149397692",
		["SkyboxDn"] = "http://www.roblox.com/asset/?id=149397686",
		["SkyboxFt"] = "http://www.roblox.com/asset/?id=149397697",
		["SkyboxLf"] = "http://www.roblox.com/asset/?id=149397684",
		["SkyboxRt"] = "http://www.roblox.com/asset/?id=149397688",
		["SkyboxUp"] = "http://www.roblox.com/asset/?id=149397702",
	},
	["Pink Vision"] = {
		["SkyboxBk"] = "http://www.roblox.com/asset/?id=6593929026",
		["SkyboxDn"] = "http://www.roblox.com/asset/?id=6593930140",
		["SkyboxFt"] = "http://www.roblox.com/asset/?id=6593931249",
		["SkyboxLf"] = "http://www.roblox.com/asset/?id=6593932587",
		["SkyboxRt"] = "http://www.roblox.com/asset/?id=6593933789",
		["SkyboxUp"] = "http://www.roblox.com/asset/?id=6593935319",
	},
	["Anime Sky"] = {
		["SkyboxBk"] = "http://www.roblox.com/asset/?id=6598038571",
		["SkyboxDn"] = "http://www.roblox.com/asset/?id=6598060864",
		["SkyboxFt"] = "http://www.roblox.com/asset/?id=6598069162",
		["SkyboxLf"] = "http://www.roblox.com/asset/?id=6598081281",
		["SkyboxRt"] = "http://www.roblox.com/asset/?id=6598083861",
		["SkyboxUp"] = "http://www.roblox.com/asset/?id=6598088065",
	},
	["Alien Red"] = {
		["SkyboxBk"] = "http://www.roblox.com/asset/?id=1012890",
		["SkyboxDn"] = "http://www.roblox.com/asset/?id=1012891",
		["SkyboxFt"] = "http://www.roblox.com/asset/?id=1012887",
		["SkyboxLf"] = "http://www.roblox.com/asset/?id=1012889",
		["SkyboxRt"] = "http://www.roblox.com/asset/?id=1012888",
		["SkyboxUp"] = "http://www.roblox.com/asset/?id=1014449",
	},
	["CS City"] = {
		["SkyboxBk"] = "http://www.roblox.com/asset/?id=2240134413",
		["SkyboxDn"] = "http://www.roblox.com/asset/?id=2240136039",
		["SkyboxFt"] = "http://www.roblox.com/asset/?id=2240130790",
		["SkyboxLf"] = "http://www.roblox.com/asset/?id=2240133550",
		["SkyboxRt"] = "http://www.roblox.com/asset/?id=2240132643",
		["SkyboxUp"] = "http://www.roblox.com/asset/?id=2240135222",
	},
	["Dark City"] = {
		["SkyboxBk"] = "http://www.roblox.com/asset/?id=1424486234",
		["SkyboxDn"] = "http://www.roblox.com/asset/?id=1424485998",
		["SkyboxFt"] = "http://www.roblox.com/asset/?id=1424485697",
		["SkyboxLf"] = "http://www.roblox.com/asset/?id=1424484951",
		["SkyboxRt"] = "http://www.roblox.com/asset/?id=1424484760",
		["SkyboxUp"] = "http://www.roblox.com/asset/?id=1424484510",
	},
	["Earth"] = {

		["SkyboxBk"] = "http://www.roblox.com/asset/?id=166509999",
		["SkyboxDn"] = "http://www.roblox.com/asset/?id=166510057",
		["SkyboxFt"] = "http://www.roblox.com/asset/?id=166510116",
		["SkyboxLf"] = "http://www.roblox.com/asset/?id=166510092",
		["SkyboxRt"] = "http://www.roblox.com/asset/?id=166510131",
		["SkyboxUp"] = "http://www.roblox.com/asset/?id=166510114",
	},
	["Mountains"] = {
		["SkyboxBk"] = "http://www.roblox.com/asset/?id=368385273",
		["SkyboxDn"] = "http://www.roblox.com/asset/?id=48015300",
		["SkyboxFt"] = "http://www.roblox.com/asset/?id=368388290",
		["SkyboxLf"] = "http://www.roblox.com/asset/?id=368390615",
		["SkyboxRt"] = "http://www.roblox.com/asset/?id=368385190",
		["SkyboxUp"] = "http://www.roblox.com/asset/?id=48015387",
	},
	["Old Skybox"] = {
		["SkyboxBk"] = "http://www.roblox.com/asset/?id=15436783",
		["SkyboxDn"] = "http://www.roblox.com/asset/?id=15436796",
		["SkyboxFt"] = "http://www.roblox.com/asset/?id=15436831",
		["SkyboxLf"] = "http://www.roblox.com/asset/?id=15437157",
		["SkyboxRt"] = "http://www.roblox.com/asset/?id=15437166",
		["SkyboxUp"] = "http://www.roblox.com/asset/?id=15437184",
	},
	["Red Sky"] = {
		["SkyboxBk"] = "http://www.roblox.com/asset/?id=401664839",
		["SkyboxDn"] = "http://www.roblox.com/asset/?id=401664862",
		["SkyboxFt"] = "http://www.roblox.com/asset/?id=401664960",
		["SkyboxLf"] = "http://www.roblox.com/asset/?id=401664881",
		["SkyboxRt"] = "http://www.roblox.com/asset/?id=401664901",
		["SkyboxUp"] = "http://www.roblox.com/asset/?id=401664936",
	},
	["Stormy Sky"] = {
		["SkyboxBk"] = "http://www.roblox.com/asset/?id=1327366",
		["SkyboxDn"] = "http://www.roblox.com/asset/?id=1327367",
		["SkyboxFt"] = "http://www.roblox.com/asset/?id=1327362",
		["SkyboxLf"] = "http://www.roblox.com/asset/?id=1327363",
		["SkyboxRt"] = "http://www.roblox.com/asset/?id=1327361",
		["SkyboxUp"] = "http://www.roblox.com/asset/?id=1327368",
	},
	["Wasteland"] = {
		["SkyboxBk"] = "http://www.roblox.com/asset/?id=2046134302",
		["SkyboxDn"] = "http://www.roblox.com/asset/?id=2046134976",
		["SkyboxFt"] = "http://www.roblox.com/asset/?id=2046135977",
		["SkyboxLf"] = "http://www.roblox.com/asset/?id=2046135392",
		["SkyboxRt"] = "http://www.roblox.com/asset/?id=2046136939",
		["SkyboxUp"] = "http://www.roblox.com/asset/?id=2046136551",
	},
		["Bobux Generator"] = {

			["SkyboxBk"] = "http://www.roblox.com/asset/?id=6599826528",
			["SkyboxDn"] = "http://www.roblox.com/asset/?id=6599827328",
			["SkyboxFt"] = "http://www.roblox.com/asset/?id=6599833356",
			["SkyboxLf"] = "http://www.roblox.com/asset/?id=6599835206",
			["SkyboxRt"] = "http://www.roblox.com/asset/?id=6599835755",
			["SkyboxUp"] = "http://www.roblox.com/asset/?id=6599836686",
	},
		["Blue Sky"] = {
			["SkyboxBk"] = "http://www.roblox.com/asset/?id=226060119",
			["SkyboxDn"] = "http://www.roblox.com/asset/?id=226060115",
			["SkyboxFt"] = "http://www.roblox.com/asset/?id=226060143",
			["SkyboxLf"] = "http://www.roblox.com/asset/?id=226060136",
			["SkyboxRt"] = "http://www.roblox.com/asset/?id=226060155",
			["SkyboxUp"] = "http://www.roblox.com/asset/?id=226060167",
	},
		["Green Sky"] = {
			["SkyboxBk"] = "http://www.roblox.com/asset/?id=157711514",
			["SkyboxDn"] = "http://www.roblox.com/asset/?id=157711501",
			["SkyboxFt"] = "http://www.roblox.com/asset/?id=157711522",
			["SkyboxLf"] = "http://www.roblox.com/asset/?id=157711494",
			["SkyboxRt"] = "http://www.roblox.com/asset/?id=157711509",
			["SkyboxUp"] = "http://www.roblox.com/asset/?id=157711528",
	},
		["Red Sky 2"] = {
			["SkyboxBk"] = "http://www.roblox.com/asset/?id=157711982",
			["SkyboxDn"] = "http://www.roblox.com/asset/?id=157711970",
			["SkyboxFt"] = "http://www.roblox.com/asset/?id=157711989",
			["SkyboxLf"] = "http://www.roblox.com/asset/?id=157711966",
			["SkyboxRt"] = "http://www.roblox.com/asset/?id=157711978",
			["SkyboxUp"] = "http://www.roblox.com/asset/?id=157711996",
	},
	["Purple Nebula"] = {
        ["SkyboxBk"] = "rbxassetid://159454299",
        ["SkyboxDn"] = "rbxassetid://159454296",
        ["SkyboxFt"] = "rbxassetid://159454293",
        ["SkyboxLf"] = "rbxassetid://159454286",
        ["SkyboxRt"] = "rbxassetid://159454300",
        ["SkyboxUp"] = "rbxassetid://159454288",
    },
    ["Night Sky"] = {
        ["SkyboxBk"] = "rbxassetid://12064107",
        ["SkyboxDn"] = "rbxassetid://12064152",
        ["SkyboxFt"] = "rbxassetid://12064121",
        ["SkyboxLf"] = "rbxassetid://12063984",
        ["SkyboxRt"] = "rbxassetid://12064115",
        ["SkyboxUp"] = "rbxassetid://12064131",
    },
    ["Pink Daylight"] = {
        ["SkyboxBk"] = "rbxassetid://271042516",
        ["SkyboxDn"] = "rbxassetid://271077243",
        ["SkyboxFt"] = "rbxassetid://271042556",
        ["SkyboxLf"] = "rbxassetid://271042310",
        ["SkyboxRt"] = "rbxassetid://271042467",
        ["SkyboxUp"] = "rbxassetid://271077958",
    },
    ["Morning Glow"] = {
        ["SkyboxBk"] = "rbxassetid://1417494030",
        ["SkyboxDn"] = "rbxassetid://1417494146",
        ["SkyboxFt"] = "rbxassetid://1417494253",
        ["SkyboxLf"] = "rbxassetid://1417494402",
        ["SkyboxRt"] = "rbxassetid://1417494499",
        ["SkyboxUp"] = "rbxassetid://1417494643",
    },
    ["Setting Sun"] = {
        ["SkyboxBk"] = "rbxassetid://626460377",
        ["SkyboxDn"] = "rbxassetid://626460216",
        ["SkyboxFt"] = "rbxassetid://626460513",
        ["SkyboxLf"] = "rbxassetid://626473032",
        ["SkyboxRt"] = "rbxassetid://626458639",
        ["SkyboxUp"] = "rbxassetid://626460625",
    },
    ["Fade Blue"] = {
        ["SkyboxBk"] = "rbxassetid://153695414",
        ["SkyboxDn"] = "rbxassetid://153695352",
        ["SkyboxFt"] = "rbxassetid://153695452",
        ["SkyboxLf"] = "rbxassetid://153695320",
        ["SkyboxRt"] = "rbxassetid://153695383",
        ["SkyboxUp"] = "rbxassetid://153695471",
    },
    ["Elegant Morning"] = {
        ["SkyboxBk"] = "rbxassetid://153767241",
        ["SkyboxDn"] = "rbxassetid://153767216",
        ["SkyboxFt"] = "rbxassetid://153767266",
        ["SkyboxLf"] = "rbxassetid://153767200",
        ["SkyboxRt"] = "rbxassetid://153767231",
        ["SkyboxUp"] = "rbxassetid://153767288",
    },
    ["Neptune"] = {
        ["SkyboxBk"] = "rbxassetid://218955819",
        ["SkyboxDn"] = "rbxassetid://218953419",
        ["SkyboxFt"] = "rbxassetid://218954524",
        ["SkyboxLf"] = "rbxassetid://218958493",
        ["SkyboxRt"] = "rbxassetid://218957134",
        ["SkyboxUp"] = "rbxassetid://218950090",
    },
    ["Redshift"] = {
        ["SkyboxBk"] = "rbxassetid://401664839",
        ["SkyboxDn"] = "rbxassetid://401664862",
        ["SkyboxFt"] = "rbxassetid://401664960",
        ["SkyboxLf"] = "rbxassetid://401664881",
        ["SkyboxRt"] = "rbxassetid://401664901",
        ["SkyboxUp"] = "rbxassetid://401664936",
    },
    ["Aesthetic Night"] = {
        ["SkyboxBk"] = "rbxassetid://1045964490",
        ["SkyboxDn"] = "rbxassetid://1045964368",
        ["SkyboxFt"] = "rbxassetid://1045964655",
        ["SkyboxLf"] = "rbxassetid://1045964655",
        ["SkyboxRt"] = "rbxassetid://1045964655",
        ["SkyboxUp"] = "rbxassetid://1045962969",
    },
}	

  local NewScope
  do
    local ScreenGui = INST("ScreenGui")
    local Frame = INST("Frame")
    local Frame_2 = INST("Frame")

    ScreenGui.Enabled = false
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global
    ScreenGui.IgnoreGuiInset = true

    Frame.Parent = ScreenGui
    Frame.BackgroundColor3 = COL3RGB(0, 0, 0)
    Frame.BorderSizePixel = 1
    Frame.Position = UDIM2(0, 0, 0.5, 0)
    Frame.Size = UDIM2(1, 0, 0, 1)

    Frame_2.Parent = ScreenGui
    Frame_2.BackgroundColor3 = COL3RGB(0, 0, 0)
    Frame_2.BorderSizePixel = 1
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
      if i ~= "Parent" then
        obj[i] = v
      end
    end
    if prop["Parent"] ~= nil then
      obj.Parent = prop["Parent"]
    end
  end
  local function UpdateAccessory(Accessory)
    Accessory.Material = values.visuals.effects["accessory material"].Dropdown == "Smooth" and "SmoothPlastic" or "ForceField"
    Accessory.Mesh.VertexColor = VectorRGB(values.visuals.effects["accessory chams"].Color)
    Accessory.Color = values.visuals.effects["accessory chams"].Color
    Accessory.Transparency = values.visuals.effects["accessory chams"].Transparency
    if values.visuals.effects["accessory material"].Dropdown ~= "ForceField" then
      Accessory.Mesh.TextureId = ""
    else
      Accessory.Mesh.TextureId = Accessory.StringValue.Value
    end
  end
  local function ReverseAccessory(Accessory)
    Accessory.Material = "SmoothPlastic"
    Accessory.Mesh.VertexColor = Vec3(1,1,1)
    Accessory.Mesh.TextureId = Accessory.StringValue.Value
    Accessory.Transparency = 0
  end
  local function UpdateWeapon(obj)
    local selected = values.visuals.effects["weapon material"].Dropdown
    if obj:IsA("MeshPart") and selected == "ForceField" then
      if values.visuals.effects["forcefield type"].Dropdown == "normal" then
        obj.TextureID = ""
      elseif values.visuals.effects["forcefield type"].Dropdown == "web" then
        obj.TextureID = "rbxassetid://301464986"
      elseif values.visuals.effects["forcefield type"].Dropdown == "swirl" then
        obj.TextureID = "rbxassetid://8133639623"
      elseif values.visuals.effects["forcefield type"].Dropdown == "checkers" then
        obj.TextureID = "rbxassetid://5790215150"
      elseif values.visuals.effects["forcefield type"].Dropdown == "candy cane" then
        obj.TextureID = "rbxassetid://6853532738"
      elseif values.visuals.effects["forcefield type"].Dropdown == "player ff texture" then
        obj.TextureID = "rbxassetid://4494641460"
      elseif values.visuals.effects["forcefield type"].Dropdown == "shield forcefield" then
        obj.TextureID = "rbxassetid://361073795"
      elseif values.visuals.effects["forcefield type"].Dropdown == "dots" then
        obj.TextureID = "rbxassetid://5830615971"
      elseif values.visuals.effects["forcefield type"].Dropdown == "scanning (suggested by blast)" then
        obj.TextureID = "rbxassetid://5843010904"
      elseif values.visuals.effects["forcefield type"].Dropdown == "bubbles (suggested by blast)" then
        obj.TextureID = "rbxassetid://1461576423"
      end
    else
      if selected == "Smooth" or selected == "Glass" or selected == "Flat" then obj.TextureID = "" end
    end
    if obj:IsA("Part") and obj:FindFirstChild("Mesh") and not obj:IsA("BlockMesh") then
      obj.Mesh.VertexColor = VectorRGB(values.visuals.effects["weapon chams"].Color)
      if selected == "Smooth" or selected == "Glass" then
        obj.Mesh.TextureId = ""
      else
        pcall(function()
        obj.Mesh.TextureId = obj.Mesh.OriginalTexture.Value
        obj.Mesh.TextureID = obj.Mesh.OriginalTexture.Value
        end)
      end
    end
    obj.Color = values.visuals.effects["weapon chams"].Color
    obj.Material = selected == "Smooth" and "SmoothPlastic" or selected == "Flat" and "Neon" or selected == "ForceField" and "ForceField" or "Glass"
    obj.Reflectance = values.visuals.effects["reflectance"].Slider/10
    obj.Transparency = values.visuals.effects["weapon chams"].Transparency
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
      if not SkinData:FindFirstChild("Animated") then
        for _,Data in pairs(SkinData:GetChildren()) do
          local Obj = Camera.Arms:FindFirstChild(Data.Name)
          if Obj ~= nil and Obj.Transparency ~= 1 then
            if Obj:FindFirstChild("Mesh") then
              Obj.Mesh.TextureId = v.Value
            elseif not Obj:FindFirstChild("Mesh") then
              Obj.TextureID = Data.Value
            end
          end
        end
      end
    end
  end
  local function ChangeCharacter(NewCharacter)
    for _,Part in pairs (LocalPlayer.Character:GetChildren()) do
      if Part:IsA("Accessory") then
        Part:Destroy()
      end
      if Part:IsA("BasePart") then
        if NewCharacter:FindFirstChild(Part.Name) then
          Part.Color = NewCharacter:FindFirstChild(Part.Name).Color
          Part.Transparency = NewCharacter:FindFirstChild(Part.Name).Transparency
        end
        if Part.Name == "FakeHead" then
          Part.Color = NewCharacter:FindFirstChild("Head").Color
          Part.Transparency = NewCharacter:FindFirstChild("Head").Transparency
        end
      end

      if (Part.Name == "Head" or Part.Name == "FakeHead") and Part:FindFirstChildOfClass("Decal") and NewCharacter.Head:FindFirstChildOfClass("Decal") then
        Part:FindFirstChildOfClass("Decal").Texture = NewCharacter.Head:FindFirstChildOfClass("Decal").Texture
      end
    end

    if NewCharacter:FindFirstChildOfClass("Shirt") then
      if LocalPlayer.Character:FindFirstChildOfClass("Shirt") then
        LocalPlayer.Character:FindFirstChildOfClass("Shirt"):Destroy()
      end
      local Clone = NewCharacter:FindFirstChildOfClass("Shirt"):Clone()
      Clone.Parent = LocalPlayer.Character
    end

    if NewCharacter:FindFirstChildOfClass("Pants") then
      if LocalPlayer.Character:FindFirstChildOfClass("Pants") then
        LocalPlayer.Character:FindFirstChildOfClass("Pants"):Destroy()
      end
      local Clone = NewCharacter:FindFirstChildOfClass("Pants"):Clone()
      Clone.Parent = LocalPlayer.Character
    end

    for _,Part in pairs (NewCharacter:GetChildren()) do
      if Part:IsA("Accessory") then
        local Clone = Part:Clone()
        for _,Weld in pairs (Clone.Handle:GetChildren()) do
          if Weld:IsA("Weld") and Weld.Part1 ~= nil then
            Weld.Part1 = LocalPlayer.Character[Weld.Part1.Name]
          end
        end
        Clone.Parent = LocalPlayer.Character
      end
    end

    if LocalPlayer.Character:FindFirstChildOfClass("Shirt") then
      local String = INST("StringValue")
      String.Name = "OriginalTexture"
      String.Value = LocalPlayer.Character:FindFirstChildOfClass("Shirt").ShirtTemplate
      String.Parent = LocalPlayer.Character:FindFirstChildOfClass("Shirt")

      if TBLFIND(values.visuals.effects.removals.Jumbobox, "clothes") then
        LocalPlayer.Character:FindFirstChildOfClass("Shirt").ShirtTemplate = ""
      end
    end
    if LocalPlayer.Character:FindFirstChildOfClass("Pants") then
      local String = INST("StringValue")
      String.Name = "OriginalTexture"
      String.Value = LocalPlayer.Character:FindFirstChildOfClass("Pants").PantsTemplate
      String.Parent = LocalPlayer.Character:FindFirstChildOfClass("Pants")

      if TBLFIND(values.visuals.effects.removals.Jumbobox, "clothes") then
        LocalPlayer.Character:FindFirstChildOfClass("Pants").PantsTemplate = ""
      end
    end
    for i,v in pairs(LocalPlayer.Character:GetChildren()) do
      if v:IsA("BasePart") and v.Transparency ~= 1 then
        INSERT(SelfObj, v)
        local Color = INST("Color3Value")
        Color.Name = "OriginalColor"
        Color.Value = v.Color
        Color.Parent = v

        local String = INST("StringValue")
        String.Name = "OriginalMaterial"
        String.Value = v.Material.Name
        String.Parent = v
      elseif v:IsA("Accessory") and v.Handle.Transparency ~= 1 then
        INSERT(SelfObj, v.Handle)
        local Color = INST("Color3Value")
        Color.Name = "OriginalColor"
        Color.Value = v.Handle.Color
        Color.Parent = v.Handle

        local String = INST("StringValue")
        String.Name = "OriginalMaterial"
        String.Value = v.Handle.Material.Name
        String.Parent = v.Handle
      end
    end

    if values.visuals.self["self chams"].Toggle then
      for _,obj in pairs(SelfObj) do
        if obj.Parent ~= nil then
          obj.Material = values.visuals.self["self chams material"].Dropdown
          obj.Color = values.visuals.self["self chams"].Color
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

  for i,v in pairs(Viewmodels:GetChildren()) do
    if v:FindFirstChild("HumanoidRootPart") and v.HumanoidRootPart.Transparency ~= 1 then
      v.HumanoidRootPart.Transparency = 1
    end
  end

  local Models = game:GetObjects("rbxassetid://8356647750")[1]
  repeat wait() until Models ~= nil
    local ChrModels = game:GetObjects("rbxassetid://8370129931")[1]
    repeat wait() until ChrModels ~= nil


      local AllKnives = {
        "CT Knife",
        "T Knife",
        "Banana",
        "Bayonet",
        "Bearded Axe",
        "Butterfly Knife",
        "Cleaver",
        "Crowbar",
        "Falchion Knife",
        "Flip Knife",
        "Gut Knife",
        "Huntsman Knife",
        "Karambit",
        "Sickle",
      }

      local AllGloves = {}


      for _,fldr in pairs(Gloves:GetChildren()) do
        if fldr ~= GloveModels and fldr.Name ~= "Racer" then
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
        {["Weapon"] = "AWP", ["SkinName"] = "Bot", ["Skin"] = {["Scope"] = "6572594838", ["Handle"] = "6572594077"}}
      }

      for _,skin in pairs (skins) do
        local Folder = INST("Folder")
        Folder.Name = skin["SkinName"]
        Folder.Parent = Skins[skin["Weapon"]]

        for _,model in pairs (skin["Skin"]) do
          local val = INST("StringValue")
          val.Name = _
          val.Value = "rbxassetid://"..model
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
        INSERT(AllSkins[v], "Inventory")
        for _,v2 in pairs(Skins[v]:GetChildren()) do
          if not v2:FindFirstChild("Animated") then
            INSERT(AllSkins[v], v2.Name)
          end
        end
      end

      makefolder("bloxware/luas")

      local allluas = {}

      for _,lua in pairs(listfiles("bloxware/luas")) do
        local luaname = GSUB(lua, "bloxware/luas\\", "")
        INSERT(allluas, luaname)
      end
      
      RunService.RenderStepped:Wait()
      local gui = library:New("bloxware.xyz // v0.86 // developer edition")
      local legit = gui:Tab("legit")
      local rage = gui:Tab("rage")
      local aatab = gui:Tab("anti-aim")
      local visuals = gui:Tab("visuals")
      local misc = gui:Tab("misc")
      local skins = gui:Tab("skins")


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


local luascripts = misc:Sector("lua scripts", "Right")
luascripts:Element("Scroll", "lua", {options = allluas, Amount = 5})
luascripts:Element("Button", "load", {}, function()
loadstring(readfile("bloxlua\\"..values.misc["lua scripts"].lua.Scroll))()
end)

local knife = skins:Sector("knife", "Left")
knife:Element("Toggle", "knife changer")
knife:Element("Scroll", "model", {options = AllKnives, Amount = 15})

local glove = skins:Sector("glove", "Left")
glove:Element("Toggle", "glove changer")
glove:Element("ScrollDrop", "model", {options = AllGloves, Amount = 9})

local skin = skins:Sector("skins", "Right")
skin:Element("Toggle", "skin changer")
skin:Element("ScrollDrop", "skin", {options = AllSkins, Amount = 15, alphabet = true})

local characters = skins:Sector("characters", "Right")
characters:Element("Toggle", "character changer", nil, function(tbl)
if tbl.Toggle then
  if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Gun") then
    ChangeCharacter(ChrModels:FindFirstChild(values.skins.characters.skin.Scroll))
  end
end
end)
characters:Element("Scroll", "skin", {options = AllCharacters, Amount = 9, alphabet = true}, function(tbl)
if values.skins.characters["character changer"].Toggle then
  if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Gun") then
    ChangeCharacter(ChrModels:FindFirstChild(tbl.Scroll))
  end
end
end)

local aimbot = legit:Sector("aimbot", "Left")
aimbot:Element("ToggleKeybind", "aim assist")
aimbot:Element("ToggleKeybind", "silent aim")
aimbot:Element("ToggleKeybind", "triggerbot")

local main = legit:MSector("main", "Left")
local default = main:Tab("default")
local pistol = main:Tab("pistol")
local smg = main:Tab("smg")
local rifle = main:Tab("rifle")
local sniper = main:Tab("sniper")

local function AddLegit(Tab)
  Tab:Element("Jumbobox", "conditions", {options = {"visible", "standing", "blind", "smoke"}})
  Tab:Element("Dropdown", "target", {options = {"crosshair", "health", "distance"}})
  Tab:Element("Dropdown", "hitbox", {options = {"closest", "head", "chest"}})
  Tab:Element("Slider", "field of view", {min = 30, max = 420, default = 120})
  Tab:Element("Slider", "smoothing", {min = 1, max = 50, default = 1})
  Tab:Element("Toggle", "silent aim")
  Tab:Element("Slider", "hitchance", {min = 1, max = 100, default = 100})
  Tab:Element("Dropdown", "priority", {options = {"closest", "head", "chest"}})
  Tab:Element("Toggle", "triggerbot")
  Tab:Element("Slider", "delay (ms)", {min = 0, max = 300, default = 200})
  Tab:Element("Slider", "minimum dmg", {min = 0, max = 100, default = 15})
end

AddLegit(default)

pistol:Element("Toggle", "override default")
AddLegit(pistol)

smg:Element("Toggle", "override default")
AddLegit(smg)

rifle:Element("Toggle", "override default")
AddLegit(rifle)

sniper:Element("Toggle", "override default")
AddLegit(sniper)

local settings = legit:Sector("settings", "Right")
settings:Element("Toggle", "free for all")
settings:Element("Toggle", "forcefield check")
settings:Element("ToggleColor", "draw fov")

local aimbot = rage:Sector("aimbot", "Left")
aimbot:Element("ToggleKeybind", "enabled (rage)")
aimbot:Element("Dropdown", "origin", {options = {"character", "camera"}})
aimbot:Element("Toggle", "silent aim")
aimbot:Element("Dropdown", "automatic fire", {options = {"off", "standard", "hitpart"}})
aimbot:Element("Toggle", "autowall")
aimbot:Element("Dropdown", "autowall type", {options = {"off", "slight", "bloxware", "bloxware+"}})
--aimbot:Element("Slider", "penetration", {min = 0, max = 500, default = 0})
aimbot:Element("Jumbobox", "resolver", {options = {"pitch", "front track", "resolve angles", "gay resolver", "floppaware", "floppaware v2", "arms", "mega track", "deadware", "roll", "animation"}})
--aimbot:Element("Dropdown", "resolver type", {options = {"built in", "custom"}})
--[[aimbot:Element("Toggle", "forward track")
aimbot:Element("Slider", "ft multiplier", {min = 0, max = 100, default = 0})]]
aimbot:Element("Dropdown", "force hit method", {options = {"off", "character", "head"}})
aimbot:Element("Slider", "hits multiplier", {min = 1, max = 110, default = 1})
aimbot:Element("Dropdown", "prediction", {options = {"off", "cframe", "velocity", "automatic"}})
aimbot:Element("Slider", "prediction multiplier", {min = -1000, max = 1000, default = 0})
--aimbot:Element("Slider", "prediction multiplier 2", {min = -1000, max = 1000, default = 0})
aimbot:Element("Toggle", "strafe target")
aimbot:Element("Slider", "strafe height", {min = -100, max = 100, default = 0})
aimbot:Element("Slider", "strafe distance", {min = 1, max = 100, default = 1})
aimbot:Element("Slider", "strafe speed", {min = 1, max = 100, default = 1})
aimbot:Element("Toggle", "shoot before round starts")
aimbot:Element("Toggle", "delay shot")
aimbot:Element("Toggle", "teammates")
aimbot:Element("ToggleKeybind", "auto baim")
aimbot:Element("Toggle", "knifebot")

local weapons = rage:MSector("weapons", "Right")
local default = weapons:Tab("default")
local pistol = weapons:Tab("pistol")
local rifle = weapons:Tab("rifle")
local scout = weapons:Tab("scout")
local awp = weapons:Tab("awp")
local auto = weapons:Tab("auto")

local function AddRage(Tab)
  Tab:Element("Jumbobox", "hitboxes", {options = {"head", "torso", "pelvis", "arms", "feet", "humanoidrootpart"}})
  Tab:Element("Toggle", "prefer baim")
  Tab:Element("Slider", "minimum damage", {min = -10, max = 100, default = 20})
  Tab:Element("Slider", "max fov", {min = 1, max = 180, default = 180})
end

AddRage(default)

pistol:Element("Toggle", "override default")
AddRage(pistol)

rifle:Element("Toggle", "override default")
AddRage(rifle)

scout:Element("Toggle", "override default")
AddRage(scout)

awp:Element("Toggle", "override default")
AddRage(awp)

auto:Element("Toggle", "override default")
AddRage(auto)

local antiaim = aatab:Sector("angles", "Left")
antiaim:Element("Toggle", "enabled")
local Client = getsenv(game.Players.LocalPlayer.PlayerGui.Client)
fakeduckloop = false
antiaim:Element("ToggleKeybind", "fake duck",{},function(tbl)
fakeduckloop = tbl.Toggle
while fakeduckloop and syn do
  pcall(function()
  wait(1)
  local Client = getsenv(game.Players.LocalPlayer.PlayerGui.Client)
  local CrouchAnim = nil
  for i,v in pairs(debug.getupvalues(Client.setcharacter)) do
    if type(v) == "userdata" and v.ClassName == "AnimationTrack" and v.Name == "Idle" then
      CrouchAnim = v
    end
  end

  CrouchAnim:Play()
  end)
end
end)
antiaim:Element("Dropdown", "yaw base", {options = {"camera", "targets", "spin", "random", "anti crippin'", "unhittable", "keybind yaw"}})
antiaim:Element("Slider", "yaw offset", {min = -180, max = 180, default = 0})
antiaim:Element("ToggleKeybind", "manual left")
antiaim:Element("ToggleKeybind", "manual right")
antiaim:Element("ToggleKeybind", "reset yaw")
antiaim:Element("Toggle", "jitter")
antiaim:Element("Slider", "jitter offset", {min = -180, max = 180, default = 0})
antiaim:Element("Dropdown", "pitch", {options = {"none", "up", "down", "fake up", "fake down", "fake zero", "joe.tapped", "180", "180v2", "180v3", "random", "random2", "totally normal", "totally normal2", "down2", "up2", "sucking dick", "fake headless", "huge"}})
antiaim:Element("Toggle", "custom pitch")
antiaim:Element("Slider", "pitch value", {min = -100, max = 100, default = 0})
antiaim:Element("Toggle", "extend pitch")
antiaim:Element("ToggleKeybind", "reset pitch")
antiaim:Element("Dropdown", "body roll", {options = {"off", "180", "360"}})
antiaim:Element("Slider", "body roll offset", {min = -180, max = 180, default = 0})
antiaim:Element("Slider", "spin speed", {min = 1, max = 69, default = 10})
antiaim:Element("Slider", "high pos", {min = -3, max = 20, default = 2})

local others = aatab:Sector("others", "Right")
others:Element("Toggle", "remove head (gay)")
others:Element("Toggle", "no animations")
others:Element("Dropdown", "leg movement", {options = {"off", "slide", "slide2" , "slide3"}})

local LagTick = 0
local fakelag = aatab:Sector("fakelag", "Right")
fakelag:Element("Toggle", "enabled", {default = {Toggle = false}}, function(tbl)
if tbl.Toggle then
else
  FakelagFolder:ClearAllChildren()
  game:GetService("NetworkClient"):SetOutgoingKBPSLimit(9e9)
end
end)
fakelag:Element('Slider', 'set ping', {min = -100, max = 100, default = 0})
			game:GetService('Players').LocalPlayer.Ping.Changed:Connect(function()
				if values['anti-aim'].fakelag['set ping'].Slider ~= 0 then 
					game:GetService('ReplicatedStorage').Events.UpdatePing:FireServer( values.rage.fakelag['set ping'].Slider/10)
				end
			end)
fakelag:Element("Dropdown", "amount", {options = {"static", "dynamic"}})
fakelag:Element("Slider", "limit", {min = 1, max = 16, default = 8})
fakelag:Element('Toggle', 'ddos', {default = {Toggle = false}}, function(tbl)
				if tbl.Toggle then
					spawn(function()
						while values['anti-aim'].fakelag["ddos"].Toggle   do
							pcall(function()
								game:GetService("RunService").RenderStepped:Wait()
								game:GetService("RunService").RenderStepped:Wait()
								for i = 1,values.rage.fakelag["ddos amount"].Slider,1 do
									local ohInstance1 = LocalPlayer.Character.Gun.Mag              
									game:GetService("ReplicatedStorage").Events.DropMag:FireServer(ohInstance1)
									for i,v in pairs(workspace["Ray_Ignore"]:GetChildren()) do
										if v.Name == "MagDrop" then
											v:Destroy()
										end
									end
								end
							end)       
						end 
					end)
				end
end)
fakelag:Element('Slider', 'ddos amount', {min = 1, max = 10, default = 1})
fakelag:Element("ToggleColor", "visualize lag", {default = {Toggle = false, Color = Color3.fromRGB(255,255,255)}}, function(tbl)
if tbl.Toggle then
  for _,obj in pairs(FakelagFolder:GetChildren()) do
    obj.Color = tbl.Color
  end
else
  FakelagFolder:ClearAllChildren()
end
end)
fakelag:Element("Dropdown", "visualize lag material", {options = {"Neon", "ForceField","SmoothPlastic", "Glass", "Plastic", "Wood", "WoodPlanks", "Marble", "Slate", "Concrete", "Granite", "Brick", "Pebble", "Cobblestone", "CorrodedMetal", "DiamondPlate", "Foil", "Metal", "Grass", "Sand", "Fabric", "Ice"}})
fakelag:Element("ToggleKeybind", "ping spike")
coroutine.wrap(function()
while wait(1/16) do
  LagTick = math.clamp(LagTick + 1, 0, values["anti-aim"].fakelag.limit.Slider)
  if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("UpperTorso") and values["anti-aim"].fakelag.enabled.Toggle then
    if LagTick == (values["anti-aim"].fakelag.amount.Dropdown == "static" and values["anti-aim"].fakelag.limit.Slider or math.random(1, values["anti-aim"].fakelag.limit.Slider)) then
      game:GetService("NetworkClient"):SetOutgoingKBPSLimit(9e9)
      FakelagFolder:ClearAllChildren()
      LagTick = 0
      if values["anti-aim"].fakelag["visualize lag"].Toggle then
        for _,hitbox in pairs(LocalPlayer.Character:GetChildren()) do
          if hitbox:IsA("BasePart") and hitbox.Name ~= "HumanoidRootPart" then
            local part = Instance.new("Part")
            part.CFrame = hitbox.CFrame
            part.Anchored = true
            part.CanCollide = false
            part.Material = Enum.Material.ForceField
            part.Color = values["anti-aim"].fakelag["visualize lag"].Color
            part.Name = hitbox.Name
            part.Transparency = 0
            part.Size = hitbox.Size
            part.Parent = FakelagFolder
          end
        end
      end
    else
      if values["anti-aim"].fakelag.enabled.Toggle then
        game:GetService("NetworkClient"):SetOutgoingKBPSLimit(1)
      end
    end
  else
    FakelagFolder:ClearAllChildren()
    game:GetService("NetworkClient"):SetOutgoingKBPSLimit(9e9)
  end
end
end)()

local exploits = rage:Sector("exploits", "Right")

exploits:Element("ToggleKeybind", "double tap")
exploits:Element("ToggleKeybind", "quad tap")
exploits:Element("ToggleKeybind", "kill all")
exploits:Element("ToggleKeybind", "deathpaste killall") -- credits to shippy
exploits:Element("ToggleKeybind", "knife kill all")
exploits:Element("Slider", "hits amount", {min = 1, max = 60, default = 1}) 
exploits:Element('Toggle', 'whizz all')
exploits:Element("Toggle","debris clear",{},function(tbl)
while values.rage.exploits["debris clear"].Toggle == true do
  wait(1)
  for i,v in pairs(workspace.Debris:GetDescendants()) do
    game:GetService("ReplicatedStorage").Events.DestroyObject:FireServer(v)
  end
end
end)
local AutoPeek = {
  OldPeekPosition = CFrame.new()
}

exploits:Element("ToggleKeybind","auto peek",{},function(tbl)
if tbl.Toggle and tbl.Active and LocalPlayer.Character then
  AutoPeek.OldPeekPosition = LocalPlayer.Character.HumanoidRootPart.CFrame
end
end)
exploits:Element('ToggleKeybind', 'FreezeLOL!', nil, function(tbl)
				if tbl.Toggle and tbl.Active then
					local Freto = Instance.new("Part")
					Freto.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
					Freto.CanCollide = false

					Freto.BottomSurface = Enum.SurfaceType.Smooth
					Freto.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
					Freto.Name = "Freto"
					Freto.Size = Vector3.new(30, 1, 30)
					Freto.TopSurface = Enum.SurfaceType.Smooth
					Freto.Parent = game:GetService("Workspace")
					Freto.Transparency = 1

					local Part = Instance.new("Part")
					Part.CanCollide = false
					Part.Anchored = true
					Part.BottomSurface = Enum.SurfaceType.Smooth
					Part.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
					Part.Material = Enum.Material.ForceField
					Part.Shape = Enum.PartType.Ball
					Part.Size = Vector3.new(2, 2, 2)
					Part.TopSurface = Enum.SurfaceType.Smooth
					Part.Transparency = 0.3
					Part.Parent = Freto
					Part.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position

					local Weld = Instance.new("Weld", Freto)
					Weld.Parent = Freto
					Weld.Part0 = Freto
					Weld.Part1 = game.Players.LocalPlayer.Character.HumanoidRootPart
				else
					game.Workspace.Freto:Destroy()
				end
			end)
			freezebusy1 = false
			freezebusy2 = false

exploits:Element("ToggleKeybind", "quick peek")
exploits:Element("Slider", "qp vertical pos", {min = -500, max = 500, default = 200})
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
OldClientFireBullet = Client.firebullet
Client.firebullet = function(...)
if values.rage.exploits["auto peek"].Toggle and values.rage.exploits["auto peek"].Active and LocalPlayer.Character then
  LocalPlayer.Character.HumanoidRootPart.CFrame = AutoPeek.OldPeekPosition
end
return OldClientFireBullet(...)
end

local buybot = rage:Sector("buybot", "Left")
buybot:Element("Toggle", "automatic buy")
buybot:Element("Dropdown", "primary", {options = {"G3SG1","AWP","M4A4","Scout","AK47","SG","Galil","MG42","M249","SawedOff","XM1014","Nova","Thompson","P90","UMP","MP5","MAC10"}}) 
buybot:Element("Dropdown", "secondary", {options = {"USP", "P2000", "Glock", "DualBerettas", "P250", "FiveSeven", "Tec9", "CZ", "DesertEagle", "R8"}}) 
LocalPlayer.CharacterAdded:Connect(function(autobuyshit)  
	if values.rage.buybot["primary"].Dropdown ~= "" or values.rage.buybot["secondary"].Dropdown ~= "" then
		gunbot = values.rage.buybot["secondary"].Dropdown
		gunbot2 = values.rage.buybot["primary"].Dropdown
		
		local givefunc
		for _, v in pairs(getgc()) do
			parentScript = rawget(getfenv(v), "script")
			if type(v) == "function" and parentScript == game:GetService("Players").LocalPlayer.PlayerGui.Client and islclosure(v) and debug.getinfo(v).name == "giveTool" then
				givefunc = v
				break
			end
		end
		if values.rage.buybot["automatic buy"].Toggle then
			debug.setupvalue(givefunc, 8, gunbot2)
			debug.setupvalue(givefunc, 7, gunbot) 
		end
	end
end)
buybot:Element('ToggleKeybind', 'buy g3sg1', nil, function(tbl) -- buybot from my friend v3rsiinal :)
	if tbl.Toggle then
	local gun = "G3SG1"
	local givefunc
	for _, v in pairs(getgc()) do
	local parentScript = rawget(getfenv(v), "script")

		if type(v) == "function" and parentScript == game:GetService("Players").LocalPlayer.PlayerGui.Client and islclosure(v) and not is_synapse_function(v) and debug.getinfo(v).name == "giveTool" then
			givefunc = v
			break
		end
	end
	debug.setupvalue(givefunc, 7, gun)
	end
end)

buybot:Element('ToggleKeybind', 'buy scout', nil, function(tbl) -- buybot made by my friend v3rsiinal :)
	if tbl.Toggle then
	local gun = "Scout"
	local givefunc
	for _, v in pairs(getgc()) do
	local parentScript = rawget(getfenv(v), "script")

		if type(v) == "function" and parentScript == game:GetService("Players").LocalPlayer.PlayerGui.Client and islclosure(v) and not is_synapse_function(v) and debug.getinfo(v).name == "giveTool" then
			givefunc = v
			break
		end
	end
	debug.setupvalue(givefunc, 7, gun)
	end
end)

buybot:Element('ToggleKeybind', 'buy p90', nil, function(tbl)
    if tbl.Toggle then
	-- pasted from google
	local gun = "P90"
	local givefunc
	for _, v in pairs(getgc()) do
	local parentScript = rawget(getfenv(v), "script")

		if type(v) == "function" and parentScript == game:GetService("Players").LocalPlayer.PlayerGui.Client and islclosure(v) and not is_synapse_function(v) and debug.getinfo(v).name == "giveTool" then
			givefunc = v
			break
		end
	end
	debug.setupvalue(givefunc, 7, gun)
	end
end)

buybot:Element('ToggleKeybind', 'buy awp', nil, function(tbl)
    if tbl.Toggle then
	-- pasted from google
	local gun = "AWP"
	local givefunc
	for _, v in pairs(getgc()) do
	local parentScript = rawget(getfenv(v), "script")

		if type(v) == "function" and parentScript == game:GetService("Players").LocalPlayer.PlayerGui.Client and islclosure(v) and not is_synapse_function(v) and debug.getinfo(v).name == "giveTool" then
			givefunc = v
			break
		end
	end
	debug.setupvalue(givefunc, 7, gun)
	end
end)

buybot:Element('ToggleKeybind', 'buy ak47', nil, function(tbl)
    if tbl.Toggle then
	-- pasted from google
	local gun = "AK47"
	local givefunc
	for _, v in pairs(getgc()) do
	local parentScript = rawget(getfenv(v), "script")

		if type(v) == "function" and parentScript == game:GetService("Players").LocalPlayer.PlayerGui.Client and islclosure(v) and not is_synapse_function(v) and debug.getinfo(v).name == "giveTool" then
			givefunc = v
			break
		end
	end
	debug.setupvalue(givefunc, 7, gun)
    end
end)

buybot:Element('ToggleKeybind', 'buy usp', nil, function(tbl)
    if tbl.Toggle then
	-- pasted from google
	local gun = "USP"
	local givefunc
	for _, v in pairs(getgc()) do
	local parentScript = rawget(getfenv(v), "script")

		if type(v) == "function" and parentScript == game:GetService("Players").LocalPlayer.PlayerGui.Client and islclosure(v) and not is_synapse_function(v) and debug.getinfo(v).name == "giveTool" then
			givefunc = v
			break
		end
	end
	debug.setupvalue(givefunc, 7, gun)
	end
end)

buybot:Element('ToggleKeybind', 'buy m4a4', nil, function(tbl)
    if tbl.Toggle then
	-- pasted from google
	local gun = "M4A4"
	local givefunc
	for _, v in pairs(getgc()) do
	local parentScript = rawget(getfenv(v), "script")

		if type(v) == "function" and parentScript == game:GetService("Players").LocalPlayer.PlayerGui.Client and islclosure(v) and not is_synapse_function(v) and debug.getinfo(v).name == "giveTool" then
			givefunc = v
			break
		end
	end
	debug.setupvalue(givefunc, 7, gun)
	end
end)

buybot:Element('ToggleKeybind', 'buy deagle', nil, function(tbl)
    if tbl.Toggle then
	-- pasted from Earth
	local gun = "DesertEagle"
	local givefunc
	for _, v in pairs(getgc()) do
	local parentScript = rawget(getfenv(v), "script")

		if type(v) == "function" and parentScript == game:GetService("Players").LocalPlayer.PlayerGui.Client and islclosure(v) and not is_synapse_function(v) and debug.getinfo(v).name == "giveTool" then
			givefunc = v
			break
		end
	end
	debug.setupvalue(givefunc, 7, gun)
	end
end)

buybot:Element('ToggleKeybind', 'buy c4', nil, function(tbl)
    if tbl.Toggle then
	-- pasted from Earth
	local gun = "C4"
	local givefunc
	for _, v in pairs(getgc()) do
	local parentScript = rawget(getfenv(v), "script")

		if type(v) == "function" and parentScript == game:GetService("Players").LocalPlayer.PlayerGui.Client and islclosure(v) and not is_synapse_function(v) and debug.getinfo(v).name == "giveTool" then
			givefunc = v
			break
		end
	end
	debug.setupvalue(givefunc, 7, gun)
	end
end)

buybot:Element('ToggleKeybind', 'buy tec9', nil, function(tbl)
    if tbl.Toggle then
	-- pasted from Earth
	local gun = "Tec9"
	local givefunc
	for _, v in pairs(getgc()) do
	local parentScript = rawget(getfenv(v), "script")

		if type(v) == "function" and parentScript == game:GetService("Players").LocalPlayer.PlayerGui.Client and islclosure(v) and not is_synapse_function(v) and debug.getinfo(v).name == "giveTool" then
			givefunc = v
			break
		end
	end
	debug.setupvalue(givefunc, 7, gun)
	end
end)

local players = visuals:Sector("players", "Left")
players:Element("Toggle", "teammates")
players:Element("ToggleColor", "box", {default = {Color = COL3RGB(255,255,255)}})
players:Element("ToggleColor", "name", {default = {Color = COL3RGB(255,255,255)}})
players:Element("Toggle", "health", {default = {Color = COL3RGB(255,255,255)}})
players:Element("ToggleColor", "weapon", {default = {Color = COL3RGB(255,255,255)}})
players:Element("ToggleColor", "weapon icon", {default = {Color = COL3RGB(255,255,255)}})
players:Element("Jumbobox", "indicators", {options = {"armor"}})
players:Element("Jumbobox", "outlines", {options = {"drawings", "text"}, default = {Jumbobox = {"drawings", "text"}}})
players:Element("Dropdown", "font", {options = {"Plex", "Monospace", "System", "UI"}})
players:Element("Slider", "size", {min = 12, max = 16, default = 13})
players:Element("ToggleTrans", "chams", nil, function(tbl)
for _,Player in pairs(Players:GetPlayers()) do
if Player.Character then
  for _2,Obj in pairs(Player.Character:GetDescendants()) do
    if Obj.Name == "VisibleCham" then
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
      Obj.Transparency = tbl.Transparency
    end
  end
end
end
end)
players:Element("ToggleTrans", "outline chams", nil, function(tbl)
for _,Player in pairs(Players:GetPlayers()) do
if Player.Character then
  for _2,Obj in pairs(Player.Character:GetDescendants()) do
    if Obj.Name == "WallCham" then
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
      Obj.Transparency = tbl.Transparency
    end
  end
end
end
end)

local effects = visuals:Sector("effects", "Right")
effects:Element("ToggleTrans", "weapon chams", {default = {Color = COL3RGB(255,255,255), Transparency = 0}}, function(tbl)
if WeaponObj == nil then return end
if tbl.Toggle then
for i,v in pairs(WeaponObj) do
  UpdateWeapon(v)
end
else
for i,v in pairs(WeaponObj) do
  if v:IsA("MeshPart") then v.TextureID = v.OriginalTexture.Value end
  if v:IsA("Part") and v:FindFirstChild("Mesh") and not v:IsA("BlockMesh") then
    v.Mesh.TextureId = v.Mesh.OriginalTexture.Value
    v.Mesh.VertexColor = Vec3(1,1,1)
  end
  v.Color = v.OriginalColor.Value
  v.Material = v.OriginalMaterial.Value
  v.Transparency = 0
end
end
end)
effects:Element("Dropdown", "weapon material", {options = {"Smooth", "Flat", "ForceField", "Glass"}}, function(tbl)
if WeaponObj == nil then return end
if values.visuals.effects["weapon chams"].Toggle then
for i,v in pairs(WeaponObj) do
  UpdateWeapon(v)
end
end
end)
effects:Element("Dropdown", "forcefield type", {options = {"normal", "pulse", "web", "swirl", "checkers", "candy cane", "player ff texture","shield forcefield", "dots", "scanning", "bubbles"}})
effects:Element("Slider", "reflectance", {min = 0, max = 100, default = 0}, function(tbl)
if values.visuals.effects["weapon chams"].Toggle then
for i,v in pairs(WeaponObj) do
  UpdateWeapon(v)
end
end
end)
effects:Element("ToggleTrans", "accessory chams", {default = {Color = COL3RGB(255,255,255)}}, function(val)
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
effects:Element("Dropdown", "accessory material", {options = {"Smooth","ForceField", "Neon"}}, function(val)
if RArm == nil or LArm == nil then return end
if values.visuals.effects["accessory chams"].Toggle then
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
effects:Element("ToggleTrans", "arm chams", {default = {Color = COL3RGB(255,255,255)}}, function(val)
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

effects:Element("Jumbobox", "removals", {options = {"scope", "scope lines", "flash", "smoke", "decals", "shadows", "clothes"}}, function(val)
local tbl = val.Jumbobox
if TBLFIND(tbl, "decals") then
Client.createbullethole = function() end
for i,v in pairs(workspace.Debris:GetChildren()) do
  if v.Name == "Bullet" or v.Name == "SurfaceGui" then
    v:Destroy()
  end
end
else
Client.createbullethole = oldcreatebullethole
end
if TBLFIND(tbl, "clothes") then
if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("UpperTorso") then
  if LocalPlayer.Character:FindFirstChild("Shirt") then
    LocalPlayer.Character:FindFirstChild("Shirt").ShirtTemplate = ""
  end
  if LocalPlayer.Character:FindFirstChild("Pants") then
    LocalPlayer.Character:FindFirstChild("Pants").PantsTemplate = ""
  end
end
else
if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("UpperTorso") then
  if LocalPlayer.Character:FindFirstChild("Shirt") then
    LocalPlayer.Character:FindFirstChild("Shirt").ShirtTemplate = LocalPlayer.Character:FindFirstChild("Shirt").OriginalTexture.Value
  end
  if LocalPlayer.Character:FindFirstChild("Pants") then
    LocalPlayer.Character:FindFirstChild("Pants").PantsTemplate = LocalPlayer.Character:FindFirstChild("Pants").OriginalTexture.Value
  end
end
end
if TBLFIND(tbl, "scope") then
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
PlayerGui.Blnd.Enabled = not TBLFIND(tbl, "flash") and true or false
Lighting.GlobalShadows = not TBLFIND(tbl, "shadows") and true or false
if RayIgnore:FindFirstChild("Smokes") then
if TBLFIND(tbl, "smoke") then
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
effects:Element("Toggle", "force crosshair")
effects:Element("ToggleColor", "world color", {default = {Color = COL3RGB(255,255,255)}}, function(val)
if val.Toggle then
Camera.ColorCorrection.TintColor = val.Color
else
Camera.ColorCorrection.TintColor = COL3RGB(255,255,255)
end
end)
effects:Element("ToggleColor", "indoor ambient", {default = {Color = COL3RGB(255,255,255)}}, function(val)
if val.Toggle then
game.Lighting.Ambient = val.Color
else
game.Lighting.Ambient = COL3RGB(255,255,255)
end
end)
effects:Element("ToggleColor", "outdoor ambient", {default = {Color = COL3RGB(255,255,255)}}, function(val)
if val.Toggle then
game.Lighting.OutdoorAmbient = val.Color
else
game.Lighting.OutdoorAmbient = COL3RGB(255,255,255)
end
end)
effects:Element("Toggle", "shadowmap technology", nil, function(val) sethiddenproperty(Lighting, "Technology", val.Toggle and "ShadowMap" or "Legacy") end)
local self = visuals:Sector("self", "Right")
self:Element("ToggleKeybind", "third person", {}, function(tbl)
if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
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
self:Element("Toggle", "no arm third person")
self:Element("Slider", "distance", {min = 6, max = 500, default = 12}, function(tbl)
if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
if values.visuals.self["third person"].Toggle then
  if values.visuals.self["third person"].Active then
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
LocalPlayer:GetPropertyChangedSignal("CameraMinZoomDistance"):Connect(function(current)
if values.visuals.self["third person"].Toggle then
if values.visuals.self["third person"].Active then
  if current ~= values.visuals.self.distance.Slider then
    LocalPlayer.CameraMinZoomDistance = values.visuals.self.distance.Slider
  end
end
end
end)
self:Element("Slider", "fov changer", {min = 0, max = 120, default = 80}, function(value)
RunService.RenderStepped:Wait()
if LocalPlayer.Character == nil then return end
if fov == value.Slider then return end
if values.visuals.self["on scope"].Toggle or not LocalPlayer.Character:FindFirstChild("AIMING") then
Camera.FieldOfView = value.Slider
end
end)
self:Element("Toggle", "on scope")
self:Element("Toggle", "visualize silent angle")
self:Element("Slider", "silent angle speed", {min = 0, max = 10, default = 5}) 
self:Element("Toggle", "viewmodel changer")
self:Element("Slider", "viewmodel x", {min = -50, max = 50}, function(val)
ViewmodelOffset = CF(values.visuals.self["viewmodel x"].Slider/7, values.visuals.self["viewmodel y"].Slider/7, values.visuals.self["viewmodel z"].Slider/7) * CFAngles(0, 0, values.visuals.self.roll.Slider/50)
end)
self:Element("Slider", "viewmodel y", {min = -50, max = 50}, function(val)
ViewmodelOffset = CF(values.visuals.self["viewmodel x"].Slider/7, values.visuals.self["viewmodel y"].Slider/7, values.visuals.self["viewmodel z"].Slider/7) * CFAngles(0, 0, values.visuals.self.roll.Slider/50)
end)
self:Element("Slider", "viewmodel z", {min = -50, max = 50}, function(val)
ViewmodelOffset = CF(values.visuals.self["viewmodel x"].Slider/7, values.visuals.self["viewmodel y"].Slider/7, values.visuals.self["viewmodel z"].Slider/7) * CFAngles(0, 0, values.visuals.self.roll.Slider/50)
end)
self:Element("Slider", "roll", {min = -100, max = 100}, function(val)
ViewmodelOffset = CF(values.visuals.self["viewmodel x"].Slider/7, values.visuals.self["viewmodel y"].Slider/7, values.visuals.self["viewmodel z"].Slider/7) * CFAngles(0, 0, values.visuals.self.roll.Slider/50)
end)
self:Element("ToggleTrans", "self chams", {default = {Color = COL3RGB(255,255,255)}}, function(tbl)
if tbl.Toggle then
for _,obj in pairs(SelfObj) do
  if obj.Parent ~= nil then
    obj.Material = values.visuals.self["self chams material"].Dropdown
    obj.Color = tbl.Color
    obj.Transparency = tbl.Transparency
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

self:Element("Dropdown", "self chams material", {options = {"ForceField", "Neon", "Glass"}}, function(val)
if TBLFIND(val, "ForceField") then
for _,obj in pairs(SelfObj) do
  if obj.Parent ~= nil then
    obj.Material = Enum.Material.ForceField
    obj.Color = tbl.Color
  end
end
else
if TBLFIND(val, "Neon") then
  for _,obj in pairs(SelfObj) do
    if obj.Parent ~= nil then
      obj.Material = Enum.Material.Neon
      obj.Color = tbl.Color
    end
  end
else
  if TBLFIND(val, "Glass") then
    for _,obj in pairs(SelfObj) do
      if obj.Parent ~= nil then
        obj.Material = Enum.Material.Glass
        obj.Color = tbl.Color
      end
    end
  end
end
end
end)

self:Element("Slider", "scope blend", {min = 0, max = 100, default = 0})

local ads = Client.updateads
Client.updateads = function(self, ...)
local args = {...}
coroutine.wrap(function()
wait()
if LocalPlayer.Character ~= nil then
for _,part in pairs(LocalPlayer.Character:GetDescendants()) do
  if part:IsA("Part") or part:IsA("MeshPart") then
    if part.Transparency ~= 1 then
      part.Transparency = LocalPlayer.Character:FindFirstChild("AIMING") and values.visuals.self["scope blend"].Slider/100 or 0
    end
  end
  if part:IsA("Accessory") then
    part.Handle.Transparency = LocalPlayer.Character:FindFirstChild("AIMING") and values.visuals.self["scope blend"].Slider/100 or 0
  end
end
end
end)()
return ads(self, ...)
end

local trail = visuals:Sector("trail", "Left")
trail:Element("Toggle", "enable", {Toggle = true})
trail:Element("Toggle", "face camera", {Toggle = false})
trail:Element("ToggleColor", "custom color", {default = {Color = COL3RGB(255,255,255)}})
trail:Element("Slider", "size (x,z)", {min = 1, max = 50, default = 10})
trail:Element("Slider", "offset (y)", {min = 1, max = 50, default = 10})
trail:Element("Slider", "max length", {min = 1, max = 100, default = 20})
trail:Element("TextBox", "image", {placeholder = "image id here"})

local world = visuals:Sector("world", "Left")
world:Element("ToggleTrans", "molly radius", {default = {Color = COL3RGB(255, 255, 255)}}, function(tbl)
if RayIgnore:FindFirstChild("Fires") == nil then return end
if tbl.Toggle then
for i,fire in pairs(RayIgnore:FindFirstChild("Fires"):GetChildren()) do
fire.Transparency = tbl.Transparency
fire.Color = tbl.Color
end
else
for i,fire in pairs(RayIgnore:FindFirstChild("Fires"):GetChildren()) do
fire.Transparency = 1
end
end
end)
world:Element("ToggleColor", "smoke radius", {default = {Color = COL3RGB(255, 255, 255)}}, function(tbl)
if RayIgnore:FindFirstChild("Smokes") == nil then return end
if tbl.Toggle then
for i,smoke in pairs(RayIgnore:FindFirstChild("Smokes"):GetChildren()) do
smoke.Transparency = 0
smoke.Color = tbl.Color
end
else
for i,smoke in pairs(RayIgnore:FindFirstChild("Smokes"):GetChildren()) do
smoke.Transparency = 1
end
end
end)

		world:Element("ToggleColor", "bullet tracers", {Default = {Color = COL3RGB(255,255,255)}}, function(tbl)
				if tbl.Toggle then
					local nevrblx = true
					if nevrblx == true then
						local Services = {
							Players = game:GetService("Players"),
							UserInputService = game:GetService("UserInputService"),
							RunService = game:GetService("RunService"),
							}

							local Local = {
							Player = Services.Players.LocalPlayer,
							Mouse = Services.Players.LocalPlayer:GetMouse(),
							}

							local Other = {
							Camera = workspace.CurrentCamera,
							BeamPart = Instance.new("Part", workspace)
							}

							Other.BeamPart.Name = "BeamPart"
							Other.BeamPart.Transparency = 1

							local Settings = {
							StartColor = COL3(1, 1, 1),
							EndColor = COL3(1, 0, 0),
							StartWidth = 1,
							EndWidth = 0.20,
							ShowImpactPoint = false,
							ImpactTransparency = 0,
							ImpactColor = COL3(1, 1, 1),
							Time = 0.5,
							}

						local mt = getrawmetatable(game)
						local old = mt.__namecall
						local lp = game:GetService("Players").LocalPlayer
						local rs = game:GetService("RunService").RenderStepped
						local lasthittick = tick()
						local lifetime = 5

							local funcs = {}
							local Silent = false

							function funcs:Beam(v1, v2)
								local colorSequence = ColorSequence.new({
									ColorSequenceKeypoint.new(0, Settings.StartColor),
									ColorSequenceKeypoint.new(1, Settings.EndColor),
									})
							local Part = Instance.new("Part", Other.BeamPart)
							Part.Size = Vector3.new(0, 0, 0)
							Part.Transparency = 1
							Part.CanCollide = false
							Part.CFrame = CFrame.new(v1)
							Part.Anchored = true
							local Attachment = Instance.new("Attachment", Part)
							local Part2 = Instance.new("Part", Other.BeamPart)
							Part2.Size = Vector3.new(0, 0, 0)
							Part2.Transparency = ShowImpactPoint and Settings.ImpactTransparency or 1
							Part2.CanCollide = false
							Part2.CFrame = CFrame.new(v2)
							Part2.Anchored = true
							Part2.Color = Settings.ImpactColor
							local Attachment2 = Instance.new("Attachment", Part2)
							local Beam = Instance.new("Beam", Part)
							Beam.FaceCamera = true
							Beam.Texture = "rbxassetid://446111271"
							Beam.TextureLength = 1
							Beam.TextureMode = Enum.TextureMode.Stretch
							Beam.TextureSpeed = 2.4
							Beam.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, values.visuals.world['bullet tracers'].Color), ColorSequenceKeypoint.new(1, values.visuals.world['bullet tracers'].Color)}
							Beam.Attachment0 = Attachment
							Beam.Attachment1 = Attachment2
							Beam.LightEmission = 6
							Beam.LightInfluence = 1
							Beam.Width0 = Settings.StartWidth
							Beam.Width1 = Settings.EndWidth
							delay(Settings.Time, function()
							for i = 0.5, 1, 0.02 do
							wait()
							Beam.Transparency = NumberSequence.new(i)
							end
							Part:Destroy()
							Part2:Destroy()
							end)
							end

							setreadonly(mt, false)
						mt.__namecall = newcclosure(function(self, ...)
							local args = {...}
							if getnamecallmethod() == "FireServer" and self.Name == "HitPart" and tick() - lasthittick > 0.005 then
								lasthittick = tick()
								spawn(function()
									local Beam = funcs:Beam(lp.Character.Gun.Flash.CFrame.p, args[2])
									for i = 1, 1 * lifetime do
										rs:Wait()
										Beam.Transparency = i / (1 * lifetime)
									end
									Beam:Destroy()
								end)
							end
							return old(self, ...)
						end)
						setreadonly(mt, true)
				end
			end
			end)
			
		
world:Element("Slider", "time changer", {min = 0, max = 15, default = 0}, function(tbl)
while wait() do
if game.Lighting.ClockTime ~= tbl.Slider then
game.Lighting.ClockTime = tbl.Slider
end
end
end)
world:Element("ToggleColor", "impacts", {default = {Color = COL3RGB(255, 255, 255)}})
world:Element("ToggleColor", "hit chams", {default = {Color = COL3RGB(255, 255, 255)}})
world:Element("Dropdown", "hitsound", {options = {"none", "moan", "moan2", "moan3", "moan4", "skeet", "neverlose", "rust", "bag", "baimware", "bruh", "MC \"ouh!\"" , "ding", "headshot", "squash", "lessgo", "MCOOF", "osu", "Tf2", "Slap", "1", "jojo", "vibe", "supersmash", "epic", "retro", "quek"}})
world:Element("TextBox", "custom hitsound", {placeholder = "sound id here"}, function(idlol)
  customhs = idlol
end)  
world:Element("Dropdown", "killsound", {options = {"none", "moan", "moan2", "moan3", "moan4", "skeet", "neverlose", "rust", "bag", "baimware", "bruh", "MC \"ouh!\"" , "ding", "headshot", "squash", "lessgo", "MCOOF", "osu", "Tf2", "Slap", "1", "jojo", "vibe", "supersmash", "epic", "retro", "quek"}})
world:Element("TextBox", "custom killsound", {placeholder = "sound id here"}, function(idlol2)
  customks = idlol2
end) 
world:Element("Slider", "sound volume", {min = 1, max = 5, default = 3})
world:Element("Dropdown", "skybox", {options = {"None", "Nebula", "Minecraft", "Vaporwave", "Clouds", "Purple Nebula", "Night Sky", "Pink Daylight", "Morning Glow", "Setting Sun", "Fade Blue", "Elegant Morning", "Neptune", "Redshift", "Aesthetic Night", "Red-Mountain", "Cloudy Skies", "Dark Blue", "Pink Daylight", "Night", "Space", "Pink Vision", "animeskybox", "Alien Red", "CS City", "Dark City", "Earth", "Mountains", "Old Skybox", "Red Sky", "Red Sky 2", "Wasteland", "Bobux Generator", "Blue Sky", "Green Sky"}}, function(tbl)
local sky = tbl.Dropdown
if sky ~= "none" then
if Lighting:FindFirstChildOfClass("Sky") then Lighting:FindFirstChildOfClass("Sky"):Destroy() end
local skybox = INST("Sky")
skybox.SkyboxLf = Skyboxes[sky].SkyboxLf
skybox.SkyboxBk = Skyboxes[sky].SkyboxBk
skybox.SkyboxDn = Skyboxes[sky].SkyboxDn
skybox.SkyboxFt = Skyboxes[sky].SkyboxFt
skybox.SkyboxRt = Skyboxes[sky].SkyboxRt
skybox.SkyboxUp = Skyboxes[sky].SkyboxUp
skybox.Name = "override"
skybox.Parent = Lighting
else
if Lighting:FindFirstChildOfClass("Sky") then Lighting:FindFirstChildOfClass("Sky"):Destroy() end
if oldSkybox ~= nil then oldSkybox:Clone().Parent = Lighting end
end
end)
world:Element("ToggleColor", "item esp", {default = {Color = COL3RGB(255, 255, 255)}}, function(tbl)
for i,weapon in pairs(workspace.Debris:GetChildren()) do
if weapon:IsA("BasePart") and Weapons:FindFirstChild(weapon.Name) then
weapon.BillboardGui.ImageLabel.Visible = tbl.Toggle and TBLFIND(values.visuals.world["types"].Jumbobox, "icon") and true or false
end
end
end)
world:Element("Jumbobox", "types", {options = {"icon"}}, function(tbl)
for i,weapon in pairs(workspace.Debris:GetChildren()) do
if weapon:IsA("BasePart") and Weapons:FindFirstChild(weapon.Name) then
weapon.BillboardGui.ImageLabel.Visible = values.visuals.world["item esp"].Toggle and TBLFIND(tbl.Jumbobox, "icon") and true or false
weapon.BillboardGui.ImageLabel.ImageColor3 = values.visuals.world["item esp"].Color
end
end
end)

local crosshaireditor = misc:Sector("crosshair editor", "Right")
local configs = misc:Sector("configs", "Left")
configs:Element("TextBox", "config", {placeholder = "config name"})
configs:Element("Button", "save", {}, function() if values.misc.configs.config.Text ~= "" then library:SaveConfig(values.misc.configs.config.Text) end end)
configs:Element("Button", "load", {}, function() if values.misc.configs.config.Text ~= "" then ConfigLoad:Fire(values.misc.configs.config.Text) end end)

menu = misc:Sector("menu", "Left")

--[[themebackground = {
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

menu:Element("Dropdown", "background", {options = Images_names})

if values.misc.menu.background.Dropdown ~= "default" then
  if values.misc.menu.background.Dropdown == "default" then
  game.CoreGui.bloxwaresaladtkshit.Menu.Image = "rbxassetid://11331181899"

if values.misc.menu.background.Dropdown ~= "test2" then
  if values.misc.menu.background.Dropdown ~= "test2" then
  bloxwaremenu['menu'].Image = "rbxassetid://11534653532"
end
end
end
end

  if bloxwaremenu['menu'].Image ~= 'rbxassetid://'..themebackground[values.misc.menu['background'].Dropdown] then 
     bloxwaremenu['menu'].Image = 'rbxassetid://'..themebackground[values.misc.menu['background'].Dropdown]
end]] -- don't know why but the bg literally doesn't change

menu:Element("ToggleKeybind", "custom gui keybind", {}, function(tbl)
	if tbl.Toggle then
		game.CoreGui.bloxwaresaladtkshit.Enabled = tbl.Active
		library.uiopen = tbl.Active
	end
end)

local valuewtr = "bloxware.xyz"
					local watermark2 = Instance.new("ScreenGui")
					do
					local Frame = Instance.new("Frame")
					local UIGradient = Instance.new("UIGradient")
					local Frame_2 = Instance.new("Frame")
					local TextLabel = Instance.new("TextLabel")

					watermark2.Name = "watermark2"
					watermark2.Parent = game.CoreGui
					watermark2.Enabled = true
					watermark2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

					Frame.Parent = watermark2
					Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Frame.BorderColor3 = Color3.fromRGB(7, 0, 0)
					Frame.AutomaticSize = Enum.AutomaticSize.XY
					Frame.Position = UDim2.new(0, 52, 0, -28)
					Frame.Size = UDim2.new(0.157, 230, 0, 20)

					UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(49, 49, 49)), ColorSequenceKeypoint.new(0.41, Color3.fromRGB(25, 25, 25)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(25, 25, 25))}
					UIGradient.Rotation = 90
					UIGradient.Parent = Frame

					Frame_2.Parent = Frame
					Frame_2.AutomaticSize = Enum.AutomaticSize.X
					Frame_2.BackgroundColor3 = Color3.fromRGB(222, 232, 255)
					Frame_2.BorderSizePixel = 0
					Frame_2.Size = UDim2.new(0, 424, 0, 1)

					TextLabel.Parent = Frame_2
					TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					TextLabel.BackgroundTransparency = 1.000
					TextLabel.BorderSizePixel = 0
					TextLabel.Position = UDim2.new(0, 0, 1, 0)
					TextLabel.Size = UDim2.new(0, 1, 0, 20)
					TextLabel.AutomaticSize = Enum.AutomaticSize.XY
					TextLabel.Font = Enum.Font.Ubuntu
					TextLabel.Text = "  blockswhere  |  [IN-beta]  |  player-name  |  counter-blox  |  fps 000  |  000ms  |  00:00:00 "
					TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
					TextLabel.TextSize = 11.000
					TextLabel.TextStrokeTransparency = 0.000
           
          game.CoreGui.watermark2.Frame.Size = UDim2.new(0.157, 123, 0, 20)
          game.CoreGui.watermark2.Frame.Frame.Size = UDim2.new(0, 425, 0, 1)

					local GetName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId)

					local function FHUZWEW_fake_script() -- TextLabel.LocalScript 
						local script = Instance.new('LocalScript', TextLabel)
                        
                        function kills()
                            return LocalPlayer.Status.Kills.Value
                        end    
                         
						local lasttick = tick()
						game:GetService('RunService').RenderStepped:Connect(function(step)
							if (tick()-lasttick)*1000 > 25 then
								lasttick = tick()				                                                                            -- 24 hour type of time       
                                script.Parent.Text = "   " ..valuewtr.. "  |  v0.86 [dev]  |  "..game.Players.LocalPlayer.Name.."  |  "..os.date('%H:%M:%S').."  |  " ..math.floor(1/step).. " fps  |  "..math.floor(game:GetService('Stats').Network.ServerStatsItem["Data Ping"]:GetValue()).. "ms  |  "..kills().." kill(s)"
							elseif script.Parent == nil then
                               return end
							end)
						end
           
					coroutine.wrap(FHUZWEW_fake_script)()
					local function QFGW_fake_script() -- Frame.LocalScript 
						local script = Instance.new('LocalScript', Frame)

						script.Parent.Draggable = true
						script.Parent.Active = true
					end
					coroutine.wrap(QFGW_fake_script)()	
					end

				watermark2.Enabled = false

			menu:Element("Toggle", "watermark", {default = {Toggle = false}}, function(tbl)
				if tbl.Toggle then
				    watermark2.Enabled = true
				else watermark2.Enabled = false
				end    
			end)
            menu:Element("TextBox", "watermark name", {placeholder = "custom watermark name"}, function()
			valuewtr = values.misc.menu['watermark name'].Text
            end)

            local SpectatorsList = Instance.new("ScreenGui")
            local Spectators = Instance.new("Frame")
            local Container = Instance.new("Frame")
            local UIPadding = Instance.new("UIPadding")
            local Text = Instance.new("TextLabel")
            local PlayerNames = Instance.new("TextLabel")
            local Background = Instance.new("Frame")
            local UIGradient = Instance.new("UIGradient")
            local Color = Instance.new("Frame")
            local UIGradient_2 = Instance.new("UIGradient")
    
            SpectatorsList.Parent = game.CoreGui
            SpectatorsList.Name = "SpectatorsList"
            SpectatorsList.Enabled = false
    
            Spectators.Name = "Spectators"
            Spectators.Parent = SpectatorsList
            Spectators.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
            Spectators.BackgroundTransparency = 1.000
            Spectators.BorderColor3 = Color3.fromRGB(20, 20, 20)
            Spectators.Position = UDim2.new(0.00800000038, 0, 0.400000006, 49)
            Spectators.Size = UDim2.new(0, 200, 0, 20)
    
            Container.Name = "Container"
            Container.Parent = Spectators
            Container.BackgroundTransparency = 1.000
            Container.BorderSizePixel = 0
            Container.Position = UDim2.new(0, 0, 0, 4)
            Container.Size = UDim2.new(1, 0, 0, 14)
            Container.ZIndex = 3
    
            UIPadding.Parent = Container
            UIPadding.PaddingLeft = UDim.new(0, 4)
    
            Text.Name = "Text"
            Text.Parent = Container
            Text.BackgroundTransparency = 1.000
            Text.Size = UDim2.new(1, 0, 1, 0)
            Text.ZIndex = 4
            Text.Font = Enum.Font.Code
            Text.Text = "Spectators"
            Text.TextColor3 = Color3.fromRGB(65025, 65025, 65025)
            Text.TextSize = 14.000
            Text.TextStrokeTransparency = 0.000
    
            PlayerNames.Name = "PlayerNames"
            PlayerNames.Parent = Container
            PlayerNames.BackgroundTransparency = 1.000
            PlayerNames.Position = UDim2.new(0.0196080022, 0, 1.14285719, 0)
            PlayerNames.Size = UDim2.new(0.980391979, 0, 1.14285719, 0)
            PlayerNames.ZIndex = 4
            PlayerNames.Font = Enum.Font.Code
            PlayerNames.Text = "loading..."
            PlayerNames.TextColor3 = Color3.fromRGB(65025, 65025, 65025)
            PlayerNames.TextSize = 14.000
            PlayerNames.TextStrokeTransparency = 0.000
            PlayerNames.TextYAlignment = Enum.TextYAlignment.Top
    
            Background.Name = "Background"
            Background.Parent = Spectators
            Background.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
            Background.BorderColor3 = Color3.fromRGB(20, 20, 20)
            Background.Size = UDim2.new(1, 0, 1, 0)
    
            UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(90, 90, 90))}
            UIGradient.Rotation = 90
            UIGradient.Parent = Background
    
            Color.Name = "Color"
            Color.Parent = Spectators
            Color.BackgroundColor3 = Color3.fromRGB(255,255,255)
            Color.BorderSizePixel = 0
            Color.Size = UDim2.new(1, 0, 0, 2)
            Color.ZIndex = 2
    
            UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(60, 60, 60))}
            UIGradient_2.Rotation = 90
            UIGradient_2.Parent = Color
    
            function GetSpectators()
                local CurrentSpectators = ""
                for i,v in pairs(game.Players:GetChildren()) do 
            pcall(function()
                if v ~= game.Players.LocalPlayer then
            if not v.Character then 
            if (v.CameraCF.Value.p - game.Workspace.CurrentCamera.CFrame.p).Magnitude < 10 then 
                if CurrentSpectators == "" then
                CurrentSpectators = v.Name
            else
                CurrentSpectators = CurrentSpectators.. "\n" ..v.Name
            end
                end
            end
            end
                end)
            end
                return CurrentSpectators
            end
    
            spawn(function()
                while wait(0.1) do
            if SpectatorsList.Enabled then
                PlayerNames.Text = GetSpectators()
            end
                end
            end)
                
            local function SCUAM_fake_script() -- Spectators.LocalScript 
                local script = Instance.new('LocalScript', Spectators)
                local gui = script.Parent
                gui.Draggable = true
                gui.Active = true
            end
            coroutine.wrap(SCUAM_fake_script)()

menu:Element("Toggle", "spectators list", nil, function(tbl)      
	if tbl.Toggle then
        SpectatorsList.Enabled = true
  else SpectatorsList.Enabled = false
   end     
end)

local KeybindList = INST("ScreenGui")
    do
      local TextLabel = INST("TextLabel")
      local Frame = INST("Frame")
      local UIListLayout = INST("UIListLayout")
      TextLabel.Parent = KeybindList
      TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
      TextLabel.BackgroundTransparency = 1.000
      TextLabel.BorderColor3 = Color3.fromRGB(255, 255, 255)
      TextLabel.Position = UDim2.new(0, 5, 0.300000012, 0)
      TextLabel.Size = UDim2.new(0, 200, 0, 20)
      TextLabel.ZIndex = 2
      TextLabel.Font = Enum.Font.Code
      TextLabel.Text = "keybinds"
      TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
      TextLabel.TextSize = 15.000
      TextLabel.TextStrokeTransparency = 0.000
      TextLabel.TextWrapped = true
      TextLabel.TextXAlignment = Enum.TextXAlignment.Left

      Frame.Parent = TextLabel
      Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
      Frame.BackgroundTransparency = 1.000
      Frame.Position = UDim2.new(0, 0, 1, 1)
      Frame.Size = UDim2.new(1, 0, 1, 0)

      UIListLayout.Parent = Frame
      UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
      UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
      KeybindList.Parent = game.CoreGui
    end

    function keybindadd(text)
      if not KeybindList.TextLabel.Frame:FindFirstChild(text) then
        local TextLabel = INST("TextLabel")


        TextLabel.Name = text
        TextLabel.Parent = KeybindList.TextLabel.Frame
        TextLabel.BackgroundColor3 = Color3.fromRGB(1, 1, 1)
        TextLabel.BackgroundTransparency = 1.000
        TextLabel.BorderColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.Size = UDim2.new(0, 200, 0, 20)
        TextLabel.ZIndex = 2
        TextLabel.Font = Enum.Font.Code
        TextLabel.Text = "> "..text
        TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextLabel.TextSize = 14.000
        TextLabel.TextStrokeTransparency = 0.000
        TextLabel.TextXAlignment = Enum.TextXAlignment.Left
      end
    end

    function keybindremove(text)
      if KeybindList.TextLabel.Frame:FindFirstChild(text) then
        KeybindList.TextLabel.Frame:FindFirstChild(text):Destroy()
      end
    end
KeybindList.Enabled = false
    
menu:Element("Toggle", "keybind list", nil, function(tbl)
--library:SetKeybindVisible(tbl.Toggle)
if tbl.Toggle then
KeybindList.Enabled = true
else KeybindList.Enabled = false
end
end)

menu:Element("Toggle", "hitlogs")

local function UpdateCrosshair()
if values.misc["crosshair editor"].enabled.Toggle then
local length = values.misc["crosshair editor"].length.Slider
Crosshair.LeftFrame.Size = UDIM2(0, length, 0, 2)
Crosshair.RightFrame.Size = UDIM2(0, length, 0, 2)
Crosshair.TopFrame.Size = UDIM2(0, 2, 0, length)
Crosshair.BottomFrame.Size = UDIM2(0, 2, 0, length)
for _,frame in pairs(Crosshair:GetChildren()) do
  if FIND(frame.Name, "Frame") then
    frame.BorderColor3 = COL3(0,0,0)
    if values.misc["crosshair editor"].border.Toggle then
      frame.BorderSizePixel = 1
    else
      frame.BorderSizePixel = 1
    end
  end
end
else
Crosshair.LeftFrame.Size = UDIM2(0, 10, 0, 2)
Crosshair.RightFrame.Size = UDIM2(0, 10, 0, 2)
Crosshair.TopFrame.Size = UDIM2(0, 2, 0, 10)
Crosshair.BottomFrame.Size = UDIM2(0, 2, 0, 10)
for _,frame in pairs(Crosshair:GetChildren()) do
  if FIND(frame.Name, "Frame") then
    frame.BorderSizePixel = 1
  end
end
end
end
crosshaireditor:Element("Toggle", "enabled", nil, UpdateCrosshair)
crosshaireditor:Element("Slider", "length", {min = 1, max = 15, default = 10}, UpdateCrosshair)
crosshaireditor:Element("Toggle", "border", nil, UpdateCrosshair)

local client = misc:Sector("client", "Right")
client:Element("Toggle", "infinite cash", nil, function(tbl)
if tbl.Toggle then
LocalPlayer.Cash.Value = "locqs#5406"
end
end)

client:Element("Toggle", "infinite crouch")
client:Element("Jumbobox", "damage bypass", {options = {"fire", "fall"}})
client:Element("Jumbobox", "gun modifiers", {options = {"recoil","spread", "reload", "equip", "ammo", "automatic", "penetration", "firerate"}})
client:Element("Slider", "firerate modifier", {min = 0, max = 50, default = 10})
Delay = 100;
client:Element("ToggleColor", "backtrack", {default = {Color = Color3.fromRGB(255,255,255)}})
client:Element("Slider", "delay", {min = 500, max = 50000, default = 500}) -- sorry im on drugs
client:Element("Dropdown", "ticks", {options = {"4", "8", "16", "32", "64"}})
client:Element("Dropdown", "size", {options = {"standard", "huge"}})
spawn(function()
	while true do
		pcall(function()
			Ticks = tonumber(values.misc.client.ticks.Dropdown)
			wait(1 / math.clamp(Ticks, 4, 64))
			Delay = values.misc.client.delay.Slider
			for _,Player in pairs(game.Players:GetPlayers()) do
				if Player.Character and Player.Character.Humanoid and Player.Character.Humanoid.Health > 0 and Player.Team ~= game.Players.LocalPlayer.Team and values.misc.client.backtrack.Toggle then
					Part = Instance.new("Part")
					Part.Material = Enum.Material.ForceField
					Part.Name = Player.Name
					Part.Anchored = true;
					Part.CanCollide = false;
					Part.Position = Player.Character.Head.Position;
					if values.misc.client.size.Dropdown == "standard" then
						Part.Size = Vector3.new(1, 1, 1)
					else
						Part.Size = Vector3.new(2,2,2)
					end
					Part.Transparency = 0
					Part.Parent = BTF;
					Part.Color = values.misc.client.backtrack.Color

					Value = Instance.new("ObjectValue")
					Value.Parent = Part;
					Value.Name = "PlayerName"
					Value.Value = Player;

					spawn(function()
						wait(Delay / 1000)
						Part:Destroy()
					end)
				end
			end
		end)
	end
end)
client:Element("Toggle", "anti kick", nil, function()
    if values.misc.client["anti kick"].Toggle then
        game.ReplicatedStorage.Events.SendMsg.OnClientEvent:Connect(function(message)
            msg = string.split(message, " ")
            if game.Players:FindFirstChild(msg[1]) and msg[7] == "1" and msg[12] == game.Players.LocalPlayer.Name then
                game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
            end
        end)
    end
end)
local function IsAlive(plr)
    if plr and plr.Character and plr.Character.FindFirstChild(plr.Character, "Humanoid") and plr.Character.Humanoid.Health > 0 then
        return true
    end

    return false
end
client:Element("Toggle", "old gun sounds", nil, function()
    if values.misc.client["old gun sounds"].Toggle then
        OldGunSounds = game:GetService("RunService").RenderStepped:Connect(function()
            pcall(function()
                local L_1158_ = game:GetService("Players").LocalPlayer.Character;
                if L_1158_.EquippedTool.Value == "AK47" then
                    L_1158_.Gun.Shoot.SoundId = "rbxassetid://1112730119"
                end;
                if L_1158_.EquippedTool.Value == "M4A1" then
                    L_1158_.Gun.SShoot.SoundId = "rbxassetid://1665639883"
                end;
                if L_1158_.EquippedTool.Value == "Glock" then
                    L_1158_.Gun.Shoot.SoundId = "rbxassetid://1665635507"
                end;
                if L_1158_.EquippedTool.Value == "M4A1" then
                    L_1158_.Gun.Shoot.SoundId = "rbxassetid://223013951"
                end;
                if L_1158_.EquippedTool.Value == "Galil" then
                    L_1158_.Gun.Shoot.SoundId = "rbxassetid://344800912"
                end;
                if L_1158_.EquippedTool.Value == "USP" then
                    L_1158_.Gun.SShoot.SoundId = "rbxassetid://1112952739"
                end;
                if L_1158_.EquippedTool.Value == "USP" then
                    L_1158_.Gun.Shoot.SoundId = "rbxassetid://1665652648"
                end;
                if L_1158_.EquippedTool.Value == "DualBerettas" then
                    L_1158_.Gun1.Shoot.SoundId = "rbxassetid://251030881"
                    L_1158_.Gun2.Shoot.SoundId = "rbxassetid://251030881"
                end;
                if L_1158_.EquippedTool.Value == "P250" then
                    L_1158_.Gun.Shoot.SoundId = "rbxassetid://340365431"
                end;
                if L_1158_.EquippedTool.Value == "DesertEagle" then
                    L_1158_.Gun.Shoot.SoundId = "rbxassetid://202918645"
                end;
                if L_1158_.EquippedTool.Value == "M249" then
                    L_1158_.Gun.Shoot.SoundId = "rbxassetid://193868290"
                end;
                if L_1158_.EquippedTool.Value == "MP9" then
                    L_1158_.Gun.Shoot.SoundId = "rbxassetid://222888810"
                end;
                if L_1158_.EquippedTool.Value == "MP7-SD" then
                    L_1158_.Gun.Shoot.SoundId = "rbxassetid://2794150850"
                end;
                if L_1158_.EquippedTool.Value == "UMP" then
                    L_1158_.Gun.Shoot.SoundId = "rbxassetid://206953341"
                end;
                if L_1158_.EquippedTool.Value == "P90" then
                    L_1158_.Gun.Shoot.SoundId = "rbxassetid://1665644012"
                end;
                if L_1158_.EquippedTool.Value == "Bizon" then
                    L_1158_.Gun.Shoot.SoundId = "rbxassetid://485606203"
                end;
                if L_1158_.EquippedTool.Value == "Famas" then
                    L_1158_.Gun.Shoot.SoundId = "rbxassetid://206953280"
                end;
                if L_1158_.EquippedTool.Value == "Scout" then
                    L_1158_.Gun.Shoot.SoundId = "rbxassetid://1112858108"
                    L_1158_.Gun.Zoom.SoundId = "rbxassetid://2862871544"
                    L_1158_.Gun.Zoom.PlaybackSpeed = 1
                end;
                if L_1158_.EquippedTool.Value == "AUG" then
                    L_1158_.Gun.Shoot.SoundId = "rbxassetid://1657593449"
                    L_1158_.Gun.Zoom.SoundId = "rbxassetid://297606725"
                end;
                if L_1158_.EquippedTool.Value == "AWP" then
                    L_1158_.Gun.Shoot.SoundId = "rbxassetid://202918637"
                    L_1158_.Gun.Zoom.SoundId = "rbxassetid://2862871544"
                    L_1158_.Gun.Zoom.PlaybackSpeed = 1
                end;
                if L_1158_.EquippedTool.Value == "G3SG1" then
                    L_1158_.Gun.Shoot.SoundId = "rbxassetid://340365815"
                end;
                if L_1158_.EquippedTool.Value == "MAC10" then
                    L_1158_.Gun.Shoot.SoundId = "rbxassetid://242422782"
                end;
                if L_1158_.EquippedTool.Value == "SawedOff" then
                    L_1158_.Gun.Shoot.SoundId = "rbxassetid://1158047483"
                end;
                if L_1158_.EquippedTool.Value == "CZ" then
                    L_1158_.Gun.Shoot.SoundId = "rbxassetid://458727115"
                end;
                if L_1158_.EquippedTool.Value == "Nova" then
                    L_1158_.Gun.Shoot.SoundId = "rbxassetid://206953213"
                end;
                if L_1158_.EquippedTool.Value == "XM" then
                    L_1158_.Gun.Shoot.SoundId = "rbxassetid://202918888"
                end;
                if L_1158_.EquippedTool.Value == "MAG7" then
                    L_1158_.Gun.Shoot.SoundId = "rbxassetid://395724758"
                end;
                if L_1158_.EquippedTool.Value == "Negev" then
                    L_1158_.Gun.Shoot.SoundId = "rbxassetid://396243767"
                end;
                if L_1158_.EquippedTool.Value == "SG" then
                    L_1158_.Gun.Shoot.SoundId = "rbxassetid://347270113"
                end;
                if L_1158_.EquippedTool.Value == "T Knife" then
                    L_1158_.Gun.Shoot1.SoundId = "rbxassetid://1665637464"
                    L_1158_.Gun.Shoot2.SoundId = "rbxassetid://1665637740"
                end;
                if L_1158_.EquippedTool.Value == "CT Knife" then
                    L_1158_.Gun.Shoot1.SoundId = "rbxassetid://1665637464"
                    L_1158_.Gun.Shoot2.SoundId = "rbxassetid://1665637740"
                end;
                if L_1158_.EquippedTool.Value == "M4A4" then
                    L_1158_.Gun.Shoot.SoundId = "rbxassetid://202918741"
                end;
                if L_1158_.EquippedTool.Value == "FiveSevenMoment" then
                    L_1158_.Gun.Shoot.SoundId = "rbxassetid://212374232"
                end;
                if L_1158_.EquippedTool.Value == "FiveSeven" then
                    L_1158_.Gun.Shoot.SoundId = "rbxassetid://212374232"
                end;
                if L_1158_.EquippedTool.Value == "Tec9" then
                    L_1158_.Gun.Shoot.SoundId = "rbxassetid://206953317"
                end;
                if L_1158_.EquippedTool.Value == "P2000" then
                    L_1158_.Gun.Shoot.SoundId = "rbxassetid://263589107"
                end;
                if L_1158_.EquippedTool.Value == "MP7" then
                    L_1158_.Gun.Shoot.SoundId = "rbxassetid://2752835613"
                end
            end)
        end)
    else
        OldGunSounds:Disconnect()
    end
end)
client:Element("Toggle", "remove killers", {}, function(tbl)
if tbl.Toggle then
if workspace:FindFirstChild("Map") and workspace:FindFirstChild("Map"):FindFirstChild("Killers") then
local clone = workspace:FindFirstChild("Map"):FindFirstChild("Killers"):Clone()
clone.Name = "KillersClone"
clone.Parent = workspace:FindFirstChild("Map")

workspace:FindFirstChild("Map"):FindFirstChild("Killers"):Destroy()
end
else
if workspace:FindFirstChild("Map") and workspace:FindFirstChild("Map"):FindFirstChild("KillersClone") then
workspace:FindFirstChild("Map"):FindFirstChild("KillersClone").Name = "Killers"
end
end
end)
client:Element("ToggleColor", "hitmarker", {default = {Color = COL3RGB(255,255,255)}})
client:Element("Toggle", "buy any grenade")
client:Element("Toggle", "chat alive")
client:Element("Jumbobox", "shop", {options = {"inf time", "anywhere"}})
client:Element("Toggle", "anti spectate")
client:Element("Toggle", "upside down spectate")
client:Element("Toggle", "drone mode")
client:Element("Toggle", "vertical spectate")
client:Element("Button", "clantag", nil, function()
    local Services = setmetatable({
		LocalPlayer = game:GetService("Players").LocalPlayer,
	 },{
		__index = function(self, idx)
			if game:GetService(idx) then
				return game:GetService(idx)
			elseif rawget(self, idx) then
				return rawget(self, idx)
			end
		end
	 })
	 
	 for i, v in pairs(Services.LocalPlayer.PlayerGui.GUI.Scoreboard:GetChildren()) do 
		if v.Name == "CT" or v.Name == "T" then 
			for k, x in pairs(v:GetChildren()) do 
				if x:IsA("Frame") and x:FindFirstChild("player") then 
					local Tag = x.player 
					local Player = Services.Players:FindFirstChild(Tag.Text) 
					Services.RunService.RenderStepped:Connect(function() 
						if Player and Player.OsPlatform and Player.OsPlatform:find("|") then 
							Tag.Text = Player.OsPlatform:sub(2, Player.OsPlatform:len()).." "..Player.Name 
						end
					end)
				end
			end
			v.ChildAdded:Connect(function(child) 
				if child:IsA("Frame") and child:FindFirstChild("player") then 
					local Tag = child.player 
					local Player  
					repeat wait() 
						Player = Services.Players:FindFirstChild(Tag.Text) 
					until Player ~= "PLAYER" 
					Services.RunService.RenderStepped:Connect(function() 
						if Player and Player.OsPlatform and Player.OsPlatform:find("|") then 
							Tag.Text = Player.OsPlatform:sub(2, Player.OsPlatform:len()).." "..Player.Name
						end
					end)
				end
			end)
		end
	 end
	 
	 local CurrentLetter = 0 
	 local Clantag = "bloxware.xyz"
	 
	 while wait(0.3) do 
		Services.LocalPlayer.OsPlatform = "|"..Clantag:sub(0, CurrentLetter).." " 
		if CurrentLetter == Clantag:len() then 
			wait(1.3) 
			CurrentLetter = 0 
		end
		CurrentLetter = CurrentLetter + 1 
	 end
end)
client:Element("Button", "rejoin", nil, function()
    local ts = game:GetService("TeleportService")
    local p = game:GetService("Players").LocalPlayer
    ts:Teleport(game.PlaceId, p)
end)
client:Element("Button", "FPS Booster", {}, function()
    for _, object in ipairs(workspace:GetDescendants()) do
      if object:IsA("BasePart") then
        object.Material = Enum.Material.SmoothPlastic
      end
    end
end)
client:Element("Button", "Better GUI", {}, function()
local words = {"What the dog doin?","Bro this retard gay","I raped your dog","Omnikonna is a nn","I love semi","Bloxsense on top let's go!","A1thernex secretly loves boys","Ion is my boyfriend","Eska is the best hvher"} 

	game:GetService("Players").LocalPlayer.PlayerGui.GUI.Cash.BackgroundTransparency = 0.800

	game:GetService("Players").LocalPlayer.PlayerGui.GUI.Spectate.PlayerBox.GreyPart.PHealth.Position = UDim2.new(0, 5, 0, 0)

	game:GetService("Players").LocalPlayer.PlayerGui.GUI.Spectate.PlayerBox.GreyPart.Plus.ImageTransparency = 1

	game:GetService("Players").LocalPlayer.PlayerGui.GUI.Circle.Transparency = 0.6

	game:GetService("Players").LocalPlayer.PlayerGui.GUI.Vitals.Transparency = 1

	game:GetService("Players").LocalPlayer.PlayerGui.GUI.Buymenu.Base.ImageTransparency = 0.8

	game:GetService("Players").LocalPlayer.PlayerGui.GUI.Inventory.Item1.bk.ImageTransparency = 1

	game:GetService("Players").LocalPlayer.PlayerGui.GUI.Inventory.Item2.bk.ImageTransparency = 1

	game:GetService("Players").LocalPlayer.PlayerGui.GUI.Inventory.Item3.bk.ImageTransparency = 1

	game:GetService("Players").LocalPlayer.PlayerGui.GUI.Inventory.Item4.bk.ImageTransparency = 1

	game:GetService("Players").LocalPlayer.PlayerGui.GUI.Inventory.Item5.bk.ImageTransparency = 1

	game:GetService("Players").LocalPlayer.PlayerGui.GUI.Inventory.Item6.bk.ImageTransparency = 1

	game:GetService("Players").LocalPlayer.PlayerGui.GUI.Inventory.Item7.bk.ImageTransparency = 1

	game:GetService("Players").LocalPlayer.PlayerGui.GUI.Scoreboard.BackgroundColor3 = Color3.fromRGB(35, 35, 35)

	game:GetService("Players").LocalPlayer.PlayerGui.GUI.Scoreboard.Transparency = 0

	game:GetService("Players").LocalPlayer.PlayerGui.GUI.Scoreboard.BorderColor3 = Color3.fromRGB(0, 0, 0)

	game:GetService("Players").LocalPlayer.PlayerGui.GUI.Scoreboard.Transparency = 0.1

	game:GetService("Players").LocalPlayer.PlayerGui.GUI.Scoreboard.BorderSizePixel = 2

	game:GetService("Players").LocalPlayer.PlayerGui.GUI.Vitals.bk.ImageTransparency = 1

	game:GetService("Players").LocalPlayer.PlayerGui.GUI.AmmoGUI.bk.ImageTransparency = 1

	game:GetService("Players").LocalPlayer.PlayerGui.GUI.UpperInfo.Transparency = 0.6

	game:GetService("Players").LocalPlayer.PlayerGui.GUI.TeamSelection.Transparency = 0.4

	game:GetService("Players").LocalPlayer.PlayerGui.GUI.TeamSelection.BackgroundColor3 = Color3.fromRGB(60, 60, 60)

	game:GetService("Players").LocalPlayer.PlayerGui.GUI.TeamSelection.Blue.Label.Text = "CT Side"

	game:GetService("Players").LocalPlayer.PlayerGui.GUI.TeamSelection.Red.Label.Text = "T Side"

	game:GetService("Players").LocalPlayer.PlayerGui.GUI.CTWin.Transparency = 0.8

	game:GetService("Players").LocalPlayer.PlayerGui.GUI.CTWin.Color.Transparency = 0.8

	game:GetService("Players").LocalPlayer.PlayerGui.GUI.CTWin.Info.Transparency = 0.8

	game:GetService("Players").LocalPlayer.PlayerGui.GUI.TWin.Transparency = 0.8

	game:GetService("Players").LocalPlayer.PlayerGui.GUI.TWin.Color.Transparency = 0.8

	game:GetService("Players").LocalPlayer.PlayerGui.GUI.TWin.Info.Transparency = 0.8

	game:GetService("Players").LocalPlayer.PlayerGui.GUI.Cash.BuyZone.ImageTransparency = 1

	game:GetService("Players").LocalPlayer.PlayerGui.GUI.Cash.BuyZone.Size = UDim2.new(0, 0, 0, 0)

	game:GetService("Players").LocalPlayer.PlayerGui.GUI.Cash.Size = UDim2.new(0, 206, 0, 40)

	game:GetService("Players").LocalPlayer.PlayerGui.GUI.Cash.Position = UDim2.new(0, 6, 0, 230)

	game:GetService("Players").LocalPlayer.PlayerGui.GUI.Cash.TextSize = 26.000

	game:GetService("Players").LocalPlayer.PlayerGui.GUI.Cash.Font = Enum.Font.Gotham

	game:GetService("Players").LocalPlayer.PlayerGui.GUI.Vitals.Health.Font = Enum.Font.Gotham

	game:GetService("Players").LocalPlayer.PlayerGui.GUI.Vitals.Armor.Font = Enum.Font.Gotham

	game:GetService("Players").LocalPlayer.PlayerGui.GUI.Spectate.PlayerBox.GreyPart.Transparency = 0.8

	game:GetService("Players").LocalPlayer.PlayerGui.GUI.Spectate.PlayerBox.Transparency = 0.9

	game:GetService("Players").LocalPlayer.PlayerGui.GUI.Spectate.PlayerBox.PlayerPin.ImageTransparency = 1

	game:GetService("Players").LocalPlayer.PlayerGui.GUI.Spectate.Controls.Text = words[math.random(1,#words)]

	game:GetService("Players").LocalPlayer.PlayerGui.GUI.UpperInfo.CTScore.Font = Enum.Font.Gotham

	game:GetService("Players").LocalPlayer.PlayerGui.GUI.UpperInfo.Timer.Font = Enum.Font.Gotham

	game:GetService("Players").LocalPlayer.PlayerGui.GUI.UpperInfo.TScore.Font = Enum.Font.Gotham

	game:GetService("Players").LocalPlayer.PlayerGui.GUI.AmmoGUI.AmmoClip.Font = Enum.Font.Gotham

	game:GetService("Players").LocalPlayer.PlayerGui.GUI.AmmoGUI.AmmoReserve.Font = Enum.Font.Gotham

	game:GetService("Players").LocalPlayer.PlayerGui.GUI.AmmoGUI.AmmoClip.TextColor3 = Color3.fromRGB(255, 255, 255)

	game:GetService("Players").LocalPlayer.PlayerGui.GUI.AmmoGUI.Slash.Font = Enum.Font.Gotham

	game:GetService("Players").LocalPlayer.PlayerGui.GUI.Notify.ImageTransparency = 0.6
	game:GetService("Players").LocalPlayer.PlayerGui.GUI.Notify.TextLabel.Font = Enum.Font.Gotham
	game:GetService("Players").LocalPlayer.PlayerGui.GUI.Notify.Icon.Font = Enum.Font.Gotham

	game:GetService("Players").LocalPlayer.PlayerGui.GUI.Matchpoint.Timer.Font = Enum.Font.Gotham
	game:GetService("Players").LocalPlayer.PlayerGui.GUI.Matchpoint.Back.Visible = false
	game:GetService("Players").LocalPlayer.PlayerGui.GUI.Matchpoint.Timer.Transparency = 0.8

	game:GetService("Players").LocalPlayer.PlayerGui.GUI.MapVote.TextLabel.Text = "Vote the next map"
	game:GetService("Players").LocalPlayer.PlayerGui.GUI.MapVote.TextLabel.Font = Enum.Font.Gotham
	game:GetService("Players").LocalPlayer.PlayerGui.GUI.MapVote.Transparency = 0.8

	game:GetService("Players").LocalPlayer.PlayerGui.GUI.Defusal.ImageTransparency = 0.6
	game:GetService("Players").LocalPlayer.PlayerGui.GUI.Defusal.Defusing.Font = Enum.Font.Gotham
	game:GetService("Players").LocalPlayer.PlayerGui.GUI.Defusal.Time.Font = Enum.Font.Gotham

	game:GetService("Players").LocalPlayer.PlayerGui.GUI.UpperInfo.Transparency = 1
	game:GetService("Players").LocalPlayer.PlayerGui.GUI.UpperInfo.Timer.BackgroundTransparency = 0.800
	game:GetService("Players").LocalPlayer.PlayerGui.GUI.UpperInfo.CTScore.BackgroundTransparency = 0.800
	game:GetService("Players").LocalPlayer.PlayerGui.GUI.UpperInfo.CTScore.Size = UDim2.new(0, 58, 0, 39)
	game:GetService("Players").LocalPlayer.PlayerGui.GUI.UpperInfo.TScore.Size = UDim2.new(0, 59, 0, 39)
	game:GetService("Players").LocalPlayer.PlayerGui.GUI.UpperInfo.TScore.BackgroundTransparency = 0.800
	game:GetService("Players").LocalPlayer.PlayerGui.GUI.UpperInfo.Timer.Size = UDim2.new(1, 0, 0, 36)
	game:GetService("Players").LocalPlayer.PlayerGui.GUI.UpperInfo.Timer.Bomb.Animate:Destroy()
	game:GetService("Players").LocalPlayer.PlayerGui.GUI.UpperInfo.Scaler:Destroy()
	end)   
client:Element("Toggle", "my eyes")
client:Element("Button", "unload cheat", nil, function()
    game.CoreGui.bloxwaresaladtkshit:Destroy()
    game.CoreGui.SpectatorsList:Destroy()
    game.CoreGui.watermark2:Destroy()
    game.CoreGui.MX_ONHIT:Destroy()
    game.CoreGui.ScreenGui:Destroy()
end)
local oldgrenadeallowed = Client.grenadeallowed
Client.grenadeallowed = function(...)
if values.misc.client["buy any grenade"].Toggle then
return true
end

return oldgrenadeallowed(...)
end

local movement = misc:Sector("movement", "Left")
movement:Element("ToggleKeybind", "bunny hop")
movement:Element("Dropdown", "direction", {options = {"forward", "directional", "directional 2"}})
movement:Element("Dropdown", "type", {options = {"gyro", "cframe"}})
movement:Element("Dropdown", "gyro type", {options = {"no fling", "fling"}})
movement:Element("Slider", "speed", {min = 15, max = 300, default = 40})
movement:Element("ToggleKeybind", "walkspeed changer")
movement:Element("Dropdown", "walking type", {options = {"universal"}})
movement:Element("Slider", "walkspeed", {min = 15, max = 200, default = 40})
movement:Element("Toggle", "gravity changer")
movement:Element("Slider", "gravity", {min = 0, max = 1000, default = 196}, function(fuckyou)
    if values.misc.movement["gravity changer"].Toggle then
    workspace.Gravity = values.misc.movement["gravity"].Slider
    wait(0.7)
    end
end)
movement:Element("Toggle", "velocity graph", {}, function(tbl)
if tbl.Toggle then
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
local CurrentCamera = workspace.CurrentCamera

local graphLines = {}
local standardY = workspace.CurrentCamera.ViewportSize.Y-100
local oldY = standardY
local oldVelo = 0

local VelocityCounter = Drawing.new("Text")
VelocityCounter.Text = ""
VelocityCounter.Center = true
VelocityCounter.Outline = true
VelocityCounter.Color = Color3.new(1,1,1)
VelocityCounter.Font = 3
VelocityCounter.Position = Vector2.new(CurrentCamera.ViewportSize.X/2, CurrentCamera.ViewportSize.Y-90)
VelocityCounter.Size = 20
VelocityCounter.Visible = true

while true do
RunService.RenderStepped:Wait()

standardY = CurrentCamera.ViewportSize.Y-100
VelocityCounter.Position = Vector2.new(CurrentCamera.ViewportSize.X/2,CurrentCamera.ViewportSize.Y-90)

if LocalPlayer.Character and LocalPlayer.Character.PrimaryPart then
if #graphLines >= 1 then
local max = 100

if #graphLines >= max then
	graphLines[1]:Remove()
	
	local counter = 0

	for i=2,6 do
		counter = counter + 1.8
		graphLines[i].Transparency = 1 - (counter/10)
	end
	
	graphLines[2].Transparency = 0.1
	graphLines[3].Transparency = 0.2
	graphLines[4].Transparency = 0.4
	graphLines[5].Transparency = 0.6
	graphLines[6].Transparency = 0.8
	
	table.remove(graphLines, 1)
end

for i,v in pairs(graphLines) do
	v.To = v.To - Vector2.new(2,0)
	v.From = v.From - Vector2.new(2,0)
end
end

local totalVelo = (LocalPlayer.Character.PrimaryPart.Velocity * Vector3.new(1, 0, 1)).magnitude
local graphVelocity = totalVelo * 14.85
--[[
if graphVelocity > 300 then
graphVelocity = 300
end
--]]
VelocityCounter.Color = Color3.new(1,1,1)

if math.floor(totalVelo) < oldVelo then
VelocityCounter.Color = Color3.new(1,0.5,0.3)
end

if math.floor(totalVelo) > oldVelo then
VelocityCounter.Color = Color3.new(0.5,1,0.3)
end
--[[
if math.floor(graphVelocity) == 300 then
VelocityCounter.Color = Color3.new(1,0.3,0.1)
end
--]]
local color = Color3.new(1,1,1)

--color = Color3.fromHSV(tick()%5/5,1,1)

local line = Drawing.new("Line")

table.insert(graphLines, line)

line.Color = color
line.Thickness = 2
line.From = Vector2.new(CurrentCamera.ViewportSize.X/2 + 98, oldY)
line.To = Vector2.new(CurrentCamera.ViewportSize.X/2 + 100, standardY - (graphVelocity/6.5))
line.Transparency = 0
line.Visible = true

if #graphLines >= 8 then
graphLines[#graphLines-1].Transparency = graphLines[#graphLines-1].Transparency + 0.2
graphLines[#graphLines-2].Transparency = graphLines[#graphLines-2].Transparency + 0.2
graphLines[#graphLines-3].Transparency = graphLines[#graphLines-3].Transparency + 0.2
graphLines[#graphLines-4].Transparency = graphLines[#graphLines-4].Transparency + 0.2
graphLines[#graphLines-5].Transparency = graphLines[#graphLines-5].Transparency + 0.2
graphLines[#graphLines-7].Transparency = 1
end

VelocityCounter.Text = tostring(math.floor(graphVelocity))
oldY = standardY - (graphVelocity/6.5)
oldVelo = math.floor(totalVelo)
end
end
else
VelocityCounter.Visible = false
graphLines.Visble = false
print("nigerian test")
end
end)
movement:Element("ToggleKeybind", "hrpclip", {}, function(tbl)
	if tbl.Toggle and tbl.Active then
		LocalPlayer.Character.HumanoidRootPart.Anchored = true
		else
		LocalPlayer.Character.HumanoidRootPart.Anchored = false
		end
	end)		
movement:Element("ToggleKeybind", "noclip",{},function(tbl)
spawn(function()
while values.misc.movement["noclip"].Toggle and values.misc.movement["noclip"].Active do
game:GetService("RunService").Stepped:Wait()
if LocalPlayer.Character then
for i,v in pairs(LocalPlayer.Character:GetDescendants()) do
if v:IsA("BasePart") then
  v.CanCollide = false
end
end
end
end
end)
end)
movement:Element("ToggleKeybind", "jump bug")
movement:Element("ToggleKeybind", "edge jump")
movement:Element("ToggleKeybind", "edge bug")

local troll = misc:Sector("trolling", "Left")
troll:Element("Button", "Become weird", nil, function()
LocalPlayer.Character.UpperTorso.Waist:Destroy() 
end)
troll:Element("Button", "Respawn (2018 VER ONLY)", nil, function()
game.ReplicatedStorage.Events:FindFirstChild("Spawnme"):FireServer()
end)
troll:Element('Button', 'Invis (kills you after some time)',{}, function()
	local Player = game.Players.LocalPlayer
			function replace(part, weldName)
				local weld = part:FindFirstChild(weldName)
				if weld then
					local clone = weld:Clone()
					clone.Part1 = nil
					part[weldName]:Destroy()
					clone.Parent = part
				end
			end
			            local c1 = Player.Character.HumanoidRootPart.CFrame
            Player.Character.HumanoidRootPart.CFrame = CFrame.new(99999, 99999, 99999)
            wait(0.2)
            Player.Character.HumanoidRootPart.CFrame = c1
			replace(Player.Character.UpperTorso, "Waist")
			replace(Player.Character.LowerTorso, "Root")
			for _, v in pairs(Player.Character:GetChildren()) do
				if v:IsA("BasePart") then
					if v.Name ~= "HumanoidRootPart" and not v.Name:find("Left") and not v.Name:find("Right") and not v.Name == "Head" then
						v.CanCollide = false
						v.Velocity = Vector3.new(0, 0, 0)
						v.Anchored = not v.Anchored
					elseif v.Name ~= "HumanoidRootPart" then
						v.CanCollide = false
					end
				end
			end
		end)
local lplr = game.Players.LocalPlayer

local rs = game:GetService("RunService")
troll:Element("Button", "crash server", {}, function()
rs.Heartbeat:Connect(function()
    if game.ReplicatedStorage.Warmup.Value then
        for i = 1, 1000 do
            game.ReplicatedStorage.Events.Drop:FireServer(
                game.ReplicatedStorage.Weapons.AWP,
                CFrame.new(),
                0,
                0,
                false,
                lplr,
                workspace.Status.Preparation.Value,
                workspace.Status.RoundOver.Value
            )
        end
    end
  end)
end)
spammessages = {
  "1 Chronicles 28:20 David also said to Solomon his son, Be strong and courageous and do the work. Do not be afraid or discouraged, for the LORD God, my God is with you. He will not fail you or forsake you until all the work for the service of the temple of the LORD is finished.",
	"Ephesians 6:10 Finally, be strong in the Lord and in his mighty power.",
	"saiah 54:4 Do not be afraid; you will not be put to shame. Do not fear disgrace; you will not be humiliated. You will forget the shame of your youth and remember no more the reproach of your widowhood.",
	"John 14:27 Peace I leave with you; my peace I give you. I do not give to you as the world gives. Do not let your hearts be troubled and do not be afraid.",
	"2 Timothy 1:7 For the Spirit God gave us does not make us timid, but gives us power, love, and self-discipline.",
	"1 Corinthians 16:13 Be on your guard; stand firm in the faith; be courageous; be strong.",
	"Mark 5:36 Overhearing what they said, Jesus told him, Don't be afraid; just believe.",
	"John 10:10 The thief comes only to steal and kill and destroy. I came that they may have life and have it abundantly.",
	"Psalm 16:11 You make known to me the path of life, you will fill me with joy in your presence.",
	"29:11 For I know the plans I have for you, 'declares the Lord, 'plans to prosper you and not to harm you, plans to give you hope and a future.",
	"John 3:16 For God so loved the world, that he gave his only Son, that whoever believes in him should not perish but have eternal life.",
	"19:21 Many are the plans in a man's heart, but it is the Lord's purpose that prevails"
			}
			
			cwspammsg = {
				"cuteware! cuteware! cuteware! cuteware! cuteware! cuteware! cuteware! cuteware! cuteware! cuteware! cuteware!",
				"cuteware.xyz",
				"$$$",
				"1 sit nn 1 sit nn 1 sit nn 1 sit nn 1 sit nn",
				"who? who? who? who? who? who? who? who? who? who? who?"
			}

local chat = misc:Sector("chat", "Left")
chat:Element("Toggle", "chat spam", nil, function(tbl)
if tbl.Toggle then
while values.misc.chat["chat spam"].Toggle do
game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer(values.misc.chat.type.Dropdown == "bs.pubwinning" and "bloxsense.pub on top" or values.misc.chat.type.Dropdown == "bloxware" and "bloxware creator is bad and will never be good at hvhing" or values.misc.chat.type.Dropdown == "cuteware" and cwspammsg[math.random(1,table.getn(cwspammsg))] or values.misc.chat.type.Dropdown == "god" and spammessages[math.random(1,table.getn(spammessages))], false, "Innocent", false, true)
wait(values.misc.chat["speed (ms)"].Slider/1000)

end
end
end)
chat:Element("Dropdown", "type", {options = {"bloxware", "bloxsense.pub", "cuteware", "god"}})
chat:Element("Slider", "speed (ms)", {min = 15, max = 1000, default = 50})
chat:Element("Toggle", "randomized kill say")
chat:Element("Dropdown", "random type", {options = {"bloxware", "bloxsense"}})
chat:Element("Toggle", "kill say")
chat:Element("TextBox", "message", {placeholder = "message"})
chat:Element("Toggle", "no filter")
chat:Element("Dropdown", "song", {options = {"Never Gonna Give You Up", "Billie Jean", "Imagine", "Rap God", "Minecraft Doesn't Add Inches", "Busta Rhymes", "Galactic Mermaid", "Last Christmas", "Hampster Dance"}})
chat:Element("Slider", "delay", {min = 150, max = 1500, default = 500})
chat:Element("Button", "start singing", {}, function()

	list = {
		giveup = "We're no strangers to love\nYou know the rules and so do I\nA full commitment's what I'm thinking of\nYou wouldn't get this from any other guy\nI just wanna tell you how I'm feeling, Gotta make you understand\nNever gonna give you up\nNever gonna let you down\n\nNever gonna run around and desert you\nNever gonna make you cry\nNever gonna say goodbye\nNever gonna tell a lie and hurt you\nWe've known each other for so long, Your heart's been aching, but You're too shy to say it\nInside, we both know what's been going on, We know the game and we're gonna play it\nAnd if you ask me how I'm feeling, Don't tell me you're too blind to see\nNever gonna give you up\nNever gonna let you down\nNever gonna run around and desert you\nNever gonna make you cry\nNever gonna say goodbye\nNever gonna tell a lie and hurt you\nNever gonna give you up\nNever gonna let you down\nNever gonna run around and desert you\nNever gonna make you cry\nNever gonna say goodbye\nNever gonna tell a lie and hurt you\n(Ooh, give you up) - x2\nNever gonna give, Never gonna give\n(Give you up)\nNever gonna give, never gonna give\n(Give you up)\nWe've known each other for so long\nYour heart's been aching, but You're too shy to say it\nInside, we both know what's been going on\nWe know the game and we're gonna play it\nI just wanna tell you how I'm feeling, Gotta make you understand\nNever gonna give you up\nNever gonna let you down\nNever gonna run around and desert you\nNever gonna make you cry\nNever gonna tell a lie and hurt you\nNever gonna give you up\nNever gonna let you down\nNever gonna run around and desert you\nNever gonna make you cry\nNever gonna tell a lie and hurt you\nNever gonna give you up\nNever gonna let you down\nNever gonna run around and desert you\nNever gonna make you cry\nNever gonna tell a lie and hurt you\n",
		mikeljaksun = "She was more like a beauty queen from a movie scene\nI said don't mind, but what do you mean, I am the one\nWho will dance on the floor in the round?\nShe said I am the one, who will dance on the floor in the round\nShe told me her name was Billie Jean, as she caused a scene\nThen every head turned with eyes that dreamed of being the one\nWho will dance on the floor in the round\nPeople always told me be careful of what you do\nAnd don't go around breaking young girls' hearts\nAnd mother always told me be careful of who you love\nAnd be careful of what you do 'cause the lie becomes the truth\nBillie Jean is not my lover\nShe's just a girl who claims that I am the one\nBut the kid is not my son\nShe says I am the one, but the kid is not my sonnFor forty days and forty nights\nThe law was on her side\nBut who can stand when she's in demand\nHer schemes and plans\n'Cause we danced on the floor in the round\nSo take my strong advice, just remember to always think twice\n(Do think twice, do think twice)\nShe told my baby we'd danced 'til three, then she looked at menThen showed a photo my baby cried his eyes were like mine (oh, no)\n'Cause we danced on the floor in the round, baby\nPeople always told me be careful of what you do\nAnd don't go around breaking young girls' hearts\nShe came and stood right by menJust the smell of sweet perfume\nThis happened much too soon\nShe called me to her room\nBillie Jean is not my lover\nShe's just a girl who claims that I am the onenBut the kid is not my sonnBillie Jean is not my lover\nShe's just a girl who claims that I am the one\nBut the kid is not my son\nShe says I am the one, but the kid is not my son\nShe says I am the one, but the kid is not my son\nBillie Jean is not my lover\nShe's just a girl who claims that I am the one\nBut the kid is not my son\nShe says I am the one, but the kid is not my son\nShe says I am the one\nYou know what you did, (she says he is my son) breaking my heart babe\nShe says I am the one\nBillie Jean is not my lover\nBillie Jean is not my lover\nBillie Jean is not my lover\nBillie Jean is not my lover (don't Billie Jean)\nBillie Jean is not my lover\nBillie Jean is not my lover\n",
		lemon = "Imagine there's no heaven\nIt's easy if you try\nNo hell below us\nAbove us, only sky\nImagine all the people\nLivin' for today\nAh\nImagine there's no countries\nIt isn't hard to do\nNothing to kill or die for\nAnd no religion, too\nImagine all the people\nLivin' life in peace\nYou\nYou may say I'm a dreamer\nBut I'm not the only onenI hope someday you'll join us\nAnd the world will be as one\nImagine no possessionsnI wonder if you can\nNo need for greed or hunger\nA brotherhood of man\nImagine all the people\nSharing all the world\nYou\nYou may say I'm a dreamer\nBut I'm not the only one\nI hope someday you'll join us\nAnd the world will live as one\n",
		rapgod = "Look, I was gonna go easy on you not to hurt your feelings\nBut I'm only going to get this one chance six minutes-, six minutes-\nSomething's wrong, I can feel it six minutes, Slim Shady, you're on!\nJust a feeling I've got, like something's about to happen, but I don't know what\nIf that means what I think it means, we're in trouble, big trouble\nAnd if he is as bananas as you say, I'm not taking any chances\nYou are just what the doc ordered\nI'm beginnin' to feel like a Rap God, Rap God\nAll my people from the front to the back nod, back nod\nNow, who thinks their arms are long enough to slap box, slap box?\nThey said I rap like a robot, so call me Rap-bot\nBut for me to rap like a computer, it must be in my genes\nI got a laptop in my back pocket\nMy pen'll go off when I half-cock it\nGot a fat knot from that rap profitnMade a livin' and a killin' off it\nEver since Bill Clinton was still in office\nWith Monica Lewinsky feelin' on his nutsack\nI'm an MC still as honest\nBut as rude and as indecent as all hell\nSyllables, skill-a-holic kill 'em all with\nThis flippity dippity-hippity hip-hop\nYou don't really wanna get into a pissin' match\nWith this rappity brat, packin' a MAC in the back of the Ac'\nBackpack rap crap, yap-yap, yackety-yack\nAnd at the exact same time, I attempt these lyrical acrobat stunts while I'm practicin' that\nI'll still be able to break a motherfuckin' table\nOver the back of a couple of faggots and crack it in half\nOnly realized it was ironic, I was signed to Aftermath after the fact\nHow could I not blow? All I do is drop F-bombs\nFeel my wrath of attack\nRappers are havin' a rough time period, here's a maxi pad\nIt's actually disastrously bad for the wack\nWhile I'm masterfully constructing this masterpièce\n'Cause I'm beginnin' to feel like a Rap God, Rap God\nAll my people from the front to the back nod, back nod\nNow, who thinks their arms are long enough to slap box, slap box?\nLet me show you maintainin' this shit ain't that hard, that hard\nEverybody want the key and the secret to rap immortality like Ι have got\nWell, to be truthful the blueprint's\nSimply rage and youthful exuberance\nEverybody loves to root for a nuisance\nHit the Earth like an asteroid\nDid nothing but shoot for the Moon since pew!\nMCs get taken to school with this music\n'Cause I use it as a vehicle to Bus the rhyme\nNow I lead a new school full of students\nMe? I'm a product of Rakim\nLakim Shabazz, 2Pac, N.W.A, Cube, hey Doc, Ren\nYella, Eazy, thank you, they got Slim\nInspired enough to one day grow up, blow up and be in a position\nTo meet Run-D.M.C., induct them\nInto the motherfuckin' Rock and Roll Hall of Fame\nEven though I'll walk in the church and burst in a ball of flames\nOnly Hall of Fame I'll be inducted in is the alcohol of fame\nOn the wall of shame\nYou fags think it's all a game, 'til I walk a flock of flames\nOff a plank and, tell me what in the fuck are you thinkin'?\nLittle gay-lookin' boy\nSo gay, I can barely say it with a straight face, lookin' boy ha-ha!\nYou're witnessin' a mass-occur\nLike you're watching a church gathering take place, lookin' boy\nOy vey, that boy's gay! That's all they say, lookin' boy\nYou get a thumbs up, pat on the back\nAnd a Way to go from your label every day, lookin' boy\nHey, lookin' boy! What you say, lookin' boy?\nI get a Hell, yeah from Dre, lookin' boy\nI'ma work for everything I have, never asked nobody for shit\nGet outta my face, lookin' boy!\nBasically, boy, you're never gonna be capable\nOf keepin' up with the same pace, lookin' boy, 'cause-\nI'm beginnin' to feel like a Rap God, Rap God\nAll my people from the front to the back nod, back nod\nThe way I'm racin' around the track, call me NASCAR, NASCAR\nDale Earnhardt of the trailer park, the White Trash God\nKneel before General Zod\nThis planet's Krypton-, no, Asgard, Asgard\nSo you'll be Thor and I'll be Odin\nYou rodent, I'm omnipotent\nLet off, then I'm reloadin'\nImmediately with these bombs I'm totin'\nAnd I should not be woken\nI'm the walkin' dead, but I'm just a talkin' head, a zombie floatin'\nBut I got your mom deep-throatin'\nI'm out my Ramen Noodle\nWe have nothin' in common, poodle\nI'm a Doberman, pinch yourself in the arm and pay homage, pupil\nIt's me, my honesty's brutal\nBut it's honestly futile if I don't utilize what I do though\nFor good at least once in a while\nSo I wanna make sure somewhere in this chicken scratch I scribble and doodle enough rhymes\nTo maybe try to help get some people through tough times\nBut I gotta keep a few punchlines\nJust in case 'cause even you unsigned\nRappers are hungry lookin' at me like it's lunchtime\nI know there was a time where once I\nWas king of the underground\nBut I still rap like I'm on my Pharoahe Monch grind\nSo I crunch rhymes, but sometimes when you combine\nAppeal with the skin color of mine\nYou get too big and here they come tryin'\nTo censor you like that one line\nI said on I'm Back from The Mathers LP 1 when I\nTried to say I'll take seven kids from Columbine\nPut 'em all in a line, add an AK-47, a revolver and a .9\nSee if I get away with it now that I ain't as big as I was, but I'm\nMorphin' into an immortal, comin' through the portal\nYou're stuck in a time warp from 2004 though\nAnd I don't know what the fuck that you rhyme for\nYou're pointless as Rapunzel with fuckin' cornrows\nYou write normal? Fuck being normal!\nAnd I just bought a new raygun from the future\nJust to come and shoot ya, like when Fabolous made Ray J mad\n'Cause Fab said he looked like a fag at Mayweather's pad\nSingin' to a man while he played piano\nMan, oh man, that was a 24-7 special on the cable channel\nSo Ray J went straight to the radio station\nThe very next day, Hey Fab, I'ma kill you!\nLyrics comin' at you at supersonic speed J.J. Fad\nUh, summa-lumma, dooma-lumma, you assumin' I'm a human\nWhat I gotta do to get it through to you I'm superhuman?\nInnovative and I'm made of rubber so that anything\nYou say is ricochetin' off of me, and it'll glue to you and\nI'm devastating, more than ever demonstrating\nHow to give a motherfuckin' audience a feeling like it's levitating\nNever fading, and I know the haters are forever waiting\nFor the day that they can say I fell off, they'll be celebrating\n'Cause I know the way to get 'em motivated\nI make elevating music, you make elevator music\nOh, he's too mainstream\nWell, that's what they do when they get jealous, they confuse it\nIt's not hip-hop, it's pop,  'cause I found a hella way to fuse it\nWith rock, shock rap with Doc\nThrow on Lose Yourself and make 'em lose it\nI don't know how to make songs like that\nI don't know what words to use\nLet me know when it occurs to you\nWhile I'm rippin' any one of these verses that versus you\nIt's curtains, I'm inadvertently hurtin' you\nHow many verses I gotta murder to\nProve that if you were half as nice, your songs you could sacrifice virgins too?\nUgh, school flunky, pill junkie\nBut look at the accolades these skills brung me\nFull of myself, but still hungry\nI bully myself 'cause I make me do what I put my mind to\nAnd I'm a million leagues above you\nIll when I speak in tongues, but it's still tongue-in-cheek, fuck you\nI'm drunk, so, Satan, take the fucking wheel\nI'ma sleep in the front seat\nBumpin' Heavy D and the Boyz, still Chunky but Funky\nBut in my head, there's something I can feel tugging and struggling\nAngels fight with devils and here's what they want from me\nThey're askin' me to eliminate some of the women hate\nBut if you take into consideration the bitter hatred\nI have, then you may be a little patient\nAnd more sympathetic to the situation\nAnd understand the discrimination\nBut fuck it, life's handin' you lemons? Make lemonade then!\nBut if I can't batter the women\nHow the fuck am I supposed to bake them a cake then?\nDon't mistake him for Satan; it's a fatal mistake\nIf you think I need to be overseas and take a vacation\nTo trip a broad, and make her fall on her face and\nDon't be a retard, be a king? Think not\nWhy be a king when you can be a god?\n",
		minecraftdick = "C-C-C-Careful of the Enderman he's\nBlack, he will get angry if you look at him and\nAttack you, he's black and he'll steal, he'll rob your blocks\nHe cannot swim, cannot swim at all\nI'm in the deep, deep basement of\nMom's house, mining 'til I get to the next\nLevel, I just gotta build something big\nBigger than me and I'll be\nCrafting in the basement all night\nMinecraft won't add inches to your cock!\nSo mine it up-up-up\nMine it up-up-up\nMine it up-up-up\nBuild it higher!\nSo mine it up-up-up\nMine it up-up-up\nMine it up-up-up\nTo the sky (ahhh)!\n(Woooaahh wooooooooahh\nWoooaah wooooooh)\nThis is Minecraft\n(Woooaahh wooooooooahh\nWoooaah wooooooh)\nThis is Minecraft\nZombies and Creepers and the Spiders and the Skeletons, that carry bows and Arrows I just gotta build a building that'll Keep 'em from me, because the Netherworld's the only thing That waits for me I'm always living in a Lego Land\nIn-vented by a Swedish Viking lookin' Fat kid, gotta keep on building and survive-vive-vive\nAnd then maybe somebody will have sex with me\nMinecraft won't add inches to your cock!\nSo mine it up-up-up\nMine it up-up-up\nMine it up-up-up\nBuild it higher!\nSo mine it up-up-up\nMine it up-up-up\nMine it up-up-up\nTo the sky (ahhh)!\n(Woooaahh wooooooooahh Woooaah wooooooh)\nThis is Minecraft\n(Woooaahh wooooooooahh\nWoooaah wooooooh)\nThis is Minecraft\nMinecraft won't add inches to your cock!\nMinecraft won't add inches to your cock!\nSo mine it up-up-up\nMine it up-up-up\nMine it up-up-up\nBuild it higher!\nSo mine it up-up-up\nMine it up-up-up\nMine it up-up-up\nTo the sky (ahhh)!\n(Woooaahh wooooooooahh\nWoooaah wooooooh)\nThis is Minecraft\n(Woooaahh wooooooooahh\nWoooaah wooooooh)\nThis is Minecraft\n(Woooaahh wooooooooahh\nWoooaah wooooooh)\n",
		something = "I don't see how you can hate from outside of the club\nYou can't even get in\nLeggo\nYellow model chick\nYellow bottle sipping\nYellow Lamborghini\nYellow top missing\nYeah, yeah\nThat shit look like a toupée\nI get what you get in ten years, in two days\nLadies love me, I'm on my Cool J\nIf you get what I get, what would you say?\nShe wax it all off, Mister Miyagi\nAnd them suicide doors, Hari-kari\nLook at me now, look at me now, oh\nI'm getting paper\nLook at me now, oh\nLook at me now, yeah\nFresher than a motherfucker\nLil nigga bigger than gorilla\n'Cause I'm killing every nigga that can try to be on my shit\nBetter cuff your chick if you with her, I can get her\nAnd she accidentally slip and fall on my dick\nOops, I said, On my dick\nI ain't really mean to say, On my dick\nBut since we talking about my dick\nAll of you haters say hi to it\nI'm done\nAyo, Breezy\nLet me show you how to keep the dice rolling\nWhen your doing that thing over there, homie\n(Ayy, ayy, ayy, ayy, ayy, ayy, ayy)\nLet's go\n'Cause I'm feelin' like I'm running\nAnd I'm feelin' like I gotta get away, get away, get away\nBetter know that I don't and I won't ever stop\n'Cause you know I gotta win every day, day, day (go)\nSee, they really, really wanna pop me (blow)\nJust know that you will never flop me (oh)\nAnd I know that I can be a little cocky (no)\nYou ain't never gonna stop me\nEvery time I come a nigga gotta set it\nThen I gotta go, and then I gotta get it\nThen I gotta blow and then I gotta shudder\nAny little thing a nigga think that he be doing\n'Cause it doesn't matter, (damn) 'cause I'm gonna da-da-da-da\nThen I'm gonna murder every thing and anything, a badaboom, a badabing\nI gotta do a lot of things, to make it clearer to a couple niggas\nThat I always win and then I gotta get it again, and again, and then again\nAnd I be doing it to death and now I move a little foul\nA nigga better call a ref, and everybody knows my style\nAnd niggas know I'm the the best when it come to doing this\nAnd I be banging on my chest\nAnd I bang in the east, and I'm banging in the west\nAnd I come to give you more and I will never give you less\nYou will hear it in the street or you can read it in the press\nDo you really wanna know what's next? Let's go\nSee the way we on and then we all up in the race\nAnd you know we gotta go, don't try to keep up with the pace\nAnd we struggling and hustling and sending in to get it\nAnd we always gotta do it, take it to another place\nGotta taste it and I gotta grab it\nAnd I gotta cut all through his traffic\nJust to be at the top of the throne\nBetter know I gotta have it, have it\nLook at me now, look at me now, oh\nI'm getting paper\nLook at me now, oh\nLook at me now, yeah\nFresher than a motherfucker\nMan fuck these bitch ass niggas, how y'all doin'?\nI'm Lil Tunechi, I'm a nuisance\nI go stupid, I go dumb like the Three Stooges\nI don't eat sushi, I'm the shit, no I'm pollution, no substitution\nGot a bitch that play in movies in my Jacuzzi, pussy juicy\nI never gave a fuck about a hater, got money on my radar\nDress like a skater, got a big house, came with an elevator\nYou niggas ain't eatin', fuck it, tell a waiter\nMarley said, Shoot 'em, and I said, Okay\nIf you on that bullshit then I'm like, Olé\nI don't care what you say, so don't even speak\nYour girlfriend a freak like Cirque Du Soleil\nThat's word to my flag, and my flag red\nI'm out of my head, bitch, I'm outta my mind, from the bottom I climb\nYou ain't hotter than mine, nope, not on my time and I'm not even trying\nWhat's poppin' Slime? Nothin', five, and if they trippin' fuck 'em, five\nI ain't got no time to shuck and jive, these niggas as sweet as pumpkin pie\nCîroc and Sprite on a private flight\nBitch, I been tight since Guiding Light\nAnd my pockets white, and my diamonds white\nAnd my mommas nice and my daddy's dead\nYou faggots scared 'cause I'm too wild\nBeen here for a while I was like, Fuck trial\nI puts it down, I'm so Young Money\nIf you got eyes look at me now, bitch\nLook at me now, look at me now, oh (ha)\nI'm getting paper\nLook at me now, oh (ha)\nLook at me now, yeah\nFresher than a motherfucker\nOkay\nOkay\nIs that right?\nI'm fresher than a motherfucker\n",
		christmas = "Last Christmas I gave you my heart\nBut the very next day you gave it away\nThis year, to save me from tears\nI'll give it to someone special\nLast Christmas I gave you my heart\nBut the very next day you gave it away\nThis year, to save me from tears\nI'll give it to someone special\nOnce bitten and twice shy\nI keep my distance, but you still catch my eye\nTell me baby, do you recognize me?\nWell, it's been a year, it doesn't surprise me\nHappy Christmas, I wrapped it up and sent it\nWith a note saying I love you, I meant it\nNow I know what a fool I've been\nBut if you kissed me now, I know you'd fool me again\nLast Christmas I gave you my heart\nBut the very next day you gave it away\nThis year, to save me from tears\nI'll give it to someone special\nLast Christmas I gave you my heart\nBut the very next day you gave it away\nThis year, to save me from tears\nI'll give it to someone special\nOoh\nOh, oh, baby\nA crowded room, friends with tired eyes\nI'm hiding from you and your soul of ice\nMy God, I thought you were someone to rely on\nMe? I guess I was a shoulder to cry on\nA face on a lover with a fire in his heart\nA man under cover, but you tore me apart\nOh, oh now I've found a real love\nYou'll never fool me again\nLast Christmas I gave you my heart\nBut the very next day you gave it away\nThis year, to save me from tears\nI'll give it to someone special, special\nLast Christmas I gave you my heart\nBut the very next day you gave it away\nThis year, to save me from tears\nI'll give it to someone special\nSpecial\nA face on a lover with a fire in his heart (I gave you mine)\nA man under cover but you tore him apart\nMaybe next year I'll give it to someone\nI'll give it to someone special\nSpecial\nSo long\n",
		mermaid = "Fucking bullshit\nFucking bullshit\nFucking bullshit\nHoly shit, oh fucker\nFucking bullshit\nFucking bullshit\nGoddamn bullshit\nSon of a bitch, what the hell?\nOh motherfucker, goddamn bullshit, holy shit (holy shit)\nOh holy shit, bullshit, goddamn motherfucker (motherfucker)\nOh fucking bastard, goddamn, fucking shit (oh fucking shit)\nSon of a motherfucking bitch, oh shit\nFucking bullshit\nFucking bullshit\nFucking bullshit\nHoly shit, oh fucker\nFucking bullshit\nFucking bullshit\nGoddamn bullshit\nSon of a bitch, what the hell?\nOh motherfucker, goddamn bullshit, holy shit (holy shit)\nOh holy shit, bullshit, goddamn motherfucker (motherfucker)\nOh fucking bastard, goddamn, fucking, fucking shit (oh fucking shit)\nSon of a motherfucking bitch, oh shit\nOh motherfucker, goddamn bullshit, holy shit (holy shit)\nOh holy shit, bullshit, goddamn motherfucker (motherfucker)\nOh fucking bastard, goddamn, fucking shit (oh fucking shit)\nSon of a motherfucking bitch, oh shit (oh fucking shit)\nSon of a motherfucking bitch, oh shit\nFucking bullshit\nGoddamn bullshit\nFucking piece of shit\nOh yeah\nFuck\n",
		hampster = "Dibidi ba didi dou dou\nDi ba didi dou\nDidi didldildidldidl houdihoudi dey dou\nDibidi ba didi dou dou\nDi ba didi dou\nDidi didldildidldidl houdihoudi dey dou\nHere we go\nDibidi ba didi dou dou\nDi ba didi dou\nDidi didldildidldidl houdihoudi dey dou\nDibidi ba didi dou dou\nDi ba didi dou\nDidi didldildidldidl houdihoudi dey dou\nThat's it\nDibidi ba didi dou dou\nDi ba didi dou\nDidi didldildidldidl houdihoudi dey dou\nDibidi ba didi dou dou\nDi ba didi dou\nDidi didldildidldidi houdihoudi dey dou\nThat's always doing\nAll right, Everybody now here we go\nIt's a brand new version of the do see do\nJust stomp you feet and clap your hands\nCome on everybody it's the hampsterdance\nBounce in time, to the beat\nHey, you don't even have to move your feet\nJust shake your thing, let me see you move\nNow spin around and feel the groove\nYee ha! lets try it\nDibidi ba didi dou dou\nDi ba didi dou\nDidi didldildidldidl houdihoudi dey dou\nDibidi ba didi dou dou\nDi ba didi dou\nDidi didldildidldidl houdihoudi dey dou\nYoure catching on\nDibidi ba didi dou dou\nDi ba didi dou\nDidi didldildidldidl houdihoudi dey dou\nDibidi ba didi dou dou\nDi ba didi dou\nDidi didldildidldidl houdihoudi dey dou\nTerrific come on everybody clap your hands\nCome on everybody it's the hamsterdance\nCome on everybody cla clap your hands\nCome on everybody it's the hamsterdance\nHere comes the music yee ha!\nDibidi ba didi dou dou\nDi ba didi dou\nDidi didldildidldidl houdihoudi dey dou\nDibidi ba didi dou dou\nDi ba didi dou\nDidi didldildidldidl houdihoudi dey dou\nHa ha ha ha ha\n"
	}

	local mychoice

	if values.misc.chat.song.Dropdown == "Never Gonna Give You Up" then
		mychoice = "giveup"
	elseif values.misc.chat.song.Dropdown == "Billie Jean" then
		mychoice = "mikeljaksun"
	elseif values.misc.chat.song.Dropdown == "Imagine" then
		mychoice = "lemon"
	elseif values.misc.chat.song.Dropdown == "Rap God" then
		mychoice = "rapgod"
	elseif values.misc.chat.song.Dropdown == "Minecraft Doesn't Add Inches" then
		mychoice = "minecraftdick"
	elseif values.misc.chat.song.Dropdown == "Busta Rhymes" then
		mychoice = "something"
	elseif values.misc.chat.song.Dropdown == "Galatic Mermaid" then
		mychoice = "mermaid"
	elseif values.misc.chat.song.Dropdown == "Last Christmas" then
		mychoice = "christmas"
	else
		mychoice = "hampster"
	end

	lyrics = {}

	for i in list[mychoice]:gmatch("[^\r\n]+") do
		lyrics[#lyrics+1] = i
	end


	for i, v in pairs(lyrics) do
		wait(values.misc.chat.delay.Slider/1000)
		game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer(v, false, "Innocent", false, false)
	end
end)

MX_ONHIT = Instance.new("ScreenGui")
do
OnHitFrame = Instance.new("Frame")
UIListLayout = Instance.new("UIListLayout")
SampleFrame = Instance.new("Frame")
Grad = Instance.new("Frame")
SampleLabel = Instance.new("TextLabel")
UIGradient = Instance.new("UIGradient")

MX_ONHIT.Name = "MX_ONHIT"
MX_ONHIT.Parent = game.CoreGui
MX_ONHIT.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

OnHitFrame.Name = "OnHitFrame"
OnHitFrame.Parent = MX_ONHIT
OnHitFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
OnHitFrame.BackgroundTransparency = 1.000
OnHitFrame.Position = UDim2.new(0, 52, 0, -15)
OnHitFrame.Size = UDim2.new(0, 300, 0, 500)

UIListLayout.Parent = OnHitFrame
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 6)

SampleFrame.Name = "SampleFrame"
SampleFrame.Parent = OnHitFrame
SampleFrame.AutomaticSize = Enum.AutomaticSize.XY
SampleFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SampleFrame.BackgroundTransparency = 1.000
SampleFrame.BorderColor3 = Color3.fromRGB(7, 0, 0)
SampleFrame.Size = UDim2.new(0, 0, 0, 24)

Grad.Name = "Grad"
Grad.Parent = SampleFrame
Grad.BackgroundColor3 = Color3.fromRGB(222, 232, 255)
Grad.BackgroundTransparency = 1.000
Grad.AutomaticSize = Enum.AutomaticSize.Y
Grad.BorderSizePixel = 0
Grad.Size = UDim2.new(0, 3, 0, 24)

SampleLabel.Name = "SampleLabel"
SampleLabel.Parent = Grad
SampleLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SampleLabel.BackgroundTransparency = 1.000
SampleLabel.BorderSizePixel = 0
SampleLabel.Position = UDim2.new(1.97835922, 0, 0, 0)
SampleLabel.Size = UDim2.new(0, 0, 0, 24)
SampleLabel.Font = Enum.Font.Ubuntu
SampleLabel.Text = "TEST"
SampleLabel.TextTruncate = Enum.TextTruncate.AtEnd
SampleLabel.AutomaticSize = Enum.AutomaticSize.XY
SampleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
SampleLabel.TextSize = 13.000
SampleLabel.TextStrokeTransparency = 0.000
SampleLabel.TextTransparency = 1.000
SampleLabel.TextXAlignment = Enum.TextXAlignment.Left

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(49, 49, 49)), ColorSequenceKeypoint.new(0.41, Color3.fromRGB(25, 25, 25)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(25, 25, 25))}
UIGradient.Rotation = 90
UIGradient.Parent = SampleFrame
end

local function CreateHitElement(text,col,time, size, size2, size3, size4)
    spawn(function()
		local Frame = MX_ONHIT.OnHitFrame.SampleFrame:Clone()
		local Grad = Frame.Grad
        local Label = Grad.SampleLabel
		
		library:Tween(Frame, TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(size, size2, size3, size4)}) 
		library:Tween(Label, TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(size, size2, size3, size4)}) 	
		
		library:Tween(Frame, TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 0.000})       
		library:Tween(Grad, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 0.000})  
		library:Tween(Label, TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0.000}) 
		
		Frame.Parent = MX_ONHIT.OnHitFrame
		Grad.Parent = Frame
		Label.Parent = Grad
		Label.TextColor3 = col
		Label.Text = text
		wait(time)
		library:Tween(Frame, TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 1.000})       
		library:Tween(Grad, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 1.000})  
		library:Tween(Label, TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 1.000})
		library:Tween(Label, TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextStrokeTransparency = 1.000})
		
		library:Tween(Frame, TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 0, size3, size4)}) 
		library:Tween(Label, TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 0, size3, size4)}) 
		
		wait(0.8)
		Frame:Destroy()
		Grad:Destroy()
        Label:Destroy()
    end)
end

local grenades = misc:Sector("grenades", "Right")
grenades:Element("ToggleKeybind", "spam grenades")
coroutine.wrap(function()
while true do
wait(0.5)
if values.misc.grenades["spam grenades"].Toggle and values.misc.grenades["spam grenades"].Active then
local oh1 = game:GetService("ReplicatedStorage").Weapons[values.misc.grenades.grenade.Dropdown].Model
local oh3 = 25
local oh4 = 35
local oh6 = ""
local oh7 = ""
game:GetService("ReplicatedStorage").Events.ThrowGrenade:FireServer(oh1, nil, oh3, oh4, Vec3(0,-100,0), oh6, oh7)
end
end
end)()
grenades:Element("Dropdown", "grenade", {options = {"Flashbang", "Smoke Grenade", "Molotov", "HE Grenade", "Decoy Grenade"}})
grenades:Element("Button", "crash server", {}, function()
RunService.RenderStepped:Connect(function()
if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("UpperTorso") then
local oh1 = game:GetService("ReplicatedStorage").Weapons[values.misc.grenades.grenade.Dropdown].Model
local oh3 = 25
local oh4 = 35
local oh6 = ""
local oh7 = ""
local oh8 = game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer({[1] = "createparticle", [2] = "bullethole", [3] = Player.Character.Head, [4] = Vec3(0,0,0)})
game:GetService("ReplicatedStorage").Events.ThrowGrenade:FireServer(oh1, nil, oh3, oh4, Vec3(0,-100,0), oh6, oh7, oh8)
end
end)
end)
grenades:Element("ToggleKeybind", "ping exploit", {Type = "Toggle", Key = "T"}, function(tbl)
if tbl.Toggle then
game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer("good night server", false, "Innocent", false, true)
end
spawn(function()
while values.misc.grenades["ping exploit"].Toggle and values.misc.grenades["ping exploit"].Active do
pcall(function()
game:GetService("RunService").RenderStepped:Wait()
for i = 1,values.misc.grenades["ping limit"].Slider,1 do
game:GetService("ReplicatedStorage").Events.DropMag:FireServer(LocalPlayer.Character.Gun.Mag)
for i,v in pairs(workspace["Ray_Ignore"]:GetChildren()) do
if v.Name == "MagDrop" then
  v:Destroy()
end
end
end
end)

end
end)
end)
grenades:Element("Slider", "ping limit", {min = 1, max = 4, default = 2})
grenades:Element("Toggle", "anti-ping", {}, function(tbl)
spawn(function()
while values.misc.grenades["anti-ping"].Toggle do
pcall(function()
game:GetService("RunService").RenderStepped:Wait()
for i,v in pairs(workspace["Ray_Ignore"]:GetChildren()) do
if v.Name == "MagDrop" then
v:Destroy()
end
end
end)
end
end)
end)

local Dance = INST("Animation")
Dance.AnimationId = "rbxassetid://5917459365"

local LoadedAnim

local animations = misc:Sector("animations", "Left")
animations:Element("ToggleKeybind", "enabled", nil, function(tbl)
pcall(function()
LoadedAnim:Stop()
end)
if not tbl.Toggle or tbl.Toggle and not tbl.Active then
else
if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
LoadedAnim = LocalPlayer.Character.Humanoid:LoadAnimation(Dance)
LoadedAnim.Priority = Enum.AnimationPriority.Action
LoadedAnim:Play()
end
end
end)
animations:Element("Dropdown", "animation", {options = {"Default", "Floss", "head spin", "air anti aim", "dolphin", "anti-aim", "not my fault", "sneaky", "T"}}, function(tbl)
Dance.AnimationId = tbl.Dropdown == "Default" and "rbxassetid://3732699835" or tbl.Dropdown == "Floss" and "rbxassetid://5917459365" or tbl.Dropdown == "head spin" and "rbxassetid://3361426436" or tbl.Dropdown == "air anti aim" and "rbxassetid://4555782893" or tbl.Dropdown == "dolphin" and "rbxassetid://5918726674" or tbl.Dropdown == "not my fault" and "rbxassetid://6797891807" or tbl.Dropdown == "Sneaky" and "rbxassetid://896541152" or tbl.Dropdown == "T" and "rbxassetid://3338010159" or tbl.Dropdown == "anti-aim" and "rbxassetid://136801964"
pcall(function()
LoadedAnim:Stop()
end)

if values.misc.animations.enabled.Toggle and values.misc.animations.enabled.Active then
if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
LoadedAnim = LocalPlayer.Character.Humanoid:LoadAnimation(Dance)
LoadedAnim.Priority = Enum.AnimationPriority.Action
LoadedAnim:Play()
end
end
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
  Name = utility.create("Text"),
  Weapon = utility.create("Text"),
  Armor = utility.create("Text"),
  BoxOutline = utility.create("Square", true),
  Box = utility.create("Square"),
  HealthOutline = utility.create("Line", true),
  Health = utility.create("Line"),
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
local Items = INST("ScreenGui")
Items.Name = "Items"
Items.Parent = game.CoreGui
Items.ResetOnSpawn = false
Items.ZIndexBehavior = "Global"
do
function add(plr)
local ImageLabel = INST("ImageLabel")
ImageLabel.BackgroundColor3 = COL3RGB(100, 100, 100)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.Size = UDIM2(0, 62, 0, 25)
ImageLabel.Visible = false
ImageLabel.Image = "rbxassetid://1784884358"
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
if obj:IsA("BasePart") and Weapons:FindFirstChild(obj.Name) then
RunService.RenderStepped:Wait()

local BillboardGui = INST("BillboardGui")
BillboardGui.AlwaysOnTop = true
BillboardGui.Size = UDIM2(0, 40, 0, 40)
BillboardGui.Adornee = obj

local ImageLabel = INST("ImageLabel")
ImageLabel.Parent = BillboardGui
ImageLabel.BackgroundTransparency = 1
ImageLabel.Size = UDIM2(1, 0, 1, 0)
ImageLabel.ImageColor3 = values.visuals.world["item esp"].Color
ImageLabel.Image = GetIcon.getWeaponOfKiller(obj.Name)
ImageLabel.ScaleType = Enum.ScaleType.Fit
ImageLabel.Visible = values.visuals.world["item esp"].Toggle and TBLFIND(values.visuals.world["types"].Jumbobox, "icon") and true or false

BillboardGui.Parent = obj
end
end)
for _, obj in pairs(workspace.Debris:GetChildren()) do
if obj:IsA("BasePart") and Weapons:FindFirstChild(obj.Name) then
RunService.RenderStepped:Wait()

local BillboardGui = INST("BillboardGui")
BillboardGui.AlwaysOnTop = true
BillboardGui.Size = UDIM2(0, 40, 0, 40)
BillboardGui.Adornee = obj

local ImageLabel = INST("ImageLabel")
ImageLabel.Parent = BillboardGui
ImageLabel.BackgroundTransparency = 1
ImageLabel.Size = UDIM2(1, 0, 1, 0)
ImageLabel.ImageColor3 = values.visuals.world["item esp"].Color
ImageLabel.Image = GetIcon.getWeaponOfKiller(obj.Name)
ImageLabel.ScaleType = Enum.ScaleType.Fit
ImageLabel.Visible = values.visuals.world["item esp"].Toggle and TBLFIND(values.visuals.world["types"].Jumbobox, "icon") and true or false

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
Pistol = {"USP", "P2000", "Glock", "DualBerettas", "P250", "FiveSeven", "Tec9", "CZ", "DesertEagle", "R8"},
SMG = {"MP9", "MAC10", "MP7", "UMP", "P90", "Bizon"},
Rifle = {"M4A4", "M4A1", "AK47", "Famas", "Galil", "AUG", "SG"},
Sniper = {"AWP", "Scout", "G3SG1"}
}
local weps2 = {
Pistol = {"USP", "P2000", "Glock", "DualBerettas", "P250", "FiveSeven", "Tec9", "CZ", "DesertEagle", "R8"},
SMG = {"MP9", "MAC10", "MP7", "UMP", "P90", "Bizon"},
Rifle = {"M4A4", "M4A1", "AK47", "Famas", "Galil", "AUG", "SG"},
Sniper = {"AWP", "Scout", "G3SG1"}
}
local function GetWeaponRage(weapon)
return TBLFIND(weps.Pistol, weapon) and "pistol" or TBLFIND(weps.Rifle, weapon) and "rifle" or weapon == "AWP" and "awp" or weapon == "G3SG1"  and "auto" or weapon == "Scout" and "scout" or "default"
end
local function GetStatsRage(weapon)
if weapon == "default" then
return values.rage.weapons.default
else
if values.rage.weapons[weapon]["override default"].Toggle then
return values.rage.weapons[weapon]
else
return values.rage.weapons.default
end
end
end
local function GetWeaponLegit(weapon)
return TBLFIND(weps2.Pistol, weapon) and "pistol" or TBLFIND(weps2.Rifle, weapon) and "rifle" or TBLFIND(weps2.SMG, weapon) and "smg" or TBLFIND(weps2.Sniper, weapon) and "sniper" or "default"
end
local function GetStatsLegit(weapon)
if weapon == "default" then
return values.legit.main.default
else
if values.legit.main[weapon]["override default"].Toggle then
return values.legit.main[weapon]
else
return values.legit.main.default
end
end
end
local Jitter = false
local allowedtofreeze = true
local Spin = 0
local RageTarget
local Filter = false
local LastStep
local TriggerDebounce = false
local DisableAA = false

local Fov = Drawing.new("Circle")
Fov.Filled = true
Fov.Color = COL3RGB(15,15,15)
Fov.Transparency = 0.5
Fov.Position = Vec2(Mouse.X, Mouse.Y + 16)
Fov.Radius = 120
RunService.RenderStepped:Connect(function(step)
Fov.Visible = false
LastStep = step
Ping = game.Stats.PerformanceStats.Ping:GetValue()
RageTarget = nil
local CamCFrame = Camera.CFrame
local CamLook = CamCFrame.LookVector
local PlayerIsAlive = false
local Character = LocalPlayer.Character
RageTarget = nil
Spin = CLAMP(Spin + values["anti-aim"].angles["spin speed"].Slider, 0, 360)
if Spin == 360 then Spin = 0 end
if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") and LocalPlayer.Character:FindFirstChild("Humanoid").Health > 0 and LocalPlayer.Character:FindFirstChild("UpperTorso") then
PlayerIsAlive = true
end
for i,v in pairs(ChamItems) do
if v.Parent == nil then
TBLREMOVE(ChamItems, i)
end
end



Fov.Position = Vec2(Camera.ViewportSize.X/2, Camera.ViewportSize.Y/2)
if PlayerIsAlive then
		if values.visuals.trail['enable'].Toggle then
			if not LocalPlayer.Character.HumanoidRootPart:FindFirstChild('Trail') then 
				Part = LocalPlayer.Character.HumanoidRootPart
				offset = -2
				local Attachment = Instance.new("Attachment")
				Attachment.Name = 'A1'
				Attachment.Position = Vector3.new(-0.55602997541428, offset, 0)
				Attachment.Parent = Part
				
				local Trail = Instance.new("Trail")
				Trail.LightInfluence = 0
				Trail.TextureMode = Enum.TextureMode.Static
				Trail.LightEmission = 1
				Trail.MaxLength = 10
				Trail.Texture = "rbxassetid://7485088415"
				Trail.Parent = Part
				Trail.Transparency = NumberSequence.new(0)
				Trail.FaceCamera = false

				local Attachment1 = Instance.new("Attachment")
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
				trail.Texture = "rbxassetid://"..values.visuals.trail['image'].Text

				if values.visuals.trail['custom color'].Toggle then 
					trail.Color = ColorSequence.new(values.visuals.trail['custom color'].Color)
				else 
					trail.Color = ColorSequence.new(Color3.fromRGB(255, 255, 255))
				end

				a1.Position = Vector3.new(values.visuals.trail['size (x,z)'].Slider/10, 5-(values.visuals.trail['offset (y)'].Slider)/5, 0)
				a2.Position = Vector3.new(-values.visuals.trail['size (x,z)'].Slider/10, 5-(values.visuals.trail['offset (y)'].Slider/5), 0)
				trail.FaceCamera = values.visuals.trail['face camera'].Toggle

			end
		elseif LocalPlayer.Character.HumanoidRootPart:FindFirstChild('Trail') then 
			LocalPlayer.Character.HumanoidRootPart.Trail:Remove()
		end
local SelfVelocity = LocalPlayer.Character.HumanoidRootPart.Velocity
if values["anti-aim"].fakelag["ping spike"].Toggle and values["anti-aim"].fakelag["ping spike"].Active then
for count = 1, 20  do
game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer({[1] = "createparticle", [2] = "bullethole", [3] = LocalPlayer.Character.Head, [4] = Vec3(0,0,0)})
end
end
local Root = LocalPlayer.Character.HumanoidRootPart
if values.misc.client["infinite crouch"].Toggle then
Client.crouchcooldown = 0
end
if TBLFIND(values.misc.client["gun modifiers"].Jumbobox, "firerate") then
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
		
if values.rage.aimbot["strafe target"].Toggle and RageTarget ~= nil then
	if RageTarget.Character and RageTarget.Character:FindFirstChild("HumanoidRootPart") then
	targetstrafe = targetstrafe + (0.01 * values.rage.aimbot["strafe speed"].Slider)
	LocalPlayer.Character.HumanoidRootPart.CFrame = RageTarget.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, targetstrafe, 0) * CFrame.new(0, (values.rage.aimbot["strafe height"].Slider * 2), (values.rage.aimbot["strafe distance"].Slider * 5))				
    end
end	

if values.rage.exploits["kill all"].Toggle and values.rage.exploits["kill all"].Active and LocalPlayer.Character:FindFirstChild("UpperTorso") and LocalPlayer.Character:FindFirstChild("Gun") then
						for _,Player in pairs(Players:GetPlayers()) do
							if Player.Character and Player.Team ~= LocalPlayer.Team and Player.Character:FindFirstChild("UpperTorso") then
								local oh1 = Player.Character.Head
								local oh2 = Player.Character.Head.CFrame.Position
								local oh3 = "Banana"
								local oh4 = 1
								local oh5 = LocalPlayer.Character.Gun
								local oh8 = math.random(1, 360)
								local oh9 = false
								local oh10 = false
								local oh11 = Vector3.new()
								local oh12 = 1
								local oh13 = Vector3.new()
								game:GetService("ReplicatedStorage").Events.HitPart:FireServer(oh1, oh2, oh3, oh4, oh5, oh6, oh7, oh8, oh9, oh10, oh11, oh12, oh13)
end
end
end
if values.rage.exploits["knife kill all"].Toggle and values.rage.exploits["knife kill all"].Active and LocalPlayer.Character:FindFirstChild("UpperTorso") and LocalPlayer.Character:FindFirstChild("Gun") then
    for b2, b3 in pairs(game:GetService("Players"):GetChildren()) do
        if b3.Team ~= b3.Parent.LocalPlayer.Team then
            if b3.Character and b3.Character:FindFirstChild("UpperTorso") and b3.Parent.LocalPlayer.Character and b3.Parent.LocalPlayer.Character:FindFirstChild("EquippedTool") then
                if b3.Character:FindFirstChild("Humanoid") and b3.Character.Humanoid.Health > 0 then
                    killallisworking = true
                    local b4 = {
                        [1] = b3.Character.UpperTorso,
                        [2] = b3.Character.UpperTorso.Position,
                        [3] = "T Knife",
                        [4] = 4096,
                        [5] = LocalPlayer.Character.Gun,
                        [8] = 1,
                        [9] = false,
                        [10] = true,
                        [11] = Vector3.new(),
                        [12] = 16868,
                        [13] = Vector3.new()
                    }
                    if values.rage.exploits["hits amount"].Slider > 1 then
                        for i=1, values.rage.exploits["hits amount"].Slider do
                            game.ReplicatedStorage.Events.HitPart:FireServer(unpack(b4))
                        end
                    else
                        game.ReplicatedStorage.Events.HitPart:FireServer(unpack(b4))
                    end
                else killallisworking = false end
            end
        end
    end
else killallisworking = false end

if values.rage.exploits['deathpaste killall'].Toggle and values.rage.exploits['deathpaste killall'].Active and LocalPlayer.Character:FindFirstChild('UpperTorso') and LocalPlayer.Character:FindFirstChild('Gun') then
				for _,Player in pairs(Players:GetPlayers()) do
					if Player.Character and Player.Team ~= LocalPlayer.Team and Player.Character:FindFirstChild('UpperTorso') then
							local oh1 = Player.Character.Head
							local oh2 = Player.Character.Head.CFrame.p
							local oh3 = "Banana"
							local oh4 = 12
							local oh5 = LocalPlayer.Character.Gun
							local oh8 = RANDOM(160,99999)
							local oh9 = false
							local oh10 = true
							local oh11 = Vector3.new(0,0,0)
							local oh12 = 12
							local oh13 = Vector3.new(0, 0, 0)
							game:GetService("ReplicatedStorage").Events.HitPart:FireServer(oh1, oh2, oh3, oh4, oh5, oh6, oh7, oh8, oh9, oh10, oh11, oh12, oh13)
					end
				end
			end

if TBLFIND(values.visuals.effects.removals.Jumbobox, "scope lines") then
NewScope.Enabled = LocalPlayer.Character:FindFirstChild("AIMING") and true or false
Crosshairs.Scope.Visible = false
else
NewScope.Enabled = false
end
local RageGuy
if workspace:FindFirstChild("Map") and Client.gun ~= "none" and Client.gun.Name ~= "C4" then
if values.rage.aimbot["enabled (rage)"].Toggle and (LocalPlayer.Character.Humanoid.WalkSpeed ~= 0 or values.rage.aimbot["shoot before round starts"].Toggle) then
local Origin = values.rage.aimbot.origin.Dropdown == "character" and LocalPlayer.Character.LowerTorso.Position + Vec3(0, 2.5, 0) or CamCFrame.p
local Stats = GetStatsRage(GetWeaponRage(Client.gun.Name))
for _,Player in pairs(Players:GetPlayers()) do
  if TBLFIND(values.misc.client["gun modifiers"].Jumbobox, "firerate") then
    Client.DISABLED = false
  end
  if Player.Character and Player.Character:FindFirstChild("Humanoid") and Player.Character:FindFirstChild("Humanoid").Health > 0 and Player.Team ~= "TTT" and Player ~= LocalPlayer then
    if TBLFIND(values.rage.aimbot.resolver.Jumbobox, "pitch") then
      Player.Character.UpperTorso.Waist.C0 = CFAngles(0, 0, 0)
      Player.Character.LowerTorso.Root.C0 = CFAngles(0,0,0)
    end
	if TBLFIND(values.rage.aimbot.resolver.Jumbobox, "mega track") then 										
	    Player.Character.UpperTorso.Waist.C0 = CFrame.new(0,0,0)
	    Player.Character.Head.Neck.C0= CFrame.new(0,0,-10)
	end
	if TBLFIND(values.rage.aimbot.resolver.Jumbobox, "floppaware") then
	    if Player.Team ~= LocalPlayer.Team then
											local a = Player.Character.HumanoidRootPart.CFrame
											wait()
											local b = Player.Character.HumanoidRootPart.CFrame

											if ( b.x ~= a.x ) and ( b.z ~= a.z ) then
												if ( b.x > a.x ) and ( b.z > a.z ) then 
													Player.Character.Head.Neck.C0 = CFrame.new(13, 0, 13)
													wait(.1)
												elseif ( b.x < a.x ) and ( b.z < a.z ) then
													Player.Character.Head.Neck.C0 = CFrame.new(-13, 0, -13)
													wait(.1)
												elseif ( b.x > a.x ) and ( b.z < a.z ) then 
													Player.Character.Head.Neck.C0 = CFrame.new(13, 0, -13)
													wait(.1)
												else
													Player.Character.Head.Neck.C0 = CFrame.new(-13, 0, 13)
													wait(.1)
												end
											elseif (  b.x ~= a.x ) then
												if ( b.x > a.x ) then 
													Player.Character.Head.Neck.C0 = CFrame.new(13, 0, 0)
													wait(.1)
												else
													Player.Character.Head.Neck.C0 = CFrame.new(-13, 0, 0)
													wait(.1)
												end
												wait(.01)
											else
												if ( b.z > a.z ) then 
													Player.Character.Head.Neck.C0 = CFrame.new(0, 0, 13)
													wait(.1)
												else
													Player.Character.Head.Neck.C0 = CFrame.new(0, 0, -13)
													wait(.1)
												end
												for i2,Animation in pairs(Player.Character.Humanoid:GetPlayingAnimationTracks()) do
        Animation:Stop()
      end
											end
										end
	if TBLFIND(values.rage.aimbot.resolver.Jumbobox, 'arms') then
		Player.Character.RightUpperArm:FindFirstChildWhichIsA('Motor6D').C0 = CFrame.new(1.5, 0.549999952, -0.2)
		Player.Character.LeftUpperArm:FindFirstChildWhichIsA('Motor6D').C0 = CFrame.new(-1.5, 0.549999952, -0.2)
	end
    if TBLFIND(values.rage.aimbot.resolver.Jumbobox, "resolve angles") then
        Player.Character.UpperTorso.Waist.C0 = CFrame.new(Vector3.new(0, 0.4, 0)) * CFrame.Angles(0, 0.6, 0)
		Player.Character.Head.CFrame = CFrame.new(Player.Character.Head.Position)
	end
    if TBLFIND(values.rage.aimbot.resolver.Jumbobox, "gay resolver") then
        Player.Character.UpperTorso.Waist.C0 = CFrame.new(Vector3.new(6,6.6,6))
      Player.Character.RightFoot.CFrame = CFrame.new(Player.Character.Head.Position)
      end
      if TBLFIND(values.rage.aimbot.resolver.Jumbobox, "deadware") then   
        Player.Character.UpperTorso.Waist.C0 = CFAngles(0, 0, 0)
        Player.Character.LowerTorso.Root.C0 = CFAngles(0, 0, 0)
          Player.Character.Head.Neck.C0 = CFrame.new(0, 3, 0) * CFAngles(0, 0, 0)
        Player.Character.LeftUpperArm.LeftShoulder.C0 = CFrame.new(5, 0, 0) * CFAngles(0, 0, 0)
        Player.Character.RightUpperArm.RightShoulder.C0 = CFrame.new(-5, 0, 0) * CFAngles(0, 0, 0)
        Player.Character.LeftUpperLeg.LeftHip.C0 = CFrame.new(0, 0, 3) * CFAngles(0, 0, 0)
        Player.Character.RightUpperLeg.RightHip.C0 = CFrame.new(0, 0, -3) * CFAngles(0, 0, 0)
      end
    if TBLFIND(values.rage.aimbot.resolver.Jumbobox, "front track") then
      Player.Character.Head.Neck.C0 = CFrame.new(0,5,-5) * CFAngles(0, 0, 0)
    end
    if TBLFIND(values.rage.aimbot.resolver.Jumbobox, "roll") then
      Player.Character.Humanoid.MaxSlopeAngle = 0
    end
    if TBLFIND(values.rage.aimbot.resolver.Jumbobox, "animation") then
      for i2,Animation in pairs(Player.Character.Humanoid:GetPlayingAnimationTracks()) do
        Animation:Stop()
      end
    end
  end 
  
  if Player.Character and Player.Character:FindFirstChild("Humanoid") and not Client.DISABLED and Player.Character:FindFirstChild("Humanoid").Health > 0 and Player.Team ~= "TTT" and not Player.Character:FindFirstChildOfClass("ForceField") and GetDeg(CamCFrame, Player.Character.HumanoidRootPart.Position) <= Stats["max fov"].Slider and Player ~= LocalPlayer then
    if Player.Team ~= LocalPlayer.Team or values.rage.aimbot.teammates.Toggle and Player:FindFirstChild("Status") and Player.Status.Team.Value ~= LocalPlayer.Status.Team.Value and Player.Status.Alive.Value then
      if Client.gun:FindFirstChild("Melee") and values.rage.aimbot["knifebot"].Toggle then
        local Ignore = {unpack(Collision)}
        INSERT(Ignore, workspace.Map.Clips)
        INSERT(Ignore, workspace.Map.SpawnPoints)
        INSERT(Ignore, LocalPlayer.Character)
        if Player.Character:FindFirstChild("BackC4") then
          INSERT(Ignore, Player.Character.BackC4)
        end
        if Player.Character:FindFirstChild("Gun") then
          INSERT(Ignore, Player.Character.Gun)
        end

        local Ray = RAY(Origin, (Player.Character.Head.Position - Origin).unit * 20)
        local Hit, Pos = workspace:FindPartOnRayWithIgnoreList(Ray, Ignore, false, true)

        if Hit and Hit.Parent == Player.Character then
          RageGuy = Hit
          RageTarget = Hit
          if not values.rage.aimbot["silent aim"].Toggle then
            Camera.CFrame = CF(CamCFrame.Position, Hit.Position)
          end
          Filter = true
          Client.firebullet()
          Filter = false

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
        if Player.Character:FindFirstChild("BackC4") then
          INSERT(Ignore, Player.Character.BackC4)
        end
        local Ignore = {unpack(Collision)}
        INSERT(Ignore, workspace.Map.Clips)
        INSERT(Ignore, workspace.Map.SpawnPoints)
        INSERT(Ignore, LocalPlayer.Character)
        INSERT(Ignore, Player.Character.HumanoidRootPart)
        if Player.Character:FindFirstChild("BackC4") then
          INSERT(Ignore, Player.Character.BackC4)
        end
        if Player.Character:FindFirstChild("Gun") then
          INSERT(Ignore, Player.Character.Gun)
        end

                    local Hitboxes = {} 
											for _,Hitbox in pairs(Stats.hitboxes.Jumbobox) do 
												if Stats["prefer baim"].Toggle then 
													if Hitbox == "head" and (not values.rage.aimbot["auto baim"].Toggle  and not values.rage.aimbot['auto baim'].Active or Player.Character:FindFirstChild("FakeHead")) then 
														INSERT(Hitboxes, Player.Character.Head) 
													elseif Hitbox == "torso" then 
														INSERT(Hitboxes, Player.Character.UpperTorso) 
													else 
														INSERT(Hitboxes, Player.Character.LowerTorso) 
													end 
												else 
													if Hitbox == "torso" then
														INSERT(Hitboxes, Player.Character.UpperTorso)
													elseif Hitbox == "pelvis" then
														INSERT(Hitboxes, Player.Character.LowerTorso)
													elseif Hitbox == "arms" then
														INSERT(Hitboxes, Player.Character.RightHand)
														INSERT(Hitboxes, Player.Character.LeftHand)

													elseif Hitbox == "feet" then
														INSERT(Hitboxes, Player.Character.LeftFoot)
														INSERT(Hitboxes, Player.Character.RightFoot)
                            elseif Hitbox == "humanoidrootpart" then
                              INSERT(Hitboxes, Player.Character.HumanoidRootPart)
													elseif not values.rage.aimbot["auto baim"].Toggle  and not values.rage.aimbot['auto baim'].Active or Player.Character:FindFirstChild("FakeHead") then 
														INSERT(Hitboxes, Player.Character.Head) 
													end 
												end 
											end 

        for _,Hitbox in pairs(Hitboxes) do
          local Ignore2 = {unpack(Ignore)}
          for _,Part in pairs(Player.Character:GetChildren()) do
            if Part ~= Hitbox then INSERT(Ignore2, Part) end
          end
          if values.rage.aimbot["autowall"].Toggle then
            local Hits = {}
            local EndHit, Hit, Pos
            local Ray1 = Ray.new(Origin, (Hitbox.Position - Origin).unit * (Hitbox.Position - Origin).magnitude)
            repeat
              Hit, Pos = workspace:FindPartOnRayWithIgnoreList(Ray1, Ignore2, false, true)
              if Hit ~= nil and Hit.Parent ~= nil then
                if Hit and Multipliers[Hit.Name] ~= nil then
                  EndHit = Hit
                else
                  table.insert(Ignore2, Hit)
                  table.insert(Hits, {["Position"] = Pos,["Hit"] = Hit})
                end
              end
            until EndHit ~= nil or #Hits >= 4 or Hit == nil
            if EndHit ~= nil and Multipliers[EndHit.Name] ~= nil and #Hits <= 4 then
              if #Hits == 0 then
                local Damage = Client.gun.DMG.Value * Multipliers[EndHit.Name]
                if Player:FindFirstChild("Kevlar") then
                  if string.find(EndHit.Name, "Head") then
                    if Player:FindFirstChild("Helmet") then
                      Damage = (Damage / 100) * Client.gun.ArmorPenetration.Value
                    end
                  else
                    Damage = (Damage / 100) * Client.gun.ArmorPenetration.Value
                  end
                end
                Damage = Damage * (Client.gun.RangeModifier.Value/100 ^ ((Origin - EndHit.Position).Magnitude/500))/100
                if Damage >= Stats["minimum damage"].Slider then
                  RageGuy = EndHit
                  RageTarget = EndHit
                  if not values.rage.aimbot["silent aim"].Toggle then
                    Camera.CFrame = CFrame.new(CamCFrame.Position, EndHit.Position)
                  end
                  Filter = true
                  if values.rage.aimbot["automatic fire"].Dropdown == "standard" then
                    Client.firebullet()
                    if values.rage.exploits["double tap"].Toggle and values.rage.exploits["double tap"].Active then
                      Client.firebullet()
                    end
                    if values.rage.exploits["quad tap"].Toggle and values.rage.exploits["quad tap"].Active then
                      Client.firebullet()
                      Client.firebullet()
					  Client.firebullet()
                    end
                    if values.misc.menu.hitlogs.Toggle then
                    CreateHitElement("Hit "..EndHit.Parent.Name.." in the "..EndHit.Name,Color3.new(1,1,1), 3, 0, 280, 0, 22)
                    end   
                  elseif values.rage.aimbot["automatic fire"].Dropdown == "hitpart" then
                    Client.firebullet()
                    local Arguments = {
                      [1] = EndHit,
                      [2] = EndHit.Position,
                      [3] = LocalPlayer.Character.EquippedTool.Value,
                      --[4] = 100,
                      [5] = nil, --LocalPlayer.Character.Gun,
                      [6] = nil,
                      [8] = 1,
                      [9] = false,
                      [10] = false,
                      [11] = Vector3.new(),
                      [12] = 100,
                      [13] = Vector3.new()
                    }
                    game.ReplicatedStorage.Events.HitPart:FireServer(unpack(Arguments))
                    if values.rage.exploits["double tap"].Toggle and values.rage.exploits["double tap"].Active then
                      Client.firebullet()
                    end
                    if values.rage.exploits["quad tap"].Toggle and values.rage.exploits["quad tap"].Active then
                      Client.firebullet()
                      Client.firebullet()
					  Client.firebullet()
                      local Arguments = {
                        [1] = EndHit,
                        [2] = EndHit.Position,
                        [3] = LocalPlayer.Character.EquippedTool.Value,
                        --[4] = 100,
                        [5] = nil, --LocalPlayer.Character.Gun,
                        [8] = 1,
                        [9] = false,
                        [10] = false,
                        [11] = Vector3.new(),
                        [12] = 100,
                        [13] = Vector3.new()
                      }
                      game.ReplicatedStorage.Events.HitPart:FireServer(unpack(Arguments))
                    end
                    if values.misc.menu.hitlogs.Toggle then
                    CreateHitElement("Hit "..EndHit.Parent.Name.." in the "..EndHit.Name,Color3.new(1,1,1), 3, 0, 280, 0, 22)
                    end 
                  end
                  Filter = false
                  break
                end
              else
                local penetration = Client.gun.Penetration.Value
                local limit = 0
                local dmgmodifier = 1
                for i = 1, #Hits do
                  local data = Hits[i]
                  local part = data["Hit"]
                  local pos = data["Position"]
                  local modifier = 1
				  local autowallmod1 = 0
													local autowallmod2 = 0
													if part.Material == Enum.Material.DiamondPlate then
													    if values.rage.aimbot["autowall"].Toggle and values.rage.aimbot["autowall"].Active then
														    if values.rage.aimbot["autowall type"].Dropdown == "slight" then
															    autowallmod1 = 0.7
																modifier = 3 - autowallmod1
															elseif values.rage.aimbot["autowall type"].Dropdown == "off" then
															    autowallmod1 = 0
																modifier = 3 - autowallmod1
															end
															if values.rage.aimbot["autowall type"].Dropdown == "bloxware" then
															    autowallmod1 = 1
																modifier = 3 - autowallmod1
															elseif values.rage.aimbot["autowall type"].Dropdown == "bloxware+" then
															    autowallmod1 = 1.5
																modifier = 3 - autowallmod1
														else
													      modifier = 3
														end
													end
                        end  
													if part.Material == Enum.Material.CorrodedMetal or part.Material == Enum.Material.Metal or part.Material == Enum.Material.Brick or part.Material == Enum.Material.Concrete then
													    if values.rage.aimbot["autowall"].Toggle and values.rage.aimbot["autowall"].Active then
														    if values.rage.aimbot["autowall type"].Dropdown == "slight" then
															    autowallmod2 = 0.5
																modifier = 2 - autowallmod2
															elseif values.rage.aimbot["autowall type"].Dropdown == "off" then
															    autowallmod2 = 0
																modifier = 2 - autowallmod2
															end
															if values.rage.aimbot["autowall type"].Dropdown == "bloxware" then
															    autowallmod2 = 1
																modifier = 3 - autowallmod2
															elseif values.rage.aimbot["autowall type"].Dropdown == "bloxware+" then
															    autowallmod2 = 1.5
																modifier = 3 - autowallmod2
														else
														    modifier = 2
														end
													end
                        end 
													if part.Name == "Grate" or part.Material == Enum.Material.Wood or part.Material == Enum.Material.WoodPlanks then 
														if values.rage.aimbot["autowall"].Toggle and values.rage.aimbot["autowall"].Active then
														    if values.rage.aimbot["autowall type"].Dropdown == "slight" then
															    autowallmod3 = 0.05
																modifier = 0.1 - autowallmod3
															elseif values.rage.aimbot["autowall type"].Dropdown == "off" then
															    autowallmod3 = 0
																modifier = 0.1 - autowallmod3
															end
															if values.rage.aimbot["autowall type"].Dropdown == "bloxware" then
															    autowallmod3 = 0.1
																modifier = 0.1 - autowallmod3
															elseif values.rage.aimbot["autowall type"].Dropdown == "bloxware+" then
															    autowallmod3 = 0.15
																modifier = 0.1 - autowallmod3
														else
														    modifier = 0.1
														end
													end
                        end
                  if part.Material == Enum.Material.DiamondPlate then
                    modifier = 3
                  end
                  if part.Material == Enum.Material.CorrodedMetal or part.Material == Enum.Material.Metal or part.Material == Enum.Material.Concrete or part.Material == Enum.Material.Brick then
                    modifier = 2
                  end
                  if part.Name == "Grate" or part.Material == Enum.Material.Wood or part.Material == Enum.Material.WoodPlanks then
                    modifier = 0.1
                  end
                  if part.Name == "nowallbang" then
                    modifier = 100
                  end
                  if part:FindFirstChild("PartModifier") then
                    modifier = part.PartModifier.Value
                  end
                  if part.Transparency == 1 or part.CanCollide == false or part.Name == "Glass" or part.Name == "Cardboard" then
                    modifier = 0
                  end
                  local direction = (Hitbox.Position - pos).unit * math.clamp(Client.gun.Range.Value, 1, 100)
                  local ray = Ray.new(pos + direction * 1, direction * -2)
                  local _,endpos = workspace:FindPartOnRayWithWhitelist(ray, {part}, true)
                  local thickness = (endpos - pos).Magnitude
                  thickness = thickness * modifier
                  limit = math.min(penetration, limit + thickness)
                  dmgmodifier = 1 - limit / penetration
                end
                local Damage = Client.gun.DMG.Value * Multipliers[EndHit.Name] * dmgmodifier
                if Player:FindFirstChild("Kevlar") then
                  if string.find(EndHit.Name, "Head") then
                    if Player:FindFirstChild("Helmet") then
                      Damage = (Damage / 100) * Client.gun.ArmorPenetration.Value
                    end
                  else
                    Damage = (Damage / 100) * Client.gun.ArmorPenetration.Value
                  end
                end
                Damage = Damage * (Client.gun.RangeModifier.Value/100 ^ ((Origin - EndHit.Position).Magnitude/500))/100
                if Damage >= Stats["minimum damage"].Slider then
                  RageGuy = EndHit
                  RageTarget = EndHit
                  if not values.rage.aimbot["silent aim"].Toggle then
                    Camera.CFrame = CFrame.new(CamCFrame.Position, EndHit.Position)
                  end
                  Filter = true
                  if values.rage.aimbot["automatic fire"].Dropdown == "standard" then
                    Client.firebullet()
                    if values.rage.exploits["double tap"].Toggle and values.rage.exploits["double tap"].Active then
                      Client.firebullet()
                    end
                    if values.rage.exploits["quad tap"].Toggle and values.rage.exploits["quad tap"].Active then
                      Client.firebullet()
                      Client.firebullet()
                      Client.firebullet()
                    end
                    if values.misc.menu.hitlogs.Toggle then
                    CreateHitElement("Hit "..EndHit.Parent.Name.." in the "..EndHit.Name,Color3.new(1,1,1), 3, 0, 280, 0, 22)
                    end 
                  elseif values.rage.aimbot["automatic fire"].Dropdown == "hitpart" then
                    Client.firebullet()
                    local Arguments = {
                      [1] = EndHit,
                      [2] = EndHit.Position,
                      [3] = LocalPlayer.Character.EquippedTool.Value,
                      --[4] = 100,
                      [5] = nil, --LocalPlayer.Character.Gun,
                      [8] = 1,
                      [9] = false,
                      [10] = false,
                      [11] = Vector3.new(),
                      [12] = 100,
                      [13] = Vector3.new()
                    }
                    game.ReplicatedStorage.Events.HitPart:FireServer(unpack(Arguments))
                    if values.misc.menu.hitlogs.Toggle then
                    CreateHitElement("Hit "..EndHit.Parent.Name.." in the "..EndHit.Name,Color3.new(1,1,1), 3, 0, 280, 0, 22)
                    end 
                    if values.rage.exploits["double tap"].Toggle and values.rage.exploits["double tap"].Active then
                      Client.firebullet()
                    end
                    if values.rage.exploits["quad tap"].Toggle and values.rage.exploits["quad tap"].Active then
                      Client.firebullet()
                      Client.firebullet()
                      Client.firebullet()
                      local Arguments = {
                        [1] = EndHit,
                        [2] = EndHit.Position,
                        [3] = LocalPlayer.Character.EquippedTool.Value,
                        --[4] = 100,
                        [5] = nil, --LocalPlayer.Character.Gun,
                        [8] = 1,
                        [9] = false,
                        [10] = false,
                        [11] = Vector3.new(),
                        [12] = 100,
                        [13] = Vector3.new()
                      }
                      game.ReplicatedStorage.Events.HitPart:FireServer(unpack(Arguments))
                    end
                  end
                  Filter = false
                  break
                end
              end
            end
          else
            local Ray = Ray.new(Origin, (Hitbox.Position - Origin).unit * (Hitbox.Position - Origin).magnitude)
            local Hit, Pos = workspace:FindPartOnRayWithIgnoreList(Ray, Ignore2, false, true)
            if Hit and Multipliers[Hit.Name] ~= nil then
              local Damage = Client.gun.DMG.Value * Multipliers[Hit.Name]
              if Player:FindFirstChild("Kevlar") then
                if string.find(Hit.Name, "Head") then
                  if Player:FindFirstChild("Helmet") then
                    Damage = (Damage / 100) * Client.gun.ArmorPenetration.Value
                  end
                else
                  Damage = (Damage / 100) * Client.gun.ArmorPenetration.Value
                end
              end
              Damage = Damage * (Client.gun.RangeModifier.Value/100 ^ ((Origin - Hit.Position).Magnitude/500))
              if Damage >= Stats["minimum damage"].Slider then
                RageGuy = Hit
                RageTarget = Hit
                if not values.rage.aimbot["silent aim"].Toggle then
                  Camera.CFrame = CFrame.new(CamCFrame.Position, Hit.Position)
                end
                Filter = true
                if values.rage.aimbot["automatic fire"].Dropdown == "standard" then
                  Client.firebullet()
                  if values.rage.exploits["double tap"].Toggle and values.rage.exploits["double tap"].Active then
                    Client.firebullet()
                  end
                  if values.rage.exploits["quad tap"].Toggle and values.rage.exploits["quad tap"].Active then
                    Client.firebullet()
                    Client.firebullet()
					Client.firebullet()
                  end
                  if values.misc.menu.hitlogs.Toggle then
                  CreateHitElement("Hit "..EndHit.Parent.Name.." in the "..EndHit.Name,Color3.new(1,1,1), 3, 0, 280, 0, 22)
                  end   
                elseif values.rage.aimbot["automatic fire"].Dropdown == "hitpart" then
                  if values.misc.menu.hitlogs.Toggle then
                    CreateHitElement("Hit "..EndHit.Parent.Name.." in the "..EndHit.Name,Color3.new(1,1,1), 3, 0, 280, 0, 22)
                  end   
                  Client.firebullet()
                  local Arguments = {
                    [1] = EndHit,
                    [2] = EndHit.Position,
                    [3] = LocalPlayer.Character.EquippedTool.Value,
                    --[4] = 100,
                    [5] = nil, --LocalPlayer.Character.Gun,
                    [8] = 1,
                    [9] = false,
                    [10] = false,
                    [11] = Vector3.new(),
                    [12] = 100,
                    [13] = Vector3.new()
                  }
                  game.ReplicatedStorage.Events.HitPart:FireServer(unpack(Arguments))
                  if values.rage.exploits["double tap"].Toggle and values.rage.exploits["double tap"].Active then
                    Client.firebullet()
                  end
                  if values.rage.exploits["quad tap"].Toggle and values.rage.exploits["quad tap"].Active then
                    Client.firebullet()
                    Client.firebullet()
					Client.firebullet()
                    local Arguments = {
                      [1] = EndHit,
                      [2] = EndHit.Position,
                      [3] = LocalPlayer.Character.EquippedTool.Value,
                      --[4] = 100,
                      [5] = nil, --LocalPlayer.Character.Gun,
                      [8] = 1,
                      [9] = false,
                      [10] = false,
                      [11] = Vector3.new(),
                      [12] = 100,
                      [13] = Vector3.new()
                    }
                    game.ReplicatedStorage.Events.HitPart:FireServer(unpack(Arguments))
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
end
elseif values.legit.aimbot["aim assist"].Toggle and values.legit.aimbot["aim assist"].Active and not library.uiopen then
local Stats = GetStatsLegit(GetWeaponLegit(Client.gun.Name))
local Ignore = {LocalPlayer.Character, Camera, workspace.Map.Clips, workspace.Map.SpawnPoints, workspace.Debris}
local Closest = 9999
local Target

Fov.Radius = Stats["field of view"].Slider
Fov.Visible =  values.legit.settings["draw fov"].Toggle
Fov.Color =  values.legit.settings["draw fov"].Color

if not TBLFIND(Stats.conditions.Jumbobox, "smoke") then
  INSERT(Ignore, workspace.Ray_Ignore)
end

if not TBLFIND(Stats.conditions.Jumbobox, "blind") or LocalPlayer.PlayerGui.Blnd.Blind.BackgroundTransparency > 0.9 then
  if not TBLFIND(Stats.conditions.Jumbobox, "standing") or SelfVelocity.Magnitude < 3 then
    for _,Player in pairs(Players:GetPlayers()) do
      if Player.Character and Player.Character:FindFirstChild("Humanoid") and Player.Character:FindFirstChild("Humanoid").Health > 0 then
        if not values.legit.settings["forcefield check"].Toggle or not Player.Character:FindFirstChildOfClass("ForceField") then
          if Player.Team ~= LocalPlayer.Team or values.legit.settings["free for all"].Toggle then
            local Pos, onScreen = Camera:WorldToViewportPoint(Player.Character.HumanoidRootPart.Position)
            if onScreen then
              local Magnitude = (Vec2(Pos.X, Pos.Y) - Vec2(Mouse.X, Mouse.Y)).Magnitude
              if Magnitude < Stats["field of view"].Slider then
                local Hitbox = Stats.hitbox.Dropdown == "head" and Player.Character.Head or Stats.hitbox.Dropdown == "chest" and Player.Character.UpperTorso
                if Stats.hitbox.Dropdown == "closest" then
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
                  if not TBLFIND(Stats.conditions.Jumbobox, "visible") then
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
if not values.rage.aimbot["enabled (rage)"].Toggle and values.legit.aimbot["triggerbot"].Toggle and values.legit.aimbot["triggerbot"].Active and not TriggerDebounce then
local Stats = GetStatsLegit(GetWeaponLegit(Client.gun.Name))
if Stats.triggerbot.Toggle then
  if not TBLFIND(Stats.conditions.Jumbobox, "blind") or LocalPlayer.PlayerGui.Blnd.Blind.BackgroundTransparency > 0.9 then
    if not TBLFIND(Stats.conditions.Jumbobox, "standing") or SelfVelocity.Magnitude < 3 then
      if Mouse.Target and Mouse.Target.Parent and Players:GetPlayerFromCharacter(Mouse.Target.Parent) and Multipliers[Mouse.Target.Name] ~= nil and Client.gun.DMG.Value * Multipliers[Mouse.Target.Name] >= Stats["minimum dmg"].Slider then
        local OldTarget = Mouse.Target
        local Player = Players:GetPlayerFromCharacter(Mouse.Target.Parent)
        if Player.Team ~= LocalPlayer.Team or values.legit.settings["free for all"].Toggle then
          coroutine.wrap(function()
          TriggerDebounce = true
          wait(Stats["delay (ms)"].Slider/1000)
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
BodyVelocity:Destroy()
BodyVelocity = INST("BodyVelocity")
if UserInputService:IsKeyDown("Space") and values.misc.movement["bunny hop"].Toggle then
if LocalPlayer.Character:FindFirstChild("jumpcd") then
                LocalPlayer.Character.jumpcd:Destroy()
            end
local add = 0
if values.misc.movement.direction.Dropdown == "directional" or values.misc.movement.direction.Dropdown == "directional 2" then
if UserInputService:IsKeyDown("A") then add = 90 end
if UserInputService:IsKeyDown("S") then add = 180 end
if UserInputService:IsKeyDown("D") then add = 270 end
if UserInputService:IsKeyDown("A") and UserInputService:IsKeyDown("W") then add = 45 end
if UserInputService:IsKeyDown("D") and UserInputService:IsKeyDown("W") then add = 315 end
if UserInputService:IsKeyDown("D") and UserInputService:IsKeyDown("S") then add = 225 end
if UserInputService:IsKeyDown("A") and UserInputService:IsKeyDown("S") then add = 145 end
end
local rot = YROTATION(CamCFrame) * CFAngles(0,RAD(add),0)
BodyVelocity.Parent = LocalPlayer.Character.UpperTorso
LocalPlayer.Character.Humanoid.Jump = true
if values.misc.movement.type.Dropdown == "gyro" and values.misc.movement["gyro type"].Dropdown == "no fling" then
BodyVelocity.MaxForce = Vector3.new(99999,0,99999)
else
BodyVelocity.MaxForce = Vector3.new(HUGE,0,HUGE)
end
BodyVelocity.Velocity = Vec3(rot.LookVector.X,0,rot.LookVector.Z) * (values.misc.movement["speed"].Slider * 2)
if add == 0 and values.misc.movement.direction.Dropdown == "directional" and not UserInputService:IsKeyDown("W") then
BodyVelocity:Destroy()
elseif values.misc.movement.type.Dropdown == "cframe" then
BodyVelocity:Destroy()
Root.CFrame = Root.CFrame + Vec3(rot.LookVector.X,0,rot.LookVector.Z) * values.misc.movement["speed"].Slider/60
end
end
if values.misc.movement["edge jump"].Toggle and values.misc.movement["edge jump"].Active then
if LocalPlayer.Character.Humanoid:GetState() ~= Enum.HumanoidStateType.Freefall and LocalPlayer.Character.Humanoid:GetState() ~= Enum.HumanoidStateType.Jumping then
coroutine.wrap(function()
RunService.RenderStepped:Wait()
if LocalPlayer.Character ~= nil and LocalPlayer.Character:FindFirstChild("Humanoid") and LocalPlayer.Character.Humanoid:GetState() == Enum.HumanoidStateType.Freefall and LocalPlayer.Character.Humanoid:GetState() ~= Enum.HumanoidStateType.Jumping then
  LocalPlayer.Character.Humanoid:ChangeState("Jumping")
end
end)()
end
end
Jitter = not Jitter
LocalPlayer.Character.Humanoid.AutoRotate = false
if values["anti-aim"].angles.enabled.Toggle and not DisableAA then
local Angle = -ATAN2(CamLook.Z, CamLook.X) + RAD(-90)
if values["anti-aim"].angles["yaw base"].Dropdown == "spin" then
Angle = Angle + RAD(Spin)
end
if values["anti-aim"].angles["yaw base"].Dropdown == "random" then
Angle = Angle + RAD(RANDOM(0, 360))
end
if values["anti-aim"].angles["yaw base"].Dropdown == "unhittable" then
Angle = Angle + CLAMP(RANDOM + 500, 0, 64)
end
if values["anti-aim"].angles["yaw base"].Dropdown == "anti crippin'" then
Angle = Angle + CLAMP(Spin + 100, 0, 180)
end
if values["anti-aim"].angles["yaw base"].Dropdown == "keybind yaw" then
if UserInputService:IsKeyDown("W") then
  Angle = -ATAN2(CamLook.Z, CamLook.X) + RAD(-90) + RAD(0)
elseif values["anti-aim"].angles["reset yaw"].Toggle and values["anti-aim"].angles["reset yaw"].Active then
  Angle = -ATAN2(CamLook.Z, CamLook.X) + RAD(-90) + RAD(0)
end
if UserInputService:IsKeyDown("A") then
  Angle = -ATAN2(CamLook.Z, CamLook.X) + RAD(-90) + RAD(90)
elseif values["anti-aim"].angles["reset yaw"].Toggle and values["anti-aim"].angles["reset yaw"].Active then
  Angle = -ATAN2(CamLook.Z, CamLook.X) + RAD(-90) + RAD(0)
end
if UserInputService:IsKeyDown("S") then
  Angle = -ATAN2(CamLook.Z, CamLook.X) + RAD(-90) + RAD(180)
elseif values["anti-aim"].angles["reset yaw"].Toggle and values["anti-aim"].angles["reset yaw"].Active then
  Angle = -ATAN2(CamLook.Z, CamLook.X) + RAD(-90) + RAD(0)
end
if UserInputService:IsKeyDown("D") then
  Angle = -ATAN2(CamLook.Z, CamLook.X) + RAD(-90) + RAD(-90)
elseif values["anti-aim"].angles["reset yaw"].Toggle and values["anti-aim"].angles["reset yaw"].Active then
  Angle = -ATAN2(CamLook.Z, CamLook.X) + RAD(-90) + RAD(0)
end
end
if values["anti-aim"].angles["reset yaw"].Toggle and values["anti-aim"].angles["reset yaw"].Active then
Angle = -ATAN2(CamLook.Z, CamLook.X) + RAD(-90) + RAD(0)
end
if values["anti-aim"].angles["manual right"].Toggle and values["anti-aim"].angles["manual right"].Active then
Angle = -ATAN2(CamLook.Z, CamLook.X) + RAD(-90) + RAD(90)
elseif values["anti-aim"].angles["reset yaw"].Toggle and values["anti-aim"].angles["reset yaw"].Active then
Angle = -ATAN2(CamLook.Z, CamLook.X) + RAD(-90) + RAD(0)
end
if values["anti-aim"].angles["manual left"].Toggle and values["anti-aim"].angles["manual left"].Active then
Angle = -ATAN2(CamLook.Z, CamLook.X) + RAD(-90) + RAD(-90)
elseif values["anti-aim"].angles["reset yaw"].Toggle and values["anti-aim"].angles["reset yaw"].Active then
Angle = -ATAN2(CamLook.Z, CamLook.X) + RAD(-90) + RAD(0)
end
local Offset = RAD(-values["anti-aim"].angles["yaw offset"].Slider - (values["anti-aim"].angles.jitter.Toggle and Jitter and values["anti-aim"].angles["jitter offset"].Slider or 0))
local CFramePos = CF(Root.Position) * CFAngles(0, Angle + Offset, 0)
if values["anti-aim"].angles["yaw base"].Dropdown == "targets" then
local part
local closest = 9999
for _,plr in pairs(Players:GetPlayers()) do
  if plr.Character and plr.Character:FindFirstChild("Humanoid") and plr.Character:FindFirstChild("Humanoid").Health > 0 and plr.Team ~= LocalPlayer.Team then
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
Root.CFrame = YROTATION(CFramePos)
if values["anti-aim"].angles["body roll"].Dropdown == "180" then
Root.CFrame = Root.CFrame * CFAngles(values["anti-aim"].angles["body roll"].Dropdown == "180" and RAD(-values["anti-aim"].angles["body roll offset"].Slider or 0) or 0, 1, 0)
LocalPlayer.Character.Humanoid.HipHeight = values["anti-aim"].angles["high pos"].Slider or 3.5
else
LocalPlayer.Character.Humanoid.HipHeight = values["anti-aim"].angles["high pos"].Slider or 1
end


Root.CFrame = YROTATION(CFramePos)
if values["anti-aim"].angles["body roll"].Dropdown == "360" then
Root.CFrame = Root.CFrame * CFAngles(values["anti-aim"].angles["body roll"].Dropdown == "360" and RAD(-values["anti-aim"].angles["body roll offset"].Slider or 0) or 0, 1, 0)
LocalPlayer.Character.Humanoid.HipHeight = values["anti-aim"].angles["high pos"].Slider or 1
else
LocalPlayer.Character.Humanoid.HipHeight = values["anti-aim"].angles["high pos"].Slider or 1
end
local Pitch = values["anti-aim"].angles["pitch"].Dropdown == "none" and 0 or values['anti-aim'].angles['pitch'].Dropdown == "up" and 1 or values["anti-aim"].angles["pitch"].Dropdown == "down" and -1 or values["anti-aim"].angles["pitch"].Dropdown == "180v2" and 2 or values["anti-aim"].angles["pitch"].Dropdown == "180v3" and -9 or values["anti-aim"].angles["pitch"].Dropdown == "random" and RANDOM(-25, 25)/25 or values["anti-aim"].angles["pitch"].Dropdown == "random2" and RANDOM(-99999999, 100)/100 or values["anti-aim"].angles["pitch"].Dropdown == "totally normal" and -71 or values["anti-aim"].angles["pitch"].Dropdown == "totally normal2" and 71 or values["anti-aim"].angles["pitch"].Dropdown == "up2" and 12 or values["anti-aim"].angles["pitch"].Dropdown == "down2" and -12 or values["anti-aim"].angles["pitch"].Dropdown == "fake headless" and -99 or values["anti-aim"].angles["pitch"].Dropdown == "sucking dick" and -62 or values["anti-aim"].angles["pitch"].Dropdown == "huge" and math.huge or values['anti-aim'].angles["pitch"].Dropdown == "fake up" and CamLook.Z * 2.3 * math.sqrt(2.3) or values['anti-aim'].angles["pitch"].Dropdown == "fake down" and CamLook.Z * 2.3 * math.sqrt(-2.3) or values['anti-aim'].angles["pitch"].Dropdown == "fake zero" and CamLook.Z + 12 or values['anti-aim'].angles["pitch"].Dropdown == "joe.tapped" and math.floor * math.acos / CamLook.Y + math.floor - math.random(-90, 89) or 2.5
if values["anti-aim"].angles["extend pitch"].Toggle and (values["anti-aim"].angles["pitch"].Dropdown == "up" or values["anti-aim"].angles["pitch"].Dropdown == "down" or values["anti-aim"].angles["pitch"].Dropdown == "180" or values["anti-aim"].angles["pitch"].Dropdown == "fake headless" or values["anti-aim"].angles["pitch"].Dropdown == "sucking dick") then
Pitch = (Pitch*2)/1.6
end
if values["anti-aim"].angles["custom pitch"].Toggle then
    Pitch = values["anti-aim"].angles["pitch value"].Slider/7
end
if values["anti-aim"].angles["reset pitch"].Toggle and values["anti-aim"].angles["reset pitch"].Active then
Pitch = 0
end
game.ReplicatedStorage.Events.ControlTurn:FireServer(Pitch, LocalPlayer.Character:FindFirstChild("Climbing") and true or false)
else
LocalPlayer.Character.Humanoid.HipHeight = values["anti-aim"].angles["high pos"].Slider or 1
Root.CFrame = CF(Root.Position) * CFAngles(0, -ATAN2(CamLook.Z, CamLook.X) + RAD(270), 0)
game.ReplicatedStorage.Events.ControlTurn:FireServer(CamLook.Y, LocalPlayer.Character:FindFirstChild("Climbing") and true or false)
end
if values["anti-aim"].others["remove head (gay)"].Toggle then
if LocalPlayer.Character:FindFirstChild("FakeHead") then
LocalPlayer.Character.FakeHead:Destroy()
end
if LocalPlayer.Character:FindFirstChild("HeadHB") then
LocalPlayer.Character.HeadHB:Destroy()
end
end
if TBLFIND(values.misc.client["gun modifiers"].Jumbobox, "recoil") then
Client.resetaccuracy()
Client.RecoilX = 0
Client.RecoilY = 0
end
end
for _,Player in pairs(Players:GetPlayers()) do
if Player.Character and Player ~= LocalPlayer and Player.Character:FindFirstChild("HumanoidRootPart") and Player.Character.HumanoidRootPart:FindFirstChild("OldPosition") then
coroutine.wrap(function()
local Position = Player.Character.HumanoidRootPart.Position
RunService.RenderStepped:Wait()
if Player.Character and Player ~= LocalPlayer and Player.Character:FindFirstChild("HumanoidRootPart") then
if Player.Character.HumanoidRootPart:FindFirstChild("OldPosition") then
  Player.Character.HumanoidRootPart.OldPosition.Value = Position
else
  local Value = INST("Vector3Value")
  Value.Name = "OldPosition"
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
if Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") and Player.Team ~= "TTT" and (Player.Team ~= LocalPlayer.Team or values.visuals.players.teammates.Toggle) and Player.Character:FindFirstChild("Gun") and Player.Character:FindFirstChild("Humanoid") and Player ~= LocalPlayer then
local HumanoidRootPart = Player.Character.HumanoidRootPart
local RootPosition = HumanoidRootPart.Position
local Pos, OnScreen = Camera:WorldToViewportPoint(RootPosition)
local Size = (Camera:WorldToViewportPoint(RootPosition - Vec3(0, 3, 0)).Y - Camera:WorldToViewportPoint(RootPosition + Vec3(0, 2.6, 0)).Y) / 2

local Drawings, Text = TBLFIND(values.visuals.players.outlines.Jumbobox, "drawings") ~= nil, TBLFIND(values.visuals.players.outlines.Jumbobox, "text") ~= nil

tbl.Box.Color = values.visuals.players.box.Color
tbl.Box.Size = Vec2(Size * 1.5, Size * 1.9)
tbl.Box.Position = Vec2(Pos.X - Size*1.5 / 2, (Pos.Y - Size*1.6 / 2))

if values.visuals.players.box.Toggle then
tbl.Box.Visible = OnScreen
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
tbl.Health.Color = COL3(0,1,0)
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

if values.visuals.players["weapon icon"].Toggle then
Items[Player.Name].ImageColor3 = values.visuals.players["weapon icon"].Color
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
if TBLFIND(values.visuals.players.indicators.Jumbobox, "armor") and Player:FindFirstChild("Kevlar") then
tbl.Armor.Color = COL3RGB(0, 150, 255)
tbl.Armor.Text = Player:FindFirstChild("Helmet") and "HK" or "K"
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
end)

local visualsilentangle = nil
			local speed = values.visuals.self["silent angle speed"].Slider/50
			local last = tick()
			RunService.RenderStepped:Connect(function()
				if RageTarget then
					visualsilentangle = RageTarget.Position
					last = tick()
				else
					if tick() - last > speed then
						visualsilentangle = nil
					end
				end
			end)

local mt = getrawmetatable(game)
local oldNamecall = mt.__namecall
local oldIndex = mt.__index
local oldNewIndex = mt.__newindex
setreadonly(mt,false)
mt.__namecall = function(self, ...)
local method = tostring(getnamecallmethod())
local args = {...}

if method == "SetPrimaryPartCFrame" and self.Name == "Arms" then
if values.visuals.self["third person"].Toggle and values.visuals.self["third person"].Active and values.visuals.self["no arm third person"].Toggle and LocalPlayer.Character then
args[1] = args[1] * CF(99, 99, 99)
else
if values.visuals.self["viewmodel changer"].Toggle then
args[1] = args[1] * ViewmodelOffset
end
if values.visuals.self["visualize silent angle"].Toggle and visualsilentangle then
args[1] = CFrame.lookAt(args[1].p, visualsilentangle)
end
end
end
if method == "SetPrimaryPartCFrame" and self.Name ~= "Arms" then
args[1] = args[1] + Vec3(0, 3, 0)
coroutine.wrap(function()
DisableAA = true
wait(2)
DisableAA = false
end)()
end
if method == "Kick" then
return
end
if method == "FireServer" then
if LEN(self.Name) == 38 then
return
elseif self.Name == "FallDamage" and TBLFIND(values.misc.client["damage bypass"].Jumbobox, "fall") or values.misc.movement["jump bug"].Toggle and values.misc.movement["jump bug"].Active then
return
elseif self.Name == "BURNME" and TBLFIND(values.misc.client["damage bypass"].Jumbobox, "fire") then
return
elseif self.Name == "ControlTurn" and not checkcaller() then
return
end
if self.Name == "PlayerChatted" and values.misc.client["chat alive"].Toggle then
args[2] = false
args[3] = "Innocent"
args[4] = false
args[5] = false
end
if self.Name == "ReplicateCamera" and values.misc.client["anti spectate"].Toggle then
args[1] = CF()
end
if self.Name == "ReplicateCamera" and values.misc.client["my eyes"].Toggle then
args[1] =  args[1] * CFrame.Angles(0, 0, RAD(RANDOM(0, 360)))
end
end
if method == "FindPartOnRayWithWhitelist" and not checkcaller() and Client.gun ~= "none" and Client.gun.Name ~= "C4" then
if #args[2] == 1 and args[2][1].Name == "SpawnPoints" then
local Team = LocalPlayer.Status.Team.Value

if TBLFIND(values.misc.client.shop.Jumbobox, "anywhere") then
return Team == "T" and args[2][1].BuyArea or args[2][1].BuyArea2
end
end
end
if method == "FindPartOnRayWithIgnoreList" and args[2][1] == workspace.Debris then
if not checkcaller() or Filter then
if TBLFIND(values.misc.client["gun modifiers"].Jumbobox, "penetration") then
INSERT(args[2], workspace.Map)
end
if TBLFIND(values.misc.client["gun modifiers"].Jumbobox, "spread") then
args[1] = RAY(Camera.CFrame.p, Camera.CFrame.LookVector * Client.gun.Range.Value)
end
local Stats = GetStatsLegit(GetWeaponLegit(Client.gun.Name))
if values.legit.aimbot["silent aim"].Toggle and values.legit.aimbot["silent aim"].Active and Stats["silent aim"].Toggle then
local Ignore = {LocalPlayer.Character, Camera, workspace.Map.Clips, workspace.Map.SpawnPoints, workspace.Debris}
local Closest = 9999
local Target

if not TBLFIND(Stats.conditions.Jumbobox, "smoke") then
  INSERT(Ignore, workspace.Ray_Ignore)
end

coroutine.wrap(function()
if not TBLFIND(Stats.conditions.Jumbobox, "blind") or LocalPlayer.PlayerGui.Blnd.Blind.BackgroundTransparency > 0.9 then
  if not TBLFIND(Stats.conditions.Jumbobox, "blind") or SelfVelocity.Magnitude < 3 then
    for _,Player in pairs(Players:GetPlayers()) do
      if Player.Character and Player.Character:FindFirstChild("Humanoid") and Player.Character:FindFirstChild("Humanoid").Health > 0 then
        if not values.legit.settings["forcefield check"].Toggle or not Player.Character:FindFirstChildOfClass("ForceField") then
          if Player.Team ~= LocalPlayer.Team or values.legit.settings["free for all"].Toggle then
            local Pos, onScreen = Camera:WorldToViewportPoint(Player.Character.HumanoidRootPart.Position)
            if onScreen then
              local Magnitude = (Vec2(Pos.X, Pos.Y) - Vec2(Mouse.X, Mouse.Y)).Magnitude
              if Magnitude < Stats["field of view"].Slider then
                local Hitbox = Stats.priority.Dropdown == "head" and Player.Character.Head or Stats.priority.Dropdown == "chest" and Player.Character.UpperTorso
                if Stats.priority.Dropdown == "closest" then
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
                  if not TBLFIND(Stats.conditions.Jumbobox, "visible") then
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

local args8 = values.rage.aimbot["hits multiplier"].Slider
args[8] = args8


if RageTarget ~= nil then
local Origin = values.rage.aimbot.origin.Dropdown == "character" and LocalPlayer.Character.LowerTorso.Position + Vec3(0, 2.5, 0) or Camera.CFrame.p
if values.rage.aimbot["delay shot"].Toggle then
  spawn(function()
  args[1] = RAY(Origin, (RageTarget.Position - Origin).unit * (RageTarget.Position - Origin).magnitude)
  end)
else
  args[1] = RAY(Origin, (RageTarget.Position - Origin).unit * (RageTarget.Position - Origin).magnitude)
end
end
end
end
if method == "InvokeServer" then
if self.Name == "Moolah" then
return
elseif self.Name == "Hugh" then
return
elseif self.Name == "Filter" and values.misc.chat["no filter"].Toggle then
return args[1]
end
end
if method == "LoadAnimation" and self.Name == "Humanoid" then
if values["anti-aim"].others["leg movement"].Dropdown == "slide" then
if FIND(args[1].Name, "Walk") or FIND(args[1].Name, "Run") then
args[1] = FakeAnim
end
end
if values["anti-aim"].others["leg movement"].Dropdown == "slide2" then
if FIND(args[1].Name, "Walk") or FIND(args[1].Name, "Run") or FIND(args[1].Name, "Jump") then
args[1] = FakeAnim
end
end
if values["anti-aim"].others["leg movement"].Dropdown == "slide3" then
if FIND(args[1].Name, "Jump") then
args[1] = FakeAnim
end
end
if values["anti-aim"].others["no animations"].Toggle then
args[1] = FakeAnim
end
end
if method == "FireServer" and self.Name == "HitPart" then

if values.rage.aimbot["force hit method"].Dropdown == "off" then
coroutine.wrap(function()
if values.rage.aimbot["force hit method"].Dropdown == "character" then
args[1] = RageTarget
args[2] = RageTarget.Position

elseif values.rage.aimbot["force hit method"].Dropdown == "head" then
args[1] = RageTarget.Parent.Head
args[2] = RageTarget.Position 
end
end)
end 

if values.rage.aimbot["prediction"].Dropdown ~= "off" and RageTarget ~= nil then
			coroutine.wrap(function()
				if Players:GetPlayerFromCharacter(args[1].Parent) or args[1] == RageTarget then
					if values.rage.aimbot["prediction"].Dropdown == "automatic" then
						
						local hrp = RageTarget.Parent.HumanoidRootPart.Position
						local oldHrp = RageTarget.Parent.HumanoidRootPart.OldPosition.Value
		
						local vel = (Vec3(hrp.X, 0, hrp.Z) - Vec3(oldHrp.X, 0, oldHrp.Z)) / LastStep
						local dir = Vec3(vel.X / vel.magnitude, 0, vel.Z / vel.magnitude)
		
							
						args[2] = args[2] + dir * (Ping / (POW(Ping, (1.5 * (values.rage.aimbot["prediction multiplier"].Slider / 5)))) * (dir / (dir / 2)))
						--[[args[4] = 0
						args[12] = args[12] - (500 * (values.rage.aimbot["prediction multiplier 2"].Slider / 5))]]

					elseif values.rage.aimbot["prediction"].Dropdown == "cframe" then
						local Velocity = (RageTarget.Parent.HumanoidRootPart.Position - RageTarget.Parent.HumanoidRootPart.OldPosition.Value)/LastStep
						local Direction = Vector3.new(Velocity.X/Velocity.magnitude, 0, Velocity.Z/Velocity.magnitude)
						if Velocity.magnitude >= 1 then
							args[2] = args[2] + Direction * ((Velocity.magnitude*(Ping/1000 * (values.rage.aimbot["prediction multiplier 2"].Slider / 5)) * (Ping > 200 and 1.5 or 2)))
							--[[args[4] = 0
							args[12] = args[12] - (500 * (values.rage.aimbot["prediction multiplier 2"].Slider / 5))]]
						end
					else
						local Velocity = RageTarget.Parent.HumanoidRootPart.Velocity
						local Direction = Vector3.new(Velocity.X/Velocity.magnitude, 0, Velocity.Z/Velocity.magnitude)
						if Velocity.magnitude >= 8 then
							args[2] = args[2] + Direction * (Velocity.magnitude*(Ping/1000 * (values.rage.aimbot["prediction multiplier 2"].Slider / 5)) * (Ping > 200 and 1.5 or 2))
							--[[args[4] = 0
							args[12] = args[12] - (500 * (values.rage.aimbot["prediction multiplier 2"].Slider / 5))]]
						end
					end
				end
			end)()
		end

if method == "FireServer" and self.Name == "HitPart" then
		if values.visuals.world["bullet tracers"].Toggle then   
			if values.visuals.world["tracers type"].Dropdown == "forcefield" then   
				coroutine.wrap(function()      
					beam = INST("Part")      
					beam.Anchored = true      
					beam.CanCollide = false      
					beam.Material = "ForceField"  
					beam.Color = values.visuals.world["bullet tracers"].Color      
					beam.Size = Vec3(0.1, 0.1, (Camera.CFrame.Position - args[2]).Magnitude)      
					beam.CFrame = CF(Camera.CFrame.Position, args[2]) * CF(0, 0, -beam.Size.Z / 2)      
					beam.Parent = workspace.Debris      
					library:Tween(beam, TweenInfo.new(3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Transparency = 1})      
					wait(3)      
					beam:Destroy()      
				end)()   
			elseif values.visuals.world("tracers type").Dropdown == "drawing" then
				coroutine.wrap(function()
					pcall(function()
						local Line = Drawing3d:New3DLine()
						Line.Visible = true
						Line.ZIndex = 3
						Line.Transparency = 1
						Line.Color = values.visuals.world["bullet tracers"].Color    
						Line.Thickness = 1
						Line.From = Camera.CFrame.Position
						Line.To = args[2]
						wait(3)
						Line:Remove()
					end)
				end)()
			end
		end
	end
end

--[[if values.rage.aimbot["prediction"].Dropdown ~= "off" and RageTarget ~= nil then
			coroutine.wrap(function()
				if Players:GetPlayerFromCharacter(args[1].Parent) or args[1] == RageTarget then
					if values.rage.aimbot["prediction"].Dropdown == "automatic" then
						
						local hrp = RageTarget.Parent.HumanoidRootPart.Position
						local oldHrp = RageTarget.Parent.HumanoidRootPart.OldPosition.Value
		
						local vel = (Vec3(hrp.X, 0, hrp.Z) - Vec3(oldHrp.X, 0, oldHrp.Z)) / LastStep
						local dir = Vec3(vel.X / vel.magnitude, 0, vel.Z / vel.magnitude)
		
							
						args[2] = args[2] + dir * (Ping / (POW(Ping, (1.5 * (values.rage.aimbot["automatic multiplier"].Slider / 5)))) * (dir / (dir / 2)))
						args[4] = 0
						args[12] = args[12] - (500 * (values.rage.aimbot["automatic multiplier 2"].Slider / 5))

					elseif values.rage.aimbot["prediction"].Dropdown == "cframe" then
						local oldPos = RageTarget.Parent.HumanoidRootPart.Position
						local step = RS.RenderStepped:Wait()
						local newPos = RageTarget.Parent.HumanoidRootPart.Position
					
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
		end]]
--[[if (values.rage.aimbot["get real"].Toggle and RageTarget ~= nil) then
coroutine.wrap(function()
if Players:GetPlayerFromCharacter(args[1].Parent) or args[1] == RageTarget then
local hrp = RageTarget.Parent.HumanoidRootPart.Position
local oldHrp = RageTarget.Parent.HumanoidRootPart.OldPosition.Value

local vel = (Vec3(hrp.X, 0, hrp.Z) - Vec3(oldHrp.X, 0, oldHrp.Z)) / LastStep
local dir = Vec3(vel.X / vel.magnitude, 0, vel.Z / vel.magnitude)

args[2] = args[2] + dir * (Ping / (POW(Ping, 1.5)) * (dir / (dir / 2)))
args[4] = 0
args[12] = args[12] - 500
end
end)()
end]]

if values.visuals.world["impacts"].Toggle then
coroutine.wrap(function()
local hit = INST("Part")
hit.Transparency = 1
hit.Anchored = true
hit.CanCollide = false
hit.Size = Vec3(0.3,0.3,0.3)
hit.Position = args[2]
local selection = INST("SelectionBox")
selection.LineThickness = 0
selection.SurfaceTransparency = 0.5
selection.Color3 = values.visuals.world["impacts"].Color
selection.SurfaceColor3 = values.visuals.world["impacts"].Color
selection.Parent = hit
selection.Adornee = hit
hit.Parent = workspace.Debris
wait(5.9)
library:Tween(selection, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {SurfaceTransparency = 1})
hit:Destroy()
end)()
if values.visuals.world["hit chams"].Toggle then
coroutine.wrap(function()
if Players:GetPlayerFromCharacter(args[1].Parent) and Players:GetPlayerFromCharacter(args[1].Parent).Team ~= LocalPlayer.Team then
  for _,hitbox in pairs(args[1].Parent:GetChildren()) do
    if hitbox:IsA("BasePart") or hitbox.Name == "Head" then
      coroutine.wrap(function()
      local part = INST("Part")
      part.CFrame = hitbox.CFrame
      part.Anchored = true
      part.CanCollide = false
      part.Material = Enum.Material.ForceField
      part.Color = values.visuals.world["hit chams"].Color
      part.Size = hitbox.Size
      part.Parent = workspace.Debris
      library:Tween(part, TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Transparency = 1})
      wait(2)
      part:Destroy()
      end)()
    end
  end
end
end)()
end
end


return oldNamecall(self, unpack(args))
end

mt.__index = newcclosure(function(self, key)
local CallingScript = getcallingscript()

if not checkcaller() and self == Viewmodels and LocalPlayer.Character ~= nil and LocalPlayer.Character:FindFirstChild("UpperTorso") then
local WeaponName = string.gsub(key, "v_", "")
if not string.find(WeaponName, "Arms") then
if Weapons[WeaponName]:FindFirstChild("Melee") and values.skins.knife["knife changer"].Toggle then
if Viewmodels:FindFirstChild("v_"..values.skins.knife.model.Scroll) then
return Viewmodels:FindFirstChild("v_"..values.skins.knife.model.Scroll)
else
local Clone = Models.Knives[values.skins.knife.model.Scroll]:Clone()
return Clone
end
end
end
end
if key == "Value" then
if self.Name == "Auto" and table.find(values.misc.client["gun modifiers"].Jumbobox, "automatic") then
return true
elseif self.Name == "ReloadTime" and table.find(values.misc.client["gun modifiers"].Jumbobox, "reload") then
return 0.001
elseif self.Name == "EquipTime" and table.find(values.misc.client["gun modifiers"].Jumbobox, "equip") then
return 0.001
elseif self.Name == "Ammo" and table.find(values.misc.client['gun modifiers'].Jumbobox, "ammo") then
return math.huge
elseif self.Name == "StoredAmmo" and table.find(values.misc.client['gun modifiers'].Jumbobox, "ammo") then
return math.huge 
elseif self.Name == "BuyTime" and table.find(values.misc.client.shop.Jumbobox, "inf time") then
return 5
elseif self.Name == "FireRate" and values.misc.client["firerate modifier"].Slider ~= 10 then
return 0.01 * (values.misc.client["firerate modifier"].Slider)
end
end

return oldIndex(self, key)
end)

mt.__newindex = function(self, i, v)
if self:IsA("Humanoid") and i == "JumpPower" and not checkcaller() then
if values.misc.movement["jump bug"].Toggle and values.misc.movement["jump bug"].Active then
v = 24
end
if values.misc.movement["edge bug"].Toggle and values.misc.movement["edge bug"].Active then
v = 0
end
elseif self:IsA("Humanoid") and i == "CameraOffset" then
if values["anti-aim"].angles.enabled.Toggle and values["anti-aim"].angles["body roll"].Dropdown == "180" and not DisableAA then
v = v + Vec3(0, -3.5, 0)
end
end

if self:IsA('Humanoid') and i == 'WalkSpeed' and not checkcaller() then
		if values.misc.movement["walkspeed changer"].Toggle and values.misc.movement["walkspeed changer"].Active and values.misc.movement["walking type"].Dropdown == "universal" and not UserInputService:IsKeyDown('Space') then 
			local SpeedhackState = values.misc.movement["walkspeed changer"].Toggle
			if SpeedhackState then
				v = values.misc.movement["walkspeed"].Slider * 2
			end
		end
	end  

return oldNewIndex(self, i, v)
end
	 
Crosshairs.Scope:GetPropertyChangedSignal("Visible"):Connect(function(current)
if not TBLFIND(values.visuals.effects.removals.Jumbobox, "scope lines") then return end

if current ~= false then
Crosshairs.Scope.Visible = false
end
end)
Crosshair:GetPropertyChangedSignal("Visible"):Connect(function(current)
if not LocalPlayer.Character then return end
if not values.visuals.effects["force crosshair"].Toggle then return end
if LocalPlayer.Character:FindFirstChild("AIMING") then return end

Crosshair.Visible = true
end)

LocalPlayer.Additionals.TotalDamage:GetPropertyChangedSignal("Value"):Connect(function(current)
if current == 0 then return end
coroutine.wrap(function()
if values.misc.client.hitmarker.Toggle then
local Line = Drawing.new("Line")
local Line2 = Drawing.new("Line")
local Line3 = Drawing.new("Line")
local Line4 = Drawing.new("Line")

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
if values.visuals.world.hitsound.Dropdown == "none" then return end
local sound = INST("Sound")
sound.Parent = game:GetService("SoundService")
sound.SoundId = values.visuals.world.hitsound.Dropdown == "skeet" and "rbxassetid://5447626464" or values.visuals.world.hitsound.Dropdown == "bruh" and "rbxassetid://535690488" or values.visuals.world.hitsound.Dropdown == "MC \"ouh!\"" and "rbxassetid://6361963422" or values.visuals.world.hitsound.Dropdown == "moan" and "rbxassetid://2440889605" or values.visuals.world.hitsound.Dropdown == "moan2" and "rbxassetid://2440891382" or values.visuals.world.hitsound.Dropdown == "moan3" and "rbxassetid://2440889869" or values.visuals.world.hitsound.Dropdown == "ding" and "rbxassetid://8322227470" or values.misc.audio.hitsound.Dropdown == "headshot" and "rbxassetid://5764885927" or values.misc.audio.hitsound.Dropdown == "neverlose" and "rbxassetid://6607204501" or values.misc.audio.hitsound.Dropdown == "rust" and "rbxassetid://5043539486" or values.misc.audio.hitsound.Dropdown == "bag" and "rbxassetid://364942410" or values.misc.audio.hitsound.Dropdown == "baimware" and "rbxassetid://6607339542" or values.misc.audio.hitsound.Dropdown == "lessgo" and "rbxassetid://6782594987" or values.misc.audio.hitsound.Dropdown == "MCOOF" and "rbxassetid://5869422451" or values.misc.audio.hitsound.Dropdown == "osu" and "rbxassetid://7149919358" or values.misc.audio.hitsound.Dropdown == "Tf2" and "rbxassetid://296102734" or values.misc.audio.hitsound.Dropdown == "Tf2 pan" and "rbxassetid://3431749479" or values.misc.audio.hitsound.Dropdown  == "M55solix" and "rbxassetid://364942410" or values.misc.audio.hitsound.Dropdown == "Slap" and "rbxassetid://4888372697" or values.misc.audio.hitsound.Dropdown  == "1" and "rbxassetid://7349055654" or values.misc.audio.hitsound.Dropdown == "Minecraft" and "rbxassetid://7273736372" or values.misc.audio.hitsound.Dropdown == "jojo" and "rbxassetid://6787514780" or values.misc.audio.hitsound.Dropdown == "vibe" and "rbxassetid://1848288500" or values.misc.audio.hitsound.Dropdown == "supersmash" and "rbxassetid://2039907664" or values.misc.audio.hitsound.Dropdown == "epic" and "rbxassetid://7344303740" or values.misc.audio.hitsound.Dropdown == "retro" and "rbxassetid://3466984142" or values.misc.audio.hitsound.Dropdown == "quek" and "rbxassetid://4868633804" or values.misc.audio.hitsound.Dropdown == "squash" and "rbxassetid://3466981613" or "rbxassetid://"..customhs
sound.Volume = values.visuals.world["sound volume"].Slider
sound.PlayOnRemove = true
sound:Destroy()

end)
killsaytable = {
	"1'ed retard",
  "imagine dumping",
	"stop dying lmao",
	"hhhhh",
	"raped nn",
	"can't win with that retarded cheat?",
	"no bloxware?",
	"have u ever thought, why are u so bad?",
	"that's a 1 for me",
	"laff doggo so ez for bloxware",
	"killed by an rsl player",
	"smoked",
	"cfg issue",
	"missed due to death",
	"owned",
	"yawn",
	"bloxware > you",
	"don't you love nature, despite what it did to you?",
	"you are doing good, don't worry",
	"iq?",
	"oops, didn't know u would lose",
	"killed by a stormy paste",
	"zzzzz",
	"Hexagon is the best!",
	"dying to a paste...",
	"primordial | aimbot missed due to resolver shot id: 39",
	"[neverlose.cc] missed shot due to spread [side: 2 | 0]",
	"you've made a mistake going against me.",
  "better luck next time",
  "local iq = 0",
  "yikes"
}

bskillsaytable = {
    "1 by bloxsense",
    "1'd by bloxsense",
    "you just got beamed bloxsense",
    "im sorry thats a 1, bloxsense ontop",
    "thats a 1 right there, could not have done it without bloxsense"
}

LocalPlayer.Status.Kills:GetPropertyChangedSignal("Value"):Connect(function(current)      
	if current == 0 then return end      
	if values.misc.chat["randomized kill say"].Toggle and values.misc.chat["random type"].Dropdown == "bloxware" then      
		game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer(killsaytable[math.random(1,#killsaytable)], false, "Innocent", false, true)      
	end
	if values.misc.chat["randomized kill say"].Toggle and values.misc.chat["random type"].Dropdown == "bloxsense" then      
	    game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer(bskillsaytable[math.random(1,#bskillsaytable)], false, "Innocent", false, true)      
    end
end)

game.Players.LocalPlayer.Status.Kills.Changed:Connect(function(val)
    if val ~= 0 then
local sound = INST("Sound")
	sound.Parent = game:GetService("SoundService")
	sound.SoundId = values.visuals.world.killsound.Dropdown == "skeet" and "rbxassetid://5447626464" or values.visuals.world.killsound.Dropdown == "bruh" and "rbxassetid://535690488" or values.visuals.world.killsound.Dropdown == "MC \"ouh!\"" and "rbxassetid://6361963422" or values.visuals.world.killsound.Dropdown == "moan" and "rbxassetid://2440889605" or values.visuals.world.killsound.Dropdown == "moan2" and "rbxassetid://2440891382" or values.visuals.world.killsound.Dropdown == "moan3" and "rbxassetid://2440889869" or values.visuals.world.killsound.Dropdown == "ding" and "rbxassetid://8322227470" or values.misc.audio.killsound.Dropdown == "headshot" and "rbxassetid://5764885927" or values.misc.audio.killsound.Dropdown == "neverlose" and "rbxassetid://6607204501" or values.misc.audio.killsound.Dropdown == "rust" and "rbxassetid://5043539486" or values.misc.audio.killsound.Dropdown == "bag" and "rbxassetid://364942410" or values.misc.audio.killsound.Dropdown == "baimware" and "rbxassetid://6607339542" or values.misc.audio.killsound.Dropdown == "lessgo" and "rbxassetid://6782594987" or values.misc.audio.killsound.Dropdown == "MCOOF" and "rbxassetid://5869422451" or values.misc.audio.killsound.Dropdown == "osu" and "rbxassetid://7149919358" or values.misc.audio.killsound.Dropdown == "Tf2" and "rbxassetid://296102734" or values.misc.audio.killsound.Dropdown == "Tf2 pan" and "rbxassetid://3431749479" or values.misc.audio.killsound.Dropdown  == "M55solix" and "rbxassetid://364942410" or values.misc.audio.killsound.Dropdown == "Slap" and "rbxassetid://4888372697" or values.misc.audio.killsound.Dropdown  == "1" and "rbxassetid://7349055654" or values.misc.audio.killsound.Dropdown == "Minecraft" and "rbxassetid://7273736372" or values.misc.audio.killsound.Dropdown == "jojo" and "rbxassetid://6787514780" or values.misc.audio.killsound.Dropdown == "vibe" and "rbxassetid://1848288500" or values.misc.audio.killsound.Dropdown == "supersmash" and "rbxassetid://2039907664" or values.misc.audio.killsound.Dropdown == "epic" and "rbxassetid://7344303740" or values.misc.audio.killsound.Dropdown == "retro" and "rbxassetid://3466984142" or values.misc.audio.killsound.Dropdown == "quek" and "rbxassetid://4868633804" or values.misc.audio.killsound.Dropdown == "squash" and "rbxassetid://3466981613" or "rbxassetid://"..customks
	sound.Volume = values.visuals.world["sound volume"].Slider
	sound.PlayOnRemove = true
	sound:Destroy()
end
end)
RayIgnore.ChildAdded:Connect(function(obj)
if obj.Name == "Fires" then
obj.ChildAdded:Connect(function(fire)
if values.visuals.world["molly radius"].Toggle then
fire.Transparency = values.visuals.world["molly radius"].Transparency
fire.Color = values.visuals.world["molly radius"].Color
end
end)
end
if obj.Name == "Smokes" then
obj.ChildAdded:Connect(function(smoke)
RunService.RenderStepped:Wait()
local OriginalRate = INST("NumberValue")
OriginalRate.Value = smoke.ParticleEmitter.Rate
OriginalRate.Name = "OriginalRate"
OriginalRate.Parent = smoke
if TBLFIND(values.visuals.effects.removals.Jumbobox, "smokes") then
smoke.ParticleEmitter.Rate = 0
end
smoke.Material = Enum.Material.ForceField
if values.visuals.world["smoke radius"].Toggle then
smoke.Transparency = 0
smoke.Color = values.visuals.world["smoke radius"].Color
end
end)
end
end)
if RayIgnore:FindFirstChild("Fires") then
RayIgnore:FindFirstChild("Fires").ChildAdded:Connect(function(fire)
if values.visuals.world["molly radius"].Toggle then
fire.Transparency = values.visuals.world["molly radius"].Transparency
fire.Color = values.visuals.world["molly radius"].Color
end
end)
end
if RayIgnore:FindFirstChild("Smokes") then
for _,smoke in pairs(RayIgnore:FindFirstChild("Smokes"):GetChildren()) do
local OriginalRate = INST("NumberValue")
OriginalRate.Value = smoke.ParticleEmitter.Rate
OriginalRate.Name = "OriginalRate"
OriginalRate.Parent = smoke
smoke.Material = Enum.Material.ForceField
end
RayIgnore:FindFirstChild("Smokes").ChildAdded:Connect(function(smoke)
RunService.RenderStepped:Wait()
local OriginalRate = INST("NumberValue")
OriginalRate.Value = smoke.ParticleEmitter.Rate
OriginalRate.Name = "OriginalRate"
OriginalRate.Parent = smoke
if TBLFIND(values.visuals.effects.removals.Jumbobox, "smokes") then
smoke.ParticleEmitter.Rate = 0
end
smoke.Material = Enum.Material.ForceField
if values.visuals.world["smoke radius"].Toggle then
smoke.Transparency = 0
smoke.Color = values.visuals.world["smoke radius"].Color
end
end)
end
Camera.ChildAdded:Connect(function(obj)
--[[if TBLFIND(values.misc.client["gun modifiers"].Jumbobox, "ammo") then
Client.ammocount = math.huge
Client.primarystored = math.huge
Client.ammocount2 = math.huge
Client.secondarystored = math.huge
end]]
RunService.RenderStepped:Wait()
if obj.Name ~= "Arms" then return end
local Model
for i,v in pairs(obj:GetChildren()) do
if v:IsA("Model") and (v:FindFirstChild("Right Arm") or v:FindFirstChild("Left Arm")) then
Model = v
end
end
if Model == nil then return end
for i,v in pairs(obj:GetChildren()) do
if (v:IsA("BasePart") or v:IsA("Part")) and v.Transparency ~= 1 and v.Name ~= "Flash" then
local valid = true
if v:IsA("Part") and v:FindFirstChild("Mesh") and not v:IsA("BlockMesh") then
valid = false
local success, err = pcall(function()
local OriginalTexture = INST("StringValue")
OriginalTexture.Value = v.Mesh.TextureId
OriginalTexture.Name = "OriginalTexture"
OriginalTexture.Parent = v.Mesh
end)
local success2, err2 = pcall(function()
local OriginalTexture = INST("StringValue")
OriginalTexture.Value = v.Mesh.TextureID
OriginalTexture.Name = "OriginalTexture"
OriginalTexture.Parent = v.Mesh
end)
if success or success2 then valid = true end
end

for i2,v2 in pairs(v:GetChildren()) do
if (v2:IsA("BasePart") or v2:IsA("Part")) then
INSERT(WeaponObj, v2)
end
end

if valid then
INSERT(WeaponObj, v)
end
end
end

local gunname = Client.gun ~= "none" and values.skins.knife["knife changer"].Toggle and Client.gun:FindFirstChild("Melee") and values.skins.knife.model.Scroll or Client.gun ~= "none" and Client.gun.Name
if values.skins.skins["skin changer"].Toggle and gunname ~= nil and Skins:FindFirstChild(gunname) then
if values.skins.skins.skin.Scroll[gunname] ~= "Inventory" then
MapSkin(gunname, values.skins.skins.skin.Scroll[gunname])
end
end
for _,v in pairs(WeaponObj) do
if v:IsA("MeshPart") then
local OriginalTexture = INST("StringValue")
OriginalTexture.Value = v.TextureID
OriginalTexture.Name = "OriginalTexture"
OriginalTexture.Parent = v
end

local OriginalColor = INST("Color3Value")
OriginalColor.Value = v.Color
OriginalColor.Name = "OriginalColor"
OriginalColor.Parent = v

local OriginalMaterial = INST("StringValue")
OriginalMaterial.Value = v.Material.Name
OriginalMaterial.Name = "OriginalMaterial"
OriginalMaterial.Parent = v

if values.visuals.effects["weapon chams"].Toggle then
UpdateWeapon(v)
end
end
RArm = Model:FindFirstChild("Right Arm"); LArm = Model:FindFirstChild("Left Arm")
if RArm then
local OriginalColor = INST("Color3Value")
OriginalColor.Value = RArm.Color
OriginalColor.Name = "Color3Value"
OriginalColor.Parent = RArm
if values.visuals.effects["arm chams"].Toggle then
RArm.Color = values.visuals.effects["arm chams"].Color
RArm.Transparency = values.visuals.effects["arm chams"].Transparency
end
RGlove = RArm:FindFirstChild("Glove") or RArm:FindFirstChild("RGlove")
if values.skins.glove["glove changer"].Toggle and Client.gun ~= "none" then
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
local GloveTexture = INST("StringValue")
GloveTexture.Value = RGlove.Mesh.TextureId
GloveTexture.Name = "StringValue"
GloveTexture.Parent = RGlove

if values.visuals.effects["accessory chams"].Toggle then
UpdateAccessory(RGlove)
end
end
RSleeve = RArm:FindFirstChild("Sleeve")
if RSleeve ~= nil then
local SleeveTexture = INST("StringValue")
SleeveTexture.Value = RSleeve.Mesh.TextureId
SleeveTexture.Name = "StringValue"
SleeveTexture.Parent = RSleeve
if values.visuals.effects["arm chams"].Toggle then
LArm.Color = values.visuals.effects["arm chams"].Color
end
if values.visuals.effects["accessory chams"].Toggle then
UpdateAccessory(RSleeve)
end
end
end
if LArm then
local OriginalColor = INST("Color3Value")
OriginalColor.Value = LArm.Color
OriginalColor.Name = "Color3Value"
OriginalColor.Parent = LArm
if values.visuals.effects["arm chams"].Toggle then
LArm.Color = values.visuals.effects["arm chams"].Color
LArm.Transparency = values.visuals.effects["arm chams"].Transparency
end
LGlove = LArm:FindFirstChild("Glove") or LArm:FindFirstChild("LGlove")
if values.skins.glove["glove changer"].Toggle and Client.gun ~= "none" then
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
local GloveTexture = INST("StringValue")
GloveTexture.Value = LGlove.Mesh.TextureId
GloveTexture.Name = "StringValue"
GloveTexture.Parent = LGlove

if values.visuals.effects["accessory chams"].Toggle then
UpdateAccessory(LGlove)
end
end
LSleeve = LArm:FindFirstChild("Sleeve")
if LSleeve ~= nil then
local SleeveTexture = INST("StringValue")
SleeveTexture.Value = LSleeve.Mesh.TextureId
SleeveTexture.Name = "StringValue"
SleeveTexture.Parent = LSleeve

if values.visuals.effects["accessory chams"].Toggle then
UpdateAccessory(LSleeve)
end
end
end
end)
Camera.ChildAdded:Connect(function(obj)
if obj.Name == "Arms" then
RArm, LArm, RGlove, RSleeve, LGlove, LSleeve = nil, nil, nil, nil, nil, nil
WeaponObj = {}
end
end)
Camera:GetPropertyChangedSignal("FieldOfView"):Connect(function(fov)
if LocalPlayer.Character == nil then return end
if fov == values.visuals.self["fov changer"].Slider then return end
if values.visuals.self["on scope"].Toggle or not LocalPlayer.Character:FindFirstChild("AIMING") then
Camera.FieldOfView = values.visuals.self["fov changer"].Slider
end
end)
LocalPlayer.Cash:GetPropertyChangedSignal("Value"):Connect(function(cash)
if values.misc.client["infinite cash"].Toggle and cash ~= 9e9  then
LocalPlayer.Cash.Value = 9e9
end
end)
if workspace:FindFirstChild("Map") and workspace:FindFirstChild("Map"):FindFirstChild("Origin") then
if workspace.Map.Origin.Value == "de_cache" or workspace.Map.Origin.Value == "de_vertigo" or workspace.Map.Origin.Value == "de_nuke" or workspace.Map.Origin.Value == "de_aztec" then
oldSkybox = Lighting:FindFirstChildOfClass("Sky"):Clone()
end
end
workspace.ChildAdded:Connect(function(obj)
if obj.Name == "Map" then
wait(5)
if values.misc.client["remove killers"].Toggle then
if workspace:FindFirstChild("Map") and workspace:FindFirstChild("Map"):FindFirstChild("Killers") then
local clone = workspace:FindFirstChild("Map"):FindFirstChild("Killers"):Clone()
clone.Name = "KillersClone"
clone.Parent = workspace:FindFirstChild("Map")

workspace:FindFirstChild("Map"):FindFirstChild("Killers"):Destroy()
end
end
if oldSkybox ~= nil then
oldSkybox:Destroy()
oldSkybox = nil
end
local Origin = workspace.Map:WaitForChild("Origin")
if workspace.Map.Origin.Value == "de_cache" or workspace.Map.Origin.Value == "de_vertigo" or workspace.Map.Origin.Value == "de_nuke" or workspace.Map.Origin.Value == "de_aztec" then
oldSkybox = Lighting:FindFirstChildOfClass("Sky"):Clone()

local sky = values.visuals.world.skybox.Dropdown
if sky ~= "none" then
Lighting:FindFirstChildOfClass("Sky"):Destroy()
local skybox = INST("Sky")
skybox.SkyboxLf = Skyboxes[sky].SkyboxLf
skybox.SkyboxBk = Skyboxes[sky].SkyboxBk
skybox.SkyboxDn = Skyboxes[sky].SkyboxDn
skybox.SkyboxFt = Skyboxes[sky].SkyboxFt
skybox.SkyboxRt = Skyboxes[sky].SkyboxRt
skybox.SkyboxUp = Skyboxes[sky].SkyboxUp
skybox.Name = "override"
skybox.Parent = Lighting
end
else
local sky = values.visuals.world.skybox.Dropdown
if sky ~= "none" then
local skybox = INST("Sky")
skybox.SkyboxLf = Skyboxes[sky].SkyboxLf
skybox.SkyboxBk = Skyboxes[sky].SkyboxBk
skybox.SkyboxDn = Skyboxes[sky].SkyboxDn
skybox.SkyboxFt = Skyboxes[sky].SkyboxFt
skybox.SkyboxRt = Skyboxes[sky].SkyboxRt
skybox.SkyboxUp = Skyboxes[sky].SkyboxUp
skybox.Name = "override"
skybox.Parent = Lighting
end
end
end
end)
Lighting.ChildAdded:Connect(function(obj)
if obj:IsA("Sky") and obj.Name ~= "override" then
oldSkybox = obj:Clone()
end
end)

local function CollisionTBL(obj)
if obj:IsA("Accessory") then
INSERT(Collision, obj)
end
if obj:IsA("Part") then
if obj.Name == "HeadHB" or obj.Name == "FakeHead" then
INSERT(Collision, obj)
end
end
end
LocalPlayer.CharacterAdded:Connect(function(char)
repeat RunService.RenderStepped:Wait()
until char:FindFirstChild("Gun")
SelfObj = {}
if values.skins.characters["character changer"].Toggle then
ChangeCharacter(ChrModels:FindFirstChild(values.skins.characters.skin.Scroll))
end
if char:FindFirstChildOfClass("Shirt") then
local String = INST("StringValue")
String.Name = "OriginalTexture"
String.Value = char:FindFirstChildOfClass("Shirt").ShirtTemplate
String.Parent = char:FindFirstChildOfClass("Shirt")

if TBLFIND(values.visuals.effects.removals.Jumbobox, "clothes") then
char:FindFirstChildOfClass("Shirt").ShirtTemplate = ""
end
end
if char:FindFirstChildOfClass("Pants") then
local String = INST("StringValue")
String.Name = "OriginalTexture"
String.Value = char:FindFirstChildOfClass("Pants").PantsTemplate
String.Parent = char:FindFirstChildOfClass("Pants")

if TBLFIND(values.visuals.effects.removals.Jumbobox, "clothes") then
char:FindFirstChildOfClass("Pants").PantsTemplate = ""
end
end
for i,v in pairs(char:GetChildren()) do
if v:IsA("BasePart") and v.Transparency ~= 1 then
INSERT(SelfObj, v)
local Color = INST("Color3Value")
Color.Name = "OriginalColor"
Color.Value = v.Color
Color.Parent = v

local String = INST("StringValue")
String.Name = "OriginalMaterial"
String.Value = v.Material.Name
String.Parent = v
elseif v:IsA("Accessory") and v.Handle.Transparency ~= 1 then
INSERT(SelfObj, v.Handle)
local Color = INST("Color3Value")
Color.Name = "OriginalColor"
Color.Value = v.Handle.Color
Color.Parent = v.Handle

local String = INST("StringValue")
String.Name = "OriginalMaterial"
String.Value = v.Handle.Material.Name
String.Parent = v.Handle
end
end
if values.visuals.self["self chams"].Toggle then
for _,obj in pairs(SelfObj) do
if obj.Parent ~= nil then
obj.Material = values.visuals.self["self chams material"].Dropdown
obj.Color = values.visuals.self["self chams"].Color
end
end
end
LocalPlayer.Character.ChildAdded:Connect(function(Child)
if Child:IsA("Accessory") and Child.Handle.Transparency ~= 1 then
INSERT(SelfObj, Child.Handle)
local Color = INST("Color3Value")
Color.Name = "OriginalColor"
Color.Value = Child.Handle.Color
Color.Parent = Child.Handle

local String = INST("StringValue")
String.Name = "OriginalMaterial"
String.Value = Child.Handle.Material.Name
String.Parent = Child.Handle

if values.visuals.self["self chams"].Toggle then
for _,obj in pairs(SelfObj) do
if obj.Parent ~= nil then
obj.Material = values.visuals.self["self chams material"].Dropdown
obj.Color = values.visuals.self["self chams"].Color
end
end
end
end
end)

if values.misc.animations.enabled.Toggle and values.misc.animations.enabled.Active then
LoadedAnim = LocalPlayer.Character.Humanoid:LoadAnimation(Dance)
LoadedAnim.Priority = Enum.AnimationPriority.Action
LoadedAnim:Play()
end
end)

if LocalPlayer.Character ~= nil then
for i,v in pairs(LocalPlayer.Character:GetChildren()) do
if v:IsA("BasePart") and v.Transparency ~= 1 then
INSERT(SelfObj, v)
local Color = INST("Color3Value")
Color.Name = "OriginalColor"
Color.Value = v.Color
Color.Parent = v

local String = INST("StringValue")
String.Name = "OriginalMaterial"
String.Value = v.Material.Name
String.Parent = v
elseif v:IsA("Accessory") and v.Handle.Transparency ~= 1 then
INSERT(SelfObj, v.Handle)
local Color = INST("Color3Value")
Color.Name = "OriginalColor"
Color.Value = v.Handle.Color
Color.Parent = v.Handle

local String = INST("StringValue")
String.Name = "OriginalMaterial"
String.Value = v.Handle.Material.Name
String.Parent = v.Handle
end
end
if values.visuals.self["self chams"].Toggle then
for _,obj in pairs(SelfObj) do
if obj.Parent ~= nil then
obj.Material = values.visuals.self["self chams material"].Dropdown
obj.Color = values.visuals.self["self chams"].Color
end
end
end
LocalPlayer.Character.ChildAdded:Connect(function(Child)
if Child:IsA("Accessory") and Child.Handle.Transparency ~= 1 then
INSERT(SelfObj, Child.Handle)
local Color = INST("Color3Value")
Color.Name = "OriginalColor"
Color.Value = Child.Handle.Color
Color.Parent = Child.Handle

local String = INST("StringValue")
String.Name = "OriginalMaterial"
String.Value = Child.Handle.Material.Name
String.Parent = Child.Handle

if values.visuals.self["self chams"].Toggle then
for _,obj in pairs(SelfObj) do
if obj.Parent ~= nil then
obj.Material = values.visuals.self["self chams material"].Dropdown
obj.Color = values.visuals.self["self chams"].Color
end
end
end
end
end)
end
Players.PlayerAdded:Connect(function(Player)
Player:GetPropertyChangedSignal("Team"):Connect(function(new)
wait()
if Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") then
for _2,Obj in pairs(Player.Character:GetDescendants()) do
if Obj.Name == "WallCham" then
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
end)
Player.CharacterAdded:Connect(function(Character)
Character.ChildAdded:Connect(function(obj)
wait(1)
CollisionTBL(obj)
end)
wait(1)
if Character ~= nil then
local Value = INST("Vector3Value")
Value.Name = "OldPosition"
Value.Value = Character.HumanoidRootPart.Position
Value.Parent = Character.HumanoidRootPart
for _,obj in pairs(Character:GetChildren()) do
if obj:IsA("BasePart") and Player ~= LocalPlayer and obj.Name ~= "HumanoidRootPart" and obj.Name ~= "Head" and obj.Name ~= "BackC4" and obj.Name ~= "HeadHB" then
local VisibleCham = INST("BoxHandleAdornment")
VisibleCham.Name = "VisibleCham"
VisibleCham.AlwaysOnTop = true
VisibleCham.ZIndex = 8
VisibleCham.Size = obj.Size + Vec3(0.3,0.3,0.3)
VisibleCham.AlwaysOnTop = true
VisibleCham.Transparency = values.visuals.players.chams.Transparency

local WallCham = INST("BoxHandleAdornment")
WallCham.Name = "WallCham"
WallCham.AlwaysOnTop = true
WallCham.ZIndex = -1
WallCham.Size = obj.Size + Vec3(0.3,0.3,0.3)
WallCham.AlwaysOnTop = true
WallCham.Transparency = values.visuals.players["outline chams"].Transparency

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

INSERT(ChamItems, VisibleCham)
INSERT(ChamItems, WallCham)

VisibleCham.Color3 = values.visuals.players.chams.Color
WallCham.Color3 = values.visuals.players["outline chams"].Color

VisibleCham.AdornCullingMode = "Never"
WallCham.AdornCullingMode = "Never"

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
Player:GetPropertyChangedSignal("Team"):Connect(function(new)
wait()
if Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") then
for _2,Obj in pairs(Player.Character:GetDescendants()) do
if Obj.Name == "WallCham" then
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
end)
else
LocalPlayer:GetPropertyChangedSignal("Team"):Connect(function(new)
wait()
for _,Player in pairs(Players:GetPlayers()) do
if Player.Character then
for _2,Obj in pairs(Player.Character:GetDescendants()) do
if Obj.Name == "WallCham" then
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
if Player.Character ~= nil and Player.Character:FindFirstChild("HumanoidRootPart") then
local Value = INST("Vector3Value")
Value.Value = Player.Character.HumanoidRootPart.Position
Value.Name = "OldPosition"
Value.Parent = Player.Character.HumanoidRootPart
for _,obj in pairs(Player.Character:GetChildren()) do
if obj:IsA("BasePart") and Player ~= LocalPlayer and obj.Name ~= "HumanoidRootPart" and obj.Name ~= "Head" and obj.Name ~= "BackC4" and obj.Name ~= "HeadHB" then
local VisibleCham = INST("BoxHandleAdornment")
VisibleCham.Name = "VisibleCham"
VisibleCham.AlwaysOnTop = true
VisibleCham.ZIndex = 5
VisibleCham.Size = obj.Size + Vec3(0.1,0.1,0.1)
VisibleCham.AlwaysOnTop = true
VisibleCham.Transparency = values.visuals.players.chams.Transparency

local WallCham = INST("BoxHandleAdornment")
WallCham.Name = "WallCham"
WallCham.AlwaysOnTop = true
WallCham.ZIndex = -1
WallCham.Size = obj.Size + Vec3(0.3,0.3,0.3)
WallCham.AlwaysOnTop = true
WallCham.Transparency = values.visuals.players["outline chams"].Transparency

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

INSERT(ChamItems, VisibleCham)
INSERT(ChamItems, WallCham)

VisibleCham.Color3 = values.visuals.players.chams.Color
WallCham.Color3 = values.visuals.players["outline chams"].Color

VisibleCham.AdornCullingMode = "Never"
WallCham.AdornCullingMode = "Never"

VisibleCham.Adornee = obj
VisibleCham.Parent = obj

WallCham.Adornee = obj
WallCham.Parent = obj
end
end
end
end)
if Player.Character ~= nil and Player.Character:FindFirstChild("UpperTorso") then
local Value = INST("Vector3Value")
Value.Name = "OldPosition"
Value.Value = Player.Character.HumanoidRootPart.Position
Value.Parent = Player.Character.HumanoidRootPart
for _,obj in pairs(Player.Character:GetChildren()) do
CollisionTBL(obj)
if obj:IsA("BasePart") and Player ~= LocalPlayer and obj.Name ~= "HumanoidRootPart" and obj.Name ~= "Head" and obj.Name ~= "BackC4" and obj.Name ~= "HeadHB" then
local VisibleCham = INST("BoxHandleAdornment")
VisibleCham.Name = "VisibleCham"
VisibleCham.AlwaysOnTop = true
VisibleCham.ZIndex = 5
VisibleCham.Size = obj.Size + Vec3(0.1,0.1,0.1)
VisibleCham.AlwaysOnTop = true
VisibleCham.Transparency = values.visuals.players.chams.Transparency

local WallCham = INST("BoxHandleAdornment")
WallCham.Name = "WallCham"
WallCham.AlwaysOnTop = true
WallCham.ZIndex = -1
WallCham.Size = obj.Size + Vec3(0.3,0.3,0.3)
WallCham.AlwaysOnTop = true
WallCham.Transparency = values.visuals.players["outline chams"].Transparency

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

INSERT(ChamItems, VisibleCham)
INSERT(ChamItems, WallCham)

VisibleCham.Color3 = values.visuals.players.chams.Color
VisibleCham.Transparency = values.visuals.players.chams.Transparency
WallCham.Color3 = values.visuals.players["outline chams"].Color
WallCham.Transparency = values.visuals.players["outline chams"].Transparency

VisibleCham.AdornCullingMode = "Never"
WallCham.AdornCullingMode = "Never"

VisibleCham.Adornee = obj
VisibleCham.Parent = obj

WallCham.Adornee = obj
WallCham.Parent = obj
end
end
end
end

--pasted off aimcore. thanks for making the cheat, coke <3
CreateHitElement("bloxware loaded, welcome "..LocalPlayer.Name.."!",Color3.new(1,1,1), 5, 0, 270,  0, 22)
CreateHitElement("made by coke#8620 and a1thernex#1604",Color3.new(1,1,1), 5, 0, 270,  0, 22)
end)

exit.Name = "exit"
exit.Parent = optionsdivider
exit.BackgroundTransparency = 1.000
exit.LayoutOrder = 1
exit.Position = UDim2.new(0.514239669, 0, 51, -27)
exit.Size = UDim2.new(0.429276586, 0, 0, 26)
exit.ZIndex = 0

exitbutton.Name = "exitbutton"
exitbutton.Parent = exit
exitbutton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
exitbutton.BackgroundTransparency = 0.990
exitbutton.BorderSizePixel = 0
exitbutton.Size = UDim2.new(1, 0, 1, 0)
exitbutton.Font = Enum.Font.SourceSans
exitbutton.Text = ""
exitbutton.TextColor3 = Color3.fromRGB(0, 0, 0)
exitbutton.TextSize = 14.000
exitbutton.MouseButton1Click:Connect(function()
	game.CoreGui.loader:Destroy()
end)

exitlabel.Name = "exitlabel"
exitlabel.Parent = exit
exitlabel.AnchorPoint = Vector2.new(0.5, 1)
exitlabel.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
exitlabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
exitlabel.Position = UDim2.new(0.503482759, 0, 1, -5)
exitlabel.Size = UDim2.new(1.06730533, -12, 0, 18)
exitlabel.Font = Enum.Font.Code
exitlabel.Text = "exit"
exitlabel.TextColor3 = Color3.fromRGB(255, 255, 255)
exitlabel.TextSize = 15.000

UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(90, 90, 90))}
UIGradient_2.Rotation = 90
UIGradient_2.Parent = exitlabel

game:GetService("UserInputService").InputBegan:Connect(function(key) 
  if key.KeyCode == Enum.KeyCode.Insert then
      if game.CoreGui:FindFirstChild("loader") then
          else return end
    game.CoreGui.loader.Enabled = not game.CoreGui.loader.Enabled
    game.CoreGui.loader.Enabled = game.CoreGui.loader.Enabled
    end
end)

if game.CoreGui:FindFirstChild("loader") then
for i = 10,1,-1 do
   game.CoreGui.loader.main.outline.inner.upstuff.name.Text = "loader (unloading in "..tostring(i).." seconds)"
    wait(1)
    if i == 1 then
        game.CoreGui.loader:Destroy()
    end
end
end

--[[function rainbow(x) return math.acos(math.cos(x*math.pi))/math.pi end
lolrofllmaolmfaohahaxd = 0
while task.wait(.1) do
    if game.CoreGui:FindFirstChild("loader") then
        else return end
  game:GetService("CoreGui").loader.main.outline.inner.group1.optionsgroup.optionsgroupmain.optionsdivider.load.loadlabel.TextColor3 = Color3.fromHSV(rainbow(lolrofllmaolmfaohahaxd),1,1)
  lolrofllmaolmfaohahaxd = lolrofllmaolmfaohahaxd + 0.01
end]]
