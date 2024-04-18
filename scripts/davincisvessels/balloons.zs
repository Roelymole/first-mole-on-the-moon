#modloaded davincisvessels

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import scripts.utils.patterns.alternate;

var balloon = <davincisvessels:balloon>;
val balloon_def = balloon.definition;
val strint = <minecraft:string>;

val wools = [
    <ore:blockWoolWhite>,
    <ore:blockWoolOrange>,
    <ore:blockWoolMagenta>,
    <ore:blockWoolLightBlue>,
    <ore:blockWoolYellow>,
    <ore:blockWoolLime>,
    <ore:blockWoolPink>,
    <ore:blockWoolGray>,
    <ore:blockWoolLightGray>,
    <ore:blockWoolCyan>,
    <ore:blockWoolPurple>,
    <ore:blockWoolBlue>,
    <ore:blockWoolBrown>,
    <ore:blockWoolGreen>,
    <ore:blockWoolRed>,
    <ore:blockWoolBlack>
] as IOreDictEntry[];

for i, wool in wools {
    balloon = balloon_def.makeStack(i);
    recipes.removeShapeless(balloon, [wool.items[0], strint]);
    alternate("balloon_" ~ i, balloon * 4, strint, wool);
}

// Allow Light Grey Balloons to be made by redying different coloured Balloons
recipes.addShapeless("light_grey_balloon", <davincisvessels:balloon:8>, [<minecraft:dye:7>, <ore:balloon>]);
