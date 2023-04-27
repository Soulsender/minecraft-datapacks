



execute if entity @a[nbt={SelectedItem:{id:"minecraft:egg",tag:{display:{Name:'{"text":"Egg of Death"}'}}}}] run execute as @e[type=egg] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2s,Tags:["mob_spawner"]}

execute if entity @a[nbt={SelectedItem:{id:"minecraft:egg",tag:{display:{Name:'{"text":"Egg of Death"}'}}}}] run execute as @e[type=minecraft:area_effect_cloud,tag=mob_spawner] at @s unless entity @e[type=minecraft:egg,distance=..3] run summon lightning_bolt ~ ~ ~ {Passengers:[{id:"lightning_bolt"},{id:"lightning_bolt"},{id:"lightning_bolt"},{id:"lightning_bolt"},{id:"lightning_bolt"},{id:"lightning_bolt"},{id:"lightning_bolt"},{id:"lightning_bolt"},{id:"lightning_bolt"},{id:"lightning_bolt"},{id:"lightning_bolt"},{id:"lightning_bolt"},{id:"lightning_bolt"},{id:"lightning_bolt"},{id:"lightning_bolt"},{id:"lightning_bolt"},{id:"lightning_bolt"},{id:"lightning_bolt"},{id:"lightning_bolt"},{id:"lightning_bolt"},{id:"lightning_bolt"},{id:"lightning_bolt"},{id:"lightning_bolt"},{id:"lightning_bolt"},{id:"lightning_bolt"},{id:"lightning_bolt"},{id:"lightning_bolt"},{id:"lightning_bolt"},{id:"lightning_bolt"},{id:"lightning_bolt"},{id:"lightning_bolt"},{id:"lightning_bolt"},{id:"lightning_bolt"},{id:"lightning_bolt"},{id:"lightning_bolt"},{id:"lightning_bolt"},{id:"lightning_bolt"},{id:"lightning_bolt"},{id:"lightning_bolt"},{id:"lightning_bolt"},{id:"lightning_bolt"},{id:"lightning_bolt"},]}

execute if entity @a[nbt={SelectedItem:{id:"minecraft:egg",tag:{display:{Name:'{"text":"Egg of Death"}'}}}}] run execute as @e[type=minecraft:area_effect_cloud,tag=mob_spawner] at @s unless entity @e[type=minecraft:egg,distance=..3] run playsound ui.toast.challenge_complete block @a[limit=10, sort=nearest]

execute if entity @a[nbt={SelectedItem:{id:"minecraft:egg",tag:{display:{Name:'{"text":"Egg of Death"}'}}}}] run execute as @e[type=minecraft:area_effect_cloud,tag=mob_spawner] at @s unless entity @e[type=minecraft:egg,distance=..3] run particle minecraft:flame ~ ~ ~ .5 .5 .5 .2 100000

#kill @e[limit=1,sort=nearest]

# DATA

# ex. make nearest pig fly into the air and not die if Soulsender_ is standing on stone block
# execute at Soulsender_ if block ~ ~-1 ~ minecraft:stone run data merge entity @e[type=pig, sort=nearest, limit=1] {Motion:[0d,1d,0d,]}