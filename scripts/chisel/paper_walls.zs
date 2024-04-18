#modloaded chisel

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.chisel.Carving;
import scripts.utils.patterns.plus;

val wall = <chisel:paper>;
val stick = <ore:stickWood>;
val paper = <minecraft:paper>;

recipes.remove(wall * 32);
plus("paper_wall", wall, stick, paper);
