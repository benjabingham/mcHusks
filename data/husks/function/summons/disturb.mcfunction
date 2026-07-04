
execute store result score randomsummon vars run random value 1..15
execute store result score dangerlevel vars run scoreboard players get @s totalSouls
scoreboard players operation dangerlevel vars += ☻ souls
scoreboard players set bosses vars 0
execute if score ☻ souls matches 3.. run scoreboard players set bosses vars 1
#tellraw @s {score:{name:dangerlevel, objective:vars}}

execute if score randomsummon vars matches ..12 run tellraw @s {"text":"You feel a presence.","color":"dark_red","italic":true}


execute if score randomsummon vars matches 1 run summon lightning_bolt
execute if score randomsummon vars matches 1..2 run weather thunder
#decrease life score
execute if score randomsummon vars matches 3 run execute if score dangerlevel vars matches 3.. run function husks:summons/netherize
execute if score randomsummon vars matches 4 run execute if score dangerlevel vars matches 3.. run function husks:summons/saplife
execute if score randomsummon vars matches 5 run execute if score dangerlevel vars matches 3.. run summon vex ~ ~ ~ {Tags:["summoned"]}
execute if score randomsummon vars matches 4 run execute if score dangerlevel vars matches 4.. run function husks:summons/summonwinddemon
execute if score randomsummon vars matches 5 run execute if score dangerlevel vars matches 4.. run function husks:summons/summonspark
execute if score randomsummon vars matches 6 run execute if score dangerlevel vars matches 4.. run function husks:summons/summonhellhound
execute if score randomsummon vars matches 7 run execute if score dangerlevel vars matches 5.. run function husks:summons/summonimps
execute if score randomsummon vars matches 8 run execute if score dangerlevel vars matches 6.. run function husks:summons/summonarchers

#gnomes??? (little pillagers)

execute if score randomsummon vars matches 9 run execute if score dangerlevel vars matches 5.. run execute if score ☻ souls matches 3.. run function husks:summons/boss/summonmegacreeper
execute if score randomsummon vars matches 10 run execute if score dangerlevel vars matches 6.. run execute if score ☻ souls matches 3.. run function husks:summons/boss/summonghastmother
execute if score randomsummon vars matches 11 run execute if score dangerlevel vars matches 7.. run execute if score ☻ souls matches 3.. run function husks:summons/boss/summonphantomboss
execute if score randomsummon vars matches 12 run execute if score dangerlevel vars matches 8.. run execute if score ☻ souls matches 3.. run function husks:summons/boss/summoncubeboss


#hellhound?

