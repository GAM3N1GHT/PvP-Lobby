execute if entity @a[scores={Theater=1..,start=0}] run function challenge:enter
execute if entity @a[scores={Theater=1..,start=1}] run scoreboard players set @a Theater 0
execute if entity @a[scores={Theater=1..,start=1}] run scoreboard players enable @a Theater
execute if entity @a[scores={invite=1..}] run function challenge:invite
execute if entity @a[scores={leave=1..,start=0}] run function challenge:leave
execute if entity @a[scores={leave=1..,start=1}] run scoreboard players set @a leave 0
execute if entity @a[scores={leave=1..,start=1}] run scoreboard players enable @a leave
execute in challenge:theater unless block 0 52 0 shroomlight run place template challenge:combat_lobby -16 40 -16
execute in challenge:theater unless block 299 48 0 sea_lantern run place template challenge:combat_settings 274 46 -31
execute in challenge:theater unless block -350 48 0 glowstone run place template challenge:combat_stage -366 32 -16
execute in challenge:theater if block 0 52 2 warped_button[powered=true] unless entity @a[scores={start=1}] run function challenge:start
execute in challenge:theater if block 0 52 -2 warped_button[powered=true] unless entity @a[scores={start=1}] run function challenge:start
execute in challenge:theater if block 2 52 0 warped_button[powered=true] unless entity @a[scores={start=1}] run function challenge:start
execute in challenge:theater if block -2 52 0 warped_button[powered=true] unless entity @a[scores={start=1}] run function challenge:start
execute if score @r PPLcount matches 1.. run scoreboard objectives setdisplay sidebar ready
execute if score @r PPLcount matches ..0 run scoreboard objectives setdisplay sidebar
execute as @a at @s if dimension challenge:theater if entity @s[y=0,dy=-100] if entity @s[scores={start=0}] run tp @s 8 52 0
execute as @a at @s if dimension challenge:theater if entity @s[y=0,dy=-100] if entity @s[scores={start=1..}] run gamemode spectator
execute as @a at @s if dimension challenge:theater if entity @s[y=0,dy=-100] if entity @s[scores={start=1..}] run team join spectator
execute as @a at @s if dimension challenge:theater if entity @s[y=0,dy=-100] if entity @s[scores={start=1..}] run scoreboard players remove @a alivePcount 1
execute as @a at @s if dimension challenge:theater if entity @s[y=0,dy=-100] if entity @s[scores={start=1..}] run tp @s -351 54 -1
execute if entity @a[scores={start=1..,Death=1..}] run function challenge:death
#Block Break Detection
execute if entity @a[scores={start=1,BDBlackGlass=1..}] run function challenge:broken_block
execute if entity @a[scores={start=1,BDBlueGlass=1..}] run function challenge:broken_block
execute if entity @a[scores={start=1,BDGlowstone=1..}] run function challenge:broken_block
execute if entity @a[scores={start=1,BDLantern=1..}] run function challenge:broken_block
execute if entity @a[scores={start=1,BDPolishedBlackstone=1..}] run function challenge:broken_block
execute if entity @a[scores={start=1,BDPolishedBlackstoneBrickStairs=1..}] run function challenge:broken_block
execute if entity @a[scores={start=1,BDPolishedBlackstoneStairs=1..}] run function challenge:broken_block
execute if entity @a[scores={start=1,BDPurpleGlass=1..}] run function challenge:broken_block
execute if score @r battleActive matches 1.. in challenge:theater run fill -367 31 -17 -334 27 16 air
execute if score @r battleActive matches 1.. in challenge:theater run fill -370 31 -17 -331 65 -20 air
execute if score @r battleActive matches 1.. in challenge:theater run fill -370 31 -17 -367 65 16 air
execute if score @r battleActive matches 1.. in challenge:theater run fill -331 65 -20 -334 31 19 air
execute if score @r battleActive matches 1.. in challenge:theater run fill -367 65 16 -334 31 19 air
execute if score @r battleActive matches 1.. in challenge:theater run fill -331 65 -20 -367 69 16 air
#If everone dies
execute if score @r alivePcount matches 0 if entity @a[scores={start=1,battleActive=1}] run tellraw @a {"text":"Tie"}
execute if score @r alivePcount matches 0 if entity @a[scores={start=1,battleActive=1}] run scoreboard players set @a battleEnding 1
execute if score @r alivePcount matches 0 if entity @a[scores={start=1,battleActive=1}] run scoreboard players set @a battleActive 0
execute if score @r alivePcount matches 0 if entity @a[scores={start=1,battleEnding=1}] run function challenge:end_battle
#FFA end battle detect
execute if score @r alivePcount matches 1 if entity @a[scores={start=1,FFA=1,battleActive=1}] run effect give @a[scores={start=1}] glowing 5 1 true
execute if score @r alivePcount matches 1 if entity @a[scores={start=1,FFA=1,battleActive=1}] run scoreboard players set @a battleEnding 1
execute if score @r alivePcount matches 1 if entity @a[scores={start=1,FFA=1,battleActive=1}] run scoreboard players set @a battleActive 0
execute if score @r alivePcount matches 1 if entity @a[scores={start=1,FFA=1,battleEnding=1}] unless entity @a[scores={start=1,FFA=1,battleEnding=1}, nbt={active_effects:[{id:"minecraft:glowing"}]}] run function challenge:end_battle
#Teams end battle detect
#red
execute if entity @a[team=red, scores={start=1,FFA=0,battleActive=1}] unless entity @a[team=blue] unless entity @a[team=green] unless entity @a[team=purple] run effect give @a[scores={start=1}] glowing 5 1 true
execute if entity @a[team=red, scores={start=1,FFA=0,battleActive=1}] unless entity @a[team=blue] unless entity @a[team=green] unless entity @a[team=purple] run scoreboard players set @a battleEnding 1
execute if entity @a[team=red, scores={start=1,FFA=0,battleActive=1}] unless entity @a[team=blue] unless entity @a[team=green] unless entity @a[team=purple] run tellraw @a[scores={start=1}] {"text":"Red Team Wins"}
execute if entity @a[team=red, scores={start=1,FFA=0,battleActive=1}] unless entity @a[team=blue] unless entity @a[team=green] unless entity @a[team=purple] run scoreboard players set @a battleActive 0
execute if entity @a[team=red, scores={start=1,FFA=0,battleEnding=1}] unless entity @a[team=blue] unless entity @a[team=green] unless entity @a[team=purple] unless entity @a[scores={start=1,FFA=0,battleEnding=1}, nbt={active_effects:[{id:"minecraft:glowing"}]}] run function challenge:end_battle
#blue
execute if entity @a[team=blue, scores={start=1,FFA=0,battleActive=1}] unless entity @a[team=red] unless entity @a[team=green] unless entity @a[team=purple] run effect give @a[scores={start=1}] glowing 5 1 true
execute if entity @a[team=blue, scores={start=1,FFA=0,battleActive=1}] unless entity @a[team=red] unless entity @a[team=green] unless entity @a[team=purple] run scoreboard players set @a battleEnding 1
execute if entity @a[team=blue, scores={start=1,FFA=0,battleActive=1}] unless entity @a[team=red] unless entity @a[team=green] unless entity @a[team=purple] run tellraw @a[scores={start=1}] {"text":"Blue Team Wins"}
execute if entity @a[team=blue, scores={start=1,FFA=0,battleActive=1}] unless entity @a[team=red] unless entity @a[team=green] unless entity @a[team=purple] run scoreboard players set @a battleActive 0
execute if entity @a[team=blue, scores={start=1,FFA=0,battleEnding=1}] unless entity @a[team=red] unless entity @a[team=green] unless entity @a[team=purple] unless entity @a[scores={start=1,FFA=0,battleEnding=1}, nbt={active_effects:[{id:"minecraft:glowing"}]}] run function challenge:end_battle
#green
execute if entity @a[team=green, scores={start=1,FFA=0,battleActive=1}] unless entity @a[team=red] unless entity @a[team=blue] unless entity @a[team=purple] run effect give @a[scores={start=1}] glowing 5 1 true
execute if entity @a[team=green, scores={start=1,FFA=0,battleActive=1}] unless entity @a[team=red] unless entity @a[team=blue] unless entity @a[team=purple] run scoreboard players set @a battleEnding 1
execute if entity @a[team=green, scores={start=1,FFA=0,battleActive=1}] unless entity @a[team=red] unless entity @a[team=blue] unless entity @a[team=purple] run tellraw @a[scores={start=1}] {"text":"Green Team Wins"}
execute if entity @a[team=green, scores={start=1,FFA=0,battleActive=1}] unless entity @a[team=red] unless entity @a[team=blue] unless entity @a[team=purple] run scoreboard players set @a battleActive 0
execute if entity @a[team=green, scores={start=1,FFA=0,battleEnding=1}] unless entity @a[team=red] unless entity @a[team=blue] unless entity @a[team=purple] unless entity @a[scores={start=1,FFA=0,battleEnding=1}, nbt={active_effects:[{id:"minecraft:glowing"}]}] run function challenge:end_battle
#purple
execute if entity @a[team=purple, scores={start=1,FFA=0,battleActive=1}] unless entity @a[team=red] unless entity @a[team=blue] unless entity @a[team=green] run effect give @a[scores={start=1}] glowing 5 1 true
execute if entity @a[team=purple, scores={start=1,FFA=0,battleActive=1}] unless entity @a[team=red] unless entity @a[team=blue] unless entity @a[team=green] run scoreboard players set @a battleEnding 1
execute if entity @a[team=purple, scores={start=1,FFA=0,battleActive=1}] unless entity @a[team=red] unless entity @a[team=blue] unless entity @a[team=green] run tellraw @a[scores={start=1}] {"text":"Purple Team Wins"}
execute if entity @a[team=purple, scores={start=1,FFA=0,battleActive=1}] unless entity @a[team=red] unless entity @a[team=blue] unless entity @a[team=green] run scoreboard players set @a battleActive 0
execute if entity @a[team=purple, scores={start=1,FFA=0,battleEnding=1}] unless entity @a[team=red] unless entity @a[team=blue] unless entity @a[team=green] unless entity @a[scores={start=1,FFA=0,battleEnding=1}, nbt={active_effects:[{id:"minecraft:glowing"}]}] run function challenge:end_battle