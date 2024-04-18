#modloaded nuclearcraft

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.nuclearcraft.AlloyFurnace;
import mods.nuclearcraft.Melter;
import mods.nuclearcraft.IngotFormer;
import scripts.utils.removeAndHide.removeList;

val remove_alloys = {
    <nuclearcraft:alloy:7>: 4,
    <nuclearcraft:alloy:8>: 4,
    <nuclearcraft:alloy:10>: 1,
    <nuclearcraft:alloy:11>: 2,
    <nuclearcraft:alloy:16>: 16
} as int[IItemStack];

val lead_platinum = <nuclearcraft:alloy:9>;
val extreme_alloy = <nuclearcraft:alloy:10>;

removeList(remove_alloys.keys);
removeList([lead_platinum, <nuclearcraft:alloy:14>]);

for alloy, i in remove_alloys {
    AlloyFurnace.removeRecipeWithOutput(alloy * i);
}

Melter.removeRecipeWithInput(lead_platinum);
IngotFormer.removeRecipeWithOutput(lead_platinum);

if (loadedMods has "galacticraftplanets") {
    val coolant_heater = <nuclearcraft:salt_fission_heater>;
    val titanium = <galacticraftplanets:item_basic_asteroids>;
    val silicon_carbide = <nuclearcraft:alloy:13>;
    val thermoconducting = <nuclearcraft:alloy:11>;

    recipes.replaceAllOccurences(extreme_alloy, silicon_carbide, coolant_heater);
    recipes.replaceAllOccurences(extreme_alloy, titanium);
    recipes.replaceAllOccurences(thermoconducting, titanium);
}
