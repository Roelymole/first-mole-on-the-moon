#loader contenttweaker
#modloaded sgcraft

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.creativetabs.ICreativeTab;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.CreativeTab;

var chevron = VanillaFactory.createItem("chevron");
//chevron.creativeTab = chevron_upgrade.definition.creativeTab;
chevron.register();
