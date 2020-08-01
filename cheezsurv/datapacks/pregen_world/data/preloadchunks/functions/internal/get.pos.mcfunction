execute store result score #myposx preload_chunks run data get entity @s Pos[0]
execute store result score #myposy preload_chunks run data get entity @s Pos[1]
execute store result score #myposz preload_chunks run data get entity @s Pos[2]

tellraw @s [{"text":"Position of ","color":"yellow"},{"selector":"@s","color":"dark_gray","bold":true},{"text":" is: [X:","color":"yellow","bold":false},{"score":{"name":"#myposx","objective":"preload_chunks"},"color":"red","bold":true},{"text":",Y:","color":"yellow","bold":false},{"score":{"name":"#myposy","objective":"preload_chunks"},"color":"green","bold":true},{"text":",Z:","color":"yellow","bold":false},{"score":{"name":"#myposz","objective":"preload_chunks"},"color":"blue","bold":true},{"text":"]","color":"yellow","bold":false}]
