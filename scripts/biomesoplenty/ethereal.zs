#modloaded biomesoplenty
#priority 99

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import scripts.utils.removeAndHide.removeList;

val ethereal = {
	"log": <biomesoplenty:log_1:4>,
	"leaves": <biomesoplenty:leaves_1:11>,
	"planks": <biomesoplenty:planks_0:4>,
	"stairs": <biomesoplenty:ethereal_stairs>,
	"slab": <biomesoplenty:wood_slab_0:4>,
	"fence": <biomesoplenty:ethereal_fence>,
	"gate": <biomesoplenty:ethereal_fence_gate>,
	"door": <biomesoplenty:ethereal_door>,
	"sapling": <biomesoplenty:sapling_0:7>,
	"boat": <biomesoplenty:boat_ethereal>
} as IItemStack[string];

removeList(ethereal.values);

val ore_dicts = {
	"log": <ore:logWood>,
	"leaves": <ore:treeLeaves>,
	"planks": <ore:plankWood>,
	"stairs": <ore:stairWood>,
	"slab": <ore:slabWood>,
	"fence": <ore:fenceWood>,
	"gate": <ore:fenceGateWood>,
	"door": <ore:doorWood>,
	"sapling": <ore:treeSapling>,
	"boat": <ore:boat>
} as IOreDictEntry[string];

for key, item in ethereal {
	furnace.setFuel(item, 0);
	ore_dicts[key].remove(item);
}

if (loadedMods has "nuclearcraft") {
	mods.nuclearcraft.Manufactory.removeRecipeWithInput(ethereal["log"]);
}
