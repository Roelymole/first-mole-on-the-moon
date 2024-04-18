#modloaded cfm

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

val computer = <cfm:computer>;
val printer = <cfm:printer>;
val stereo = <cfm:stereo>;
val tv = <cfm:tv>;
val modern_tv = <cfm:modern_tv>;
val remote = <cfm:tv_remote>;
val digital_clock = <cfm:digital_clock>.definition;

val steel = <galacticraftcore:basic_item:9>;
val glass = <ore:paneGlassBlack>;
val basic = <galacticraftcore:basic_item:13>;
val advanced = <galacticraftcore:basic_item:14>;
val wireless = <wirelessredstone:circuit>;
val screen = <opencomputers:screen1>;
val case = <opencomputers:case1>;
val keyboard = <opencomputers:keyboard>;
val note_block = <minecraft:noteblock>;
val jukebox = <minecraft:jukebox>;
val frequency = <galacticraftcore:basic_item:19>;
val motor = <nuclearcraft:part:8>;
val laser = <buildcraftsilicon:laser>;
val keypad = <opencomputers:material:16>;
val keys = <opencomputers:material:14>;
var concrete = <minecraft:concrete>;
val concrete_def = concrete.definition;
val clock = <minecraft:clock>;
val battery = <galacticraftcore:battery>.withTag({electricity: 15000.0 as float});

recipes.addShapedMirrored("computer", computer,
    [[screen, null],
     [case, keyboard]]
);
recipes.addShaped("printer", printer,
    [[null, steel, null],
     [steel, laser, steel],
     [motor, advanced, motor]]
);
recipes.addShaped("stereo", stereo,
    [[null, frequency, null],
     [note_block, jukebox, note_block],
     [steel, basic, steel]]
);
recipes.addShaped("tv", tv,
    [[steel, frequency, steel],
     [steel, glass, steel],
     [steel, basic, steel]]
);
recipes.addShaped("modern_tv", modern_tv,
    [[steel, wireless, steel],
     [glass, glass, glass],
     [steel, advanced, steel]]
);
recipes.addShaped("tv_remote", remote,
    [[steel, wireless, steel],
     [steel, keypad, steel],
     [steel, keys, steel]]
);

for i in 0 to 16 {
    concrete = concrete_def.makeStack(i);
    recipes.addShapedMirrored("digital_clock_" ~ i, digital_clock.makeStack(i),
        [[concrete, concrete, concrete],
         [basic, clock, battery],
         [concrete, concrete, concrete]]
    );
}
