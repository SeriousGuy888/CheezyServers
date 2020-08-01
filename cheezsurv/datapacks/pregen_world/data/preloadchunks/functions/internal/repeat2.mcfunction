execute if score @s stage matches 4 run function preloadchunks:internal/jump4
execute if score @s stage matches 3 run function preloadchunks:internal/jump3
execute if score @s stage matches 2 run function preloadchunks:internal/jump2
execute if score @s stage matches 1 run function preloadchunks:internal/jump1
execute if score @s stage matches 0 run function preloadchunks:internal/jump0

execute if score @s stage matches 5.. run scoreboard players set @s stage 0
