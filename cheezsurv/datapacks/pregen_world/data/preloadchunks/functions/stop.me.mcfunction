scoreboard players reset @s preload_chunks 
scoreboard players reset @s gen.radius 
scoreboard players reset @s actual.phase 
scoreboard players reset @s jump1 
scoreboard players reset @s jump2 
scoreboard players reset @s jump3 
scoreboard players reset @s jump4 
scoreboard players reset @s stage 

tag @s remove preloader
tag @s remove preloader.start
tag @s remove paused

tellraw @s [{"text":"Pregeneration stopped for you.","color":"dark_gray","bold":true}]
