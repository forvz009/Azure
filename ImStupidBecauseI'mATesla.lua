getgenv().script_key = getgenv()['YhWfXxjdvihyFEscgzHokNkqdpjUjYQM']

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/Library.lua"))()
local api = loadstring(game:HttpGet("https://sdkapi-public.luarmor.net/library.lua"))()
local Window = Library:CreateWindow({Title = "Azure ", Footer = "Key System", Icon = 112280917739514, NotifySide = "Left", ShowCustomCursor = false})
local Tabs = {Key = Window:AddKeyTab("Azure Keysystem")}

if not game:GetService("Players").LocalPlayer then
    game:GetService("Players").PlayerAdded:Wait()
end

api.script_id = "f5ec84cb8ff1b58ef725bbcc589fac55"

if isfile("savedazurekey") then
    local savedKey = readfile("savedazurekey")
    local status = api.check_key(savedKey)
    if status.code == "KEY_VALID" then
        getgenv().script_key = "\"" .. savedKey .. "\""
        loadstring('script_key="' .. savedKey .. '"\nloadstring(game:HttpGet("https://raw.githubusercontent.com/Forexium/Azure/refs/heads/main/Loader.lua"))()')()
        Library:Notify({Title = "Azure Keysystem", Description = "Loaded saved key: " .. savedKey, Time = 4})
        Library:Unload()
    end
end}) 
