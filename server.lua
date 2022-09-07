if Config.Framework == "esx" then
    ESX = nil
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    elseif Config.Framework == "qb" then
      QBCore = exports['qb-core']:GetCoreObject()
    else
      print("^8ERROR: ^3Unsupported or misspelled framework^7")
    end

if Config.Framework == "esx" then    
ESX.RegisterUsableItem('walking_stick', function(source) 
    TriggerClientEvent('endless_walkingstick', source)
end)
elseif Config.Framework == "qb" then
    QBCore.Functions.CreateUseableItem("walking_stick", function(source, item)
        TriggerClientEvent('endless_walkingstick', source)
    end)
else
    print("^8ERROR: ^3Unsupported or misspelled framework^7")
end