


# execute if entity @a[nbt={SelectedItem:{id:"minecraft:egg",tag:{display:{Name:'{"text":"Egg of Teleportation"}'}}}}] run execute as @e[type=egg] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2s,Tags:["mob_spawner"]}

# execute if entity @a[nbt={SelectedItem:{id:"minecraft:egg",tag:{display:{Name:'{"text":"Egg of Teleportation"}'}}}}] run execute as @e[type=minecraft:area_effect_cloud,tag=mob_spawner] at @s unless entity @e[type=minecraft:egg,distance=..3] run summon lightning_bolt ~ ~ ~ {Passengers:[{id:"lightning_bolt"},{id:"lightning_bolt"},{id:"lightning_bolt"},{id:"lightning_bolt"},{id:"lightning_bolt"},{id:"lightning_bolt"}]}

# execute if entity @a[nbt={SelectedItem:{id:"minecraft:egg",tag:{display:{Name:'{"text":"Egg of Teleportation"}'}}}}] run execute as @e[type=minecraft:area_effect_cloud,tag=mob_spawner] at @s unless entity @e[type=minecraft:egg,distance=..3] run setblock ~ ~-1 ~ minecraft:sea_lantern

# execute if entity @a[nbt={SelectedItem:{id:"minecraft:egg",tag:{display:{Name:'{"text":"Egg of Teleportation"}'}}}}] run execute as @e[type=minecraft:area_effect_cloud,tag=mob_spawner] at @s unless entity @e[type=minecraft:egg,distance=..3] run setblock ~1 ~ ~ minecraft:command_block replace {Command:"/msg @a it works"}


#kill @e[limit=1,sort=nearest]

# DATA

# ex. make nearest pig fly into the air and not die if Soulsender_ is standing on stone block
# execute at Soulsender_ if block ~ ~-1 ~ minecraft:stone run data merge entity @e[type=pig, sort=nearest, limit=1] {Motion:[0d,1d,0d,]}