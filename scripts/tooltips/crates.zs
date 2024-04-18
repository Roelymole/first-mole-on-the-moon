#modloaded cfm

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

val crowbar = <cfm:item_crow_bar>;
val crates = [
    <cfm:crate>,
    <cfm:crate_spruce>,
    <cfm:crate_birch>,
    <cfm:crate_jungle>,
    <cfm:crate_acacia>,
    <cfm:crate_dark_oak>
] as IItemStack[];

crowbar.addTooltip("Used to open Sealed Crates.");

for crate in crates {
    crate.addTooltip("Once sealed use a Crowbar to open.");
}
