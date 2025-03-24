getgenv().script_key = getgenv()['script_key']

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer or Players.PlayerAdded:Wait()

local GamesTable = {
    [4777817887] = "https://api.luarmor.net/files/v3/loaders/52bde2f8f3575360a08cb188c4d58760.lua", 
    [6931042565] = "https://api.luarmor.net/files/v3/loaders/5f64ce462bf8ca3880ec58844926ef6b.lua",
}

local GameId = game.GameId
local Executor = identifyexecutor()
local Link = GamesTable[GameId]

if not Link then
    LocalPlayer:Kick("Not Supported")
elseif not script_key then
    LocalPlayer:Kick("No identified Key")
end

if Executor == "Fluxus" or "Delta" then
    LocalPlayer:Kick("The Executor you're using is horrible please don't use this.")
end

loadstring(game:HttpGet(Link))()
