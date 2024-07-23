scoreboard players set @s readyCount 1
scoreboard players set @a storeTest 0
execute as @e[scores={readyCount=1}] run scoreboard players add @a storeTest 1
execute in challenge:theater run summon armor_stand 300 40 0 {NoAI:true,Tags:["store_items"],NoGravity:true}
execute store result entity @e[tag=store_items,tag=!moved,limit=1] Pos[2] double 1 run scoreboard players get @r storeTest
scoreboard players operation @e[tag=store_items,tag=!moved,limit=1] UUID = @s UUID
execute at @e[tag=store_items,tag=!moved,limit=1] run fill ~ ~ ~ ~ ~1 ~ chest
execute at @e[tag=store_items,tag=!moved,limit=1] run item replace block ~ ~1 ~ container.0 from entity @s container.0
execute at @e[tag=store_items,tag=!moved,limit=1] run item replace block ~ ~1 ~ container.1 from entity @s container.1
execute at @e[tag=store_items,tag=!moved,limit=1] run item replace block ~ ~1 ~ container.2 from entity @s container.2
execute at @e[tag=store_items,tag=!moved,limit=1] run item replace block ~ ~1 ~ container.3 from entity @s container.3
execute at @e[tag=store_items,tag=!moved,limit=1] run item replace block ~ ~1 ~ container.4 from entity @s container.4
execute at @e[tag=store_items,tag=!moved,limit=1] run item replace block ~ ~1 ~ container.5 from entity @s container.5
execute at @e[tag=store_items,tag=!moved,limit=1] run item replace block ~ ~1 ~ container.6 from entity @s container.6
execute at @e[tag=store_items,tag=!moved,limit=1] run item replace block ~ ~1 ~ container.7 from entity @s container.7
execute at @e[tag=store_items,tag=!moved,limit=1] run item replace block ~ ~1 ~ container.8 from entity @s container.8
execute at @e[tag=store_items,tag=!moved,limit=1] run item replace block ~ ~1 ~ container.9 from entity @s armor.head
execute at @e[tag=store_items,tag=!moved,limit=1] run item replace block ~ ~1 ~ container.10 from entity @s armor.chest
execute at @e[tag=store_items,tag=!moved,limit=1] run item replace block ~ ~1 ~ container.11 from entity @s armor.legs
execute at @e[tag=store_items,tag=!moved,limit=1] run item replace block ~ ~1 ~ container.12 from entity @s armor.feet
execute at @e[tag=store_items,tag=!moved,limit=1] run item replace block ~ ~1 ~ container.13 from entity @s weapon.offhand
execute at @e[tag=store_items,tag=!moved,limit=1] run item replace block ~ ~ ~ container.0 from entity @s container.9
execute at @e[tag=store_items,tag=!moved,limit=1] run item replace block ~ ~ ~ container.1 from entity @s container.10
execute at @e[tag=store_items,tag=!moved,limit=1] run item replace block ~ ~ ~ container.2 from entity @s container.11
execute at @e[tag=store_items,tag=!moved,limit=1] run item replace block ~ ~ ~ container.3 from entity @s container.12
execute at @e[tag=store_items,tag=!moved,limit=1] run item replace block ~ ~ ~ container.4 from entity @s container.13
execute at @e[tag=store_items,tag=!moved,limit=1] run item replace block ~ ~ ~ container.5 from entity @s container.14
execute at @e[tag=store_items,tag=!moved,limit=1] run item replace block ~ ~ ~ container.6 from entity @s container.15
execute at @e[tag=store_items,tag=!moved,limit=1] run item replace block ~ ~ ~ container.7 from entity @s container.16
execute at @e[tag=store_items,tag=!moved,limit=1] run item replace block ~ ~ ~ container.8 from entity @s container.17
execute at @e[tag=store_items,tag=!moved,limit=1] run item replace block ~ ~ ~ container.9 from entity @s container.18
execute at @e[tag=store_items,tag=!moved,limit=1] run item replace block ~ ~ ~ container.10 from entity @s container.19
execute at @e[tag=store_items,tag=!moved,limit=1] run item replace block ~ ~ ~ container.11 from entity @s container.20
execute at @e[tag=store_items,tag=!moved,limit=1] run item replace block ~ ~ ~ container.12 from entity @s container.21
execute at @e[tag=store_items,tag=!moved,limit=1] run item replace block ~ ~ ~ container.13 from entity @s container.22
execute at @e[tag=store_items,tag=!moved,limit=1] run item replace block ~ ~ ~ container.14 from entity @s container.23
execute at @e[tag=store_items,tag=!moved,limit=1] run item replace block ~ ~ ~ container.15 from entity @s container.24
execute at @e[tag=store_items,tag=!moved,limit=1] run item replace block ~ ~ ~ container.16 from entity @s container.25
execute at @e[tag=store_items,tag=!moved,limit=1] run item replace block ~ ~ ~ container.17 from entity @s container.26
execute at @e[tag=store_items,tag=!moved,limit=1] run item replace block ~ ~ ~ container.18 from entity @s container.27
execute at @e[tag=store_items,tag=!moved,limit=1] run item replace block ~ ~ ~ container.19 from entity @s container.28
execute at @e[tag=store_items,tag=!moved,limit=1] run item replace block ~ ~ ~ container.20 from entity @s container.29
execute at @e[tag=store_items,tag=!moved,limit=1] run item replace block ~ ~ ~ container.21 from entity @s container.30
execute at @e[tag=store_items,tag=!moved,limit=1] run item replace block ~ ~ ~ container.22 from entity @s container.31
execute at @e[tag=store_items,tag=!moved,limit=1] run item replace block ~ ~ ~ container.23 from entity @s container.32
execute at @e[tag=store_items,tag=!moved,limit=1] run item replace block ~ ~ ~ container.24 from entity @s container.33
execute at @e[tag=store_items,tag=!moved,limit=1] run item replace block ~ ~ ~ container.25 from entity @s container.34
execute at @e[tag=store_items,tag=!moved,limit=1] run item replace block ~ ~ ~ container.26 from entity @s container.35
execute if score @r Kit matches 1 run give @s sea_pickle
execute if score @r Kit matches 1 run clear @s
tag @e[tag=store_items,tag=!moved,limit=1] add moved