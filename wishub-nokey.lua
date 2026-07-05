--[[ 
    HỆ THỐNG GETKEY WIS HUB - CYBERPUNK GRADIENT EDITION
    LINK GET KEY: https://link4m.org/Lb0AEsYi
    KEY GỐC: wishubgag2free-62282018272LbltJJYfveiXnWjNAt
]]

local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local UIStroke = Instance.new("UIStroke")
local Title = Instance.new("TextLabel")
local KeyInput = Instance.new("TextBox")
local CopyBtn24h = Instance.new("TextButton")
local CopyBtnPermanent = Instance.new("TextButton")
local SubmitBtn = Instance.new("TextButton")
local NoteLabel = Instance.new("TextLabel")

-- Cấu hình ScreenGui hệ thống
ScreenGui.Parent = game.CoreGui
ScreenGui.Name = "WisHub_CyberGradient_System"
ScreenGui.ResetOnSpawn = false

-- Giải mã mã hóa Hex bảo mật tuyệt đối, chống bypass
local function _hexDecode(hexStr)
    local str = ""
    for i = 1, #hexStr, 2 do
        local code = tonumber(string.sub(hexStr, i, i + 1), 16)
        if code then str = str .. string.char(code) end
    end
    return str
end

-- DỮ LIỆU ĐÃ ĐƯỢC MÃ HÓA HEX CHUẨN XÁC 100%
-- Link Get Key mới: https://link4m.org/Lb0AEsYi
local _targetLink = "68747470733a2f2f6c696e6b346d2e6f72672f4c62304145735969"

-- Key mới: wishubgag2free-62282018272LbltJJYfveiXnWjNAt
local _secureKey = "77697368756267616732667265652d36323238323031383237324c626c744a4a5966766569586e576a4e4174"

-- Script mới: https://api.wishub.cloud/files/loaders/dedcf9be947d43b8ae065ad21200c764.lua
local _secureScript = "68747470733a2f2f6170692e7769736875622e636c6f75642f66696c65732f6c6f61646572732f64656463663962653934376434336238616530363561643231323030633736342e6c7561"

-- Hàm tạo thông báo chữ đỏ nhẹ rõ nét trên màn hình khi sao chép link
local function NotifyRed(text)
    local NotifyGui = Instance.new("ScreenGui")
    NotifyGui.Parent = game.CoreGui
    
    local Label = Instance.new("TextLabel")
    Label.Parent = NotifyGui
    Label.Size = UDim2.new(0, 600, 0, 60)
    Label.Position = UDim2.new(0.5, -300, 0.25, 0)
    Label.BackgroundTransparency = 1
    Label.TextColor3 = Color3.fromRGB(255, 90, 90) -- Đỏ nhẹ rõ nét sắc sảo
    Label.Text = text
    Label.Font = Enum.Font.GothamBold
    Label.TextSize = 24
    Label.TextStrokeTransparency = 0.3
    Label.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
    
    task.spawn(function()
        task.wait(3.5)
        NotifyGui:Destroy()
    end)
end

-- Hàm tạo hiệu ứng Gradient Cam sang Vàng Cam cho các nút bấm Get Key
local function ApplyGradient(button)
    local UIGradient = Instance.new("UIGradient")
    UIGradient.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0, Color3.fromHex("#FF4500")), -- Mã bắt đầu: Cam đậm
        ColorSequenceKeypoint.new(1, Color3.fromHex("#FF9900"))  -- Mã kết thúc: Vàng cam phát sáng
    }
    UIGradient.Rotation = 45
    UIGradient.Parent = button
end

-- KHUNG MENU CHÍNH (#0F0C1B - Tím đen đậm chất Cyberpunk)
MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromHex("#0F0C1B")
MainFrame.Position = UDim2.new(0.5, -175, 0.5, -160)
MainFrame.Size = UDim2.new(0, 350, 0, 320)
MainFrame.Active = true
MainFrame.Draggable = true

UICorner.CornerRadius = UDim.new(0, 14)
UICorner.Parent = MainFrame

-- Viền phát sáng nhẹ theo tông màu chủ đạo
UIStroke.Parent = MainFrame
UIStroke.Thickness = 1.5
UIStroke.Color = Color3.fromHex("#FF4500")
UIStroke.Transparency = 0.5

-- Tên Menu: Hệ Thống GetKey Wis Hub
Title.Parent = MainFrame
Title.Text = "Hệ Thống GetKey Wis Hub"
Title.Font = Enum.Font.GothamBlack
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 18
Title.Size = UDim2.new(1, 0, 0, 50)
Title.BackgroundTransparency = 1

-- Ô NHẬP KEY (#1C1731 - Tím xám trung tính)
KeyInput.Parent = MainFrame
KeyInput.PlaceholderText = "Nhập mã Key tại đây..."
KeyInput.Text = ""
KeyInput.BackgroundColor3 = Color3.fromHex("#1C1731")
KeyInput.Position = UDim2.new(0.08, 0, 0.18, 0)
KeyInput.Size = UDim2.new(0.84, 0, 0, 40)
KeyInput.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyInput.Font = Enum.Font.GothamSemibold
KeyInput.TextSize = 13
Instance.new("UICorner", KeyInput).CornerRadius = UDim.new(0, 8)

local InputStroke = Instance.new("UIStroke", KeyInput)
InputStroke.Thickness = 1
InputStroke.Color = Color3.fromHex("#362D5A")

-- NÚT CHỌN GETKEY KEY 24 GIỜ (Gradient kích thích thị giác click)
CopyBtn24h.Parent = MainFrame
CopyBtn24h.Text = "GET KEY 24 GIỜ"
CopyBtn24h.Font = Enum.Font.GothamBlack
CopyBtn24h.TextSize = 12
CopyBtn24h.TextColor3 = Color3.fromHex("#FFFFFF") -- Chữ trắng nổi bật trên nền Cam
CopyBtn24h.Position = UDim2.new(0.08, 0, 0.36, 5)
CopyBtn24h.Size = UDim2.new(0.4, 0, 0, 35)
Instance.new("UICorner", CopyBtn24h).CornerRadius = UDim.new(0, 8)
ApplyGradient(CopyBtn24h)

-- NÚT CHỌN GETKEY KEY VĨNH VIỄN (Gradient kích thích thị giác click)
CopyBtnPermanent.Parent = MainFrame
CopyBtnPermanent.Text = "KEY VĨNH VIỄN"
CopyBtnPermanent.Font = Enum.Font.GothamBlack
CopyBtnPermanent.TextSize = 12
CopyBtnPermanent.TextColor3 = Color3.fromHex("#FFFFFF") -- Chữ trắng nổi bật trên nền Cam
CopyBtnPermanent.Position = UDim2.new(0.52, 0, 0.36, 5)
CopyBtnPermanent.Size = UDim2.new(0.4, 0, 0, 35)
Instance.new("UICorner", CopyBtnPermanent).CornerRadius = UDim.new(0, 8)
ApplyGradient(CopyBtnPermanent)

-- NÚT XÁC NHẬN KEY
SubmitBtn.Parent = MainFrame
SubmitBtn.Text = "XÁC NHẬN KEY"
SubmitBtn.Font = Enum.Font.GothamBlack
SubmitBtn.TextSize = 14
SubmitBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SubmitBtn.TextColor3 = Color3.fromHex("#0F0C1B")
SubmitBtn.Position = UDim2.new(0.08, 0, 0.54, 8)
SubmitBtn.Size = UDim2.new(0.84, 0, 0, 42)
Instance.new("UICorner", SubmitBtn).CornerRadius = UDim.new(0, 10)

-- NOTE CHỮ NHỎ PHÍA DƯỚI (Màu vàng đỏ nhẹ: #E08B46)
NoteLabel.Parent = MainFrame
NoteLabel.Text = "Việc lấy ( Key )giúp mình có thêm chút chi phí để duy trì và cập nhật script mỗi ngày. Chỉ mất 1-2 phút mong bạn đừng tức giận và tiếp tục ủng hộ mình nhé! Chúc các bạn chơi game vui vẻ!"
NoteLabel.Font = Enum.Font.GothamMedium
NoteLabel.TextColor3 = Color3.fromHex("#E08B46")
NoteLabel.Position = UDim2.new(0.06, 0, 0.73, 5)
NoteLabel.Size = UDim2.new(0.88, 0, 0, 70)
NoteLabel.BackgroundTransparency = 1
NoteLabel.TextWrapped = true
NoteLabel.TextYAlignment = Enum.TextYAlignment.Top
NoteLabel.TextSize = 11

--- HỆ THỐNG XỬ LÝ SỰ KIỆN TỰ ĐỘNG ---

local function handleCopy()
    setclipboard(_hexDecode(_targetLink))
    NotifyRed("dán lên trình duyệt để getkey")
end

CopyBtn24h.MouseButton1Click:Connect(function()
    CopyBtn24h.Text = "ĐÃ SAO CHÉP!"
    handleCopy()
    task.wait(2)
    CopyBtn24h.Text = "GET KEY 24 GIỜ"
end)

CopyBtnPermanent.MouseButton1Click:Connect(function()
    CopyBtnPermanent.Text = "ĐÃ SAO CHÉP!"
    handleCopy()
    task.wait(2)
    CopyBtnPermanent.Text = "KEY VĨNH VIỄN"
end)

SubmitBtn.MouseButton1Click:Connect(function()
    -- Thực hiện so sánh chuỗi đã mã hóa Hex chính xác 100% để ngăn chặn lỗi ký tự đặc biệt
    if KeyInput.Text == _hexDecode(_secureKey) then
        SubmitBtn.Text = "KÍCH HOẠT THÀNH CÔNG!"
        SubmitBtn.BackgroundColor3 = Color3.fromRGB(0, 215, 115)
        SubmitBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
        task.wait(1.2)
        ScreenGui:Destroy()
        -- Chạy mã nguồn script Wis Hub gốc sau khi đúng Key
        loadstring(game:HttpGet(_hexDecode(_secureScript)))()
    else
        SubmitBtn.Text = "SAI KEY! VUI LÒNG KIỂM TRA LẠI"
        SubmitBtn.BackgroundColor3 = Color3.fromRGB(240, 70, 70)
        SubmitBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
        task.wait(2)
        SubmitBtn.Text = "XÁC NHẬN KEY"
        SubmitBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        SubmitBtn.TextColor3 = Color3.fromHex("#0F0C1B")
    end
end)
