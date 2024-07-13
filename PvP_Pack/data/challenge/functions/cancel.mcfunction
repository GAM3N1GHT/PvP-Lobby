execute in challenge:theater run fill 299 49 0 299 49 0 polished_blackstone_button[powered=false,face=floor]
execute in challenge:theater run fill 289 49 0 289 49 0 polished_blackstone_button[powered=false,face=floor]
execute in challenge:theater run fill 279 49 0 279 49 0 polished_blackstone_button[powered=false,face=floor]
execute in challenge:theater run fill 289 49 -21 289 49 -21 polished_blackstone_button[powered=false,face=floor]
team empty red
team empty green
team empty blue
team empty purple
execute as @a[scores={start=1..}] at @e[tag=Return2] if score @s UUID = @e[tag=Return2,sort=nearest,limit=1] UUID run tp @s @e[tag=Return2,sort=nearest,limit=1]
execute as @a[scores={start=1..}] at @e[tag=Return2] if score @s UUID = @e[tag=Return2,sort=nearest,limit=1] UUID run effect clear @s resistance
execute as @a[scores={start=1..}] at @e[tag=Return2] if score @s UUID = @e[tag=Return2,sort=nearest,limit=1] UUID run scoreboard players set @s start 0
kill @e[tag=Return2]
execute as @a[scores={start=1..}] in challenge:theater run tp @s 8 52 0
scoreboard players set @a start 0
scoreboard players set @a Kit -1
scoreboard players set @a FFA -1