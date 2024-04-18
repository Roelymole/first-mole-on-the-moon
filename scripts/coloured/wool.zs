#priority 100

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import scripts.arrays.dyes.colours;
import scripts.arrays.wool.wool;

val wool_def = <minecraft:wool>.definition;
val carpet_def = <minecraft:carpet>.definition;

val carpets = [
    <ore:carpetWhite>,
    <ore:carpetOrange>,
    <ore:carpetMagenta>,
    <ore:carpetLightBlue>,
    <ore:carpetYellow>,
    <ore:carpetLime>,
    <ore:carpetPink>,
    <ore:carpetGray>,
    <ore:carpetLightGray>,
    <ore:carpetCyan>,
    <ore:carpetPurple>,
    <ore:carpetBlue>,
    <ore:carpetBrown>,
    <ore:carpetGreen>,
    <ore:carpetRed>,
    <ore:carpetBlack>
] as IOreDictEntry[];

for i, colour in colours {
    recipes.replaceAllOccurences(wool_def.makeStack(i), wool[colour]);
}

for i, block in carpets {
    recipes.replaceAllOccurences(carpet_def.makeStack(i), block);
}
