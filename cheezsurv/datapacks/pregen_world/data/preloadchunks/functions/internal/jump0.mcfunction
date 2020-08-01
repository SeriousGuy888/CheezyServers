scoreboard players add @s stage 1

tp @s ~288 110 ~ ~ 50

scoreboard players add @s actual.phase 1

scoreboard players add @s gen.radius 2

scoreboard players operation @s jump1 = @s actual.phase
scoreboard players operation @s jump1 += @s actual.phase

scoreboard players operation #totaljumps preload_chunks = @s jump1
scoreboard players operation #totaljumps preload_chunks *= #4 preload_chunks
scoreboard players remove #totaljumps preload_chunks 1

scoreboard players operation @s jump2 = @s jump1
scoreboard players operation @s jump3 = @s jump1
scoreboard players operation @s jump4 = @s jump1
scoreboard players remove @s jump1 1

scoreboard players set #finalarea preload_chunks 288
scoreboard players operation #finalarea preload_chunks *= @s gen.radius

tellraw @a [{"text":"===================================\n","color":"yellow"},{"selector":"@s","color":"gold","bold":true},{"text":" is starting the generation of spiral number ","color":"yellow"},{"score":{"name":"@s","objective":"actual.phase"},"color":"yellow","bold":true},{"text":".\nThis will produce a pregenerated area of ","color":"yellow"},{"score":{"name":"#finalarea","objective":"preload_chunks"},"color":"gold","bold":true},{"text":"x","color":"yellow"},{"score":{"name":"#finalarea","objective":"preload_chunks"},"color":"gold","bold":true},{"text":" blocks.\n===================================","color":"yellow"}]

function preloadchunks:internal/get.pos
tellraw @s [{"text":"Jumping South (+Z): ","color":"yellow"},{"score":{"name":"@s","objective":"jump1"},"color":"gold","bold":true},{"text":" jumps remaining...","color":"yellow","bold":false}]
tellraw @s [{"text":"Total jumps remaining: ","color":"yellow"},{"score":{"name":"#totaljumps","objective":"preload_chunks"},"color":"gold","bold":true}]
