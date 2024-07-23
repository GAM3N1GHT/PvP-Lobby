scoreboard players enable @a Theater
execute at @a[scores={Theater=1..}] run forceload add ~ ~
execute at @a[scores={Theater=1..}] unless dimension challenge:theater run summon armor_stand ~ ~ ~ {Tags:["Return"], Invisible:true, Invulnerable:true, NoGravity:true}
execute at @a[scores={Theater=1..}] unless dimension challenge:theater run scoreboard players operation @e[tag=Return,sort=nearest,limit=1] UUID = @a[scores={Theater=1..},limit=1] UUID
gamemode adventure @a[scores={Theater=1..}]
effect give @a[scores={Theater=1..}] resistance infinite 255 true
data modify entity @a[scores={Theater=1..},limit=1] Invulnerable set value 1b
execute at @a[scores={Theater=1..}] unless dimension challenge:theater run scoreboard players add @a PPLcount 1
execute in challenge:theater run tp @a[scores={Theater=1..}] 8 52 0
tellraw @a[scores={Theater=1..}] {"text":"Enter '/trigger leave' or click this to return to your last position.","clickEvent": {"action": "run_command", "value": "/scoreboard players set @s leave 1"}, "color": "#00C1C4"}
scoreboard players set @a[scores={Theater=1..}] Theater 0
scoreboard objectives setdisplay sidebar ready