execute as @a at @s run summon wolf ~ -100 ~ {variant:"black",PersistenceRequired:1b,Tags:["dogs-to-teleport","summoned","kerberos"],CustomName:"Kerberos",attributes:[{id:"minecraft:scale",base:1.5},{id:"attack_damage",base:10},{id:"follow_range",base:100}]}

effect give @e[tag=dogs-to-teleport] fire_resistance infinite
effect give @e[tag=dogs-to-teleport] resistance infinite 3

execute as @e[tag=dogs-to-teleport] run spreadplayers ~ ~ 0 50 true @s
execute as @e[tag=dogs-to-teleport] at @s run fill ~ ~ ~ ~ ~ ~ fire
execute as @e[tag=dogs-to-teleport] at @s run playsound ambient.soul_sand_valley.mood ambient @a ~ ~ ~ 20
execute as @e[tag=dogs-to-teleport] at @s run playsound entity.wolf.growl ambient @a ~ ~ ~ 20
execute as @e[tag=kerberos,tag=!tamed] at @s run playsound item.firecharge.use ambient @a ~ ~ ~ 20

execute if score bossabilities vars matches 3600.. run execute as @e[tag=kerberos,tag=!tamed] run data merge entity @s {Silent:1b}
execute as @e[tag=kerberos,tag=!tamed] run attribute @s knockback_resistance modifier add kbr 1 add_value
execute as @e[tag=kerberos,tag=!tamed] at @s run damage @s 0 player_attack by @p
execute as @e[tag=kerberos,tag=!tamed] run attribute @s knockback_resistance modifier remove kbr
execute if score bossabilities vars matches 3600.. run execute as @e[tag=kerberos,tag=!tamed] run data merge entity @s {Silent:0b}

execute as @e[tag=dogs-to-teleport] run tag @s remove dogs-to-teleport