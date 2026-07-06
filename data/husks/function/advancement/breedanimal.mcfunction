scoreboard players add @s animals_bred 1
execute if score @s animals_bred matches 25.. run advancement grant @s only husbandry/breed_animals
execute if score @s animals_bred matches 100.. run advancement grant @s only husbandry/breed_animals_2
execute if score @s animals_bred matches 250.. run advancement grant @s only husbandry/breed_animals_3

advancement revoke @s only hidden/breed_animal