#modloaded jmc

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

val cake = <minecraft:cake>;
val jmc = loadedMods["jmc"];

cake.maxStackSize = 13;

for item in jmc.items {
    item.maxStackSize = 13;
}

<jmc:cheese>.maxStackSize = 64;

if (loadedMods has "galacticraftcore") {
    <galacticraftcore:cheese>.maxStackSize = 13;
}
