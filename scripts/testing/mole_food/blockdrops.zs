#modloaded contenttweaker

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.item.WeightedItemStack;
import crafttweaker.event.BlockHarvestDropsEvent;

val worm = <contenttweaker:worm>;
val soil = {
    "minecraft:dirt": [2], // [0, 1, 2],
    "minecraft:grass": [0],
    "minecraft:grass_path": [0],
    "minecraft:farmland": [0],
    "minecraft:mycelium": [0],
    // "biomesoplenty:dirt": [0, 1, 2, 8, 9, 10],
    "biomesoplenty:grass": [2, 3, 4, 5, 7],
    "biomesoplenty:grass_path": [0, 1, 2],
    "biomesoplenty:farmland_0": [0, 1],
    "biomesoplenty:farmland_1": [0],
    "buildingblocks:gravelgrass": [0]
} as short[][string];

val wormDist = function(event as BlockHarvestDropsEvent, item as IItemStack) as void {
    if (event.player.world.random.nextDouble() < 0.025 * (event.fortuneLevel + 1)) {
        event.addItem(item * 1);
    }
};

events.onBlockHarvestDrops(function (event as BlockHarvestDropsEvent) {
    if !event.silkTouch {
        if (soil.keys has event.block.definition.id) {
            if (soil[event.block.definition.id] has event.block.meta) {
                if !isNull(event.player) {
                    if (event.player.getDimension() == 0) {
                        wormDist(event, worm);
                    }
                }
            }
            else if (event.block.definition.id == "biomesoplenty:grass") {
                if (event.block.meta == 1) {
                    event.drops = [<minecraft:mossy_cobblestone>];
                }
            }
        }
    }
});
