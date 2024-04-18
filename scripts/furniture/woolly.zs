#modloaded cfm

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import scripts.utils.patterns.alternate;
import scripts.utils.patterns.surround;
import scripts.utils.patterns.rows;

val wool = [
    <ore:blockWoolWhite>,
    <ore:blockWoolOrange>,
    <ore:blockWoolMagenta>,
    <ore:blockWoolLightBlue>,
    <ore:blockWoolYellow>,
    <ore:blockWoolLime>,
    <ore:blockWoolPink>,
    <ore:blockWoolGray>,
    <ore:blockWoolLightGray>,
    <ore:blockWoolCyan>,
    <ore:blockWoolPurple>,
    <ore:blockWoolBlue>,
    <ore:blockWoolBrown>,
    <ore:blockWoolGreen>,
    <ore:blockWoolRed>,
    <ore:blockWoolBlack>
] as IOreDictEntry[];

val carpet = [
    <ore:carpetWhite>,
    <ore:carpetOrange>,
    <ore:carpetMagenta>,
    <ore:carpetLightBlue>,
    <ore:carpetYellow>,
    <ore:carpetLime>,
    <ore:carpetPink>,
    <ore:carpetGray>,
    <ore:carpetLightGray>,
    <ore:carpetCyan>,
    <ore:carpetPurple>,
    <ore:carpetBlue>,
    <ore:carpetBrown>,
    <ore:carpetGreen>,
    <ore:carpetRed>,
    <ore:carpetBlack>
] as IOreDictEntry[];

val sofa = <cfm:couch>.definition;
val light = <cfm:lamp_off>.definition;
val bed = <minecraft:bed>.definition;
val modern_bed = <cfm:modern_bed_bottom>.definition;
val present = <cfm:present>.definition;
val mat = <cfm:door_mat>.definition;
val bouncy = <cfm:inflatable_castle>.definition;

val lamp = <minecraft:redstone_lamp>;
val pole = <galacticraftcore:steel_pole>;
val steel = <galacticraftcore:basic_item:9>;
val steel_ingot = <nuclearcraft:alloy:5>;
val white = <ore:blockWoolWhite>;
val planks = <ore:plankWood>;
val ribbon = <minecraft:string>;
val package = <cfm:item_package>;
val foot = <minecraft:rabbit_foot>;

recipes.remove(<minecraft:bed:*>);

for i in 0 to 16 {
    recipes.addShapedMirrored("sofa_" ~ i, sofa.makeStack(i),
        [[wool[i],    null,    null],
         [wool[i], wool[i], wool[i]],
         [wool[i], wool[i], wool[i]]]
    );
    recipes.addShaped("lamp_" ~ i, light.makeStack(i) * 2,
        [[wool[i], lamp, wool[i]],
         [wool[i], pole, wool[i]],
         [ null,  steel,  null  ]]
    );
    recipes.addShapedMirrored("bed_" ~ i, bed.makeStack(i),
        [[white, wool[i], wool[i]],
         [planks, planks, planks]]
    );
    recipes.addShapedMirrored("modern_bed_" ~ i, modern_bed.makeStack(i),
        [[white, wool[i], wool[i]],
         [steel, steel, steel]]
    );
    alternate("present_" ~ i, present.makeStack(i), wool[i], ribbon, package);
    rows("door_mat_" ~ i, mat.makeStack(i), carpet[i], carpet[i]);
    surround("bouncy_castle_" ~ i, bouncy.makeStack(i) * 16, wool[i], foot);
}
