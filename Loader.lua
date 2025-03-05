getgenv().script_key = getgenv()['script_key']

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer or Players.PlayerAdded:Wait()

local GamesTable = {
    [6061766680] = "https://api.luarmor.net/files/v3/loaders/e3ebd4aadbd4e1d3b121f66b06102e8e.lua", 
    [6931042565] = "https://api.luarmor.net/files/v3/loaders/f5ec84cb8ff1b58ef725bbcc589fac55.lua",
}

local GameId = game.GameId
local Executor = identifyexecutor()
local Link = GamesTable[GameId]
local HorribleExploits = {"Solara", "Xeno"}

if not Link then
    LocalPlayer:Kick("Not Supported")
elseif not script_key then
    LocalPlayer:Kick("No identified Key")
end

if GameId == 6061766680 and table.find(HorribleExploits, Executor) then
    LocalPlayer:Kick("The Executor you're using is not supported.")
elseif Executor == "Fluxus" then
    LocalPlayer:Kick("The Executor you're using is horrible please don't use this.")
elseif Executor == "Delta" then
    loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/8f819170363aa88419a80cc565b6a53c.lua"))()
end

loadstring(game:HttpGet(Link))()
