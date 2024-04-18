#modloaded chisel
#priority 99

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.chisel.Carving;
import scripts.utils.removeAndHide.removeList;

val wools = <ore:wool>;
val carpets = <ore:carpet>;
val sandstone = <ore:sandstoneYellow>;
val stone_sandstone = <ore:stoneSandstoneYellow>;
val red_sandstone = <ore:sandstoneRed>;
val stone_red_sandstone = <ore:stoneSandstoneRed>;
val yellow_cracked = <chisel:sandstoneyellow>;
val yellow_double_slab = <chisel:sandstoneyellow2:7>;
val red_cracked = <chisel:sandstonered>;
val red_double_slab = <chisel:sandstonered2:7>;
val purpur = <ore:purpur>;
val red_bricks = <ore:brickRed>;

wools.addAll(<ore:blockWool>);

// Remove all items from <ore:blockWool>
<ore:blockWool>.mirror(<ore:blank>);

val wool = {
    <ore:blockWoolWhite>: <chisel:wool_white:*>,
    <ore:blockWoolOrange>: <chisel:wool_orange:*>,
    <ore:blockWoolMagenta>: <chisel:wool_magenta:*>,
    <ore:blockWoolLightBlue>: <chisel:wool_lightblue:*>,
    <ore:blockWoolYellow>: <chisel:wool_yellow:*>,
    <ore:blockWoolLime>: <chisel:wool_lime:*>,
    <ore:blockWoolPink>: <chisel:wool_pink:*>,
    <ore:blockWoolGray>: <chisel:wool_gray:*>,
    <ore:blockWoolLightGray>: <chisel:wool_lightgray:*>,
    <ore:blockWoolCyan>: <chisel:wool_cyan:*>,
    <ore:blockWoolPurple>: <chisel:wool_purple:*>,
    <ore:blockWoolBlue>: <chisel:wool_blue:*>,
    <ore:blockWoolBrown>: <chisel:wool_brown:*>,
    <ore:blockWoolGreen>: <chisel:wool_green:*>,
    <ore:blockWoolRed>: <chisel:wool_red:*>,
    <ore:blockWoolBlack>: <chisel:wool_black:*>
} as IItemStack[IOreDictEntry];

for key, item in wool {
    key.add(item);
}

carpets.addItems([
    <minecraft:carpet:*>,
    <chisel:carpet_black>,
    <chisel:carpet_red>,
    <chisel:carpet_green>,
    <chisel:carpet_brown>,
    <chisel:carpet_blue>,
    <chisel:carpet_purple>,
    <chisel:carpet_cyan>,
    <chisel:carpet_lightgray>,
    <chisel:carpet_gray>,
    <chisel:carpet_pink>,
    <chisel:carpet_lime>,
    <chisel:carpet_yellow>,
    <chisel:carpet_lightblue>,
    <chisel:carpet_magenta>,
    <chisel:carpet_orange>,
    <chisel:carpet_white>,
    <chisel:carpet_black:1>,
    <chisel:carpet_red:1>,
    <chisel:carpet_green:1>,
    <chisel:carpet_brown:1>,
    <chisel:carpet_blue:1>,
    <chisel:carpet_purple:1>,
    <chisel:carpet_cyan:1>,
    <chisel:carpet_lightgray:1>,
    <chisel:carpet_gray:1>,
    <chisel:carpet_pink:1>,
    <chisel:carpet_lime:1>,
    <chisel:carpet_yellow:1>,
    <chisel:carpet_lightblue:1>,
    <chisel:carpet_magenta:1>,
    <chisel:carpet_orange:1>,
    <chisel:carpet_white:1>
]);

<ore:carpetWhite>.addItems([
    <minecraft:carpet>,
    <chisel:carpet_white>,
    <chisel:carpet_white:1>
]);
<ore:carpetOrange>.addItems([
    <minecraft:carpet:1>,
    <chisel:carpet_orange>,
    <chisel:carpet_orange:1>
]);
<ore:carpetMagenta>.addItems([
    <minecraft:carpet:2>,
    <chisel:carpet_magenta>,
    <chisel:carpet_magenta:1>
]);
<ore:carpetLightBlue>.addItems([
    <minecraft:carpet:3>,
    <chisel:carpet_lightblue>,
    <chisel:carpet_lightblue:1>
]);
<ore:carpetYellow>.addItems([
    <minecraft:carpet:4>,
    <chisel:carpet_yellow>,
    <chisel:carpet_yellow:1>
]);
<ore:carpetLime>.addItems([
    <minecraft:carpet:5>,
    <chisel:carpet_lime>,
    <chisel:carpet_lime:1>
]);
<ore:carpetPink>.addItems([
    <minecraft:carpet:6>,
    <chisel:carpet_pink>,
    <chisel:carpet_pink:1>
]);
<ore:carpetGray>.addItems([
    <minecraft:carpet:7>,
    <chisel:carpet_gray>,
    <chisel:carpet_gray:1>
]);
<ore:carpetLightGray>.addItems([
    <minecraft:carpet:8>,
    <chisel:carpet_lightgray>,
    <chisel:carpet_lightgray:1>
]);
<ore:carpetCyan>.addItems([
    <minecraft:carpet:9>,
    <chisel:carpet_cyan>,
    <chisel:carpet_cyan:1>
]);
<ore:carpetPurple>.addItems([
    <minecraft:carpet:10>,
    <chisel:carpet_purple>,
    <chisel:carpet_purple:1>
]);
<ore:carpetBlue>.addItems([
    <minecraft:carpet:11>,
    <chisel:carpet_blue>,
    <chisel:carpet_blue:1>
]);
<ore:carpetBrown>.addItems([
    <minecraft:carpet:12>,
    <chisel:carpet_brown>,
    <chisel:carpet_brown:1>
]);
<ore:carpetGreen>.addItems([
    <minecraft:carpet:13>,
    <chisel:carpet_green>,
    <chisel:carpet_green:1>
]);
<ore:carpetRed>.addItems([
    <minecraft:carpet:14>,
    <chisel:carpet_red>,
    <chisel:carpet_red:1>
]);
<ore:carpetBlack>.addItems([
    <minecraft:carpet:15>,
    <chisel:carpet_black>,
    <chisel:carpet_black:1>
]);

sandstone.addItems([
    <chisel:sandstoneyellow:*>,
    <chisel:sandstoneyellow1:*>,
    <chisel:sandstoneyellow2>,
    <chisel:sandstoneyellow2:1>,
    <chisel:sandstoneyellow2:2>,
    <chisel:sandstoneyellow2:3>,
    <chisel:sandstoneyellow2:4>,
    <chisel:sandstoneyellow2:5>,
    <chisel:sandstoneyellow2:6>,
    <chisel:sandstone-scribbles:*>
]);
stone_sandstone.addItems([
    <chisel:sandstoneyellow:*>,
    <chisel:sandstoneyellow1:*>,
    <chisel:sandstoneyellow2>,
    <chisel:sandstoneyellow2:1>,
    <chisel:sandstoneyellow2:2>,
    <chisel:sandstoneyellow2:3>,
    <chisel:sandstoneyellow2:4>,
    <chisel:sandstoneyellow2:5>,
    <chisel:sandstoneyellow2:6>,
    <chisel:sandstone-scribbles:*>
]);
red_sandstone.addItems([
    <chisel:sandstonered:*>,
    <chisel:sandstonered1:*>,
    <chisel:sandstonered2>,
    <chisel:sandstonered2:1>,
    <chisel:sandstonered2:2>,
    <chisel:sandstonered2:3>,
    <chisel:sandstonered2:4>,
    <chisel:sandstonered2:5>,
    <chisel:sandstonered2:6>,
    <chisel:sandstonered-scribbles:*>
]);
stone_red_sandstone.addItems([
    <chisel:sandstonered:*>,
    <chisel:sandstonered1:*>,
    <chisel:sandstonered2>,
    <chisel:sandstonered2:1>,
    <chisel:sandstonered2:2>,
    <chisel:sandstonered2:3>,
    <chisel:sandstonered2:4>,
    <chisel:sandstonered2:5>,
    <chisel:sandstonered2:6>,
    <chisel:sandstonered-scribbles:*>
]);

stone_sandstone.remove(yellow_cracked);
stone_red_sandstone.remove(red_cracked);
<ore:sandstone>.removeItems([yellow_double_slab, red_double_slab]);
removeList([yellow_double_slab, red_double_slab]);

Carving.removeVariation("sandstoneyellow", yellow_double_slab);
Carving.removeVariation("sandstonered", red_double_slab);

purpur.addItems([
    <chisel:purpur:*>,
    <chisel:purpur1:*>,
    <chisel:purpur2:*>
]);

red_bricks.addItems([
    <minecraft:brick_block>,
    <chisel:bricks:*>,
    <chisel:bricks1:*>,
    <chisel:bricks2:*>
]);
