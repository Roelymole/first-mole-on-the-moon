import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import scripts.utils.removeAndHide.hide;

if (loadedMods has "appliedenergistics2") {
	val AE_facade = <appliedenergistics2:facade> as IItemStack;
	hide(AE_facade);
}

if (loadedMods has "buildcraftsilicon") {
	val BC_facade = <buildcraftsilicon:plug_facade> as IItemStack;
	hide(BC_facade);
}

if (loadedMods has "buildcraftenergy") {
	val glob_of_oil = <buildcraftenergy:glob_of_oil> as IItemStack;
	hide(glob_of_oil);
}
