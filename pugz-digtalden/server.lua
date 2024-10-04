local QBCore = exports ['qb-core']:GetCoreObject()

RegisterNetEvent('pugz-digtalden:server:CraftPhone', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local plastic = Player.Functions.GetItemByName('plastic')

    if plastic ~= nil then

        Player.Functions.RemoveItem('plastic', 5)
        Player.Functions.AddItem('phone', 2)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["phone"], "add")
    else
        TriggerClientEvent('QBCore:Notify', src, 'You do not have the right items...', 'error')
    end
end)

RegisterNetEvent('pugz-digtalden:server:CraftRadio', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local iron = Player.Functions.GetItemByName('iron')

    if iron ~= nil then

        Player.Functions.RemoveItem('iron', 10)
        Player.Functions.AddItem('radio', 2)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["radio"], "add")
    else
        TriggerClientEvent('QBCore:Notify', src, 'You do not have the right items...', 'error')
    end
end)

RegisterNetEvent('pugz-digtalden:server:CraftCamera', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local copper = Player.Functions.GetItemByName('copper')

    if copper ~= nil then

        Player.Functions.RemoveItem('copper', 25)
        Player.Functions.AddItem('camera', 2)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["camera"], "add")
    else
        TriggerClientEvent('QBCore:Notify', src, 'You do not have the right items...', 'error')
    end
end)

RegisterNetEvent('pugz-digtalden:server:CraftLaptop', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local iron = Player.Functions.GetItemByName('iron')

    if iron ~= nil then

        Player.Functions.RemoveItem('iron', 25)
        Player.Functions.AddItem('laptop', 2)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["camera"], "add")
    else
        TriggerClientEvent('QBCore:Notify', src, 'You do not have the right items...', 'error')
    end
end)