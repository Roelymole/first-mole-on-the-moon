#modloaded chisel galacticraftcore

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.chisel.Carving;
import scripts.utils.patterns.surround;

val screens = [
    <galacticraftcore:view_screen>,
    <chisel:futura>,
    <chisel:futura:1>
] as IItemStack[];
val rainbow = [
    <chisel:futura:5>,
    <chisel:futura:3>
] as IItemStack[];
val glass = <ore:paneGlassBlack>;
val wafer = <galacticraftcore:basic_item:13>;
var steel = <galacticraftcore:basic_item:9>;
if (loadedMods has "nuclearcraft") {
    steel = <nuclearcraft:alloy:5>;
}

recipes.remove(screens[0]);
recipes.remove(screens[1] * 8);
recipes.addShaped("view_screen", screens[0],
    [[steel, steel, steel],
     [steel, glass, steel],
     [steel, wafer, steel]]
);

Carving.addGroup("screen");
for block in screens {
    Carving.addVariation("screen", block);
}

if (loadedMods has "biomesoplenty") {
    val gold = <minecraft:gold_ingot>;
    val artifact = <biomesoplenty:terrestrial_artifact>;

    surround("rainbow_block", rainbow[0] * 4, gold, artifact);

    Carving.addGroup("rainbow");
    for block in rainbow {
        Carving.addVariation("rainbow", block);
    }
} else {
    for block in rainbow {
        Carving.addVariation("screen", block);
    }
}
