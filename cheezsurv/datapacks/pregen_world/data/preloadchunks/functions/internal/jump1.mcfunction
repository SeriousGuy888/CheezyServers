tp @s ~ 110 ~288 ~ 50
execute if score @s jump1 matches 1.. run scoreboard players remove @s jump1 1
execute if score @s jump1 matches ..0 run scoreboard players add @s stage 1
function preloadchunks:internal/get.pos

scoreboard players remove #totaljumps preload_chunks 1

execute if score @s jump1 matches 1.. run tellraw @s [{"text":"Jumping South (+Z): ","color":"yellow"},{"score":{"name":"@s","objective":"jump1"},"color":"gold","bold":true},{"text":" jumps remaining...","color":"yellow","bold":false}]
execute if score @s jump1 matches ..0 run tellraw @s [{"text":"Jumping West (-X): ","color":"yellow"},{"score":{"name":"@s","objective":"jump2"},"color":"gold","bold":true},{"text":" jumps remaining...","color":"yellow","bold":false}]
tellraw @s [{"text":"Total jumps remaining: ","color":"yellow"},{"score":{"name":"#totaljumps","objective":"preload_chunks"},"color":"gold","bold":true}]
