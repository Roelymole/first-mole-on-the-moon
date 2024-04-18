import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import scripts.utils.patterns.plus;

val vacuum = {
    <galacticraftcore:space_glass_clear>: {
        "frame": <galacticraftcore:basic_item:5>,
        "glass": <appliedenergistics2:quartz_glass>
    },
    <galacticraftcore:space_glass_clear:1>: {
        "frame": <galacticraftcore:basic_block_core:4>,
        "glass": <appliedenergistics2:quartz_glass>
    },
    <galacticraftcore:space_glass_vanilla>: {
        "frame": <galacticraftcore:basic_item:5>,
        "glass": <ore:blockGlassColorless>
    },
    <galacticraftcore:space_glass_vanilla:1>: {
        "frame": <galacticraftcore:basic_block_core:4>,
        "glass": <ore:blockGlassColorless>
    },
    <galacticraftcore:space_glass_strong>: {
        "frame": <galacticraftcore:basic_item:5>,
        "glass": <ore:blockGlassStrong>
    },
    <galacticraftcore:space_glass_strong:1>: {
        "frame": <galacticraftcore:basic_block_core:4>,
        "glass": <ore:blockGlassStrong>
    }
} as IIngredient[string][IItemStack];

var i = 0;
for vacuum_glass, components in vacuum {
    recipes.remove(vacuum_glass * 5);
    plus("vacuum_glass_" ~ i, vacuum_glass * 5, components["frame"], components["glass"]);
    i += 1;
}
