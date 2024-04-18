#modloaded biomesoplenty

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemCondition;
import crafttweaker.item.IItemTransformer;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import scripts.utils.patterns.surround;
import scripts.utils.patterns.vertical;

// Define different types of grasses
val grass = <minecraft:tallgrass:1>;
val medium_grass = <biomesoplenty:plant_0:1>;
val short_grass = <biomesoplenty:plant_0:0>;
val damp_grass = <biomesoplenty:plant_0:8>;
val wheat_grass = <biomesoplenty:plant_0:7>;
val dune_grass = <biomesoplenty:plant_1:0>;
val desert_sprouts = <biomesoplenty:plant_0:15>;
val dead_grass = <biomesoplenty:plant_0:13>;
val desert_grass = <biomesoplenty:plant_0:14>;
val barley = <biomesoplenty:plant_1:11>;
val sea_oats = <biomesoplenty:double_plant:3>;
val algae = <biomesoplenty:coral:4>;

// Define different types of flowers
val daisy = <minecraft:red_flower:8>;
val lily = <biomesoplenty:flower_0:14>;
val wilted_lily = <biomesoplenty:flower_0:12>;
val miners_delight = <biomesoplenty:flower_1:3>;
val rose = <biomesoplenty:flower_1:5>;
val rose_bush = <minecraft:double_plant:4>;

// Define different types of plants
val leaf_pile = <biomesoplenty:plant_0:11>;
val dead_leaf_pile = <biomesoplenty:plant_0:12>;
val dead_leaves = <biomesoplenty:leaves_1:9>;
val bush = <biomesoplenty:plant_0:2>;
val dead_bush = <minecraft:deadbush>;
val shrub = <biomesoplenty:plant_0:6>;
val lily_pad = <minecraft:waterlily>;
val flowering_lily_pad = <biomesoplenty:waterlily:3>;
val cactus = <minecraft:cactus>;
val tiny_cactus = <biomesoplenty:plant_1:6>;
val wheat = <minecraft:wheat>;
val small_cattail = <biomesoplenty:plant_1:4>;
val tall_cattail = <biomesoplenty:double_plant:1>;

<ore:leavesAlive>.addItems([
	<minecraft:leaves>,
	<minecraft:leaves:1>,
	<minecraft:leaves:2>,
	<minecraft:leaves:3>,
	<minecraft:leaves2>,
	<minecraft:leaves2:1>,
	<biomesoplenty:leaves_0:8>,
	<biomesoplenty:leaves_0:9>,
	<biomesoplenty:leaves_0:10>,
	<biomesoplenty:leaves_0:11>,
	<biomesoplenty:leaves_1:8>,
	<biomesoplenty:leaves_1:10>,
	<biomesoplenty:leaves_2:8>,
	<biomesoplenty:leaves_2:9>,
	<biomesoplenty:leaves_2:10>,
	<biomesoplenty:leaves_2:11>,
	<biomesoplenty:leaves_3:8>,
	<biomesoplenty:leaves_3:9>,
	<biomesoplenty:leaves_3:10>,
	<biomesoplenty:leaves_3:11>,
	<biomesoplenty:leaves_4:8>,
	<biomesoplenty:leaves_4:9>,
	<biomesoplenty:leaves_4:10>,
	<biomesoplenty:leaves_4:11>,
	<biomesoplenty:leaves_5:8>,
	<biomesoplenty:leaves_5:9>,
	<biomesoplenty:leaves_5:10>,
	<biomesoplenty:leaves_5:11>
]);

// Define other random items
val water = <minecraft:water_bucket>.transformReplace(<minecraft:bucket>);
val shears = <minecraft:shears>.anyDamage().transformDamage();
val sand = <ore:sand>;

// Smelt grass and flowers into dead or wilted varieties
furnace.addRecipe(dead_grass, grass, 0.1);
furnace.addRecipe(desert_grass, short_grass, 0.1);
furnace.addRecipe(wilted_lily, lily, 0.1);
furnace.addRecipe(dead_leaf_pile, leaf_pile, 0.1);
furnace.addRecipe(dead_bush, <ore:treeSapling>, 0.1);
furnace.addRecipe(dead_bush, bush, 0.1);
furnace.addRecipe(dead_bush, shrub, 0.1);
furnace.addRecipe(dead_leaves, <ore:leavesAlive>, 0.1);
furnace.remove(dead_leaves, dead_leaves);

// Craft different types of grasses
surround("damp_grass", damp_grass * 8, grass, water);
surround("wheat_grass", wheat_grass * 8, grass, wheat);
surround("dune_grass", dune_grass * 8, grass, sand);
surround("desert_sprouts", desert_sprouts * 8, short_grass, sand);

// Craft cereals
//vertical("barley", barley, wheat, grass);
//vertical("sea_oats", sea_oats, wheat, algae);
recipes.addShapeless("wheat_from_barley", wheat, [barley, barley, barley]);

// Craft Flowering Lily and Tiny Cactus
vertical("flowering_lily_pad", flowering_lily_pad, daisy, lily_pad);
vertical("tiny_cactus", tiny_cactus, miners_delight, cactus);

// Cut grass
recipes.addShapeless("cut_grass", medium_grass, [grass, shears]);
recipes.addShapeless("cut_medium_grass", short_grass, [medium_grass, shears]);
recipes.addShapeless("cut_dune_grass", desert_sprouts, [dune_grass, shears]);
recipes.addShapeless("cut_dead_grass", desert_grass, [dead_grass, shears]);

// Cut other plants
recipes.addShapeless("cut_cattails", small_cattail, [tall_cattail, shears]);
recipes.addShapeless("cut_roses", rose * 2, [rose_bush, shears]);
