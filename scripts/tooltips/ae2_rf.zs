#modloaded appliedenergistics2

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.ITooltipFunction;
import crafttweaker.recipes.ICraftingRecipe;
import scripts.utils.formatters.formatRF;
import scripts.utils.formatters.formatPercentage;

val internalPower = {
	"energy_cell": <appliedenergistics2:energy_cell>,
	"dense_energy_cell": <appliedenergistics2:dense_energy_cell>,
	"wireless_terminal": <appliedenergistics2:wireless_terminal>,
	"portable_cell": <appliedenergistics2:portable_cell>,
	"colour_applicator": <appliedenergistics2:color_applicator>
} as IItemStack[string];

val maxPower = {
	"wireless_terminal": 1600000.0,
	"portable_cell": 20000.0,
	"colour_applicator": 20000.0
} as IData[string];

var output as IItemStack;
var ingredients as IIngredient[][];
var recipeName as string;

for name, power in maxPower {
	output = internalPower[name];
	for recipe in recipes.getRecipesFor(output) {
		ingredients = recipe.ingredients2D;
		recipeName = recipe.name;
		recipes.removeByRecipeName("appliedenergistics2:" + recipeName);
		recipes.addShaped(recipeName, output, ingredients,
			function (out, ins, cInfo) {
				return out.withTag({internalCurrentPower: 0.0, internalMaxPower: power});
			}, null
		);
	}
}

val storedEnergy = function(item as IItemStack) as string {
	if (!isNull(item.tag.internalCurrentPower) && !isNull(item.tag.internalMaxPower)) {
		val rf = 2 * (item.tag.internalCurrentPower as int);
		val percentage = ((10000.0 * item.tag.internalCurrentPower) / item.tag.internalMaxPower) as int;
		return "Stored Energy: " ~ formatRF(rf) ~ " - " ~ formatPercentage(percentage);
	} else {
		return "Stored Energy: 0 " ~ energyUnit ~ " - 0%";
	}
};

val linked = function(item as IItemStack) {
	if (!isNull(item.tag.encryptionKey)) {
		return "Linked";
	} else {
		return "Unlinked";
	}
};

for item in internalPower.values {
	item.removeTooltip("Stored Energy");
	item.removeTooltip("inked");
	item.addAdvancedTooltip(storedEnergy);
}

internalPower["wireless_terminal"].addAdvancedTooltip(linked);
