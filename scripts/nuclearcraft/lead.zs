#modloaded nuclearcraft galacticraftcore galacticraftplanets

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.nuclearcraft.Melter;
import scripts.utils.removeAndHide.remove;

val gc_lead = <galacticraftplanets:basic_item_venus:1>;
val nc_lead = <nuclearcraft:ingot:2>;
val gc_lead_block = <galacticraftplanets:venus:12>;
val lead_ore = <ore:oreLead>;
val bronze = <galacticraftcore:basic_item:10>;
val valve = <galacticraftplanets:atmospheric_valve>;
val wire = <galacticraftcore:aluminum_wire>;
val engine = <buildcraftcore:engine:1>;
val geothermal_generator = <galacticraftplanets:geothermal_generator>;
val molten_lead = <liquid:lead>;

remove(gc_lead);

recipes.remove(geothermal_generator);
recipes.addShaped("geothermal_generator", geothermal_generator,
    [[bronze, valve, bronze],
     [wire, engine, wire],
     [bronze, nc_lead, bronze]]
);

furnace.remove(gc_lead);
furnace.addRecipe(nc_lead, lead_ore, 0.85);

Melter.removeRecipeWithOutput(molten_lead * 288);
Melter.removeRecipeWithOutput(molten_lead * 1296);

Melter.addRecipe(<ore:oreLead>, molten_lead * 288, 1.25, 1.5, 0);
Melter.addRecipe(<ore:blockLead>, molten_lead * 1296, 9, 1, 0);
