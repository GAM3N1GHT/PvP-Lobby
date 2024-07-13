execute as @a[scores={ready=1..}] at @s unless dimension challenge:theater run summon armor_stand ~ ~ ~ {Tags:["Return2"], Invisible:true, Invulnerable:true, NoGravity:true}
execute as @a[scores={ready=1..}] at @s unless dimension challenge:theater run scoreboard players operation @e[tag=Return2,sort=nearest,limit=1] UUID = @s UUID
gamemode adventure @a[scores={ready=1..}]
effect give @a[scores={ready=1..}] resistance infinite 255 true
execute as @a if score @s ready matches 1 run scoreboard players add @a readyCount 1
execute if score @r readyCount matches 1.. in challenge:theater run tp @a[scores={ready=1..}] 299 50 0
execute as @a[scores={ready=1..}] run scoreboard players set @s Death 0
execute as @a[scores={ready=1..}] run scoreboard players set @s start 1
execute as @a[scores={ready=1..}] run scoreboard players set @s ready 0