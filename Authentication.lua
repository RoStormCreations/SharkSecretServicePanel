--[[
 _____ _                _     ______                _ 
/  ___| |              | |    | ___ \              | |
\ `--.| |__   __ _ _ __| | __ | |_/ /_ _ _ __   ___| |
 `--. \ '_ \ / _` | '__| |/ / |  __/ _` | '_ \ / _ \ |
/\__/ / | | | (_| | |  |   <  | | | (_| | | | |  __/ |
\____/|_| |_|\__,_|_|  |_|\_\ \_|  \__,_|_| |_|\___|_|
| Version 0.0.1
| Community Version
| Made by re_sistance on discord                                                                                                
]] -- [[ Grabs ]]
local Players = game:GetService('Players')
local CoreGui = game:GetService('StarterGui')
local GuiService = game:GetService('GuiService')
local ReplicatedStorage = game:GetService('ReplicatedStorage')
local ContextActionService = game:GetService('ContextActionService')
local SoundService = game:GetService('SoundService')
local VirtualInputManager = game:GetService('VirtualInputManager')
local UserInputService = game:GetService('UserInputService')
local LocalPlayer = Players.LocalPlayer -- [[LocalPlayer = Person running script (The User)]]

-- [[ Status'es' ]]

local Enabled = false
local Rod = false
local Casted = false
local Progress = false
local Finished = false
local LoopPosition

-- [[ KeyBind ]]
local Keybind = Enum.KeyCode.X
--[[ Script Imports]]
local function KickScript()
loadstring(game:HttpGet("https://raw.githubusercontent.com/RoStormCreations/SharkSecretServicePanel/refs/heads/main/Kick"))()
end
-- [[ Notifications ]]
local function SendNotificationSound()
    wait(0)
    local TheNotificationSound = instance.new("Sound")
    TheNotificationSound.parent = SoundService -- {game:GetService('SoundService')}
    TheNotificationSound.Sound = "rbxassetid://" -- The Sound Identifacation Value
    TheNotificationSound.Volume = 1 -- 1 = Normal
    TheNotificationSound:play()
    wait(0)
end

local function SendNotification1()
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Fisch Secret Panel", -- Big Text (Header/Title) {Required}
        Text = "> Checking Status", -- Small Text (Description) {Required}
        Icon = "rbxassetid://1234567890" -- Image/Icon  {Optional}
    })
end

local function SendNotification2()
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Fisch Secret Panel", -- Big Text (Header/Title) {Required}
        Text = "$ Authorized", -- Small Text (Description) {Required}
        Icon = "rbxassetid://1234567890" -- Image/Icon  {Optional}
    })
end

local function SendNotification3()
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Fisch Secret Panel", -- Big Text (Header/Title) {Required}
        Text = "Fuck you skid", -- Small Text (Description) {Required}
        Icon = "rbxassetid://1234567890" -- Image/Icon  {Optional}
    })
end

local function CheckUserInfoForAuth()
    SendNotification1()
    wait(1.5)
    if LocalPlayer.Username == "RobloxLove10347" then
        SendNotificationSound()
        SendNotification2()
    else
        SendNotification3()
        wait(2)
        KickScript()
    end
end
CheckUserInfoForAuth()
