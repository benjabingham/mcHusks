scoreboard players remove @s timeAlive 800000
xp add @s 20
xp add @s 1 levels
execute as @a at @s run playsound block.amethyst_cluster.break
execute as @s at @s run playsound entity.villager.celebrate

#execute as @s[tag=!husk] run say has extended their life!

#execute as @s[tag=!husk] run function husks:joyalive
execute as @s[tag=husk] run function husks:joydead