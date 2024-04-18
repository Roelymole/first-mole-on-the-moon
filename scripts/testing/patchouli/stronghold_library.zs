#modloaded patchouli loottweaker

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;

val guide_book = <patchouli:guide_book>.withTag({"patchouli:book": "patchouli:first_mole_on_the_moon_guide_book"});

val library_chest = LootTweaker.getTable("minecraft:chests/stronghold_library").getPool("main");
library_chest.addItemEntry(guide_book, 4);

if (loadedMods has "nuclearcraft") {
    library_chest.addItemEntry(<patchouli:guide_book>.withTag({"patchouli:book": "nuclearcraft:guide"}), 2);
}

if (loadedMods has "buildcraftlib") {
    library_chest.addItemEntry(<buildcraftlib:guide>, 2);
}

if (loadedMods has "opencomputers") {
    library_chest.addItemEntry(<opencomputers:tool:4>, 2);
}
