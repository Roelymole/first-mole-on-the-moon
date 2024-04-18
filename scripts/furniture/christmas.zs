#modloaded cfm galacticraftcore

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemCondition;
import scripts.utils.patterns.tablepattern;
import scripts.utils.patterns.rows;

val tree = <cfm:tree_bottom>;
val wreath = <cfm:wreath>;
val lights = <cfm:fairy_light>;
val candle = <cfm:candle>;
val mantel = <cfm:mantel_piece>;
val chimney = <cfm:chimney>;

val spruce = <minecraft:leaves:1>;
val pot = <minecraft:flower_pot>;
val redstone = <minecraft:redstone>;
val gold = <minecraft:gold_nugget>;
val wire = <galacticraftcore:aluminum_wire>;
val red = <ore:blockGlassRed>;
val green = <ore:blockGlassGreen>;
val torch = <minecraft:torch>;
val steel = <nuclearcraft:alloy:5>;
val pole = <galacticraftcore:steel_pole>;
val compressed = <galacticraftcore:basic_item:9>;
val bricks = <ore:brickRed>;
val cobble = <minecraft:stone_slab:3>;

recipes.addShaped("christmas_tree", tree,
    [[ null,  spruce,  null ],
     [spruce, spruce, spruce],
     [ null,    pot,   null ]]
);
recipes.addShapedMirrored("wreath", wreath,
    [[redstone, spruce, gold],
     [spruce,  null,  spruce],
     [gold, spruce, redstone]]
);
recipes.addShaped("fairy_lights", lights,
    [[wire, wire, wire],
     [green, red, green]]
);
recipes.addShaped("candle", candle,
    [[torch, torch, torch],
     [steel, pole, steel],
     [null, compressed, null]]
);
tablepattern("mantel_piece", mantel, bricks, bricks);
rows("chimney", chimney, cobble, bricks, bricks);
