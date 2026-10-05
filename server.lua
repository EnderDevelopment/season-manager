local ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

-- Function to get current season
local function getCurrentSeason()
    local currentTime = os.time()
    local seasons = Config.Seasons
    
    for season, data in pairs(seasons) do
        local startTime = os.time({year=2023, month=3, day=20, hour=0, min=0, sec=0})
        local endTime = os.time({year=2023, month=6, day=20, hour=23, min=59, sec=59})
        
        if season == 'summer' then
            startTime = os.time({year=2023, month=6, day=21, hour=0, min=0, sec=0})
            endTime = os.time({year=2023, month=9, day=21, hour=23, min=59, sec=59})
        elseif season == 'autumn' then
            startTime = os.time({year=2023, month=9, day=22, hour=0, min=0, sec=0})
            endTime = os.time({year=2023, month=12, day=20, hour=23, min=59, sec=59})
        elseif season == 'winter' then
            startTime = os.time({year=2023, month=12, day=21, hour=0, min=0, sec=0})
            endTime = os.time({year=2024, month=3, day=19, hour=23, min=59, sec=59})
        end
        
        if currentTime >= startTime and currentTime <= endTime then
            return season
        end
    end
    
    return Config.DefaultSeason
end

-- Event to set season
RegisterNetEvent('rz-season:setSeason')
AddEventHandler('rz-season:setSeason', function(season)
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer.getGroup() == 'admin' then
        if Config.Seasons[season] then
            TriggerClientEvent('rz-season:updateSeason', -1, season)
            ESX.ShowNotification('Season changed to ' .. Config.Seasons[season].label)
        else
            ESX.ShowNotification('Invalid season')
        end
    else
        ESX.ShowNotification('You do not have permission to change the season')
    end
end)

-- Startup event to set initial season
Citizen.CreateThread(function()
    local currentSeason = getCurrentSeason()
    TriggerClientEvent('rz-season:updateSeason', -1, currentSeason)
end)