#modloaded galacticraftcore

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.item.WeightedItemStack;
import crafttweaker.event.BlockHarvestDropsEvent;
import scripts.utils.distributions.fortune;
import scripts.utils.distributions.glowstoneDist;
import scripts.utils.distributions.netherGoldDist;
import scripts.utils.items.silk_touched;

val silk_touched = function(item as IItemStack) as bool {
    if (item.tag has "ench") {
        for enchant in item.tag.ench.asList() {
            if ((enchant.id as short) == (33 as short)) {
                return true;
            }
        }
    }
    return false;
};

val cheese_ore = <galacticraftcore:basic_block_moon:2>;
val sapphire_ore = <galacticraftcore:basic_block_moon:6>;
val cheese = <galacticraftcore:cheese_curd>;
val sapphire = <galacticraftcore:item_basic_moon:2>;

val book = <minecraft:book>;
val paper = <minecraft:paper>;
val cobweb = <minecraft:web>;
val canister = <galacticraftcore:canister>;
val shelf_drops = [
    "books", "necromancer", "necromancer", "books", "cobwebs",
    "hoarder", "books", "books", "cans", "paper"
] as string[];
val ingredients = {
    "books": [book, book, book],
    "necromancer": [book, <minecraft:skull>, book],
    "cobwebs": [cobweb, book, cobweb],
    "hoarder": [<minecraft:golden_apple>, book, <minecraft:iron_ingot>],
    "cans": [canister, canister, canister],
    "paper": [paper, paper, paper]
} as WeightedItemStack[][string];

events.onBlockHarvestDrops(function (event as BlockHarvestDropsEvent) {
    if !event.silkTouch {
        if (event.block.definition.id == "galacticraftcore:basic_block_moon") {
            if (event.block.meta == 2) {
                event.drops = [];
                netherGoldDist(event, cheese);
            } else if (event.block.meta == 6) {
                event.drops = [];
                fortune(event, sapphire, 1);
            }
        } else if (event.block.definition.id == "chisel:basalt2") {
            if (event.block.meta == 7) {
                event.drops = [<buildingblocks:morestones2:3>];
            }
        } else if (event.block.definition.id == "biomesoplenty:ash_block") {
            event.drops = [];
            glowstoneDist(event, <biomesoplenty:ash>);
        } else if (event.block.definition.id has "chisel:bookshelf") {
            event.drops = ingredients[shelf_drops[event.block.meta]];
        } else if (event.block.definition.id == "csb_ench_table:ender_enchanting_table") {
            event.drops = [<minecraft:enchanting_table>];
            if !isNull(event.player) {
                if !isNull(event.player.currentItem) {
                    if silk_touched(event.player.currentItem) {
                        event.drops = [<csb_ench_table:ender_enchanting_table>];
                    }
                }
            }
        }
    }
});
