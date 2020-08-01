tp @s ~288 110 ~ ~ 50
execute if score @s jump4 matches 1.. run scoreboard players remove @s jump4 1
execute if score @s jump4 matches ..0 run scoreboard players add @s stage 1
function preloadchunks:internal/get.pos

scoreboard players remove #totaljumps preload_chunks 1

execute if score @s jump4 matches 1.. run tellraw @s [{"text":"Jumping East (+X): ","color":"yellow"},{"score":{"name":"@s","objective":"jump4"},"color":"gold","bold":true},{"text":" jumps remaining...","color":"yellow","bold":false}]
execute if score @s jump4 matches ..0 run tellraw @a [{"selector":"@s","color":"dark_green","bold":true},{"text":" finished generating the spiral number ","color":"green"},{"score":{"name":"@s","objective":"actual.phase"},"color":"green","bold":true},{"text":"\n(","color":"green"},{"score":{"name":"#finalarea","objective":"preload_chunks"},"color":"dark_green","bold":true},{"text":"x","color":"green"},{"score":{"name":"#finalarea","objective":"preload_chunks"},"color":"dark_green","bold":true},{"text":" blocks area).","color":"green"}]
