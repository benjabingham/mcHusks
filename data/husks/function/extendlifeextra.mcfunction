scoreboard players remove @s timeAlive 3000000
xp add @s 100
xp add @s 3 levels

execute as @a at @s run playsound block.amethyst_cluster.break
execute as @a at @s run playsound entity.villager.celebrate
execute as @a at @s run playsound entity.villager.celebrate
execute as @a at @s run playsound entity.villager.celebrate

execute as @s[tag=!husk] run say has extended their life considerably!

execute as @s[tag=!husk] run function husks:joyalive
execute as @s[tag=husk] run function husks:joydead

