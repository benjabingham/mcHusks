say has earned a soul.
scoreboard players add ☻ souls 1
scoreboard players add @s totalSouls 1

execute as @a at @s run playsound block.bell.resonate

execute if dimension minecraft:overworld as @s[distance=0..] if score @s totalSouls matches 2.. run function husks:summons/disturb

execute if dimension minecraft:the_nether as @s[distance=0..] if score @s totalSouls matches 2.. run execute if score ☻ souls matches 2.. run function husks:summons/netherdisturb
execute if dimension minecraft:the_end as @s[distance=0..] if score @s totalSouls matches 2.. run execute if score ☻ souls matches 2.. run tellraw @s {"text":"Nobody can hear you here.","color":"dark_purple","italic":true}


#execute if score @s totalSouls matches 1 run give @s written_book[written_book_content={title:"Recognition of Exchange",author:"The One Who Listens",generation:0,pages:[[{"text":"Mortal,\n\nYour offering has not gone unnoticed.\n\nIn return, I have let free one soul.\n\nOne completed offering for one freed soul.\n\nBut beware. There are others who listen.","color":"dark_red","italic":true}]]}] 1