#modloaded biomesoplenty

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import scripts.utils.patterns.checkerboard;

val permafrost = <biomesoplenty:hard_ice>;
val ice = <ore:ice>;
val dirt = <ore:dirt>;

checkerboard("permafrost", permafrost * 2, ice, dirt, true);
