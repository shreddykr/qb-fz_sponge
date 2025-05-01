local QBCore = exports['qb-core']:GetCoreObject()

exports.ox_inventory:registerHook('createItem', function(payload)
    if payload.item.name == 'sponge' then
        payload.metadata.durability = 10
        return payload
    end
end)

RegisterServerEvent('fz_sponge:updateDurability')
AddEventHandler('fz_sponge:updateDurability', function()
    local src = source
    local item = exports.ox_inventory:GetSlotWithItem(src, 'sponge')

    if item then
        local durability = item.metadata.durability or 10
        durability = durability - 1

        if durability <= 0 then
            exports.ox_inventory:RemoveItem(src, 'sponge', 1)
            TriggerClientEvent('ox_lib:notify', src, {
                title = 'Item Broken',
                description = 'Your sponge has worn out.',
                type = 'error'
            })
        else
            exports.ox_inventory:SetMetadata(src, item.slot, { durability = durability })
            TriggerClientEvent('ox_lib:notify', src, {
                title = 'Sponge Durability',
                description = 'Remaining durability: ' .. durability .. '/10',
                type = 'info'
            })
        end
    end
end)
