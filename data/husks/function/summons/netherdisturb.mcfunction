
execute store result score randomsummon vars run random value 1..100
execute store result score dangerlevel vars run scoreboard players get @s totalSouls
scoreboard players operation dangerlevel vars += ☻ souls
#tellraw @s {score:{name:dangerlevel, objective:vars}}

execute if score randomsummon vars matches ..20 run tellraw @s {"text":"You feel a presence.","color":"dark_red","italic":true}
execute if score randomsummon vars matches 21..70 run tellraw @s {"text":"Something heard you.","color":"dark_red","italic":true}
execute if score randomsummon vars matches 71..73 run tellraw @s {"text":"Something head you.","color":"dark_purple","italic":true}


execute if score randomsummon vars matches 0..10 run execute if score dangerlevel vars matches 3.. run function husks:summons/saplife
execute if score randomsummon vars matches 5..20 run execute if score dangerlevel vars matches 3.. run effect give @s bad_omen 1200
execute if score randomsummon vars matches 21..25 run execute if score dangerlevel vars matches 3.. run summon vex ~ ~ ~ {Tags:["summoned"]}
execute if score randomsummon vars matches 26..30 run execute if score dangerlevel vars matches 4.. run function husks:summons/summonwinddemon
execute if score randomsummon vars matches 31..40 run execute if score dangerlevel vars matches 4.. run function husks:summons/summonhellhound

#gnomes??? (little pillagers)

execute if score randomsummon vars matches 41..50 run execute if score dangerlevel vars matches 6.. run execute if score ☻ souls matches 3.. run function husks:summons/boss/summonghastmother
execute if score randomsummon vars matches 51..60 run execute if score dangerlevel vars matches 8.. run execute if score ☻ souls matches 4.. run summon warden ~ ~ ~ {Tags:["summoned"]}
execute if score randomsummon vars matches 61..70 run execute if score dangerlevel vars matches 10.. run execute if score ☻ souls matches 5.. run summon wither ~ ~ ~ {Invul:1000,Tags:["summoned"]}

execute if score randomsummon vars matches 71..73 run execute if score dangerlevel vars matches 5.. run execute if score ☻ souls matches 2.. run function husks:summons/enderize

#hellhound?

