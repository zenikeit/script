-- Tạo ScreenGui
local sg = Instance.new("ScreenGui")
sg.Name = "RonneiNotification"
sg.Parent = game:GetService("CoreGui") -- Chạy dưới CoreGui để tránh bị reset khi nhân vật chết

-- Tạo Bảng thông báo (Frame)
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 100)
frame.Position = UDim2.new(0.5, -150, 0.5, -50) -- Căn giữa màn hình
frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25) -- Màu nền tối chỉn chu
frame.BorderSizePixel = 0
frame.Parent = sg

-- Bo góc cho bảng
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 10)
corner.Parent = frame

-- Tạo dòng chữ hiển thị kênh TikTok
local label = Instance.new("TextLabel")
label.Size = UDim2.new(1, 0, 0.6, 0)
label.Position = UDim2.new(0, 0, 0.1, 0)
label.BackgroundTransparency = 1
label.Text = "TIKTOK:ronnei7.htk"
label.TextColor3 = Color3.fromRGB(255, 255, 255)
label.Font = Enum.Font.GothamBold
label.TextSize = 20
label.Parent = frame

-- Tạo dòng chữ đếm ngược thời gian
local timerLabel = Instance.new("TextLabel")
timerLabel.Size = UDim2.new(1, 0, 0.3, 0)
timerLabel.Position = UDim2.new(0, 0, 0.65, 0)
timerLabel.BackgroundTransparency = 1
timerLabel.Text = "Đang tải sau 5 giây..."
timerLabel.TextColor3 = Color3.fromRGB(0, 255, 128) -- Màu xanh lá nổi bật
timerLabel.Font = Enum.Font.Gotham
timerLabel.TextSize = 14
timerLabel.Parent = frame

-- Vòng lặp đếm ngược 5 giây
for i = 5, 1, -1 do
    timerLabel.Text = "Đang tải sau " .. i .. " giây..."
    task.wait(1)
end

-- Xóa bảng thông báo sau khi hết thời gian
sg:Destroy()

-- Khởi chạy Script của bạn
loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/349171199feeb2b561597b018bf12e5d.lua"))()
