#modloaded chisel

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import scripts.utils.patterns.rows;

val glass = {
    <ore:blockGlassWhite>: <ore:paneGlassWhite>,
    <ore:blockGlassOrange>: <ore:paneGlassOrange>,
    <ore:blockGlassMagenta>: <ore:paneGlassMagenta>,
    <ore:blockGlassLightBlue>: <ore:paneGlassLightBlue>,
    <ore:blockGlassYellow>: <ore:paneGlassYellow>,
    <ore:blockGlassLime>: <ore:paneGlassLime>,
    <ore:blockGlassPink>: <ore:paneGlassPink>,
    <ore:blockGlassGray>: <ore:paneGlassGray>,
    <ore:blockGlassLightGray>: <ore:paneGlassLightGray>,
    <ore:blockGlassCyan>: <ore:paneGlassCyan>,
    <ore:blockGlassPurple>: <ore:paneGlassPurple>,
    <ore:blockGlassBlue>: <ore:paneGlassBlue>,
    <ore:blockGlassBrown>: <ore:paneGlassBrown>,
    <ore:blockGlassGreen>: <ore:paneGlassGreen>,
    <ore:blockGlassRed>: <ore:paneGlassRed>,
    <ore:blockGlassBlack>: <ore:paneGlassBlack>
} as IOreDictEntry[IOreDictEntry];

for blocks, panes in glass {
    recipes.remove(panes.items[0] * 16);

    for i, block in blocks.items {
        rows(panes.name ~ "_" ~ i, panes.items[i] * 16, block, block);
    }
}
