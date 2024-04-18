#modloaded galacticraftplanets nuclearcraft

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import scripts.utils.removeAndHide.removeList;
import scripts.utils.patterns.alternate;

val rtgs = [
    <nuclearcraft:rtg_uranium>,
    <nuclearcraft:rtg_plutonium>,
    <nuclearcraft:rtg_americium>
] as IItemStack[];

val rtg = <nuclearcraft:rtg_californium>;
val core = <galacticraftplanets:basic_item_venus:2>;
val graphite = <nuclearcraft:ingot:8>;
val plating = <nuclearcraft:part:3>;
val atomic_battery = <galacticraftplanets:atomic_battery>;
val shielding = <nuclearcraft:rad_shielding>;
val redstone = <minecraft:redstone>;
val plutonium = <nuclearcraft:plutonium>;
val strontium = <nuclearcraft:fission_dust:5>;

removeList(rtgs);
recipes.remove(rtg);
recipes.remove(atomic_battery);

alternate("rtg", rtg, plating, graphite, core);
recipes.addShaped("plutonium_battery", atomic_battery,
    [[null, shielding, null],
     [shielding, redstone, shielding],
     [shielding, plutonium, shielding]]
);
recipes.addShaped("strontium_battery", atomic_battery,
    [[null, shielding, null],
     [shielding, redstone, shielding],
     [shielding, strontium, shielding]]
);
