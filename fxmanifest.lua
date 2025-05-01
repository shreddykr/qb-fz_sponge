fx_version 'bodacious'
game 'gta5'
lua54 'yes'

author 'FiveZone'
description 'Vehicle Cleaning Sponge Script'
version '1.0.0'

shared_script '@ox_lib/init.lua'

client_script 'client/client.lua'
server_script 'server/server.lua'

escrow_ignore {
    'client/client.lua',
    'server/server.lua',
}

dependencies {
    'qb-core',
    'ox_inventory',
    'ox_lib'
}

dependency '/assetpacks'
