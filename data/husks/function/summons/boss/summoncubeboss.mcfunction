summon magma_cube ~ -100 ~ {Size:8, DeathLootTable:"husks:boss/cubeboss",PersistenceRequired:1b,Tags:["cubes-to-teleport","cube-boss","summoned"],CustomNameVisible:0b,CustomName:"Corrupting Cube",attributes:[{id:"max_health",base:60}]}
execute as @a at @s run playsound ambient.basalt_deltas.mood player @a

execute as @e[tag=cubes-to-teleport] run spreadplayers ~ ~ 0 75 true @s
execute as @e[tag=cubes-to-teleport] run function husks:summons/scatterfromplayer
execute as @e[tag=cubes-to-teleport] at @s run summon lightning_bolt
execute as @e[tag=cubes-to-teleport] at @s run function husks:summons/netherize
execute at @e[tag=cubes-to-teleport] as @s run playsound ambient.soul_sand_valley.mood ambient @a ~ ~ ~ 20

execute as @e[tag=cubes-to-teleport] run tag @s remove cubes-to-teleport

