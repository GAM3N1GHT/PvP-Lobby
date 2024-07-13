give @s sea_pickle
clear @s
scoreboard players set @a storeTest 0
scoreboard players set @s storeTest 1
execute as @e[tag=store_items] if score @s UUID = @a[scores={storeTest=1},limit=1] UUID run tag @s add returning
execute at @e[tag=returning,limit=1] run item replace entity @s container.0 from block ~ ~1 ~ container.0
execute at @e[tag=returning,limit=1] run item replace entity @s container.1 from block ~ ~1 ~ container.1
execute at @e[tag=returning,limit=1] run item replace entity @s container.2 from block ~ ~1 ~ container.2
execute at @e[tag=returning,limit=1] run item replace entity @s container.3 from block ~ ~1 ~ container.3
execute at @e[tag=returning,limit=1] run item replace entity @s container.4 from block ~ ~1 ~ container.4
execute at @e[tag=returning,limit=1] run item replace entity @s container.5 from block ~ ~1 ~ container.5
execute at @e[tag=returning,limit=1] run item replace entity @s container.6 from block ~ ~1 ~ container.6
execute at @e[tag=returning,limit=1] run item replace entity @s container.7 from block ~ ~1 ~ container.7
execute at @e[tag=returning,limit=1] run item replace entity @s container.8 from block ~ ~1 ~ container.8
execute at @e[tag=returning,limit=1] run item replace entity @s armor.head from block ~ ~1 ~ container.9
execute at @e[tag=returning,limit=1] run item replace entity @s armor.chest from block ~ ~1 ~ container.10
execute at @e[tag=returning,limit=1] run item replace entity @s armor.legs from block ~ ~1 ~ container.11
execute at @e[tag=returning,limit=1] run item replace entity @s armor.feet from block ~ ~1 ~ container.12
execute at @e[tag=returning,limit=1] run item replace entity @s weapon.offhand from block ~ ~1 ~ container.13
execute at @e[tag=returning,limit=1] run item replace entity @s container.9 from block ~ ~ ~ container.0
execute at @e[tag=returning,limit=1] run item replace entity @s container.10 from block ~ ~ ~ container.1
execute at @e[tag=returning,limit=1] run item replace entity @s container.11 from block ~ ~ ~ container.2
execute at @e[tag=returning,limit=1] run item replace entity @s container.12 from block ~ ~ ~ container.3
execute at @e[tag=returning,limit=1] run item replace entity @s container.13 from block ~ ~ ~ container.4
execute at @e[tag=returning,limit=1] run item replace entity @s container.14 from block ~ ~ ~ container.5
execute at @e[tag=returning,limit=1] run item replace entity @s container.15 from block ~ ~ ~ container.6
execute at @e[tag=returning,limit=1] run item replace entity @s container.16 from block ~ ~ ~ container.7
execute at @e[tag=returning,limit=1] run item replace entity @s container.17 from block ~ ~ ~ container.8
execute at @e[tag=returning,limit=1] run item replace entity @s container.18 from block ~ ~ ~ container.9
execute at @e[tag=returning,limit=1] run item replace entity @s container.19 from block ~ ~ ~ container.10
execute at @e[tag=returning,limit=1] run item replace entity @s container.20 from block ~ ~ ~ container.11
execute at @e[tag=returning,limit=1] run item replace entity @s container.21 from block ~ ~ ~ container.12
execute at @e[tag=returning,limit=1] run item replace entity @s container.22 from block ~ ~ ~ container.13
execute at @e[tag=returning,limit=1] run item replace entity @s container.23 from block ~ ~ ~ container.14
execute at @e[tag=returning,limit=1] run item replace entity @s container.24 from block ~ ~ ~ container.15
execute at @e[tag=returning,limit=1] run item replace entity @s container.25 from block ~ ~ ~ container.16
execute at @e[tag=returning,limit=1] run item replace entity @s container.26 from block ~ ~ ~ container.17
execute at @e[tag=returning,limit=1] run item replace entity @s container.27 from block ~ ~ ~ container.18
execute at @e[tag=returning,limit=1] run item replace entity @s container.28 from block ~ ~ ~ container.19
execute at @e[tag=returning,limit=1] run item replace entity @s container.29 from block ~ ~ ~ container.20
execute at @e[tag=returning,limit=1] run item replace entity @s container.30 from block ~ ~ ~ container.21
execute at @e[tag=returning,limit=1] run item replace entity @s container.31 from block ~ ~ ~ container.22
execute at @e[tag=returning,limit=1] run item replace entity @s container.32 from block ~ ~ ~ container.23
execute at @e[tag=returning,limit=1] run item replace entity @s container.33 from block ~ ~ ~ container.24
execute at @e[tag=returning,limit=1] run item replace entity @s container.34 from block ~ ~ ~ container.25
execute at @e[tag=returning,limit=1] run item replace entity @s container.35 from block ~ ~ ~ container.26
kill @e[tag=returning]