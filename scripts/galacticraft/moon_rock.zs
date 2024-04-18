#modloaded galacticraftcore

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

val moon_rock = <galacticraftcore:basic_block_moon:4>;
val redstone = <minecraft:redstone>;
val torch = <minecraft:redstone_torch>;
val quartz = <ore:netherQuartz>;

recipes.addShaped("repeater_moon_rock", <minecraft:repeater>,
    [[torch, redstone, torch],
     [moon_rock, moon_rock, moon_rock]]
);
recipes.addShaped("comparator_moon_rock", <minecraft:comparator>,
    [[null, torch, null],
     [torch, quartz, torch],
     [moon_rock, moon_rock, moon_rock]]
);

if (loadedMods has "buildcrafttransport") {
    val stone_pipe = <buildcrafttransport:pipe_stone_item>.definition;
    val glass = [
        <ore:blockGlassColorless>,
        <ore:blockGlassWhite>,
        <ore:blockGlassOrange>,
        <ore:blockGlassMagenta>,
        <ore:blockGlassLightBlue>,
        <ore:blockGlassYellow>,
        <ore:blockGlassLime>,
        <ore:blockGlassPink>,
        <ore:blockGlassGray>,
        <ore:blockGlassLightGray>,
        <ore:blockGlassCyan>,
        <ore:blockGlassPurple>,
        <ore:blockGlassBlue>,
        <ore:blockGlassBrown>,
        <ore:blockGlassGreen>,
        <ore:blockGlassRed>,
        <ore:blockGlassBlack>
    ] as IOreDictEntry[];

    for i, block in glass {
        recipes.addShaped("pipe_moon_rock_" ~ i, stone_pipe.makeStack(i),
            [[moon_rock, block, moon_rock]]
        );
    }
}
