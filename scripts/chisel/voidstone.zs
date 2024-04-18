#modloaded chisel

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import mods.chisel.Carving;
import scripts.utils.patterns.surround;
import scripts.utils.patterns.checkerboard;

val voidstone = {
    "raw": <chisel:voidstone>,
    "medium_tiles": <chisel:voidstone:1>,
    "panel": <chisel:voidstone:2>,
    "skulls": <chisel:voidstone:3>,
    "rune": <chisel:voidstone:4>,
    "metallic": <chisel:voidstone:5>,
    "eye": <chisel:voidstone:6>,
    "dent": <chisel:voidstone:7>,
} as IItemStack[string];

val primal = {
    "raw": <chisel:energizedvoidstone>,
    "medium_tiles": <chisel:energizedvoidstone:1>,
    "panel": <chisel:energizedvoidstone:2>,
    "skulls": <chisel:energizedvoidstone:3>,
    "rune": <chisel:energizedvoidstone:4>,
    "metallic": <chisel:energizedvoidstone:5>,
    "eye": <chisel:energizedvoidstone:6>,
    "dent": <chisel:energizedvoidstone:7>,
} as IItemStack[string];

val runic = <chisel:voidstonerunic>.definition;
val runes = <ore:voidstoneRunic>;
runes.addItems([
    voidstone["rune"],
    <chisel:voidstonerunic:*>
]);

val dyes = [
    <ore:dyeWhite>,
    <ore:dyeBlack>,
    <ore:dyeRed>,
    <ore:dyeGreen>,
    <ore:dyeBrown>,
    <ore:dyeBlue>,
    <ore:dyePurple>,
    <ore:dyeCyan>,
    <ore:dyeLightGray>,
    <ore:dyeGray>,
    <ore:dyePink>,
    <ore:dyeLime>,
    <ore:dyeYellow>,
    <ore:dyeLightBlue>,
    <ore:dyeMagenta>,
    <ore:dyeOrange>
] as IOreDictEntry[];

val quartz = <minecraft:quartz>;
val eye = <minecraft:ender_eye>;
val skull = <ore:skull>;
skull.addItems([<minecraft:skull>, <minecraft:skull:1>]);

val voidstones = <ore:voidstone>;
voidstones.addItems([
    <chisel:voidstone:*>,
    <chisel:energizedvoidstone:*>,
    <chisel:voidstonerunic:*>
]);

Carving.addGroup("primal_voidstone");
for name, block in primal {
    Carving.removeVariation("voidstone", block);
    Carving.addVariation("primal_voidstone", block);
}

for i in 0 to 16 {
    if (i == 15) {
        recipes.addShapeless("voidstone_rune_redye", voidstone["rune"], [runes, dyes[i]]);
        Carving.removeVariation("voidstone", voidstone["rune"]);
    } else {
        recipes.addShapeless("runic_voidstone_" ~ i, runic.makeStack(i), [runes, dyes[i]]);
        Carving.removeVariation("voidstone", runic.makeStack(i));
    }
}

surround("voidstone_rune", voidstone["rune"] * 8, voidstone["panel"], quartz);
surround("primal_rune", primal["rune"] * 8, primal["panel"], quartz);
surround("voidstone_skulls", voidstone["skulls"] * 8, voidstone["raw"], skull);
surround("primal_skulls", primal["skulls"] * 8, primal["raw"], skull);
surround("voidstone_eye", voidstone["eye"] * 8, voidstone["panel"], eye);
surround("primal_eye", primal["eye"] * 8, primal["panel"], eye);

Carving.removeVariation("voidstone", voidstone["rune"]);
Carving.removeVariation("voidstone", voidstone["skulls"]);
Carving.removeVariation("voidstone", voidstone["eye"]);

Carving.removeVariation("primal_voidstone", primal["rune"]);
Carving.removeVariation("primal_voidstone", primal["skulls"]);
Carving.removeVariation("primal_voidstone", primal["eye"]);
Carving.removeVariation("primal_voidstone", primal["dent"]);
Carving.addVariation("primal_voidstone", primal["dent"]);

if (loadedMods has "biomesoplenty") {
    val obsidian = <ore:obsidian>;
    val shard = <biomesoplenty:crystal_shard>;
    val sturdy = <chisel:technicalnew:2>;

    recipes.remove(voidstone["raw"] * 16);
    recipes.remove(voidstone["raw"] * 48);
    surround("voidstone_raw", voidstone["raw"] * 8, shard, obsidian);
    checkerboard("voidstone_metallic", voidstone["metallic"] * 4, shard, sturdy);

    Carving.removeVariation("voidstone", voidstone["metallic"]);
    Carving.removeVariation("primal_voidstone", primal["metallic"]);
}

if (loadedMods has "buildcrafttransport") {
    val void_pipe = <buildcrafttransport:pipe_void_item:*>;
    recipes.replaceAllOccurences(<minecraft:redstone>, voidstones, void_pipe);
    recipes.replaceAllOccurences(<minecraft:dye>, voidstones, void_pipe);
}

if (loadedMods has "nuclearcraft") {
    val molten_purpur = <liquid:purpur> * 250;

    for name, block in primal {
        if (name == "rune") {
            mods.nuclearcraft.Infuser.addRecipe(runes, molten_purpur, block);
        } else {
            mods.nuclearcraft.Infuser.addRecipe(voidstone[name], molten_purpur, block);
        }
    }
}
