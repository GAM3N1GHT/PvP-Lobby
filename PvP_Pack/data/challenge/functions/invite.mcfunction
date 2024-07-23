scoreboard players enable @a invite
tellraw @a {"text":"Click this to join the queue for the next match.","clickEvent": {"action":"run_command", "value":"/scoreboard players set @s ready 1"}, "bold": true, "color": "#E9E809"}
tellraw @a {"text":"Click this to leave the queue for the next match.","clickEvent": {"action":"run_command", "value":"/scoreboard players set @s ready 0"}, "bold": true, "color": "#FF0000"}
scoreboard players set @a invite 0