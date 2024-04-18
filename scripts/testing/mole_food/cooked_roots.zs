#modloaded biomesoplenty
#loader contenttweaker

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.creativetabs.ICreativeTab;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.ItemFood;
import mods.contenttweaker.CreativeTab;

var cooked_root = VanillaFactory.createItemFood("cooked_root", 4);
cooked_root.saturation = 1.2;
cooked_root.creativeTab = <creativetab:food>;
cooked_root.register();
