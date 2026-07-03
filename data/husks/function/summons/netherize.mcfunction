execute as @s at @a run playsound ambient.basalt_deltas.mood weather @a
execute as @s at @s run playsound item.firecharge.use weather @a ~ ~ ~ 3000

#execute as @s at @s run fill ~-6 ~-33 ~-9 ~6 ~33 ~9 lava replace water strict
#execute as @s at @s run fill ~-9 ~-33 ~-6 ~9 ~33 ~6 lava replace water strict
#execute as @s at @s run fill ~-8 ~-33 ~-8 ~8 ~33 ~8 lava replace water strict
#execute as @s at @s if block ~ ~ ~ lava run execute as @s at @s run fill ~-10 ~-33 ~-10 ~10 ~33 ~10 fire replace lava



summon magma_cube ~ ~ ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ ~ ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ ~ ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ ~ ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ ~ ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ ~ ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ ~ ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ ~ ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ ~ ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ ~ ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ ~ ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ ~ ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ ~ ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ ~ ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ ~ ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ ~ ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ ~ ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ ~ ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ ~ ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ ~ ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ ~ ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ ~ ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ ~ ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ ~ ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ ~ ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ ~ ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ ~ ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ ~ ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ ~ ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ ~ ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ ~ ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ ~ ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ ~ ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ ~ ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ ~ ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ ~ ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ ~ ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ ~ ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ ~ ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ ~ ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ ~ ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ ~ ~ {Tags:["netherize-cubes"]}

execute as @s at @s run execute as @s at @s run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 dead_brain_coral_block replace water

effect give @e[tag=netherize-cubes] invisibility infinite 0 true
execute as @e[tag=netherize-cubes] at @s run spreadplayers ~ ~ 2 8 false @s
execute at @s run execute as @e[tag=netherize-cubes,distance=..8] at @s run function husks:summons/netherpatch
execute as @e[tag=netherize-cubes] run tp ~ -100 ~

execute as @s at @s run execute as @s at @s run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 water replace dead_brain_coral_block


execute as @s at @s if block ~ ~ ~ lava run execute as @s at @s run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 fire replace lava

