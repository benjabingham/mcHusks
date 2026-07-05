
execute store result score randomsummon vars run random value 1..300
execute if score ☻ souls matches 3..4 run execute store result score randomsummon vars run random value 1..150
execute if score ☻ souls matches 5..6 run execute store result score randomsummon vars run random value 1..133
execute if score ☻ souls matches 7.. run execute store result score randomsummon vars run random value 1..100
execute store result score dangerlevel vars run scoreboard players get @s totalSouls
scoreboard players operation dangerlevel vars += ☻ souls
#tellraw @s {score:{name:dangerlevel, objective:vars}}

execute if score randomsummon vars matches ..100 run tellraw @s {"text":"You feel a presence.","color":"dark_red","italic":true}


execute if score randomsummon vars matches 1..3 run summon lightning_bolt

execute if score randomsummon vars matches 1..15 run weather thunder

execute if score randomsummon vars matches 12..17 run execute if score dangerlevel vars matches 3.. run function husks:summons/netherize
execute if score randomsummon vars matches 18..23 run execute if score dangerlevel vars matches 3.. run function husks:summons/saplife
execute if score randomsummon vars matches 20..30 run execute if score dangerlevel vars matches 3.. run effect give @s bad_omen 1200
execute if score randomsummon vars matches 28..32 run execute if score dangerlevel vars matches 3.. run summon vex ~ ~ ~ {Tags:["summoned"]}
execute if score randomsummon vars matches 33..35 run execute if score dangerlevel vars matches 4.. run function husks:summons/summonwinddemon
execute if score randomsummon vars matches 36..39 run execute if score dangerlevel vars matches 4.. run function husks:summons/summonspark

execute as @s at @s if score randomsummon vars matches 40..43 run execute if score dangerlevel vars matches 4.. run execute as @e[distance=..100] run function husks:summons/netherizemob
execute as @s at @s if score randomsummon vars matches 40..43 run execute if score dangerlevel vars matches 4.. run playsound ambient.soul_sand_valley.mood ambient @a ~ ~ ~ 10

execute if score randomsummon vars matches 44..49 run execute if score dangerlevel vars matches 4.. run function husks:summons/summonhellhound
execute if score randomsummon vars matches 50..55 run execute if score dangerlevel vars matches 5.. run function husks:summons/summonimps
execute if score randomsummon vars matches 56..61 run execute if score dangerlevel vars matches 6.. run function husks:summons/summonarchers

#gnomes??? (little pillagers)

execute if score randomsummon vars matches 62..70 run execute if score dangerlevel vars matches 5.. run execute if score ☻ souls matches 3.. run function husks:summons/boss/summonmegacreeper
execute if score randomsummon vars matches 70..78 run execute if score dangerlevel vars matches 6.. run execute if score ☻ souls matches 3.. run function husks:summons/boss/summonghastmother
execute if score randomsummon vars matches 79..87 run execute if score dangerlevel vars matches 7.. run execute if score ☻ souls matches 3.. run function husks:summons/boss/summonphantomboss
execute if score randomsummon vars matches 89..100 run execute if score dangerlevel vars matches 8.. run execute if score ☻ souls matches 3.. run function husks:summons/boss/summoncubeboss


#hellhound?

