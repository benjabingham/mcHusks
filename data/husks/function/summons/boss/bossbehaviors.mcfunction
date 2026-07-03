#execute as @e[tag=phantom-boss] run time set midnight
execute as @e[tag=phantom-boss] if score timeOfDay vars matches 0..13000 run time set midnight
execute as @e[tag=phantom-boss] run time add -1
execute as @e[tag=phantom-boss] at @s run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace torch

#bosses use abilities every 1-3 minutes
execute store result score abilityTick vars run random value 1..3
scoreboard players operation bossabilities vars += abilityTick vars
execute as @e[tag=phantom-boss] at @s run execute if score bossabilities vars matches 3597.. run summon phantom

execute as @e[tag=creeper-boss] at @s run execute if score bossabilities vars matches 3595.. run summon creeper ~ ~ ~ {ExplosionRadius:2b,attributes:[{id:"minecraft:scale",base:0.5},{id:"max_health",base:7},{id:"movement_speed",base:0.4}]}
execute as @e[tag=creeper-boss] at @s run execute if score bossabilities vars matches 1800..1805 run summon creeper ~ ~ ~ {ExplosionRadius:2b,attributes:[{id:"minecraft:scale",base:0.5},{id:"max_health",base:7},{id:"movement_speed",base:0.4}]}

execute as @e[tag=creeper-boss] at @s run execute if score bossabilities vars matches 3590.. run playsound entity.creeper.primed hostile @a ~ ~ ~ 3

execute as @e[tag=ghast-boss] at @s run execute if score bossabilities vars matches 3580.. run summon ghast ~ ~ ~ {attributes:[{id:"minecraft:scale",base:0.5},{id:"max_health",base:3}]}
execute as @e[tag=ghast-boss] at @s run execute if score bossabilities vars matches 3580.. run playsound entity.ghast.hurt hostile @a ~ ~ ~ 10

execute as @e[tag=cube-boss] at @s run execute if score bossabilities vars matches 1..5 run place feature delta
execute as @e[tag=cube-boss,limit=2] at @s run execute if score bossabilities vars matches 1..5 run function husks:summons/netherize
execute as @e[tag=cube-boss,limit=2] at @s run execute if score bossabilities vars matches 1201..1205 run function husks:summons/netherize
execute as @e[tag=cube-boss] at @s run execute if score bossabilities vars matches 1600..1605 run place feature delta
execute as @e[tag=cube-boss,limit=2] at @s run execute if score bossabilities vars matches 2400..2405 run function husks:summons/netherize
execute as @e[tag=cube-boss] at @s run execute as @e[type=pig,distance=..8] at @s run summon zombified_piglin
execute as @e[tag=cube-boss] at @s run execute as @e[type=pig,distance=..8] at @s run tp ~ -100 ~



execute if score bossabilities vars matches 3600.. run scoreboard players set bossabilities vars 0