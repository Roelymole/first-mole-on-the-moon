#modloaded cfm
#loader contenttweaker

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.creativetabs.ICreativeTab;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.ItemFood;
import mods.contenttweaker.CreativeTab;

var raw_chips = VanillaFactory.createItemFood("sliced_potato", 1);
raw_chips.creativeTab = <creativetab:food>;
raw_chips.register();

var cooked_chips = VanillaFactory.createItemFood("chips", 5);
cooked_chips.saturation = 1.6;
cooked_chips.creativeTab = <creativetab:food>;
cooked_chips.register();
