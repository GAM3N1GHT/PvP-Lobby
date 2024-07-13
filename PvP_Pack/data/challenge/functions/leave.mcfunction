scoreboard players enable @a leave
execute at @a[scores={leave=1..},limit=1] if dimension challenge:theater run scoreboard players remove @a PPLcount 1
execute as @e[tag=Return] if score @s UUID = @a[scores={leave=1..},limit=1] UUID run tp @a[scores={leave=1..},limit=1] @s
execute as @e[tag=Return] if score @s UUID = @a[scores={leave=1..},limit=1] UUID run kill @s
gamemode survival @a[scores={leave=1..}]
effect clear @a[scores={leave=1..}] resistance
tellraw @a {"text":"Type: '/trigger Theater' or click this to challenge others","clickEvent": {"action": "run_command", "value": "/scoreboard players set @s Theater 1"}, "color":"#00FF1D"}
scoreboard players set @a leave 0