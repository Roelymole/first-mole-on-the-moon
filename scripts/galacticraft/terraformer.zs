#modloaded galacticraftcore galacticraftplanets biomesoplenty

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

val terraformer = <galacticraftplanets:mars_machine>;
val desh = <galacticraftplanets:item_basic_mars:5>;
var tank = <ore:tank>;
val gem = <biomesoplenty:gem:2>;
val bubble = <galacticraftcore:distributor>;
val wafer = <galacticraftcore:basic_item:14>;

recipes.remove(terraformer);
recipes.addShaped("terraformer", terraformer,
    [[desh,  tank, desh],
     [gem, bubble,  gem],
     [desh, wafer, desh]]
);
