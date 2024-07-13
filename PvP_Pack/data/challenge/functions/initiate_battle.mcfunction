scoreboard players set @e readyCount 0
execute if score @r Kit matches 1 as @e[scores={start=1..}] run function challenge:store_items
execute if score @r Kit matches 1 run give @a[scores={start=1}] diamond_axe
execute if score @r Kit matches 1 run give @a[scores={start=1}] diamond_sword
execute if score @r Kit matches 1 run give @a[scores={start=1}] diamond_helmet
execute if score @r Kit matches 1 run give @a[scores={start=1}] diamond_chestplate
execute if score @r Kit matches 1 run give @a[scores={start=1}] diamond_leggings
execute if score @r Kit matches 1 run give @a[scores={start=1}] diamond_boots
execute if score @r Kit matches 1 run give @a[scores={start=1}] golden_apple 3
execute if score @r Kit matches 1 run give @a[scores={start=1}] oak_planks 192
execute if score @r Kit matches 1 run give @a[scores={start=1}] shield
execute if score @r Kit matches 1 run give @a[scores={start=1}] cobweb 64
execute if score @r Kit matches 1 run give @a[scores={start=1}] water_bucket
execute if score @r Kit matches 1 run give @a[scores={start=1}] lava_bucket
execute if score @r FFA matches 0 as @a[team=blue] run tp @s -350 49 -11
execute if score @r FFA matches 0 as @a[team=red] run tp @s -350 49 10
execute if score @r FFA matches 0 as @a[team=purple] run tp @s -361 49 0
execute if score @r FFA matches 0 as @a[team=green] run tp @s -340 49 0
execute if score @r FFA matches 1 as @a[scores={start=1..}] run tp @s -350 49 -2
effect clear @a[scores={start=1..}]
execute if score @r FFA matches 1 run effect give @a[scores={start=1..}] resistance 10 255
gamemode survival @a[scores={start=1..}]
execute as @a[scores={start=1..}] run data modify entity @s Health set value 20
execute as @a[scores={start=1..}] run data modify entity @s foodSaturationLevel set value 0
execute as @a[scores={start=1..}] run data modify entity @s foodLevel set value 20
scoreboard players set @a alivePcount 0
execute as @a if score @s start matches 1 run scoreboard players add @a alivePcount 1
scoreboard players set @a battleActive 1