local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local HttpService = game:GetService("HttpService")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

local player = Players.LocalPlayer

local CORRECT_KEY = "1V99"
local LOGO_ID = "rbxassetid://99354291916164"
local HUB_URL = "https://raw.githubusercontent.com/rosildofilho6-code/Facadaa/refs/heads/main/FACADA-MODS-4DEDOS.lua"

-- Anti-duplicata
if CoreGui:FindFirstChild("Facada_KeySystem") then
    return
end

local gui = Instance.new("ScreenGui")
gui.Name = "Facada_KeySystem"
gui.ResetOnSpawn = false
gui.Parent = gethui and gethui() or CoreGui

if not gui.Parent then
    gui.Parent = player:WaitForChild("PlayerGui")
end

local panel = Instance.new("Frame")
panel.Name = "MainPanel"
panel.Size = UDim2.new(0, 380, 0, 330)
panel.Position = UDim2.new(0.5, -190, 0.5, -165)
panel.BackgroundColor3 = Color3.fromRGB(14, 16, 26)
panel.BorderSizePixel = 0
panel.Active = true
panel.Draggable = true
panel.Parent = gui

Instance.new("UICorner", panel).CornerRadius = UDim.new(0, 16)

local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(255, 255, 255)
stroke.Transparency = 0.92
stroke.Thickness = 1
stroke.Parent = panel

-- ==================== HEADER ====================
local header = Instance.new("Frame")
header.Size = UDim2.new(1, -30, 0, 70)
header.Position = UDim2.new(0, 15, 0, 18)
header.BackgroundTransparency = 1
header.Parent = panel

local logo = Instance.new("ImageLabel")
logo.Size = UDim2.new(0, 52, 0, 52)
logo.Position = UDim2.new(0, 0, 0, 9)
logo.BackgroundColor3 = Color3.fromRGB(20, 22, 40)
logo.BackgroundTransparency = 0.4
logo.Image = LOGO_ID
logo.ScaleType = Enum.ScaleType.Fit
logo.Parent = header
Instance.new("UICorner", logo).CornerRadius = UDim.new(0, 12)

local title = Instance.new("TextLabel")
title.Size = UDim2.new(0, 260, 0, 30)
title.Position = UDim2.new(0, 64, 0, 12)
title.BackgroundTransparency = 1
title.Text = "FACADA"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Font = Enum.Font.GothamBold
title.TextSize = 22
title.TextXAlignment = Enum.TextXAlignment.Left
title.Parent = header

local subtitle = Instance.new("TextLabel")
subtitle.Size = UDim2.new(0, 260, 0, 18)
subtitle.Position = UDim2.new(0, 64, 0, 43)
subtitle.BackgroundTransparency = 1
subtitle.Text = "Premium Roblox Executor"
subtitle.TextColor3 = Color3.fromRGB(130, 130, 155)
subtitle.Font = Enum.Font.Gotham
subtitle.TextSize = 12
subtitle.TextXAlignment = Enum.TextXAlignment.Left
subtitle.Parent = header

-- Divider
local divider = Instance.new("Frame")
divider.Size = UDim2.new(1, -30, 0, 1)
divider.Position = UDim2.new(0, 15, 0, 96)
divider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
divider.BackgroundTransparency = 0.93
divider.Parent = panel

-- ==================== STATUS ====================
local statusFrame = Instance.new("Frame")
statusFrame.Size = UDim2.new(0, 180, 0, 26)
statusFrame.Position = UDim2.new(0, 15, 0, 108)
statusFrame.BackgroundColor3 = Color3.fromRGB(255, 60, 60)
statusFrame.BackgroundTransparency = 0.88
statusFrame.Parent = panel
Instance.new("UICorner", statusFrame).CornerRadius = UDim.new(0, 100)

local statusDot = Instance.new("Frame")
statusDot.Size = UDim2.new(0, 6, 0, 6)
statusDot.Position = UDim2.new(0, 10, 0.5, -3)
statusDot.BackgroundColor3 = Color3.fromRGB(255, 60, 60)
statusDot.Parent = statusFrame
Instance.new("UICorner", statusDot).CornerRadius = UDim.new(1, 0)

local statusLabel = Instance.new("TextLabel")
statusLabel.Size = UDim2.new(1, -22, 1, 0)
statusLabel.Position = UDim2.new(0, 20, 0, 0)
statusLabel.BackgroundTransparency = 1
statusLabel.Text = "SISTEMA BLOQUEADO"
statusLabel.TextColor3 = Color3.fromRGB(255, 60, 60)
statusLabel.Font = Enum.Font.GothamBold
statusLabel.TextSize = 10
statusLabel.TextXAlignment = Enum.TextXAlignment.Left
statusLabel.Parent = statusFrame

-- ==================== INPUT ====================
local inputLabel = Instance.new("TextLabel")
inputLabel.Size = UDim2.new(1, -30, 0, 14)
inputLabel.Position = UDim2.new(0, 15, 0, 148)
inputLabel.BackgroundTransparency = 1
inputLabel.Text = "DIGITE SUA KEY"
inputLabel.TextColor3 = Color3.fromRGB(130, 130, 155)
inputLabel.Font = Enum.Font.GothamBold
inputLabel.TextSize = 10
inputLabel.TextXAlignment = Enum.TextXAlignment.Left
inputLabel.Parent = panel

local inputBg = Instance.new("Frame")
inputBg.Size = UDim2.new(1, -30, 0, 44)
inputBg.Position = UDim2.new(0, 15, 0, 166)
inputBg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
inputBg.BackgroundTransparency = 0.95
inputBg.Parent = panel
Instance.new("UICorner", inputBg).CornerRadius = UDim.new(0, 10)

local inputStroke = Instance.new("UIStroke")
inputStroke.Color = Color3.fromRGB(255, 255, 255)
inputStroke.Transparency = 0.9
inputStroke.Thickness = 1
inputStroke.Parent = inputBg

local textBox = Instance.new("TextBox")
textBox.Size = UDim2.new(1, -16, 1, 0)
textBox.Position = UDim2.new(0, 16, 0, 0)
textBox.BackgroundTransparency = 1
textBox.PlaceholderText = "Digite a key..."
textBox.PlaceholderColor3 = Color3.fromRGB(90, 90, 110)
textBox.Text = ""
textBox.TextColor3 = Color3.fromRGB(255, 255, 255)
textBox.Font = Enum.Font.GothamMedium
textBox.TextSize = 16
textBox.TextXAlignment = Enum.TextXAlignment.Left
textBox.ClearTextOnFocus = false
textBox.TextEditable = true
textBox.Parent = inputBg

-- ==================== BUTTON ====================
local unlockBtn = Instance.new("TextButton")
unlockBtn.Size = UDim2.new(1, -30, 0, 46)
unlockBtn.Position = UDim2.new(0, 15, 0, 222)
unlockBtn.BackgroundColor3 = Color3.fromRGB(124, 58, 237)
unlockBtn.AutoButtonColor = false
unlockBtn.Text = ""
unlockBtn.Parent = panel
Instance.new("UICorner", unlockBtn).CornerRadius = UDim.new(0, 12)

local btnGradient = Instance.new("UIGradient")
btnGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(124, 58, 237)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(59, 130, 246))
}
btnGradient.Rotation = 135
btnGradient.Parent = unlockBtn

local btnLabel = Instance.new("TextLabel")
btnLabel.Size = UDim2.new(1, 0, 1, 0)
btnLabel.BackgroundTransparency = 1
btnLabel.Text = "DESBLOQUEAR"
btnLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
btnLabel.Font = Enum.Font.GothamBold
btnLabel.TextSize = 14
btnLabel.Parent = unlockBtn

-- Feedback
local feedbackFrame = Instance.new("Frame")
feedbackFrame.Size = UDim2.new(1, -30, 0, 36)
feedbackFrame.Position = UDim2.new(0, 15, 0, 278)
feedbackFrame.BackgroundColor3 = Color3.fromRGB(255, 60, 60)
feedbackFrame.BackgroundTransparency = 0.88
feedbackFrame.Visible = false
feedbackFrame.Parent = panel
Instance.new("UICorner", feedbackFrame).CornerRadius = UDim.new(0, 8)

local feedbackLabel = Instance.new("TextLabel")
feedbackLabel.Size = UDim2.new(1, -16, 1, 0)
feedbackLabel.BackgroundTransparency = 1
feedbackLabel.TextColor3 = Color3.fromRGB(255, 100, 100)
feedbackLabel.Font = Enum.Font.GothamMedium
feedbackLabel.TextSize = 12
feedbackLabel.TextXAlignment = Enum.TextXAlignment.Left
feedbackLabel.Parent = feedbackFrame

-- ==================== CLOSE BUTTON ====================
local closeBtn = Instance.new("TextButton")
closeBtn.Size = UDim2.new(0, 28, 0, 28)
closeBtn.Position = UDim2.new(1, -36, 0, 8)
closeBtn.BackgroundTransparency = 0.93
closeBtn.Text = "X"          -- Alterado para X simples (mais confiável)
closeBtn.TextColor3 = Color3.fromRGB(130, 130, 155)
closeBtn.Font = Enum.Font.GothamBold
closeBtn.TextSize = 18
closeBtn.Parent = panel
Instance.new("UICorner", closeBtn).CornerRadius = UDim.new(0, 7)

-- ==================== VARIABLES ====================
local isUnlocked = false
local isProcessing = false

-- ==================== FUNCTIONS ====================
local function feedback(tipo, texto)
    feedbackFrame.Visible = true
    if tipo == "erro" then
        feedbackFrame.BackgroundColor3 = Color3.fromRGB(255, 60, 60)
        feedbackLabel.TextColor3 = Color3.fromRGB(255, 100, 100)
    else
        feedbackFrame.BackgroundColor3 = Color3.fromRGB(0, 200, 80)
        feedbackLabel.TextColor3 = Color3.fromRGB(0, 200, 80)
    end
    feedbackLabel.Text = texto

    if tipo == "erro" then
        task.delay(3, function()
            if not isUnlocked and feedbackFrame then
                feedbackFrame.Visible = false
            end
        end)
    end
end

local function executarHub()
    local success, response = pcall(function()
        if syn and syn.request then
            return syn.request({Url = HUB_URL, Method = "GET"}).Body
        elseif getgenv and getgenv().HttpGet then
            return getgenv().HttpGet(HUB_URL)
        elseif game.HttpGet then
            return game:HttpGet(HUB_URL)
        else
            HttpService.HttpEnabled = true
            return HttpService:GetAsync(HUB_URL)
        end
    end)

    if not success or not response or #response < 100 then
        return false, "❌ Falha ao baixar o Hub.\nAtive HTTP Requests no seu executor."
    end

    local func, loadErr = loadstring(response)
    if not func then
        return false, "Erro de sintaxe no Hub: " .. tostring(loadErr)
    end

    local execSuccess, execErr = pcall(func)
    if not execSuccess then
        return false, "Erro ao executar Hub: " .. tostring(execErr)
    end

    return true, "Sucesso"
end

local function unlockPanel()
    if isUnlocked then return end
    isUnlocked = true
    isProcessing = true

    statusFrame.BackgroundColor3 = Color3.fromRGB(0, 200, 80)
    statusDot.BackgroundColor3 = Color3.fromRGB(0, 200, 80)
    statusLabel.Text = "SISTEMA DESBLOQUEADO"
    statusLabel.TextColor3 = Color3.fromRGB(0, 200, 80)

    textBox.Text = "*******"
    textBox.TextColor3 = Color3.fromRGB(0, 200, 80)
    textBox.TextEditable = false

    inputStroke.Color = Color3.fromRGB(0, 200, 80)
    inputStroke.Transparency = 0.7

    unlockBtn.BackgroundColor3 = Color3.fromRGB(0, 180, 80)
    btnGradient.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 180, 80)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 200, 80))
    }
    btnLabel.Text = "CARREGANDO HUB..."

    feedback("sucesso", "Key válida! Baixando FACADA MODS...")

    task.spawn(function()
        task.wait(0.8)
        local success, msg = executarHub()

        if success then
            btnLabel.Text = "HUB ATIVO ✅"
            feedback("sucesso", "FACADA MODS carregado com sucesso!")
            task.delay(1.8, function()
                if gui and gui.Parent then
                    gui:Destroy()
                end
            end)
        else
            feedback("erro", msg)
            isUnlocked = false
            btnLabel.Text = "DESBLOQUEAR"
            warn("[FACADA] " .. msg)
        end
        isProcessing = false
    end)
end

-- ==================== CONNECTIONS ====================
closeBtn.MouseButton1Click:Connect(function()
    gui:Destroy()
end)

unlockBtn.MouseButton1Click:Connect(function()
    if isUnlocked or isProcessing then return end
    isProcessing = true

    local key = textBox.Text:upper():gsub("[^A-Z0-9]", "")

    if key == "" then
        feedback("erro", "Digite uma key.")
        isProcessing = false
        return
    end

    if key == CORRECT_KEY then
        unlockPanel()
    else
        feedback("erro", "Key inválida!")
        textBox.Text = ""
        isProcessing = false
    end
end)

textBox.FocusLost:Connect(function(enterPressed)
    if enterPressed and not isUnlocked and not isProcessing then
        unlockPanel()
    end
end)

player.Chatted:Connect(function(msg)
    if isUnlocked then return end
    local chatKey = msg:upper():gsub("[^A-Z0-9]", "")
    if chatKey == CORRECT_KEY then
        unlockPanel()
    end
end)

print("✅ FACADA Key System carregado com sucesso!")
