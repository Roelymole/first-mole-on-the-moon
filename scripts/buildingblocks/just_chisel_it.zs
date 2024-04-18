#modloaded buildingblocks chisel

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.chisel.Carving;

val blocks_to_add = {
	"granite": [<buildingblocks:morestones:1>],
	"diorite": [<buildingblocks:morestones:3>],
	"andesite": [<buildingblocks:morestones:5>],
	"limestone": [<buildingblocks:morestones:6>, <buildingblocks:morestones:8>, <buildingblocks:morestones:9>],
	"marble": [<buildingblocks:morestones:10>, <buildingblocks:morestones:12>, <buildingblocks:morestones:13>],
	"basalt": [<buildingblocks:morestones2:2>, <buildingblocks:morestones2:4>, <buildingblocks:morestones2:5>],
	"sandstoneyellow": [<buildingblocks:morestones:14>, <buildingblocks:morestones2:0>, <buildingblocks:morestones2:1>],
	"sandstonered": [<buildingblocks:morestones2:6>, <buildingblocks:morestones2:8>, <buildingblocks:morestones2:9>],
	"netherbrick": [<buildingblocks:morestones2:10>, <buildingblocks:morestones2:11>],
	"endstone": [<buildingblocks:morestones2:13>],
	"bricks": [<buildingblocks:agedbricks>],
	"brick_slab": [<minecraft:stone_slab:4>, <buildingblocks:brickagedbrickslab>]
} as IItemStack[][string];

// Allow Just Build It blocks to be chiselled
for groupName, blocks in blocks_to_add {
	for block in blocks {
		Carving.addVariation(groupName, block);
	}
}

// Remove a duplicate Double Stone Slab block
if (loadedMods has "jei") {
	mods.jei.JEI.removeAndHide(<buildingblocks:morestones2:12>);
} else {
	recipes.remove(<buildingblocks:morestones2:12>);
}

// Make smelting Basalt Cobblestone give Chisel's Raw Basalt
furnace.remove(<buildingblocks:morestones2:2>);
furnace.addRecipe(<chisel:basalt2:7>, <buildingblocks:morestones2:3>, 0.2);
