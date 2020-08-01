scoreboard players reset @a preload_chunks
scoreboard players reset @a gen.radius
scoreboard players reset @a actual.phase
scoreboard players reset @a jump1
scoreboard players reset @a jump2
scoreboard players reset @a jump3
scoreboard players reset @a jump4
scoreboard players reset @a stage

tag @a remove preloader
tag @a remove preloader.start

tellraw @a [{"text":"Pregeneration stopped for everyone.","color":"dark_gray","bold":true}]
