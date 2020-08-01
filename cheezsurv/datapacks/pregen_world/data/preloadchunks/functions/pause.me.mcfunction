execute if entity @s[tag=paused] run tag @s add unpause
execute if entity @s[tag=!paused] run tellraw @s [{"text":"Pregeneration paused. To resume it, run this command again, standing in the same position you stopped.","color":"dark_gray","bold":true}]
execute if entity @s[tag=!paused] run tag @s add paused

execute if entity @s[tag=unpause] run tag @s remove paused
execute if entity @s[tag=unpause] run tag @s remove unpause
