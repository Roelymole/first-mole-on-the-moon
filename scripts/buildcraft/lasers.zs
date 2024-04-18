import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

val laser = <buildcraftsilicon:laser>;
val assembly = <buildcraftsilicon:assembly_table>;
val advanced = <buildcraftsilicon:advanced_crafting_table>;
val obsidian = <ore:obsidian>;
val ruby = <biomesoplenty:gem:1>;
val beam_core = <galacticraftplanets:item_basic_asteroids:8>;
val lamp = <minecraft:redstone_lamp>;
val redstone = <minecraft:redstone>;
val gear = <buildcraftcore:gear_diamond>;
val crafting = <minecraft:crafting_table>;
val chipset = <buildcraftsilicon:redstone_chipset>;

recipes.remove(laser);
recipes.remove(assembly);
recipes.remove(advanced);

recipes.addShaped("laser", laser,
    [[obsidian,   lamp,    obsidian],
     [obsidian, beam_core, obsidian],
     [  null,     ruby,      null  ]]
);
recipes.addShaped("assembly_table", assembly,
    [[obsidian, redstone, obsidian],
     [obsidian,   gear,   obsidian]]
);
recipes.addShaped("advanced_crafting_table", advanced,
    [[obsidian, crafting, obsidian],
     [obsidian,  chipset, obsidian]]
);
