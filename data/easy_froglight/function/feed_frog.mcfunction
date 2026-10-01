scoreboard players set @s ef_cd 1200

execute as @a[tag=ef_feeder,gamemode=!creative,limit=1] run clear @s minecraft:glow_berries 1

particle minecraft:happy_villager ~ ~0.5 ~ 0.3 0.3 0.3 0 8
playsound minecraft:entity.frog.eat neutral @a ~ ~ ~

execute if entity @s[nbt={variant:"minecraft:warm"}] run summon item ~ ~0.3 ~ {Item:{id:"minecraft:pearlescent_froglight",count:1}}
execute if entity @s[nbt={variant:"warm"}] run summon item ~ ~0.3 ~ {Item:{id:"minecraft:pearlescent_froglight",count:1}}

execute if entity @s[nbt={variant:"minecraft:cold"}] run summon item ~ ~0.3 ~ {Item:{id:"minecraft:verdant_froglight",count:1}}
execute if entity @s[nbt={variant:"cold"}] run summon item ~ ~0.3 ~ {Item:{id:"minecraft:verdant_froglight",count:1}}

execute if entity @s[nbt={variant:"minecraft:temperate"}] run summon item ~ ~0.3 ~ {Item:{id:"minecraft:ochre_froglight",count:1}}
execute if entity @s[nbt={variant:"temperate"}] run summon item ~ ~0.3 ~ {Item:{id:"minecraft:ochre_froglight",count:1}}

execute unless entity @s[nbt={variant:"minecraft:warm"}] unless entity @s[nbt={variant:"warm"}] unless entity @s[nbt={variant:"minecraft:cold"}] unless entity @s[nbt={variant:"cold"}] unless entity @s[nbt={variant:"minecraft:temperate"}] unless entity @s[nbt={variant:"temperate"}] run summon item ~ ~0.3 ~ {Item:{id:"minecraft:ochre_froglight",count:1}}
