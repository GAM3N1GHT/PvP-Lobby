scoreboard players set @a battleEnding 0
effect clear @a[scores={start=1..}]
effect give @a[scores={start=1..}] resistance infinite 255 true
execute as @a[scores={start=1}] run gamemode adventure
execute as @a[scores={start=1}] run function challenge:return_items
execute in challenge:theater as @a[scores={start=1}] run tp 8 52 0
execute as @a[scores={start=1}] run effect give @s regeneration 1 255 true
execute as @a[scores={start=1}] run effect give @s saturation 1 255 true
team empty blue
team empty green
team empty purple
team empty red
team empty spectator
gamemode adventure @a[scores={start=1}]
scoreboard players set @a Kit -1
scoreboard players set @a FFA -1
scoreboard players set @a start 0
execute in challenge:theater run kill @e[type=!player,distance=0..]
execute in challenge:theater run place template challenge:combat_stage -366 32 -16
tellraw @a {"text":"End Battle"}