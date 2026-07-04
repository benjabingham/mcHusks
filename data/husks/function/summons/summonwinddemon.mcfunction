summon breeze ~ ~ ~ {Tags:["breeze-to-teleport","summoned"],CustomName:"Wind Demon",attributes:[{id:"max_health",base:20}],Team:HideNames}
effect give @e[tag=breeze-to-teleport] invisibility infinite
execute at @a as @s run playsound ambient.soul_sand_valley.mood ambient @a ~ ~ ~

tag @e[tag=breeze-to-teleport] remove breeze-to-teleport