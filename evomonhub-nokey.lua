--[[ 
    HỆ THỐNG GETKEY EVOMON HUB - CYBERPUNK GRADIENT EDITION
    GIAO DIỆN BẮT MẮT - HOÀN TOÀN TỰ ĐỘNG
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
ScreenGui.Name = "EvomonHub_CyberGradient_System"
ScreenGui.ResetOnSpawn = false

-- Giải mã mã hóa Hex bảo mật chống đọc trộm
local function _hexDecode(hexStr)
    local str = ""
    for i = 1, #hexStr, 2 do
        local code = tonumber(string.sub(hexStr, i, i + 1), 16)
        if code then str = str .. string.char(code) end
    end
    return str
end

-- DỮ LIỆU ĐÃ ĐƯỢC MÃ HÓA BẢO MẬT TUYỆT ĐỐI
-- Link Get Key (Cả 2 nút): https://link4m.net/4RHvma
local _targetLink = "68747470733a2f2f6c696e6b346d2e6e65742f345248766d61"

-- Key mới: evomonkeyfree-FaqLIXcJqJGptvBSBbP893179032
local _secureKey = "65766f6d6f6e6b6579667265652d4661714c4958634a714a477074764253426250383933313739303332"

-- Script gốc Blox tổng hợp cần chạy khi đúng key
local _secureScript = "68747470733a2f2f6170692e6a6e6b69652e636f6d2f6170692f76312f6c7561736372697074732f7075626c69632f356230306237396563386436363138356263623434333730383130366461656663646565323664303135616662643164343335656238393534356236626561322f646f776e6c6f6164"

-- Hàm thông báo chữ đỏ nhẹ, phông chữ rõ nét trên màn hình
local function NotifyRed(text)
    local NotifyGui = Instance.new("ScreenGui")
    NotifyGui.Parent = game.CoreGui
    
    local Label = Instance.new("TextLabel")
    Label.Parent = NotifyGui
    Label.Size = UDim2.new(0, 600, 0, 60)
    Label.Position = UDim2.new(0.5, -300, 0.25, 0)
    Label.BackgroundTransparency = 1
    Label.TextColor3 = Color3.fromRGB(255, 90, 90) -- Màu đỏ nhẹ chuẩn, rất rõ nét
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

-- Hàm tạo hiệu ứng Gradient Cam Vàng phát sáng cho nút Get Key
local function ApplyGradient(button)
    local UIGradient = Instance.new("UIGradient")
    UIGradient.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0, Color3.fromHex("#FF4500")), -- Mã bắt đầu Cam đậm
        ColorSequenceKeypoint.new(1, Color3.fromHex("#FF9900"))  -- Mã kết thúc Vàng cam phát sáng
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

-- Viền Neon mờ ảo cho Menu
UIStroke.Parent = MainFrame
UIStroke.Thickness = 1.5
UIStroke.Color = Color3.fromHex("#FF4500")
UIStroke.Transparency = 0.5

-- Tên Menu: Hệ Thống GetKey Evomon Hub
Title.Parent = MainFrame
Title.Text = "Hệ Thống GetKey Evomon Hub"
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

-- NÚT CHỌN GETKEY KEY 24 GIỜ (Gradient kích thích thị giác)
CopyBtn24h.Parent = MainFrame
CopyBtn24h.Text = "GET KEY 24 GIỜ"
CopyBtn24h.Font = Enum.Font.GothamBlack
CopyBtn24h.TextSize = 12
CopyBtn24h.TextColor3 = Color3.fromHex("#FFFFFF") -- Chữ trắng nổi bật
CopyBtn24h.Position = UDim2.new(0.08, 0, 0.36, 5)
CopyBtn24h.Size = UDim2.new(0.4, 0, 0, 35)
Instance.new("UICorner", CopyBtn24h).CornerRadius = UDim.new(0, 8)
ApplyGradient(CopyBtn24h)

-- NÚT KEY VĨNH VIỄN (Gradient kích thích thị giác)
CopyBtnPermanent.Parent = MainFrame
CopyBtnPermanent.Text = "KEY VĨNH VIỄN"
CopyBtnPermanent.Font = Enum.Font.GothamBlack
CopyBtnPermanent.TextSize = 12
CopyBtnPermanent.TextColor3 = Color3.fromHex("#FFFFFF") -- Chữ trắng nổi bật
CopyBtnPermanent.Position = UDim2.new(0.52, 0, 0.36, 5)
CopyBtnPermanent.Size = UDim2.new(0.4, 0, 0, 35)
Instance.new("UICorner", CopyBtnPermanent).CornerRadius = UDim.new(0, 8)
ApplyGradient(CopyBtnPermanent)

-- NÚT XÁC NHẬN KEY (Thiết kế tối giản sang trọng)
SubmitBtn.Parent = MainFrame
SubmitBtn.Text = "XÁC NHẬN KEY"
SubmitBtn.Font = Enum.Font.GothamBlack
SubmitBtn.TextSize = 14
SubmitBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SubmitBtn.TextColor3 = Color3.fromHex("#0F0C1B")
SubmitBtn.Position = UDim2.new(0.08, 0, 0.54, 8)
SubmitBtn.Size = UDim2.new(0.84, 0, 0, 42)
Instance.new("UICorner", SubmitBtn).CornerRadius = UDim.new(0, 10)

-- GHI CHÚ CHỮ NHỎ (Màu vàng đỏ nhẹ: #E08B46)
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
    -- Thực hiện so sánh chuỗi đã mã hóa an toàn nhằm ngăn chặn bypass tool
    if KeyInput.Text == _hexDecode(_secureKey) then
        SubmitBtn.Text = "KÍCH HOẠT THÀNH CÔNG!"
        SubmitBtn.BackgroundColor3 = Color3.fromRGB(0, 215, 115)
        SubmitBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
        task.wait(1.2)
        ScreenGui:Destroy()
        -- Kích hoạt chính xác mã nguồn script blox tổng hợp được yêu cầu
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
