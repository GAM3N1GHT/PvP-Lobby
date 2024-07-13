scoreboard players set @a battleEnding 0
effect give @a[scores={start=1..}] resistance infinite 255 true
execute as @a[scores={start=1}] run gamemode adventure
execute if score @r Kit matches 1 as @a[scores={start=1}] run function challenge:return_items
execute in challenge:theater as @a[scores={start=1}] run tp 8 52 0
execute as @a[scores={start=1..}] run data modify entity @s Health set value 20
execute as @a[scores={start=1..}] run data modify entity @s foodSaturationLevel set value 0
execute as @a[scores={start=1..}] run data modify entity @s foodLevel set value 20
team empty blue
team empty green
team empty purple
team empty red
team empty spectator
gamemode adventure @a[scores={start=1}]
scoreboard players set @a Kit -1
scoreboard players set @a FFA -1
scoreboard players set @a start 0
execute in challenge:theater run place template challenge:combat_stage -366 32 -16
tellraw @a {"text":"End Battle"}