tellraw @a {"text":"PvP Online\nType: '/trigger Theater' or click this to challenge others.\n(Render Distance 15 recommended)","clickEvent": {"action": "run_command", "value": "/scoreboard players set @s Theater 1"}, "color":"#00FF1D"}
scoreboard objectives add Theater trigger
scoreboard players set @a Theater 0
scoreboard players enable @a Theater
scoreboard objectives add leave trigger
scoreboard players set @a leave 0
scoreboard players enable @a leave
scoreboard objectives add invite trigger
scoreboard players set @a invite 0
scoreboard players enable @a invite
scoreboard objectives add ready dummy
scoreboard players set @a ready 0
scoreboard objectives add PPLcount dummy
scoreboard players set @a PPLcount 0
scoreboard objectives add UUID dummy
execute as @a store result score @s UUID run data get entity @s UUID[0] 1
scoreboard objectives add readyCount dummy
scoreboard players set @a readyCount 0
scoreboard objectives add start dummy
scoreboard players set @a start 0
team add red
team add green
team add blue
team add purple
team add spectator
team modify red friendlyFire false
team modify green friendlyFire false
team modify blue friendlyFire false
team modify purple friendlyFire false
team modify red color red
team modify green color green
team modify blue color blue
team modify purple color dark_purple
team modify spectator color gray
scoreboard objectives add FFA dummy
scoreboard players set @a FFA -1
scoreboard objectives add Kit dummy
scoreboard players set @a Kit -1
scoreboard objectives add JJK dummy
scoreboard players set @a JJK 0
scoreboard objectives add storeTest dummy
scoreboard players set @a storeTest 0
scoreboard objectives add Death deathCount
scoreboard players set @a Death 0
gamerule doImmediateRespawn true
scoreboard objectives add alivePcount dummy
scoreboard players set @a alivePcount 0
scoreboard objectives add battleActive dummy
scoreboard players set @a battleActive 0
scoreboard objectives add battleEnding dummy
scoreboard players set @a battleEnding 0
scoreboard objectives add BDPolishedBlackstone minecraft.broken:minecraft.polished_blackstone
scoreboard objectives add BDBlackGlass minecraft.broken:minecraft.black_stained_glass
scoreboard objectives add BDGlowstone minecraft.broken:minecraft.glowstone
scoreboard objectives add BDPolishedBlackstoneBrickStairs minecraft.broken:minecraft.polished_blackstone_brick_stairs
scoreboard objectives add BDPolishedBlackstoneStairs minecraft.broken:minecraft.polished_blackstone_stairs
scoreboard objectives add BDLantern minecraft.broken:minecraft.sea_lantern
scoreboard objectives add BDPurpleGlass minecraft.broken:minecraft.purple_stained_glass
scoreboard objectives add BDBlueGlass minecraft.broken:minecraft.light_blue_stained_glass
scoreboard players set @a BDPolishedBlackstone 0
scoreboard players set @a BDBlackGlass 0
scoreboard players set @a BDGlowstone 0
scoreboard players set @a BDPolishedBlackstoneBrickStairs 0
scoreboard players set @a BDPolishedBlackstoneStairs 0
scoreboard players set @a BDLantern 0
scoreboard players set @a BDPurpleGlass 0
scoreboard players set @a BDBlueGlass 0