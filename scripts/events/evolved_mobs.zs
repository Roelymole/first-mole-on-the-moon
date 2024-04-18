#modloaded galacticraftcore nuclearcraft

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.entity.IEntityItem;
import crafttweaker.event.EntityLivingDeathDropsEvent;
import crafttweaker.world.IWorld;
import crafttweaker.util.IRandom;
import scripts.utils.distributions.replace;
import scripts.utils.distributions.common;
import scripts.utils.distributions.rare;
import scripts.utils.distributions.shulkerDist;

val oxygen_mask = <galacticraftcore:oxygen_mask>;
val oxygen_gear = <galacticraftcore:oxygen_gear>;
val medium_tank = <galacticraftcore:oxygen_tank_med_full>;
val heavy_tank = <galacticraftcore:oxygen_tank_heavy_full>;

val creeper_drops = {
    "item.redstone": <minecraft:gunpowder>, // Sulphur - <nuclearcraft:gem_dust:6>
    "item.blazeRod": <biomesoplenty:ash>,
    "tile.sand.default": <nuclearcraft:dust:4>,
    "tile.ice": <minecraft:tnt>
} as IItemStack[string];

val lead = <nuclearcraft:ingot:2>;
val arrow = <minecraft:arrow>;
val web = <minecraft:web>;
val web_string = <galacticraftplanets:web_torch>;
val eye_of_ender = <minecraft:ender_eye>;
val portable_ender_chest = <nuclearcraft:portable_ender_chest>;

eye_of_ender.maxStackSize = 16;
portable_ender_chest.maxStackSize = 1;

recipes.remove(portable_ender_chest);

events.onEntityLivingDeathDrops(function (event as EntityLivingDeathDropsEvent) {
    if !isNull(event.entity.definition) {
        if (event.entity.definition.id == "galacticraftcore:evolved_creeper") {
            replace(event, creeper_drops);
            rare(event, <minecraft:skull:4>, 0);
        } else if (event.entity.definition.id == "galacticraftcore:evolved_zombie") {
            rare(event, lead);
            rare(event, <minecraft:skull:2>, 0);
        } else if (event.entity.definition.id == "galacticraftcore:evolved_skeleton") {
            common(event, arrow, 2);
            rare(event, <minecraft:skull>, 0);
        } else if (event.entity.definition.id == "galacticraftcore:evolved_spider") {
            for i, drop in event.drops {
                if (i == 0) {
                    event.drops = [];
                }

                if (drop.item.name == "item.string") {
                    if (event.entity.world.random.nextDouble() < 0.1 * (event.lootingLevel + 1)) {
                        event.addItem(web * 1);
                    } else {
                        event.addItem(drop.item * 1);
                    }
                } else {
                    event.addItem(drop.item * 1);
                }
            }
        } else if (event.entity.definition.id == "galacticraftcore:evolved_enderman") {
            for i, drop in event.drops {
                if (i == 0) {
                    event.drops = [];
                }

                if (drop.item.name == "item.enderPearl") {
                    if (event.entity.world.random.nextDouble() < 0.05 * (event.lootingLevel + 1)) {
                        event.addItem(eye_of_ender * 1);
                    } else {
                        event.addItem(drop.item * 1);
                    }
                } else if (drop.item.name != "item.enderEye") {
                    event.addItem(drop.item * 1);
                }
            }
            rare(event, portable_ender_chest);
        } else if (event.entity.definition.id == "galacticraftcore:evolved_skeleton_boss") {
            event.addItem(<minecraft:skull:1> * 1);
        } else if (event.entity.definition.id == "galacticraftplanets:creeper_boss") {
            event.addItem(<minecraft:skull:4> * 1);
        } else if (event.entity.definition.id == "galacticraftplanets:juicer") {
            shulkerDist(event, web_string);
        }
    }
});
