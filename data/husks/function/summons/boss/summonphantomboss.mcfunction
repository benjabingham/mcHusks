summon phantom ~ -100 ~ {DeathLootTable:"husks:boss/phantomboss",PersistenceRequired:1b,Tags:["phantoms-to-teleport","phantom-boss","summoned"],CustomNameVisible:0b,CustomName:"Night Demon",attributes:[{id:"minecraft:scale",base:5},{id:"max_health",base:60},{id:"follow_range",base:100},{id:"movement_speed",base:1.7},{id:"attack_damage",base:8}]}
summon phantom ~ -100 ~ {PersistenceRequired:1b,Tags:["phantoms-to-teleport"]}
summon phantom ~ -100 ~ {PersistenceRequired:1b,Tags:["phantoms-to-teleport"]}

execute as @a at @s run playsound entity.phantom.death player @a
time set midnight
execute as @e[tag=phantoms-to-teleport] run spreadplayers ~ ~ 0 5 true @s
execute as @e[tag=phantoms-to-teleport] run tp @s ~ ~50 ~
execute at @a as @s run playsound ambient.soul_sand_valley.mood ambient @a ~ ~ ~

execute as @e[tag=phantoms-to-teleport] run tag @s remove phantoms-to-teleport