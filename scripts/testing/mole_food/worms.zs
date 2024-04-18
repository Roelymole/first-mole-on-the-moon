#loader contenttweaker

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.creativetabs.ICreativeTab;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.ItemFood;
import mods.contenttweaker.CreativeTab;

var worm = VanillaFactory.createItemFood("worm", 1);
worm.alwaysEdible = true;
worm.creativeTab = <creativetab:food>;
worm.register();

var cooked_worm = VanillaFactory.createItemFood("cooked_worm", 2);
cooked_worm.alwaysEdible = true;
cooked_worm.creativeTab = <creativetab:food>;
cooked_worm.register();
