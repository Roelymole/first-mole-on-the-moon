#modloaded cfm

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import scripts.utils.patterns.surround;
import scripts.utils.patterns.columns;

val tap = <cfm:tap>;
val basin = <cfm:basin>;
val bath = <cfm:bath_bottom>;
val shower_head = <cfm:shower_head_off>;
val shower = <cfm:shower_bottom>;
val toilet = <cfm:toilet>;
val cabinet = <cfm:wall_cabinet>;

val iron = <minecraft:iron_ingot>;
val steel = <nuclearcraft:alloy:5>;
val pipe = <buildcrafttransport:pipe_stone_fluid>;
val quartz = <ore:blockQuartz>;
val vent = <galacticraftcore:air_vent>;
val glass = <ore:paneGlassColorless>;
val button = <minecraft:stone_button>;
val chest = <minecraft:chest>;

recipes.addShapedMirrored("tap", tap,
    [[null, iron, null],
     [pipe, pipe, pipe],
     [pipe, null, null]]
);
recipes.addShaped("basin", basin,
    [[ null,   tap,    null ],
     [quartz, quartz, quartz],
     [ null,  quartz,  null ]]
);
recipes.addShapedMirrored("bath", bath,
    [[ tap,    null,   null ],
     [quartz,  null,  quartz],
     [quartz, quartz, quartz]]
);
recipes.addShapedMirrored("shower_head", shower_head,
    [[pipe,  pipe,  null],
     [null,  pipe,  null],
     [steel, vent, steel]]
);
columns("shower", shower, quartz, glass, quartz);
recipes.addShapedMirrored("toilet", toilet,
    [[quartz, button,  null ],
     [quartz, quartz, quartz],
     [ null,  quartz,  null ]]
);
surround("bathroom_cabinet", cabinet, quartz, chest);
