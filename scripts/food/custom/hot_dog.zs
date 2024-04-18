#modloaded cfm
#loader contenttweaker

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.creativetabs.ICreativeTab;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.ItemFood;
import mods.contenttweaker.CreativeTab;

var hot_dog = VanillaFactory.createItemFood("hot_dog", 8);
hot_dog.saturation = 2.4;
hot_dog.creativeTab = <creativetab:food>;
hot_dog.register();
