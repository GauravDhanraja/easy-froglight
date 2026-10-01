scoreboard players remove @e[type=minecraft:frog,scores={ef_cd=1..}] ef_cd 1

execute as @e[type=minecraft:frog] at @s unless entity @e[type=minecraft:interaction,tag=ef_box,distance=..2] run summon minecraft:interaction ~ ~ ~ {width:0.8f,height:0.8f,response:1b,Tags:["ef_box"]}
execute as @e[type=minecraft:frog] at @s run tp @e[type=minecraft:interaction,tag=ef_box,distance=..2,limit=1] ~ ~ ~
execute as @e[type=minecraft:interaction,tag=ef_box] at @s unless entity @e[type=minecraft:frog,distance=..2] run kill @s
execute as @e[type=minecraft:interaction,tag=ef_box,nbt={interaction:{}}] at @s run function easy_froglight:on_interact
