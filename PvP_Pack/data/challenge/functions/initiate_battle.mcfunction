scoreboard players set @e readyCount 0
execute as @e[scores={start=1..}] run function challenge:store_items
execute if score @r Kit matches 1 run function challenge:give_kit
execute if score @r FFA matches 0 as @a[team=blue] run tp @s -350 49 -11
execute if score @r FFA matches 0 as @a[team=red] run tp @s -350 49 10
execute if score @r FFA matches 0 as @a[team=purple] run tp @s -361 49 0
execute if score @r FFA matches 0 as @a[team=green] run tp @s -340 49 0
execute if score @r FFA matches 1 as @a[scores={start=1..}] run tp @s -350 49 -2
effect clear @a[scores={start=1..}]
execute if score @r FFA matches 1 run effect give @a[scores={start=1..}] resistance 10 255
gamemode survival @a[scores={start=1..}]
execute as @a[scores={start=1}] run effect give @s regeneration 1 255 true
execute as @a[scores={start=1}] run effect give @s saturation 1 255 true
scoreboard players set @a alivePcount 0
execute as @a if score @s start matches 1 run scoreboard players add @a alivePcount 1
scoreboard players set @a battleActive 1