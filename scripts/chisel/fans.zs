#modloaded chisel galacticraftcore nuclearcraft

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.chisel.Carving;

val scaffold = <ore:scaffold>;
scaffold.addItems([<chisel:technical>, <chisel:technicalnew:7>]);
val transparent_scaffold = <chisel:technical1>;
val motor = <nuclearcraft:part:8>;
val oxygen_fan = <galacticraftcore:air_fan>;
val fan = <chisel:technical:4>;
val transparent_fan = <chisel:technical1:1>;

val fans = [
    <chisel:technical:4>,
    <chisel:technical:6>,
    <chisel:technical:14>,
    <chisel:technical1:1>,
    <chisel:technical1:2>,
    <chisel:technical1:3>
] as IItemStack[];

recipes.addShapedMirrored("fan", fan, [[scaffold, motor, oxygen_fan]]);
recipes.addShapedMirrored("transparent_fan", transparent_fan, [[transparent_scaffold, motor, oxygen_fan]]);

Carving.addGroup("fans");

for block in fans {
    //Carving.removeVariation("factory", block);
    Carving.addVariation("fans", block);
}
