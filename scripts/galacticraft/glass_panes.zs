import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

val vanilla = <minecraft:glass_pane>;
val glass = <ore:paneGlassColorless>;

val items = [
    <galacticraftcore:fluid_pipe>,
    <galacticraftcore:oxygen_mask>,
    <galacticraftcore:panel_lighting>,
    <galacticraftcore:panel_lighting:1>,
    <galacticraftcore:panel_lighting:2>,
    <galacticraftcore:panel_lighting:3>,
    <galacticraftcore:panel_lighting:4>,
    <davincisvessels:gauge>,
    <davincisvessels:gauge:1>
] as IItemStack[];

for item in items {
    recipes.replaceAllOccurences(vanilla, glass, item);
}

val lens = <galacticraftcore:sensor_lens>;
val glasses = <galacticraftcore:sensor_glasses>;
val redstone = <minecraft:redstone>;
val blue_pane = <ore:paneGlassLightBlue>;
val blue_block = <ore:blockGlassLightBlue>;
val dust = <nuclearcraft:gem_dust:2>;
val ingot = <galacticraftcore:item_basic_moon>;
val wire = <galacticraftcore:aluminum_wire>;
val wafer = <galacticraftcore:basic_item:14>;

recipes.remove(lens);
recipes.remove(glasses);
recipes.addShaped("sensor_lens", lens,
    [[ redstone,  blue_pane,  redstone],
     [blue_pane, blue_block, blue_pane],
     [ redstone,  blue_pane,  redstone]]
);
recipes.addShaped("sensor_glasses", glasses,
    [[wire, wafer, wire],
     [wire,  null, wire],
     [lens, ingot, lens]]
);
