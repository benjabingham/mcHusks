execute as @s at @a run playsound block.portal.trigger weather @a ~ ~ ~ 100
execute as @s at @s run playsound entity.player.teleport weather @a ~ ~ ~ 5

summon magma_cube ~ -100 ~ {Tags:["enderize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["enderize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["enderize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["enderize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["enderize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["enderize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["enderize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["enderize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["enderize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["enderize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["enderize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["enderize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["enderize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["enderize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["enderize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["enderize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["enderize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["enderize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["enderize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["enderize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["enderize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["enderize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["enderize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["enderize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["enderize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["enderize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["enderize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["enderize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["enderize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["enderize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["enderize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["enderize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["enderize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["enderize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["enderize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["enderize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["enderize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["enderize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["enderize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["enderize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["enderize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["enderize-cubes"]}
summon magma_cube ~ -100 ~ {Tags:["enderize-cubes","anchor-cube"]}


effect give @e[tag=enderize-cubes] invisibility infinite 0 true
execute as @e[tag=anchor-cube] at @s run spreadplayers ~ ~ 0 1 false @s
execute as @e[tag=enderize-cubes,tag=!anchor-cube] at @s run spreadplayers ~ ~ 2 8 false @s
execute at @e[tag=anchor-cube] run execute as @e[tag=enderize-cubes,distance=..8] at @s run function husks:summons/endpatch
execute as @e[tag=enderize-cubes] run tp ~ -100 ~
