#priority 100

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

<ore:stoneCobble>.addAll(<ore:cobblestone>);
<ore:blockConcrete>.add(<minecraft:concrete:*>);
<ore:banner>.add(<minecraft:banner:*>);
<ore:bookshelf>.add(<minecraft:bookshelf>);
<ore:coal>.add(<minecraft:coal:*>);

<ore:toolWood>.addItems([
	<minecraft:wooden_sword>,
	<minecraft:wooden_shovel>,
	<minecraft:wooden_pickaxe>,
	<minecraft:wooden_axe>,
	<minecraft:wooden_hoe>
]);
<ore:shovel>.addItems([
	<minecraft:iron_shovel>,
	<minecraft:wooden_shovel>,
	<minecraft:stone_shovel>,
	<minecraft:diamond_shovel>,
	<minecraft:golden_shovel>
]);
<ore:axe>.addItems([
	<minecraft:iron_axe>,
	<minecraft:wooden_axe>,
	<minecraft:stone_axe>,
	<minecraft:diamond_axe>,
	<minecraft:golden_axe>
]);
<ore:chestWood>.addItems([
	<minecraft:chest>,
	<minecraft:trapped_chest>
]);
<ore:blockMusic>.addItems([
	<minecraft:noteblock>,
	<minecraft:jukebox>
]);
<ore:blockMushroom>.addItems([
	<minecraft:brown_mushroom_block>,
	<minecraft:red_mushroom_block>
]);
<ore:crop>.addItems([
	<minecraft:wheat>,
	<minecraft:carrots>,
	<minecraft:potatoes>,
	<minecraft:beetroots>,
	<minecraft:melon_stem>,
	<minecraft:pumpkin_stem>
]);
<ore:seed>.addItems([
	<minecraft:wheat_seeds>,
	<minecraft:pumpkin_seeds>,
	<minecraft:melon_seeds>,
	<minecraft:beetroot_seeds>
]);
<ore:ice>.addItems([
	<minecraft:ice>,
	<minecraft:packed_ice>
]);

<ore:graniteAll>.addAll(<ore:stoneGranite>);
<ore:dioriteAll>.addAll(<ore:stoneDiorite>);
<ore:andesiteAll>.addAll(<ore:stoneAndesite>);
<ore:limestoneAll>.addAll(<ore:stoneLimestone>);
<ore:marbleAll>.addAll(<ore:stoneMarble>);
<ore:sandstoneYellow>.add(<minecraft:sandstone:*>);
<ore:basaltAll>.addAll(<ore:stoneBasalt>);
<ore:sandstoneRed>.add(<minecraft:red_sandstone:*>);
<ore:endstone>.add(<minecraft:end_bricks>);
<ore:stone>.add(<minecraft:stonebrick:*>);
<ore:blockMossy>.add(<minecraft:mossy_cobblestone>);
<ore:prismarineBrick>.add(<minecraft:prismarine:1>);
<ore:purpur>.addItems([
	<minecraft:purpur_block>,
	<minecraft:purpur_pillar>
]);

<ore:flowerBase>.addItems([
	<minecraft:yellow_flower>,
	<minecraft:red_flower>,
	<minecraft:red_flower:4>,
	<minecraft:red_flower:5>,
	<minecraft:red_flower:6>,
	<minecraft:red_flower:7>,
	<minecraft:red_flower:8>
]);

recipes.replaceAllOccurences(<minecraft:iron_bars>, <ore:ironBars>);

<ore:ice>.remove(<minecraft:packed_ice>);
<ore:iceAll>.addAll(<ore:ice>);
<ore:iceAll>.add(<minecraft:packed_ice>);
