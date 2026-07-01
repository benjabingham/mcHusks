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
scoreboard objectives add printscore trigger printscore 
scoreboard players enable @a printscore

team add husk
team add living
team modify husk color dark_purple

scoreboard objectives add threw_xp_bottle minecraft.used:minecraft.experience_bottle
