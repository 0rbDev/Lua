function teleport(Cframe, antiExploitDetectionRate)
    local tweenService = game:GetService("TweenService")

    local success, msg = pcall(function()
        local info = {CFrame = Cframe}
        tweenService:Create(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(antiExploitDetectionRate, Enum.EasingStyle.Quad), info):Play()
    end)

    workspace.CurrentCamera.CameraSubject = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
    wait(antiExploitDetectionRate)
    workspace.CurrentCamera.CameraSubject = game:GetService("Players").LocalPlayer.Character.Humanoid
    if not success then warn("Teleport Error: "..msg) return false end
    return true
end

local seconds = 2


teleport(CFrame.new(0, 0, 0), seconds)
