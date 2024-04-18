#modloaded chisel appliedenergistics2

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.chisel.Carving;

val controller = <appliedenergistics2:controller>;
val fakes = [
    <chisel:futura:2>,
    <chisel:futura:4>
] as IItemStack[];

Carving.addGroup("me_controller");
Carving.addVariation("me_controller", controller);
Carving.removeGroup("futura");

for fake in fakes {
    Carving.addVariation("me_controller", fake);
}
