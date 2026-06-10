--[[ 
    +1 SPEED KEYBOARD - MATRIX NEON EDITION
    LINK GET KEY: https://link4m.org/P0pLWb6
    KEY: +1SpeedKeyboard-QA132F8C85F943E0
]]

local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local UIStroke = Instance.new("UIStroke")
local Title = Instance.new("TextLabel")
local KeyInput = Instance.new("TextBox")
local CopyBtn = Instance.new("TextButton")
local SubmitBtn = Instance.new("TextButton")
local NoteLabel = Instance.new("TextLabel")

-- C?u h?nh ScreenGui
ScreenGui.Parent = game.CoreGui
ScreenGui.Name = "SpeedKeyboard_GetKey_UI"
ScreenGui.ResetOnSpawn = false

-- H?m t?o TH?NG B?O CH? ?? NH? R? N?T khi ng??i ch?i b?m sao ch?p
local function NotifyRed(text)
    local NotifyGui = Instance.new("ScreenGui")
    NotifyGui.Parent = game.CoreGui
    
    local Label = Instance.new("TextLabel")
    Label.Parent = NotifyGui
    Label.Size = UDim2.new(0, 500, 0, 50)
    Label.Position = UDim2.new(0.5, -250, 0.22, 0)
    Label.BackgroundTransparency = 1
    Label.TextColor3 = Color3.fromRGB(255, 115, 115) -- M?u ?? nh?, s?c n?t v? r? n?t
    Label.Text = text
    Label.Font = Enum.Font.GothamBold
    Label.TextSize = 25
    Label.TextStrokeTransparency = 0.4
    Label.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
    
    task.spawn(function()
        task.wait(3.5)
        for i = 0, 1, 0.1 do
            Label.TextTransparency = i
            Label.TextStrokeTransparency = 0.4 + (i * 0.6)
            task.wait(0.05)
        end
        NotifyGui:Destroy()
    end)
end

-- Khung Menu Ch?nh (M?u n?n ch?nh: #120E1E - T?m ?en huy?n b?)
MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(18, 14, 30) -- M? m?u #120E1E
MainFrame.Position = UDim2.new(0.5, -170, 0.5, -150)
MainFrame.Size = UDim2.new(0, 340, 0, 300)
MainFrame.Active = true
MainFrame.Draggable = true

UICorner.CornerRadius = UDim.new(0, 12)
UICorner.Parent = MainFrame

-- Vi?n tinh t? ph?t s?ng nh? m?u xanh l?c Matrix ?? t?ng ?? b?t m?t
UIStroke.Parent = MainFrame
UIStroke.Thickness = 2
UIStroke.Color = Color3.fromRGB(0, 255, 102) -- #00FF66
UIStroke.Transparency = 0.4

-- Ti?u ?? Menu "+1 Speed Keyboard" (M?u ch? nh?n m?nh: #FFFFFF Tr?ng tinh n?i b?t)
Title.Parent = MainFrame
Title.Text = "+1 SPEED KEYBOARD"
Title.Font = Enum.Font.GothamBlack
Title.TextColor3 = Color3.fromRGB(255, 255, 255) -- #FFFFFF
Title.TextSize = 21
Title.Size = UDim2.new(1, 0, 0, 55)
Title.BackgroundTransparency = 1

-- ? nh?p Key (M?u ? nh?p Key: #1D182E - T?m s?ng h?n m?t ch?t)
KeyInput.Parent = MainFrame
KeyInput.PlaceholderText = "Nh?p m? Key v?o ??y..."
KeyInput.Text = ""
KeyInput.BackgroundColor3 = Color3.fromRGB(29, 24, 46) -- #1D182E
KeyInput.Position = UDim2.new(0.1, 0, 0.22, 0)
KeyInput.Size = UDim2.new(0.8, 0, 0, 38)
KeyInput.TextColor3 = Color3.fromRGB(255, 255, 255) -- Ch? m?u tr?ng tinh d? nh?n
KeyInput.Font = Enum.Font.GothamSemibold
KeyInput.TextSize = 13
Instance.new("UICorner", KeyInput).CornerRadius = UDim.new(0, 8)

local InputStroke = Instance.new("UIStroke", KeyInput)
InputStroke.Thickness = 1
InputStroke.Color = Color3.fromRGB(58, 48, 92)

-- N?t "GET KEY" (M?u n?t: #00FF66 Xanh l?c Matrix k?ch th?ch th? gi?c mu?n click cao)
CopyBtn.Parent = MainFrame
CopyBtn.Text = "SAO CH?P LINK GET KEY"
CopyBtn.Font = Enum.Font.GothamBold
CopyBtn.TextSize = 13
CopyBtn.BackgroundColor3 = Color3.fromRGB(0, 255, 102) -- #00FF66
CopyBtn.TextColor3 = Color3.fromRGB(18, 14, 30) -- Ch? t?i t??ng ph?n ?? hi?n th? s?c n?t nh?t
CopyBtn.Position = UDim2.new(0.1, 0, 0.40, 5)
CopyBtn.Size = UDim2.new(0.8, 0, 0, 32)
Instance.new("UICorner", CopyBtn).CornerRadius = UDim.new(0, 6)

-- N?t X?c nh?n Key (Ch? m?u tr?ng tinh #FFFFFF n?i b?t t?nh n?ng VIP)
SubmitBtn.Parent = MainFrame
SubmitBtn.Text = "X?C NH?N KEY"
SubmitBtn.Font = Enum.Font.GothamBold
SubmitBtn.TextSize = 14
SubmitBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255) -- #FFFFFF
SubmitBtn.TextColor3 = Color3.fromRGB(18, 14, 30)
SubmitBtn.Position = UDim2.new(0.1, 0, 0.56, 8)
SubmitBtn.Size = UDim2.new(0.8, 0, 0, 40)
Instance.new("UICorner", SubmitBtn).CornerRadius = UDim.new(0, 10)

-- NOTE CH? NH? PH?A D??I (M?u v?ng ?? nh?)
NoteLabel.Parent = MainFrame
NoteLabel.Text = "Vi?c l?y ( Key )gi?p m?nh c? th?m ch?t chi ph? ?? duy tr? v? c?p nh?t script m?i ng?y. Ch? m?t 1-2 ph?t mong b?n ??ng t?c gi?n v? ti?p t?c ?ng h? m?nh nh?! Ch?c c?c b?n ch?i game vui v?!"
NoteLabel.Font = Enum.Font.GothamMedium
NoteLabel.TextColor3 = Color3.fromRGB(235, 150, 75) -- M?u v?ng pha ?? nh? d?u m?t
NoteLabel.TextSize = 11
NoteLabel.Size = UDim2.new(0.9, 0, 0, 65)
NoteLabel.Position = UDim2.new(0.05, 0, 0.75, 5)
NoteLabel.BackgroundTransparency = 1
NoteLabel.TextWrapped = true
NoteLabel.TextYAlignment = Enum.TextYAlignment.Top

--- X? L? H? TH?NG ---

CopyBtn.MouseButton1Click:Connect(function()
    setclipboard("https://link4m.org/P0pLWb6")
    CopyBtn.Text = "?? SAO CH?P LINK!"
    NotifyRed("D?n l?n tr?nh duy?t ?? getkey")
    task.wait(2)
    CopyBtn.Text = "SAO CH?P LINK GET KEY"
end)

SubmitBtn.MouseButton1Click:Connect(function()
    if KeyInput.Text == "+1SpeedKeyboard-QA132F8C85F943E0" then
        SubmitBtn.Text = "X?C MINH TH?NH C?NG!"
        SubmitBtn.BackgroundColor3 = Color3.fromRGB(0, 200, 100) -- ??i sang m?u xanh l? khi th?nh c?ng
        SubmitBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
        task.wait(1)
        ScreenGui:Destroy()
        
        -- Kh?i ch?y ?o?n m? script Luarmor c?a b?n sau khi v??t qua v?ng b?o m?t Key th?nh c?ng
        loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/0029513445299380a42b58b4face0eec.lua"))()
    else
        SubmitBtn.Text = "SAI KEY! VUI L?NG KI?M TRA L?I"
        SubmitBtn.BackgroundColor3 = Color3.fromRGB(235, 75, 75) -- ??i sang m?u ?? khi nh?p sai m?
        SubmitBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
        task.wait(2)
        SubmitBtn.Text = "X?C NH?N KEY"
        SubmitBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        SubmitBtn.TextColor3 = Color3.fromRGB(18, 14, 30)
    end
end)
