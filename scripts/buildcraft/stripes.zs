#modloaded buildcraftcore buildcrafttransport chisel

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import scripts.utils.patterns.vertical;

val gear = <buildcraftcore:gear_gold>;
val stripes = <chisel:factory:6>;
val pipes = <buildcrafttransport:pipe_stripes_item:*>;
val landmark = <buildcraftcore:marker_volume>;
val lapis = <ore:blockLapis>;

recipes.replaceAllOccurences(gear, stripes, pipes);

recipes.remove(landmark);
vertical("landmarks", landmark * 8, lapis, stripes, stripes);
