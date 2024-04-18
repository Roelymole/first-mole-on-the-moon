#modloaded cfm

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import scripts.utils.patterns.rows;
import scripts.utils.patterns.tablepattern;
import scripts.utils.patterns.diagonal;

val fridge = <cfm:freezer>;
val oven = <cfm:oven>;
val extractor = <cfm:range_hood>;
val washing_machine = <cfm:washing_machine>;
val dishwasher = <cfm:dishwasher>;
val microwave = <cfm:microwave>;
val toaster = <cfm:toaster>;
val blender = <cfm:blender>;
val alarm = <cfm:fire_alarm_off>;
val jar = <cfm:cookie_jar>;
val cup = <cfm:item_cup>;
val plate = <cfm:plate>;
val chopping_board = <cfm:chopping_board>;

val block = <minecraft:iron_block>;
val ingot = <minecraft:iron_ingot>;
val iron = <galacticraftcore:basic_item:11>;
val steel = <galacticraftcore:basic_item:9>;
val chest = <minecraft:chest>;
val furnace = <minecraft:furnace>;
val vent = <galacticraftcore:air_vent>;
val lantern = <minecraft:sea_lantern>;
val glass = <ore:paneGlassColorless>;
val white = <ore:paneGlassWhite>;
val flood = <buildcraftfactory:flood_gate>;
val grate = <galacticraftcore:grating>;
val bars = <ore:ironBars>;
val piston = <minecraft:piston>;
val lever = <minecraft:lever>;
val keypad = <opencomputers:material:16>;
val fan = <galacticraftcore:air_fan>;
val motor = <nuclearcraft:part:8>;
val pole = <galacticraftcore:steel_pole>;
val note_block = <minecraft:noteblock>;
val battery = <galacticraftcore:battery>.withTag({electricity: 15000.0 as float});
val americium = <nuclearcraft:americium>;
val quartz = <ore:blockQuartz>;
val planks = <ore:plankWood>;
val log = <ore:logWood>;

recipes.addShaped("fridge", fridge,
    [[block,  block,  block],
     [block,  chest,  block],
     [block, furnace, block]]
);
recipes.addShaped("oven", oven,
    [[steel,  block,  steel],
     [block,  white,  block],
     [block, furnace, block]]
);
recipes.addShapedMirrored("extractor_fan", extractor,
    [[  iron,  null, null],
     [  iron,  iron, iron],
     [lantern, iron, vent]]
);
recipes.addShaped("washing_machine", washing_machine,
    [[block, flood, block],
     [block, white, block],
     [block, motor, block]]
);
tablepattern("dishwasher", dishwasher, block, block, grate, flood);
recipes.addShapedMirrored("microwave", microwave,
    [[ iron,  iron,  steel],
     [white, white, keypad],
     [ iron,  iron,  steel]]
);
recipes.addShapedMirrored("toaster", toaster,
    [[ iron,  bars,  iron],
     [lever, piston, iron],
     [steel, steel, steel]]
);
recipes.addShaped("blender", blender,
    [[white, steel, white],
     [white,  fan,  white],
     [steel, motor, steel]]
);
recipes.addShapedMirrored("fire_alarm", alarm,
    [[  ingot,      ingot,    ingot ],
     [note_block, americium, battery],
     [  ingot,      ingot,    ingot ]]
);
recipes.addShaped("cookie_jar", jar,
    [[null,  steel,  null],
     [white,  null, white],
     [white, white, white]]
);
recipes.addShaped("cup", cup,
    [[glass,  null, glass],
     [glass,  null, glass],
     [glass, glass, glass]]
);
recipes.addShaped("plate", plate,
    [[quartz, null, quartz],
     [ null, quartz, null ]]
);
rows("chopping_board", chopping_board, log, planks, log);
