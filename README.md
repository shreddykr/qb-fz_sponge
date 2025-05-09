# qb-fz_sponge

This is a FiveM resource that allows players to clean nearby vehicles using a sponge item. The script features prop attachment, animations, and durability tracking using `ox_inventory` and `ox_lib`.

> ⚠️ I did not create the original version of this script. All credit goes to the original author — I have simply **converted** it to work with the **QBCore framework**. This version is modified to be fully compatible with QBCore servers, using `ox_inventory` for item metadata (durability), and `ox_lib` for progress bars and notifications.

[Original](https://forum.cfx.re/t/free-esx-ultimate-vehicle-cleaning-sponge-script/5311905)

## Features

- Clean nearby vehicles with animation and prop.
- Sponge item has 10-use durability.
- Sponge breaks after full use.
- Inventory integration using `ox_inventory`.
- Styled progress and notifications via `ox_lib`.

## OX Inventory Item
	['sponge'] = {
		label = 'Cleaning Sponge',
		weight = 100,
		stack = false,
		close = true,
		description = 'A sponge for cleaning vehicles',
		client = {
			export = 'fz_sponge.fz_sponge:use'
		}
	},

## Dependencies

- QBCore
- ox_inventory
- ox_lib

## Notes

This is a **conversion**, not an original creation. If the original author wants it taken down or credited more explicitly, feel free to contact me.
