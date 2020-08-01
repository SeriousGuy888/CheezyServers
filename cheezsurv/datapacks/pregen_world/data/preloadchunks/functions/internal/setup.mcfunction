scoreboard objectives add preload_chunks dummy
scoreboard objectives add gen.radius dummy
scoreboard objectives add actual.phase dummy
scoreboard objectives add jump1 dummy
scoreboard objectives add jump2 dummy
scoreboard objectives add jump3 dummy
scoreboard objectives add jump4 dummy
scoreboard objectives add stage dummy

scoreboard players set #4 preload_chunks 4

tellraw @a [{"text":"\nPregenerate Chunks Datapack Installed!\n","color":"gold","underlined":"true","bold":"true"}]
tellraw @a [{"text":"\nTo use this datapack, just run\n","color":"gold"},{"color":"yellow","bold":true,"text":"/function preloadchunks:start\n","clickEvent":{"action":"suggest_command","value":"/function preloadchunks:start"}}]
