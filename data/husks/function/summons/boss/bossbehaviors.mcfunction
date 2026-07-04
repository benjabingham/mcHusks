#execute as @e[tag=phantom-boss] run time set midnight
execute as @e[tag=phantom-boss] if score timeOfDay vars matches 0..13000 run time set midnight
execute as @e[tag=phantom-boss] run time add -1
execute as @e[tag=phantom-boss] at @s run fill ~-10 ~-10 ~-10 ~10 ~10 ~10 air replace torch

#bosses use abilities every 1-3 minutes
execute store result score abilityTick vars run random value 1..3
scoreboard players operation bossabilities vars += abilityTick vars
execute as @e[tag=phantom-boss] at @s run execute if score bossabilities vars matches 3597.. run summon phantom
execute at @p[distance=100..] as @e[tag=phantom-boss] run execute if score bossabilities vars matches 1..3 run tag @e[tag=phantom-boss] add phantoms-to-teleport
execute as @e[tag=phantom-boss] at @s run execute if score bossabilities vars matches 1..3 run execute as @p[distance=100..] at @s run function husks:summons/teleport/teleportphantoms

execute as @e[tag=creeper-boss] at @s run execute if score bossabilities vars matches 3595.. run summon creeper ~ ~ ~ {ExplosionRadius:2b,attributes:[{id:"minecraft:scale",base:0.5},{id:"max_health",base:7},{id:"movement_speed",base:0.4}]}
execute as @e[tag=creeper-boss] at @s run execute if score bossabilities vars matches 1800..1805 run summon creeper ~ ~ ~ {ExplosionRadius:2b,attributes:[{id:"minecraft:scale",base:0.5},{id:"max_health",base:7},{id:"movement_speed",base:0.4}]}

execute as @e[tag=creeper-boss] at @s run execute if score bossabilities vars matches 3590.. run playsound entity.creeper.primed hostile @a ~ ~ ~ 3

execute as @e[tag=ghast-boss] at @s run execute if score bossabilities vars matches 3580.. run summon ghast ~ ~ ~ {attributes:[{id:"minecraft:scale",base:0.5},{id:"max_health",base:3}]}
execute as @e[tag=ghast-boss] at @s run execute if score bossabilities vars matches 3580.. run playsound entity.ghast.hurt hostile @a ~ ~ ~ 10

execute as @e[tag=cube-boss,limit=1] at @s run execute if score bossabilities vars matches 400 run function husks:summons/netherize
execute as @e[tag=cube-boss,limit=1] at @s run execute if score bossabilities vars matches 800 run function husks:summons/netherize
execute as @e[tag=cube-boss,limit=1] at @s run execute if score bossabilities vars matches 1200 run function husks:summons/netherize
execute as @e[tag=cube-boss,limit=1] at @s run execute if score bossabilities vars matches 1600 run function husks:summons/netherize
execute as @e[tag=cube-boss,limit=1] at @s run execute if score bossabilities vars matches 2000 run function husks:summons/netherize
execute as @e[tag=cube-boss,limit=1] at @s run execute if score bossabilities vars matches 3600.. run function husks:summons/netherize

execute as @e[tag=cube-boss] at @s run execute if score bossabilities vars matches 1..5 run place feature delta
execute as @e[tag=cube-boss] at @s run execute if score bossabilities vars matches 3000..3005 run place feature delta
execute as @e[tag=cube-boss] at @s run execute as @e[type=pig,distance=..8] at @s run summon zombified_piglin
execute as @e[tag=cube-boss] at @s run execute as @e[type=pig,distance=..8] at @s run tp ~ -100 ~
execute as @e[tag=cube-boss] at @s run execute as @e[type=zombie,distance=..8] at @s run summon zombified_piglin
execute as @e[tag=cube-boss] at @s run execute as @e[type=zombie,distance=..8] at @s run tp ~ -100 ~
execute as @e[tag=cube-boss] at @s run execute as @e[type=skeleton,distance=..8] at @s run summon wither_skeleton
execute as @e[tag=cube-boss] at @s run execute as @e[type=skeleton,distance=..8] at @s run tp ~ -100 ~
execute as @e[tag=cube-boss] at @s run execute as @e[type=villager,distance=..8] at @s run summon piglin
execute as @e[tag=cube-boss] at @s run execute as @e[type=villager,distance=..8] at @s run tp ~ -100 ~
execute as @e[tag=cube-boss] at @s run execute as @e[type=slime,distance=..8] at @s run summon magma_cube
execute as @e[tag=cube-boss] at @s run execute as @e[type=slime,distance=..8] at @s run tp ~ -100 ~
execute as @e[tag=cube-boss] at @s run execute as @e[type=sulfur_cube,distance=..8] at @s run summon magma_cube
execute as @e[tag=cube-boss] at @s run execute as @e[type=sulfur_cube,distance=..8] at @s run tp ~ -100 ~
execute as @a at @s run execute if score bossabilities vars matches 2400..2403 run execute as @e[tag=cube-boss,distance=6..50,limit=1] at @s run function husks:summons/summonspark

execute if score bossabilities vars matches 3400..3402 run execute as @e[tag=kerberos,tag=!tamed] at @s run playsound entity.wolf.growl ambient @a ~ ~ ~ 2
execute if score bossabilities vars matches 3400..3402 run execute as @e[tag=kerberos,tag=!tamed] at @s run playsound item.firecharge.use ambient @a ~ ~ ~ 2
execute if score bossabilities vars matches 3400..3402 run execute as @e[tag=kerberos] at @s run fill ~ ~ ~ ~ ~ ~ fire
execute if score bossabilities vars matches 3500..3502 run execute as @e[tag=kerberos,tag=!tamed] at @s run playsound entity.wolf.growl ambient @a ~ ~ ~ 2
execute if score bossabilities vars matches 3500..3502 run execute as @e[tag=kerberos,tag=!tamed] at @s run playsound item.firecharge.use ambient @a ~ ~ ~ 2
execute if score bossabilities vars matches 3500..3502 run execute as @e[tag=kerberos] at @s run fill ~ ~ ~ ~ ~ ~ fire


execute if score bossabilities vars matches 3600.. run execute as @e[tag=kerberos,tag=!tamed] run data merge entity @s {Silent:1b}
execute if score bossabilities vars matches 3600.. run execute as @e[tag=kerberos,tag=!tamed] if data entity @s Owner run tag @s add tamed
execute if score bossabilities vars matches 3600.. run execute as @e[tag=kerberos,tag=!tamed] run attribute @s knockback_resistance modifier add kbr 1 add_value
execute if score bossabilities vars matches 3600.. run execute as @e[tag=kerberos,tag=!tamed] at @s run damage @s 0 player_attack by @p
execute if score bossabilities vars matches 3600.. run execute as @e[tag=kerberos,tag=!tamed] run attribute @s knockback_resistance modifier remove kbr
execute if score bossabilities vars matches 3600.. run execute as @e[tag=kerberos] at @s run fill ~ ~ ~ ~ ~ ~ fire
execute if score bossabilities vars matches 3600.. run execute as @e[tag=kerberos,tag=!tamed] run data merge entity @s {Silent:0b}
execute if score bossabilities vars matches 3600.. run execute as @e[tag=kerberos,tag=!tamed] at @s run playsound entity.wolf.growl ambient @a ~ ~ ~ 2
execute if score bossabilities vars matches 3600.. run execute as @e[tag=kerberos,tag=!tamed] at @s run playsound item.firecharge.use ambient @a ~ ~ ~ 2


execute if score bossabilities vars matches 3600.. run scoreboard players set bossabilities vars 0