#modloaded biomesoplenty
#priority 100

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

<ore:logWood>.remove(<biomesoplenty:log_4:4>);
<ore:treeLeaves>.removeItems([<biomesoplenty:leaves_6:8>, <biomesoplenty:leaves_6:9>]);
<ore:vines>.addItems([<biomesoplenty:ivy>, <biomesoplenty:willow_vine>]);

<ore:doorWood>.addItems([
    <minecraft:wooden_door>,
    <minecraft:spruce_door>,
    <minecraft:birch_door>,
    <minecraft:jungle_door>,
    <minecraft:acacia_door>,
    <minecraft:dark_oak_door>,
    <biomesoplenty:sacred_oak_door>,
    <biomesoplenty:cherry_door>,
    <biomesoplenty:umbran_door>,
    <biomesoplenty:fir_door>,
    <biomesoplenty:ethereal_door>,
    <biomesoplenty:magic_door>,
    <biomesoplenty:mangrove_door>,
    <biomesoplenty:palm_door>,
    <biomesoplenty:redwood_door>,
    <biomesoplenty:willow_door>,
    <biomesoplenty:pine_door>,
    <biomesoplenty:hellbark_door>,
    <biomesoplenty:jacaranda_door>,
    <biomesoplenty:mahogany_door>,
    <biomesoplenty:ebony_door>,
    <biomesoplenty:eucalyptus_door>
]);

<ore:boat>.addItems([
    <minecraft:boat>,
    <minecraft:spruce_boat>,
    <minecraft:birch_boat>,
    <minecraft:jungle_boat>,
    <minecraft:acacia_boat>,
    <minecraft:dark_oak_boat>,
    <biomesoplenty:boat_sacred_oak>,
    <biomesoplenty:boat_cherry>,
    <biomesoplenty:boat_umbran>,
    <biomesoplenty:boat_fir>,
    <biomesoplenty:boat_ethereal>,
    <biomesoplenty:boat_magic>,
    <biomesoplenty:boat_mangrove>,
    <biomesoplenty:boat_palm>,
    <biomesoplenty:boat_redwood>,
    <biomesoplenty:boat_willow>,
    <biomesoplenty:boat_pine>,
    <biomesoplenty:boat_hellbark>,
    <biomesoplenty:boat_jacaranda>,
    <biomesoplenty:boat_mahogany>,
    <biomesoplenty:boat_ebony>,
    <biomesoplenty:boat_eucalyptus>
]);
