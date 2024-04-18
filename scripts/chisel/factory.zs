#modloaded chisel galacticraftcore

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.chisel.Carving;
import scripts.utils.patterns.checkerboard;
import scripts.utils.patterns.plus;
import scripts.utils.patterns.alternate;
import scripts.utils.patterns.surround;
import scripts.utils.patterns.fullgrid;

val plating = [
    <chisel:factory>,
    <chisel:factory:1>,
    <chisel:factory:2>,
    <chisel:factory:3>,
    <chisel:factory:9>,
    <chisel:factory:11>,
    <chisel:factory:12>,
    <chisel:factory:14>,
    <chisel:factory:15>,
    <chisel:technical:2>,
    <chisel:technical:12>,
    <chisel:technical1:4>,
    <chisel:technicalnew>,
    <chisel:technicalnew:1>,
    <chisel:technicalnew:2>,
    <chisel:technicalnew:5>
] as IItemStack[];
val wireframe = [
    <chisel:factory:4>,
    <chisel:factory:5>,
    <chisel:factory1:4>,
    <chisel:factory1:1>
] as IItemStack[];
val scaffolding = [
    <chisel:technical>,
    <chisel:technical1>,
    <chisel:technicalnew:7>
] as IItemStack[];
val stripes = [
    <chisel:factory:6>,
    <chisel:factory:7>,
    <chisel:technical:1>
] as IItemStack[];
val circuits = [
    <chisel:factory:8>,
    <chisel:factory1:2>,
    <chisel:factory1>,
    <chisel:factory:10>
] as IItemStack[];
val grates = [
    <chisel:technical:13>,
    <chisel:technical:15>,
    <chisel:technicalnew:4>,
    <chisel:technical:7>,
    <chisel:technical:8>,
    <chisel:factory:13>,
    <chisel:factory1:3>
] as IItemStack[];
val pipes = [
    <chisel:technical:3>,
    <chisel:technical:5>,
    <chisel:technicalnew:6>,
    <chisel:technicalnew:8>
] as IItemStack[];
val cables = <chisel:technical:11>;
val megacell = <chisel:technicalnew:3>;
val gears = <chisel:technical:10>;
val insulation = <chisel:technical:9>;

val planks = <ore:plankWood>;
val iron = <minecraft:iron_ingot>;
val gold = <minecraft:gold_ingot>;
val plate = <galacticraftcore:basic_item:11>;
val grating = <galacticraftcore:grating>;
val stick = <ore:stickWood>;
val pole = <galacticraftcore:steel_pole>;
val yellow = <ore:blockConcreteYellow>;
val black = <ore:blockConcreteBlack>;
val orange = <ore:blockConcreteOrange>;
val white = <ore:blockConcreteWhite>;
val pcb = <opencomputers:material:4>;
val bars = <ore:ironBars>;
bars.addItems([
    <minecraft:iron_bars>,
    <chisel:ironpane:*>
]);
val pipe = <galacticraftcore:fluid_pipe>;
val wire = <galacticraftcore:aluminum_wire>;
val battery = <galacticraftcore:battery:*>;
val wood_gear = <buildcraftcore:gear_wood>;
val stone_gear = <buildcraftcore:gear_stone>;
val wool = <ore:wool>;

recipes.remove(<chisel:factory> * 32);
Carving.removeGroup("factory");

alternate("factory_blocks", plating[0] * 16, plate, iron);
alternate("wireframe", wireframe[0] * 8, iron, grating);
checkerboard("factory_scaffolding", scaffolding[0] * 8, stick, pole);
alternate("caution_yb", stripes[0] * 8, yellow, black);
alternate("caution_ow", stripes[1] * 8, orange, white);
alternate("caution_plates", stripes[2] * 8, iron, stripes[0], plate);
alternate("factory_circuits", circuits[0] * 8, iron, pcb);
surround("factory_grates", grates[0] * 8, iron, bars);
plus("factory_pipes", pipes[0] * 8, iron, pipe);
plus("factory_cables", cables * 8, iron, wire);
fullgrid("megacell_battery", megacell, battery, true);
alternate("gears", gears * 8, gold, stone_gear, wood_gear);
plus("insulation", insulation * 8, iron, wool);

Carving.addGroup("plating");
for block in plating {
    Carving.addVariation("plating", block);
}
Carving.addGroup("wireframe");
for block in wireframe {
    Carving.addVariation("wireframe", block);
}
Carving.addGroup("scaffolding");
for block in scaffolding {
    Carving.addVariation("scaffolding", block);
}
Carving.addGroup("circuits");
for block in circuits {
    Carving.addVariation("circuits", block);
}
Carving.addGroup("grates");
for block in grates {
    Carving.addVariation("grates", block);
}
Carving.addGroup("pipes");
for block in pipes {
    Carving.addVariation("pipes", block);
}
