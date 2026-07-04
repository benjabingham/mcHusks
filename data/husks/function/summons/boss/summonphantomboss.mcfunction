summon phantom ~ -100 ~ {DeathLootTable:"husks:boss/phantomboss",PersistenceRequired:1b,Tags:["phantoms-to-teleport","phantom-boss","summoned" ],CustomNameVisible:0b,CustomName:"Night Demon",attributes:[{id:"minecraft:scale",base:5},{id:"max_health",base:80},{id:"follow_range",base:100},{id:"movement_speed",base:1.7},{id:"attack_damage",base:8}],Team:HideNames}
summon phantom ~ -100 ~ {PersistenceRequired:1b,Tags:["phantoms-to-teleport"]}
summon phantom ~ -100 ~ {PersistenceRequired:1b,Tags:["phantoms-to-teleport"]}

execute as @a at @s run playsound entity.phantom.ambient player @a
execute as @a at @s run playsound ambient.soul_sand_valley.mood player @a

time set midnight

function husks:summons/teleport/teleportphantoms