#priority 500

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.item.WeightedItemStack;
import crafttweaker.event.EntityLivingDeathDropsEvent;
import crafttweaker.event.BlockHarvestDropsEvent;
import crafttweaker.world.IWorld;
import crafttweaker.util.IRandom;

function replace(event as EntityLivingDeathDropsEvent, replacements as IItemStack[string]) as void {
    for i, drop in event.drops {
        if (i == 0) {
            event.drops = [];
        }

        if (replacements.keys has drop.item.name) {
            event.addItem(replacements[drop.item.name] * 1);
        } else {
            event.addItem(drop.item * 1);
        }
    }
}

function common(event as EntityLivingDeathDropsEvent, item as IItemStack,
                upper as int, lower as int = 0) as void {
    val n = event.entity.world.random.nextInt(lower, upper) + ((event.entity.world.random.nextDouble(0, event.lootingLevel) + 0.5) as int);
    for i in 0 to n {
        event.addItem(item * 1);
    }
}

function rare(event as EntityLivingDeathDropsEvent, item as IItemStack, base as double = 0.025) as void {
    if (event.entity.world.random.nextDouble() < base + (0.01 * event.lootingLevel)) {
        event.addItem(item * 1);
    }
}

function shulkerDist(event as EntityLivingDeathDropsEvent, item as IItemStack) as void {
    if (event.entity.world.random.nextDouble() < 0.5 + (0.0625 * event.lootingLevel)) {
        event.addItem(item * 1);
    }
}

function fortune(event as BlockHarvestDropsEvent, item as IItemStack,
                upper as int, lower as int = 1) as void {
    val n = event.player.world.random.nextInt(lower, upper) + ((event.player.world.random.nextDouble(0, event.fortuneLevel) + 0.5) as int);
    for i in 0 to n {
        event.addItem(item * 1);
    }
}

function glowstoneDist(event as BlockHarvestDropsEvent, item as IItemStack) as void {
    var n = event.player.world.random.nextInt(2, 4 + event.fortuneLevel) as int;
    if (n > 4) {
        n = 4;
    }
    for i in 0 to n {
        event.addItem(item * 1);
    }
}

function netherGoldDist(event as BlockHarvestDropsEvent, item as IItemStack) as void {
    val n = event.player.world.random.nextInt(2, 6) as int;
    var m = event.player.world.random.nextInt(0, event.fortuneLevel + 1) as int;
    if (m == 0) {
        m = 1;
    }
    for i in 0 to n * m {
        event.addItem(item * 1);
    }
}
