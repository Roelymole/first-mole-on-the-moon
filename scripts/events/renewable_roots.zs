#modloaded biomesoplenty

import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.WeightedItemStack;
import crafttweaker.event.PlayerLeftClickBlockEvent;
import crafttweaker.event.BlockHarvestDropsEvent;
import scripts.utils.distributions.fortune;
import scripts.utils.items.drop;

val root = <biomesoplenty:plant_1:9>;
val crops = {
	"minecraft:wheat": 7,
	"minecraft:carrots": 7,
	"minecraft:potatoes": 7,
	"minecraft:beetroots": 3,
	"minecraft:melon_stem": 7,
	"minecraft:pumpkin_stem": 7
} as int[string];
val poison_ivy = <biomesoplenty:plant_0:4>;
val ivy = <biomesoplenty:ivy>;
val small_cattail = <biomesoplenty:plant_1:4>;
val tall_cattail = <biomesoplenty:double_plant:1>;
val shovels = [
	"minecraft:iron_shovel",
	"minecraft:wooden_shovel",
	"minecraft:stone_shovel",
	"minecraft:diamond_shovel",
	"minecraft:golden_shovel",
	"galacticraftcore:steel_shovel",
	"galacticraftplanets:desh_spade",
	"galacticraftplanets:titanium_shovel",
	"nuclearcraft:spaxelhoe_tough",
    "nuclearcraft:spaxelhoe_hard_carbon",
    "nuclearcraft:spaxelhoe_boron_nitride"
] as string[];
val axes = [
	"minecraft:iron_axe",
	"minecraft:wooden_axe",
	"minecraft:stone_axe",
	"minecraft:diamond_axe",
	"minecraft:golden_axe",
	"galacticraftcore:steel_axe",
	"galacticraftplanets:desh_axe",
	"galacticraftplanets:titanium_axe",
	"nuclearcraft:spaxelhoe_tough",
    "nuclearcraft:spaxelhoe_hard_carbon",
    "nuclearcraft:spaxelhoe_boron_nitride"
] as string[];
val probs = {-1: 0, 0: 10, 1: 20, 2: 30, 3: 50} as int[int];

// Damage the shovel when breaking crops
events.onPlayerLeftClickBlock(function (event as PlayerLeftClickBlockEvent) {
	// Check if the player is holding an item and is not in creative
	if (!isNull(event.player.currentItem) && !event.player.creative) {
		// Check if the player has just broken a crop
		if (crops.keys has event.block.definition.id) {
			// If the item is a shovel, damage it
			// Unbreaking is automatically applied
			if (shovels has event.player.currentItem.definition.id) {
				event.damageItem(1);
			}
		// Check if the player has just broken Ivy
		} else if (event.block.definition.id == "biomesoplenty:ivy") {
			// If the item is a axe, damage it
			// Unbreaking is automatically applied
			if (axes has event.player.currentItem.definition.id) {
				event.damageItem(1);
			}
		} else if (event.block.definition.id == "biomesoplenty:double_plant") {
			if (event.block.meta == 9) {
				if (event.player.currentItem.definition.id == "minecraft:shears") {
					drop(<biomesoplenty:double_plant:1>, event.world, event.position);
				}
			}
		}
	}
});

events.onBlockHarvestDrops(function (event as BlockHarvestDropsEvent) {
    if (crops.keys has event.block.definition.id) {
		if (!isNull(event.player)) {
			if (!isNull(event.player.currentItem) && !event.player.creative) {
		        if (shovels has event.player.currentItem.definition.id) {
		            if (event.block.meta == crops[event.block.definition.id]) {
		                fortune(event, root, 1, 0);
		            }
				}
			}
        }
    } else if (event.block.definition.id == "biomesoplenty:ivy") {
		if (!isNull(event.player)) {
			if (!isNull(event.player.currentItem) && !event.player.creative) {
				if (axes has event.player.currentItem.definition.id) {
					event.drops = [poison_ivy % probs[event.fortuneLevel]];
				}
			}
		}
	} else if (event.block.definition.id == "biomesoplenty:double_plant") {
		if (event.block.meta == 9) {
			event.drops = [tall_cattail];
			event.dropChance = 1.0;
		} else if (event.block.meta == 1) {
			event.dropChance = 0.0;
		}
	}
});
