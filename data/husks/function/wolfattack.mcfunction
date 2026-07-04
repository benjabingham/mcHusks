
execute at @p[tag=husk] as @e[type=wolf,distance=..4] run tag @s add aggressible
execute at @p[tag=husk] as @e[type=polar_bear,distance=..25] run tag @s add aggressible
execute at @p[tag=husk] as @e[type=panda,distance=..2] run tag @s add aggressible
#execute at @p[tag=husk] as @e[type=bee,distance=..1] run tag @s add aggressible
execute at @p[tag=husk] as @e[type=trader_llama,distance=..3] run tag @s add aggressible
execute at @p[tag=husk] as @e[type=llama,distance=..3] run tag @s add aggressible
#execute at @p[tag=husk] as @e[type=dolphin,distance=..5] run tag @s add aggressible


execute as @e[tag=aggressible] if data entity @s Owner run tag @s add tamed

execute at @a[tag=husk] as @e[tag=aggressible,tag=!tamed] run attribute @s knockback_resistance modifier add kbr 1 add_value
execute at @a[tag=husk] as @e[tag=aggressible,tag=!tamed] run damage @s 0 player_attack by @p
execute at @a[tag=husk] as @e[tag=aggressible,tag=!tamed] run attribute @s knockback_resistance modifier remove kbr

execute as @e[tag=aggressible,tag=!tamed] at @p[tag=husk] run playsound entity.sniffer.scenting player @a

tag @e[tag=aggressible] remove aggressible

scoreboard players set wolfattacktimer vars 0