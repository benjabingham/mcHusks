execute if score @s huskDeaths matches ..2 run summon wither_skeleton ~ -100 ~ {CanPickUpLoot:1b, PersistenceRequired:1b, Team:"husk",CustomNameVisible:1b,CustomName:"Lost Husk",attributes:[{id:"minecraft:scale",base:0.74},{id:"minecraft:name_tag_distance",base:100},{id:"max_health",base:10}]}
execute if score @s huskDeaths matches ..2 run execute as @s at @s run playsound entity.wither_skeleton.death player @a

execute if score @s huskDeaths matches 3.. run summon zombie ~ ~ ~ {CanPickUpLoot:1b, PersistenceRequired:1b, Team:"husk",CustomNameVisible:1b,CustomName:"Lost Husk",attributes:[{id:"minecraft:name_tag_distance",base:100}]}
execute if score @s huskDeaths matches 3.. run execute as @s at @s run playsound entity.zombie.death player @a