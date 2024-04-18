#modloaded nuclearcraft galacticraftcore
#priority 99

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.nuclearcraft.Separator;
import scripts.utils.removeAndHide.removeList;

val unwanted = [
    <nuclearcraft:solar_panel_basic>,
    <nuclearcraft:solar_panel_advanced>,
    <nuclearcraft:solar_panel_du>,
    <nuclearcraft:solar_panel_elite>,
    <nuclearcraft:ore>,
    <nuclearcraft:ore:1>,
    <nuclearcraft:ingot>,
    <nuclearcraft:ingot:1>,
    <nuclearcraft:ingot:12>,
    <nuclearcraft:compound:4>,
    <nuclearcraft:compound:6>,
    <nuclearcraft:boron>,
    <nuclearcraft:boron:1>,
    <nuclearcraft:lithium>,
    <nuclearcraft:lithium:1>,
    <nuclearcraft:wasteland_earth>,
    <nuclearcraft:wasteland_portal>,
    <nuclearcraft:compound:9>,
    <nuclearcraft:part:13>,
    <nuclearcraft:part:15>,
    <nuclearcraft:flour>
] as IItemStack[];

val separator = [
    <nuclearcraft:ingot:5> * 12,
    //<nuclearcraft:dust:5> * 12,
    <nuclearcraft:ingot:6> * 10,
    //<nuclearcraft:dust:6> * 10
] as IItemStack[];

removeList(unwanted);

val blocks = {
    "blockTin": <nuclearcraft:ingot_block:1>,
    "blockCopper": <nuclearcraft:ingot_block>,
    "blockAluminum": <nuclearcraft:ingot_block:12>
} as IItemStack[string];

for name, block in blocks {
    recipes.remove(block);
}

recipes.removeByRecipeName("nuclearcraft:basic_block_core");
recipes.removeByRecipeName("nuclearcraft:basic_block_core_1");
recipes.removeByRecipeName("nuclearcraft:basic_block_core_2");
recipes.removeByRecipeName("nuclearcraft:upgrade_2");

for item in separator {
    Separator.removeRecipeWithInput(item);
}
