execute unless items entity @s weapon.mainhand minecraft:glow_berries unless items entity @s weapon.offhand minecraft:glow_berries run return 0

tag @s add ef_feeder
execute at @s as @e[type=minecraft:frog,distance=..5,sort=nearest,limit=1] unless score @s ef_cd matches 1.. at @s run function easy_froglight:feed_frog
tag @s remove ef_feeder
