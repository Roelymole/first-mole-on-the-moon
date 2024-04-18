#modloaded cfm

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import scripts.utils.patterns.surround;
import scripts.utils.patterns.columns;
import scripts.utils.patterns.vertical;
import scripts.utils.patterns.tablepattern;
import scripts.utils.patterns.chairpattern;
import scripts.utils.patterns.benchpattern;

val chair = <cfm:modern_chair>;
val table = <cfm:modern_table>;
val outdoor = <cfm:modern_table_outdoor>;
val coffee = <cfm:modern_coffee_table>;
val tv_stand = <cfm:tv_stand>;
val stairs = <cfm:modern_stair>;
val window = <cfm:modern_window>;
val door = <cfm:modern_sliding_door>;
val bin = <cfm:bin>;
val switch = <cfm:light_switch_off>;
val modern_light = <cfm:modern_light_off>;
val ceiling_light = <cfm:ceiling_light_off>;
val ceiling_fan = <cfm:ceiling_fan>;
val mirror = <cfm:mirror>;

val iron = <galacticraftcore:basic_item:11>;
val steel = <galacticraftcore:basic_item:9>;
val aluminium = <galacticraftcore:basic_item:8>;
val iron_ingot = <minecraft:iron_ingot>;
val steel_ingot = <nuclearcraft:alloy:5>;
val nugget = <minecraft:iron_nugget>;
val glass = <ore:paneGlassColorless>;
val white = <ore:paneGlassWhite>;
val lever = <minecraft:lever>;
val wire = <galacticraftcore:aluminum_wire:2>;
val lamp = <minecraft:redstone_lamp>;
val pole = <galacticraftcore:steel_pole>;
val fan = <galacticraftcore:air_fan>;
val motor = <nuclearcraft:part:8>;

chairpattern("modern_chair", chair, iron, steel_ingot);
tablepattern("modern_table", table, iron, steel_ingot);
tablepattern("modern_outdoor_table", outdoor, iron, steel_ingot, null, glass);
benchpattern("modern_coffee_table", coffee, iron, steel_ingot);
recipes.addShaped("tv_stand", tv_stand,
    [[iron_ingot,  iron,  iron_ingot],
     [iron_ingot,  iron,  iron_ingot],
     [steel_ingot, null, steel_ingot]]
);
recipes.addShapedMirrored("modern_stairs", stairs * 4,
    [[   iron,     null, null],
     [steel_ingot, iron, null],
     [null, steel_ingot, iron]]
);
surround("modern_window", window, nugget, glass);
columns("modern_door", door * 3, iron_ingot, glass, iron_ingot);
recipes.addShaped("bin", bin,
    [[   iron,       iron,       iron   ],
     [iron_ingot,    null,    iron_ingot],
     [iron_ingot, iron_ingot, iron_ingot]]
);
recipes.addShapedMirrored("light_switch", switch,
    [[iron_ingot, null],
     [   wire,   lever],
     [iron_ingot, null]]
);
recipes.addShaped("modern_light", modern_light * 4,
    [[steel,  lamp, steel],
     [white, white, white]]
);
recipes.addShaped("ceiling_light", ceiling_light * 4,
    [[null, steel_ingot, null],
     [null,    pole,     null],
     [white,   lamp,    white]]
);
vertical("ceiling_fan", ceiling_fan, pole, motor, fan);
columns("mirror", mirror, aluminium, glass, null, true);
