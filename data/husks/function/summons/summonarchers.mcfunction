execute as @a at @s run summon wither_skeleton ~ -100 ~ {DeathLootTable:"husks:witherarcher", PersistenceRequired:1b,Tags:["archers-to-teleport","summoned"], equipment:{mainhand:{id:"minecraft:bow",count:1}},CustomNameVisible:0b,CustomName:"Wither Imp",attributes:[{id:"minecraft:scale",base:0.5},{id:"max_health",base:11}]}
execute as @a at @s run playsound entity.witch.celebrate player @a

execute as @e[tag=archers-to-teleport] run spreadplayers ~ ~ 0 50 true @s
execute as @e[tag=archers-to-teleport] at @s run summon lightning_bolt
execute at @e[tag=archers-to-teleport] as @s run playsound ambient.soul_sand_valley.mood ambient @a ~ ~ ~ 20
#playsound entity.ghast.ambient ambient @a
execute as @e[tag=archers-to-teleport] run tag @s remove archers-to-teleport