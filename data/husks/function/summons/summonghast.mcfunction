summon ghast ~ ~ ~ {PersistenceRequired:1b,Tags:["ghasts-to-teleport"]}
execute as @e[tag=ghasts-to-teleport] run tp @s ~ 150 ~
execute at @e[tag=ghasts-to-teleport] as @s run playsound ambient.soul_sand_valley.mood ambient @a ~ ~ ~ 20
#playsound entity.ghast.ambient ambient @a
execute as @e[tag=ghasts-to-teleport] run tag @s remove ghasts-to-teleport