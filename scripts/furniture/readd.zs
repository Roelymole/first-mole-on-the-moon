#modloaded cfm
#priority 100

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import scripts.utils.patterns.surround;
import scripts.utils.patterns.platepattern;
import scripts.utils.patterns.tablepattern;

recipes.removeByMod("cfm");

val envelope = <cfm:item_envelope>;
val package = <cfm:item_package>;
val cartridge = <cfm:item_ink_cartridge>;
val soap = <cfm:item_soap>;
val soapy = <cfm:item_soap_water>;
val super_soapy = <cfm:item_super_soap_water>;
val cool_pack = <cfm:item_cool_pack>;
val path = <cfm:stone_path>;
val bath = <cfm:bird_bath>;
val diving_board = <cfm:divingboard_base>;
val grill = <cfm:grill>;
val trampoline = <cfm:trampoline>;
val netting = <cfm:castle_netting>;

val paper = <minecraft:paper>;
val ink = <minecraft:dye>;
val canister = <galacticraftcore:canister>;
val water = <minecraft:water_bucket>;
val spring_water = <forge:bucketfilled>.withTag({FluidName: "hot_spring_water", Amount: 1000});
val pebbles = <buildingblocks:pebbles>;
val stone = <minecraft:stone>;
val bucket = <minecraft:bucket>;
val white = <minecraft:concrete>;
val cyan = <minecraft:stained_hardened_clay:9>;
val blue = <minecraft:wool:11>;
val bronze = <galacticraftcore:basic_item:10>;
val bars = <ore:ironBars>;
val pole = <galacticraftcore:steel_pole>;
val strint = <minecraft:string>;

platepattern("envelope", envelope, paper);
surround("package", package, paper, null);
recipes.addShapeless("ink_cartridge", cartridge,
    [ink, ink, canister]
);
recipes.addShapeless("soapy_water", soapy,
    [soap, water.noReturn()]
);
recipes.addShapeless("super_soapy_water", super_soapy,
    [soap, spring_water.noReturn()]
);
platepattern("stone_path", path, pebbles);
tablepattern("bird_bath", bath, stone, null, stone, water.transformReplace(bucket));
recipes.addShapedMirrored("diving_board", diving_board,
    [[ cyan,  null,  null],
     [white, white, white],
     [ cyan,  null,  null]]
);
recipes.addShaped("grill", grill,
    [[bronze, bars, bronze],
     [pole, bronze, pole],
     [pole, bars, pole]]
);
tablepattern("trampoline", trampoline, blue, pole, null, netting);
surround("trampoline_netting", netting * 4, strint, ink);

if (loadedMods has "nuclearcraft") {
    val dye = <minecraft:dye:12>;
    val butter = <nuclearcraft:cocoa_butter>;
    val NaOH = <nuclearcraft:compound:5>;
    val bioplastic = <nuclearcraft:part:6>;
    val emergency_coolant = <liquid:emergency_coolant>;

    recipes.addShapeless("soap", soap * 2, [dye, butter, NaOH]);
    mods.nuclearcraft.Infuser.addRecipe(bioplastic * 2, emergency_coolant * 250, cool_pack, 1, 0.5, 0);
}
