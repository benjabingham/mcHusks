scoreboard players enable @a printLife
execute as @a[team=living] if score @s printLife matches 1.. run tellraw @s ["", {"text": "You have "}, {"score": {"name": "*", "objective": "lifePercent"}}, {"text": "% of your life remaining."}]
execute as @a if score @s printLife matches 1.. run scoreboard players set @s printLife 0