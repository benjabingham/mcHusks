scoreboard objectives add huskDeaths deathCount

scoreboard objectives add deaths deathCount

scoreboard objectives add souls dummy
scoreboard players add ☻ souls 0
scoreboard objectives setdisplay sidebar souls

scoreboard objectives add timeAlive dummy timeAlive
scoreboard objectives add lifePercent dummy lifePercent
scoreboard objectives setdisplay list lifePercent
scoreboard objectives add timeAliveTrue dummy timeAliveTrue
scoreboard objectives add currentHealth health currentHealth

scoreboard objectives add vars dummy vars
scoreboard objectives add printLife trigger printLife 
scoreboard players enable @a[team=living] printLife

team add husk
team add living
team modify husk color dark_purple

