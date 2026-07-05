summon creeper ~ -100 ~ {DeathLootTable:"husks:boss/megacreeper", ExplosionRadius:6b,PersistenceRequired:1b,Tags:["creepers-to-teleport","creeper-boss","summoned"],CustomNameVisible:0b,CustomName:"Propagator",attributes:[{id:"minecraft:scale",base:5},{id:"max_health",base:100},{id:"minecraft:jump_strength",base:1},{id:"minecraft:fall_damage_multiplier",base:0},{id:"follow_range",base:100},{id:"movement_speed",base:0.30}],Team:HideNames}
execute as @a at @s run playsound entity.creeper.primed player @a

execute as @e[tag=creepers-to-teleport] run effect give @s fire_resistance 1000 0 true
execute as @e[tag=creepers-to-teleport] run spreadplayers ~ ~ 0 75 true @s
execute as @e[tag=creepers-to-teleport] run function husks:summons/scatterfromplayer
execute as @e[tag=creepers-to-teleport] at @s run summon lightning_bolt
execute at @e[tag=creepers-to-teleport] as @s run playsound ambient.soul_sand_valley.mood ambient @a ~ ~ ~ 20

execute as @e[tag=creepers-to-teleport] run tag @s remove creepers-to-teleport

