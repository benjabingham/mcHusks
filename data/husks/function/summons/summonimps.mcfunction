execute if score numimps vars matches ..0 run execute store result score numimps vars run random value 1..3

summon wither_skeleton ~ ~ ~ {CustomNameVisible:0b,CustomName:"Wither Imp",Tags:["summoned"],attributes:[{id:"minecraft:scale",base:0.5},{id:"max_health",base:3},{id:"attack_damage",base:1}],Team:HideNames}
#tellraw @a ["", {"text": "Your score is: "}, {"score": {"name": "numimps", "objective": "vars"}}]
scoreboard players remove numimps vars 1
execute as @s at @s run playsound entity.witch.celebrate player @a
execute if score numimps vars matches 1.. run function husks:summons/summonimps

