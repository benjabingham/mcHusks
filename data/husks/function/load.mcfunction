gamerule send_command_feedback true


scoreboard objectives add huskDeaths deathCount

#deaths is used for husk detection, and is reset on RESPAWN
scoreboard objectives add deaths deathCount
scoreboard objectives add trueDeaths deathCount trueDeaths
scoreboard objectives add ondeath deathCount

scoreboard objectives add souls dummy
scoreboard objectives add totalSouls dummy
scoreboard objectives add soulsUsed dummy
scoreboard players add ☻ souls 0
scoreboard objectives setdisplay sidebar souls

scoreboard objectives add timeAlive dummy timeAlive
scoreboard objectives add lifePercent dummy lifePercent
scoreboard objectives setdisplay list lifePercent
scoreboard objectives add timeAliveTrue dummy timeAliveTrue
scoreboard objectives add currentHealth health currentHealth
scoreboard objectives add longestLife dummy
scoreboard objectives modify longestLife displayname "Longest Lives"

scoreboard objectives add temp dummy temp
scoreboard objectives add vars dummy vars
scoreboard players set ticksperminute vars 1200
scoreboard players set maxTimeAlive vars 8400000

team add HideNames
team modify HideNames nametagVisibility never

scoreboard objectives add firstload dummy

scoreboard objectives add printscore trigger printscore 
scoreboard players enable @a printscore
scoreboard objectives add help trigger help 
scoreboard players enable @a help
scoreboard objectives add help-souls trigger help-souls 
scoreboard players enable @a help-souls
scoreboard objectives add help-life trigger help-life
scoreboard players enable @a help-life
scoreboard objectives add help-husks trigger help-husks
scoreboard players enable @a help-husks

team add husk
team add living
team modify husk color dark_purple

scoreboard objectives add threw_xp_bottle minecraft.used:minecraft.experience_bottle
