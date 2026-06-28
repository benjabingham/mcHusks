scoreboard players remove @s timeAlive 1000000
xp add @s 25
execute as @a at @s run playsound block.amethyst_cluster.break
execute as @s at @s run playsound entity.villager.celebrate

execute as @s[tag=!husk] run say has extended their life!

function husks:joy