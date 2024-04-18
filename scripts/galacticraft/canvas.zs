#modloaded galacticraftcore

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import scripts.utils.removeAndHide.remove;

val flag = <galacticraftcore:flag>;
val pole = <galacticraftcore:steel_pole>;
val wool = <ore:wool>;
val checklist = <galacticraftcore:prelaunch_checklist>.withTag({checklistData: {"satellite.spacestation.overworld": 0 as byte, "moon.moon": 0 as byte, "satellite.spacestation.overworld.equip_oxygen_suit.key": 0 as byte, "planet.mars": 0 as byte, "satellite.spacestation.overworld.create_grapple.key": 0 as byte, "planet.overworld.equip_parachute.key": 0 as byte, "moon.moon.equip_oxygen_suit.key": 0 as byte, "planet.overworld": 0 as byte}});
val book = <minecraft:writable_book>;
val mask = <galacticraftcore:oxygen_mask>;

remove(<galacticraftcore:canvas>);
recipes.remove(flag);
recipes.removeByRecipeName("galacticraftcore:prelaunch_checklist");

recipes.addShapedMirrored("flag", flag,
    [[pole, wool, wool],
     [pole, wool, wool],
     [pole, null, null],]
);
recipes.addShapeless("checklist", checklist, [book, mask]);
