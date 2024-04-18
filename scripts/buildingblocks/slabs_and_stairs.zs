import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import scripts.utils.patterns.stairpattern;
import scripts.utils.patterns.slabpattern;

val items = {
    <ore:stoneCobble>: [<minecraft:stone_stairs>, <minecraft:stone_slab:3>],
    <ore:stone>: [<minecraft:stone_brick_stairs>, <minecraft:stone_slab:5>],
    <ore:cobbleGranite>: [<buildingblocks:cobblegranitestair>, <buildingblocks:cobblegraniteslab>],
    <ore:stoneGranite>: [<buildingblocks:brickgranitestair>, <buildingblocks:brickgraniteslab>],
    <ore:cobbleDiorite>: [<buildingblocks:cobbledioritestair>, <buildingblocks:cobbledioriteslab>],
    <ore:stoneDiorite>: [<buildingblocks:brickdioritestair>, <buildingblocks:brickdioriteslab>],
    <ore:cobbleAndesite>: [<buildingblocks:cobbleandesitestair>, <buildingblocks:cobbleandesiteslab>],
    <ore:stoneAndesite>: [<buildingblocks:brickandesitestair>, <buildingblocks:brickandesiteslab>],
    <ore:cobbleLimestone>: [<buildingblocks:cobblelimestonestair>, <buildingblocks:cobblelimestoneslab>],
    <ore:stoneLimestone>: [<buildingblocks:bricklimestonestair>, <buildingblocks:bricklimestoneslab>],
    <ore:cobbleMarble>: [<buildingblocks:cobblemarblestair>, <buildingblocks:cobblemarbleslab>],
    <ore:stoneMarble>: [<buildingblocks:brickmarblestair>, <buildingblocks:brickmarbleslab>],
    <ore:cobbleBasalt>: [<buildingblocks:cobblebasaltstair>, <buildingblocks:cobblebasaltslab>],
    <ore:stoneBasalt>: [<buildingblocks:brickbasaltstair>, <buildingblocks:brickbasaltslab>],
    <ore:cobbleSandstoneYellow>: [<buildingblocks:cobblesandstonestair>, <buildingblocks:cobblesandstoneslab>],
    <ore:stoneSandstoneYellow>: [<buildingblocks:bricksandstonestair>, <buildingblocks:bricksandstoneslab>],
    //<ore:sandstoneYellow>: [<minecraft:sandstone_stairs>, <minecraft:stone_slab:1>],
    <ore:cobbleSandstoneRed>: [<buildingblocks:cobbleredsandstonestair>, <buildingblocks:cobbleredsandstoneslab>],
    <ore:stoneSandstoneRed>: [<buildingblocks:brickredsandstonestair>, <buildingblocks:brickredsandstoneslab>],
    //<ore:sandstoneRed>: [<minecraft:red_sandstone_stairs>, <minecraft:stone_slab2>],
    <ore:brickNether>: [<minecraft:nether_brick_stairs>, <minecraft:stone_slab:6>],
    <ore:brickNetherRed>: [<buildingblocks:brickrednetherstair>, <buildingblocks:brickrednetherslab>],
    <ore:brickNetherRack>: [<buildingblocks:bricknetherrackstair>, <buildingblocks:bricknetherrackslab>],
    <ore:brickRed>: [<minecraft:brick_stairs>, <minecraft:stone_slab:4>],
    <ore:brickMud>: [<biomesoplenty:mud_brick_stairs>, <biomesoplenty:other_slab>],
    <ore:blockQuartz>: [<minecraft:quartz_stairs>, <minecraft:stone_slab:7>],
    <ore:blockCertusQuartzDefault>: [<appliedenergistics2:quartz_stairs>, <appliedenergistics2:quartz_slab>],
    <ore:blockCertusQuartzPillar>: [<appliedenergistics2:quartz_pillar_stairs>, <appliedenergistics2:quartz_pillar_slab>],
    <ore:blockCertusQuartzChiseled>: [<appliedenergistics2:chiseled_quartz_stairs>, <appliedenergistics2:chiseled_quartz_slab>],
    <ore:endstone>: [<buildingblocks:brickendstonestair>, <buildingblocks:brickendstoneslab>],
    <ore:purpur>: [<minecraft:purpur_stairs>, <minecraft:purpur_slab>],
    <ore:acherite>: [<buildingblocks:brickacheritestair>, <buildingblocks:brickacheriteslab>],
    <ore:terminochite>: [<buildingblocks:brickterminochitestair>, <buildingblocks:brickterminochiteslab>]
} as IItemStack[][IOreDictEntry];

var stairs as IItemStack;
var slabs as IItemStack;
for block, blocks in items {
    stairs = blocks[0] * 4;
    slabs = blocks[1] * 6;

    recipes.remove(stairs);
    recipes.remove(slabs);
    stairpattern(block.name ~ "_stairs", stairs, block);
    slabpattern(block.name ~ "_slabs", slabs, block);
}
