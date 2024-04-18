#modloaded woolplates

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import scripts.utils.patterns.vertical;

val wooden = <minecraft:wooden_pressure_plate>;
val plates = {
    <woolplates:wool_plate_white>: <ore:carpetWhite>,
    <woolplates:wool_plate_orange>: <ore:carpetOrange>,
    <woolplates:wool_plate_magenta>: <ore:carpetMagenta>,
    <woolplates:wool_plate_light_blue>: <ore:carpetLightBlue>,
    <woolplates:wool_plate_yellow>: <ore:carpetYellow>,
    <woolplates:wool_plate_lime>: <ore:carpetLime>,
    <woolplates:wool_plate_pink>: <ore:carpetPink>,
    <woolplates:wool_plate_gray>: <ore:carpetGray>,
    <woolplates:wool_plate_silver>: <ore:carpetLightGray>,
    <woolplates:wool_plate_cyan>: <ore:carpetCyan>,
    <woolplates:wool_plate_purple>: <ore:carpetPurple>,
    <woolplates:wool_plate_blue>: <ore:carpetBlue>,
    <woolplates:wool_plate_brown>: <ore:carpetBrown>,
    <woolplates:wool_plate_green>: <ore:carpetGreen>,
    <woolplates:wool_plate_red>: <ore:carpetRed>,
    <woolplates:wool_plate_black>: <ore:carpetBlack>
} as IOreDictEntry[IItemStack];

var i = 0;
for plate, carpet in plates {
    recipes.remove(plate);
    vertical("wool_plate_" ~ i, plate, carpet, wooden);
    i += 1;
}
