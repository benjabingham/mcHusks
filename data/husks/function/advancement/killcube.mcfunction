scoreboard players set cubesleft vars 0
execute as @e[tag=cube-boss] run scoreboard players add cubesleft vars 1

execute if score cubesleft vars matches 0 run advancement grant @s only husks/kill_cube_boss
advancement revoke @s only hidden/kill_cube