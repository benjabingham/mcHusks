execute as @e[tag=phantoms-to-teleport] run spreadplayers ~ ~ 0 5 true @s
execute as @e[tag=phantoms-to-teleport] run tp @s ~ ~30 ~
execute as @e[tag=phantoms-to-teleport] at @s run playsound entity.phantom.ambient ambient @a ~ ~ ~ 100
execute as @e[tag=phantoms-to-teleport] at @s run playsound entity.phantom.swoop ambient @a ~ ~ ~ 100

execute as @e[tag=phantoms-to-teleport] run tag @s remove phantoms-to-teleport