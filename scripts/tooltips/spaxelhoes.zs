#modloaded nuclearcraft

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

val efficiency = {
    <nuclearcraft:spaxelhoe_tough>: "IV",
    <nuclearcraft:spaxelhoe_hard_carbon>: "IV",
    <nuclearcraft:spaxelhoe_boron_nitride>: "III"
} as string[IItemStack];

val spaxelhoes = [
    <nuclearcraft:spaxelhoe_tough>,
    <nuclearcraft:spaxelhoe_hard_carbon>,
    <nuclearcraft:spaxelhoe_boron_nitride>
] as IItemStack[];

for spaxelhoe in spaxelhoes {
    spaxelhoe.addShiftTooltip("Efficiency enchantments above Efficiency " ~ efficiency[spaxelhoe]);
    spaxelhoe.addShiftTooltip("are slower than Efficiency " ~ efficiency[spaxelhoe] ~ ".");
    spaxelhoe.addShiftTooltip("Put in the crafting table to reduce to Efficiency " ~ efficiency[spaxelhoe] ~ ".");
}
