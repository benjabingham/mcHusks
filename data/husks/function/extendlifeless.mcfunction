scoreboard players remove @s timeAlive 400000
xp add @s 20
execute as @a at @s run playsound block.amethyst_cluster.break
execute as @s at @s run playsound entity.villager.celebrate

execute as @s[tag=!husk] run say has extended their life a small amount!

function husks:joy