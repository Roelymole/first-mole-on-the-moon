#modloaded opencomputers

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

val capacitor = <opencomputers:capacitor>;
val carpeted_capacitor = <opencomputers:carpetedcapacitor>;
val carpet = <ore:carpet>;
val interweb = <opencomputers:material:13>;
val web = <minecraft:web>;
val ender = <appliedenergistics2:material:46>;
val sticky_upgrade = <opencomputers:upgrade:33>;
val piston_upgrade = <opencomputers:upgrade:20>;
val slime = <minecraft:slime_ball>;
val iron = <ore:ingotIron>;
val stick = <ore:stickWood>;
val piston = <minecraft:sticky_piston>;
val microchip = <opencomputers:material:7>;
val pcb = <opencomputers:material:4>;

recipes.addShaped("carpeted_capacitor", carpeted_capacitor,
    [[carpet],
     [capacitor]]
);
recipes.addShapeless("interweb", interweb, [web, ender]);
recipes.addShaped("sticky_upgrade", sticky_upgrade,
    [[iron, piston, iron],
     [stick, microchip, stick],
     [iron, pcb, iron]]
);
recipes.addShaped("sticky_upgrade_alt", sticky_upgrade,
    [[slime],
     [piston_upgrade]]
);
