schedule function cauldron_concrete:check_for_items_in_filled_cauldrons 1s
execute as @e[type=minecraft:item] at @s if block ~ ~ ~ minecraft:water_cauldron run function cauldron_concrete:check_item