#modloaded biomesoplenty

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.event.IEntityEvent;
import crafttweaker.event.EntityLivingAttackedEvent;

val debug = false;

val immune = {
    "minecraft:rabbit": ["fall"],
    "minecraft:cave_spider": ["wither"],
    "minecraft:wither_skeleton": ["wither"],
    "minecraft:vex": ["cactus", "wither", "magic"],
    "biomesoplenty:wasp": ["cactus"]
} as string[][string];

events.onEntityLivingAttacked(function (event as EntityLivingAttackedEvent) {
    if !isNull(event.entity.definition) {
        if debug {
            print(event.entity.definition.id);
            print(event.damageSource.damageType);
        }
        if (immune.keys has event.entity.definition.id) {
            if (immune[event.entity.definition.id] has event.damageSource.damageType) {
                event.cancel();
            }
        }
    }
});
