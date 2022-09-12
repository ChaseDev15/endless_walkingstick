local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem('walking_stick', function(source) 
    TriggerClientEvent('endless_walkingstick', source)
end)