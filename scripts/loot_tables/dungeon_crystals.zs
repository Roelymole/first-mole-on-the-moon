#modloaded galacticraftcore sgcraft loottweaker

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;

val core = <sgcraft:sgcorecrystal>;
val controller = <sgcraft:sgcontrollercrystal>;
val pegasus = <sgcraft:pegasus_upgrade>;

val treasure_chests = {
    0: LootTweaker.getTable("galacticraftcore:crashed_probe").getPool("crashed_probe"),
    1: LootTweaker.getTable("galacticraftcore:dungeon_tier_1").getPool("dungeon_tier_1"),
    2: LootTweaker.getTable("galacticraftcore:dungeon_tier_2").getPool("dungeon_tier_2"),
    3: LootTweaker.getTable("galacticraftcore:dungeon_tier_3").getPool("dungeon_tier_3")
} as LootPool[int];

treasure_chests[1].addItemEntry(core, 4);
treasure_chests[2].addItemEntry(controller, 4);
treasure_chests[3].addItemEntry(pegasus, 8);
