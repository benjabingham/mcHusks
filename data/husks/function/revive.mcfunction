scoreboard players remove ☻ souls 1
scoreboard players set @s huskDeaths 0
spreadplayers 0 0 20 20 false @s[tag=husk]
tag @s remove husk
tag @s add living
team leave @s

gamemode survival @s

say has consumed a soul.

execute as @a at @s run playsound block.bell.use

