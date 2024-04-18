#modloaded cfm galacticraftcore
#loader contenttweaker

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.creativetabs.ICreativeTab;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.ItemFood;
import mods.contenttweaker.CreativeTab;

var sandwich = VanillaFactory.createItemFood("cheese_sandwich", 6);
sandwich.saturation = 1.2;
sandwich.creativeTab = <creativetab:food>;
sandwich.register();

var grilled = VanillaFactory.createItemFood("grilled_cheese_sandwich", 8);
grilled.saturation = 2.4;
grilled.creativeTab = <creativetab:food>;
grilled.register();
