#modloaded buildcraftfactory chisel galacticraftcore
#priority 100

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.chisel.Carving;

val tank_bc = <buildcraftfactory:tank>;
val tank_gc = <galacticraftcore:fluid_tank>;
val tanks = <ore:tank>;
tanks.addItems([tank_bc, tank_gc]);

recipes.remove(tank_gc);
recipes.replaceAllOccurences(tank_bc, tanks);

Carving.addGroup("tank");
for tank in tanks.items {
    Carving.addVariation("tank", tank);
}
