#modloaded galacticraftcore

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

val copper = <galacticraftcore:basic_block_core:5>;
val tin = <galacticraftcore:basic_block_core:6>;
val aluminium = <galacticraftcore:basic_block_core:7>;

print(<minecraft:iron_ore>.hardness);
print(copper.hardness);

copper.hardness = 0.75;
tin.hardness = 0.75;
aluminium.hardness = 0.75;

print(copper.hardness);
