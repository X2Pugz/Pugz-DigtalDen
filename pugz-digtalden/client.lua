local QBCore = exports ['qb-core']:GetCoreObject()
local spawned = false

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
        if PlayerData.job.onduty then
           if PlayerData.job.name == "digtalden" then
            TriggerServerEvent("QBCore:ToggkeDuty")
           end
        end
    end)
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerJob = JobInfo
    onDuty = PlayerJob.onduty
end)

RegisterNetEvent("pugz-digtalden:client:Service", function()
    TriggerServerEvent("QBCore:ToggleDuty")
end)



Citizen.CreateThread(function()
    local blip = AddBlipForCoord(-1534.7886, -400.9319, 35.6337, 73.8260)

    SetBlipSprite(blip, 772)
    SetBlipDisplay(blip, 4)
    SetBlipScale  (blip, 0.9)
    SetBlipColour (blip, 2)
    SetBlipAsShortRange(blip, true)

    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString('DigtalDen')
    EndTextCommandSetBlipName(blip)
end)

RegisterNetEvent('pugz-digtalden:client:CraftingMenu', function() 
    exports['qb-menu']:openMenu({
        {
            header = "CraftItems",
            isMenuHeader = true,
        },
        {
            header = "< Close Menu",
            txt = "",
            params = {
                event = "qb-menu:closeMenu",
            }
        },
        {
            header = "Phone",
            txt = "Requirements: <br> - 5 Plastic",
            params = {
                event = "pugz-digtalden:client:CraftPhone",
            }
        },
        {
            header = "Radio",
            txt = "Requirements: <br> - 10 Iron",
            params = {
                event = "pugz-digtalden:client:CraftRadio",
            }
        },
        {
            header = "Camera",
            txt = "Requirements: <br> - 25 Copper",
            params = {
                event = "pugz-digtalden:client:CraftCamera",
            }
        },
        {
            header = "Laptop",
            txt = "Requirements: <br> - 25 Iron",
            params = {
                event = "pugz-digtalden:client:CraftLaptop",
            }
        },
    })
end)


RegisterNetEvent('pugz-digtalden:client:CraftPhone', function() 
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    QBCore.Functions.Progressbar('phone', 'Grabbing Parts TO Make Phone!...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('pugz-digtalden:server:CraftPhone')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('pugz-digtalden:client:CraftRadio', function() 
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    QBCore.Functions.Progressbar('radio', 'Grabbing Parts TO Make Radio!...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('pugz-digtalden:server:CraftRadio')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('pugz-digtalden:client:CraftCamera', function() 
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    QBCore.Functions.Progressbar('camera', 'Grabbing Parts TO Make Camera...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('pugz-digtalden:server:CraftCamera')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('pugz-digtalden:client:CraftLaptop', function() 
    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
    QBCore.Functions.Progressbar('camera', 'Grabbing Parts TO Make Laptop...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('pugz-digtalden:server:CraftLaptop')
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)