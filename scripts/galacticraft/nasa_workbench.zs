#modloaded galacticraftcore chisel

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.chisel.Carving;

val default = <galacticraftcore:rocket_workbench>;
val compact = <galacticraftcore:compact_workbench>;

recipes.removeByRecipeName("galacticraftcore:rocket_workbench_convert");
recipes.remove(compact);

Carving.addGroup("NASA_workbench");
Carving.addVariation("NASA_workbench", default);
Carving.addVariation("NASA_workbench", compact);
