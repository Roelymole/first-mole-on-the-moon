#modloaded galacticraftcore galacticraftplanets
#priority 99

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

<ore:shovel>.addItems([
    <galacticraftcore:steel_shovel>,
    <galacticraftplanets:desh_spade>,
    <galacticraftplanets:titanium_shovel>
]);
<ore:axe>.addItems([
    <galacticraftcore:steel_axe>,
    <galacticraftplanets:desh_axe>,
    <galacticraftplanets:titanium_axe>
]);
<ore:chestWood>.add(<galacticraftcore:parachest>);
<ore:iceAll>.add(<galacticraftplanets:dense_ice>);

<ore:oreCheese>.add(<galacticraftcore:basic_block_moon:2>);
<ore:oreIron>.addItems([
    <galacticraftplanets:mars:3>,
    <galacticraftplanets:asteroids_block:5>
]);
<ore:oreTin>.addItems([
    <galacticraftplanets:mars:1>,
    <galacticraftplanets:venus:11>
]);
<ore:oreCopper>.addItems([
    <galacticraftplanets:mars>,
    <galacticraftplanets:venus:7>
]);
<ore:oreAluminum>.addItems([
    <galacticraftplanets:asteroids_block:3>,
    <galacticraftplanets:venus:6>
]);
<ore:oreAluminium>.mirror(<ore:oreAluminum>);
<ore:oreLead>.add(<galacticraftplanets:venus:8>);
//<ore:ingotLead>.remove(<galacticraftplanets:basic_item_venus:1>);
<ore:blockLead>.add(<galacticraftplanets:venus:12>);
<ore:oreSilicon>.add(<galacticraftplanets:venus:10>);
<ore:oreQuartz>.add(<galacticraftplanets:venus:9>);
<ore:oreDesh>.add(<galacticraftplanets:mars:2>);
<ore:oreSolar>.add(<galacticraftplanets:venus:13>);
<ore:oreIlmenite>.add(<galacticraftplanets:asteroids_block:4>);

<ore:canFood>.addItems([
    <galacticraftcore:food>,
    <galacticraftcore:food:1>,
    <galacticraftcore:food:2>,
    <galacticraftcore:food:3>,
    <galacticraftcore:food:9>
]);
