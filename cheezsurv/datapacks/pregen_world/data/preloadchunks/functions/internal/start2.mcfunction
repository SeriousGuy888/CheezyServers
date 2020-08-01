execute at @s run tp @s 8.0 110.0 8.0 0 50

scoreboard players set @s gen.radius 1
scoreboard players set @s actual.phase 0
scoreboard players set @s jump1 0
scoreboard players set @s jump2 0
scoreboard players set @s jump3 0
scoreboard players set @s jump4 0
scoreboard players set @s stage 0

gamerule spectatorsGenerateChunks true
gamemode spectator @s
tag @s add preloader
tag @s remove preloader.start
tag @s remove paused
