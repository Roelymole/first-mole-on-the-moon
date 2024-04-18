import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

if (loadedMods has "theoneprobe") {
	val note = <theoneprobe:probenote>;

	recipes.remove(note);
	note.addTooltip(format.red("Creative Only"));
}

if (loadedMods has "pressure") {
	val water_source = <pressure:water_source>;

	recipes.remove(water_source);
	water_source.addTooltip(format.red("Creative Only"));
}

if (loadedMods has "sgcraft") {
	val configurator = <sgcraft:configurator>;

	recipes.remove(configurator);
	configurator.addTooltip(format.red("Creative Only"));
}
