#THIS VERSION IS ONLY USED BY THE CUBE BOSS, AND ALSO SUMMONS A SPARK if nearest player is between 4 and 50 blocks away

execute at @s as @p[distance=4..50] run function husks:summons/summonspark

execute as @s at @a run playsound ambient.basalt_deltas.mood weather @a ~ ~ ~ 100
execute as @s at @s run playsound item.firecharge.use weather @a ~ ~ ~ 5

#this is pretty weird but it works
#replace water nearby with dead coral, then scatter a bunch of invisible magma cubes around the player
#(spreadplayers wont spread onto water - thats what the dead coral is for.)
#each cube transforms the area immediately around it, with coral becoming lava
#then, untransformed coral is turned back into water.
#finally, if the player is in lava, all the lava is turned into fire.

execute as @s at @s run execute as @s at @s run fill ~-7 ~-10 ~-7 ~7 ~10 ~7 dead_brain_coral_block replace water

summon magma_cube ~ -100 ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["netherize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["netherize-cubes","anchor-cube"]}


effect give @e[tag=netherize-cubes] invisibility infinite 0 true
execute as @e[tag=anchor-cube] at @s run spreadplayers ~ ~ 0 1 false @s
execute as @e[tag=netherize-cubes,tag=!anchor-cube] at @s run spreadplayers ~ ~ 1 5 false @s
execute at @e[tag=anchor-cube] run execute as @e[tag=netherize-cubes,distance=..5] at @s run function husks:summons/boss/netherpatchshallow
execute as @s at @s run function husks:summons/netherpatch
execute as @e[tag=netherize-cubes] run tp ~ -100 ~

execute as @s at @s run execute as @s at @s run fill ~-7 ~-10 ~-7 ~7 ~10 ~7 water replace dead_brain_coral_block


execute as @s[tag=!cube-boss] at @s if block ~ ~ ~ lava run execute as @s at @s run fill ~-7 ~-10 ~-7 ~7 ~10 ~7 fire replace lava

