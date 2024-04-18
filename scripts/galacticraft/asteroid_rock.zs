#modloaded galacticraftplanets
#priority 50

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import scripts.utils.patterns.slabpattern;

val cobble = <ore:stoneCobble>;

// Remove the crafting recipes for making Cobblestone from Asteroid Rock
recipes.remove(cobble);

if (loadedMods has "galacticraftplanets") {
	// Allow Asteroid Rock and Mars Cobblestone to be used in recipes instead of Cobblestone
	<ore:cobblestone>.addItems([
		<galacticraftplanets:mars:4>,
		<galacticraftplanets:asteroids_block>,
		<galacticraftplanets:asteroids_block:1>,
		<galacticraftplanets:asteroids_block:2>
	]);

	val dark_decoration_block = <galacticraftplanets:asteroids_block:6>;
	val dark_decoration_slab = <galacticraftcore:slab_gc_half:6>;
	val asteroid_rock = <galacticraftplanets:asteroids_block>;
	val compressed_titanium = <galacticraftplanets:item_basic_asteroids:6>;

	// Allow Dark Decoration Block to be crafted
	recipes.addShapedMirrored("mirrored_dark_decoration_block", dark_decoration_block * 4,
		[[asteroid_rock, asteroid_rock],
		 [asteroid_rock, asteroid_rock],
		 [null, compressed_titanium]]
	);
	recipes.addShapedMirrored("mirrored_dark_decoration_block_alt", dark_decoration_block * 4,
		[[asteroid_rock, asteroid_rock, null],
		 [asteroid_rock, asteroid_rock, compressed_titanium]]
	);
	slabpattern("dark_decoration_slab", dark_decoration_slab * 6, dark_decoration_block);
}
