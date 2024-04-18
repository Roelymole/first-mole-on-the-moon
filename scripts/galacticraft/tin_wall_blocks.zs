#modloaded galacticraftcore

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import scripts.utils.patterns.vertical;

val wall_block = <galacticraftcore:basic_block_core:4>;
val deco_block = <galacticraftcore:basic_block_core:3>;
val stone = <ore:stone>;
val moon_rock = <galacticraftcore:basic_block_moon:4>;
val tin = <galacticraftcore:basic_item:7>;
val hidden_redstone = <galacticraftcore:concealed_redstone>;
val hidden_repeater = <galacticraftcore:concealed_repeater>;
val slab = <galacticraftcore:slab_gc_half:1>;
val redstone = <minecraft:redstone>;
val repeater = <minecraft:repeater>;

recipes.remove(wall_block);
recipes.remove(deco_block);
recipes.remove(hidden_redstone * 4);
recipes.remove(hidden_repeater);

recipes.addShapedMirrored("mirrored_wall_block", wall_block * 4,
	[[stone, stone],
	 [stone, stone],
	 [ null,  tin ]]
);
recipes.addShapedMirrored("mirrored_decorative_block", deco_block * 4,
	[[stone, stone, null],
	 [stone, stone, tin]]
);
recipes.addShapedMirrored("mirrored_wall_block_alt", wall_block * 4,
	[[moon_rock, moon_rock],
	 [moon_rock, moon_rock],
	 [  null,       tin   ]]
);
recipes.addShapedMirrored("mirrored_decorative_block_alt", deco_block * 4,
	[[moon_rock, moon_rock, null],
	 [moon_rock, moon_rock, tin ]]
);
vertical("hidden_redstone_wire", hidden_redstone, slab, redstone, slab);
vertical("hidden_repeater", hidden_repeater, slab, repeater, slab);
