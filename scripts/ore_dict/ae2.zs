#modloaded appliedenergistics2
#priority 100

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

<ore:netherQuartz>.addItems([
	<minecraft:quartz>,
	<appliedenergistics2:material:11>
]);
<ore:oreCertusQuartz>.addItems([
	<appliedenergistics2:quartz_ore>,
	<appliedenergistics2:charged_quartz_ore>
]);
<ore:certusQuartz>.addItems([
	<appliedenergistics2:material>,
	<appliedenergistics2:material:1>,
	<appliedenergistics2:material:10>
]);
<ore:blockCertusQuartz>.addItems([
	<appliedenergistics2:quartz_block>,
	<appliedenergistics2:chiseled_quartz_block>,
	<appliedenergistics2:quartz_pillar>,
	<chisel:certus:*>,
	<chisel:certus1:*>,
	<chisel:certus2:*>
]);
