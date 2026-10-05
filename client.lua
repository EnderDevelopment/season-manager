local ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end

    -- Register command to change season
    RegisterCommand('setseason', function(source, args, rawCommand)
        if args[1] then
            TriggerServerEvent('rz-season:setSeason', args[1])
        else
            ESX.ShowNotification('Usage: /setseason [season]')
        end
    end, false)

    -- Event to update weather and time based on season
    RegisterNetEvent('rz-season:updateSeason')
    AddEventHandler('rz-season:updateSeason', function(season)
        local seasonData = Config.Seasons[season]
        if seasonData then
            SetWeatherTypeNow(seasonData.weather)
            SetClockTime(seasonData.time, 0, 0)
            ESX.ShowNotification('Season changed to ' .. seasonData.label)
        end
    end)
end)