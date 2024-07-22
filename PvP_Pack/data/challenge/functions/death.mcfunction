execute as @a[scores={start=1..,Death=1..}] run clear
execute as @a[scores={start=1..,Death=1..}] run gamemode spectator @s
execute as @a[scores={start=1..,Death=1..}] in challenge:theater run tp @s -351 54 -1
execute as @a[scores={start=1..,Death=1..}] run team join spectator
execute as @a[scores={start=1..,Death=1..}] run scoreboard players remove @a alivePcount 1
execute as @a[scores={start=1..,Death=1..}] run scoreboard players set @s Death 0