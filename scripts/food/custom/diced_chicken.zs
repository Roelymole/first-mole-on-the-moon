#modloaded cfm
#loader contenttweaker

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.creativetabs.ICreativeTab;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.ItemFood;
import mods.contenttweaker.CreativeTab;

var diced = VanillaFactory.createItemFood("diced_chicken", 2);
diced.saturation = 1.2;
diced.creativeTab = <creativetab:food>;
diced.onItemFoodEaten = function(stack, world, player) {
    if (!world.isRemote()) {
        if (world.random.nextInt(10) < 3) {
            player.addPotionEffect(<potion:minecraft:hunger>.makePotionEffect(600, 1));
        }
    }
};
diced.register();

var raw_nuggets = VanillaFactory.createItemFood("raw_chicken_nuggets", 3);
raw_nuggets.saturation = 1.2;
raw_nuggets.creativeTab = <creativetab:food>;
raw_nuggets.onItemFoodEaten = function(stack, world, player) {
    if (!world.isRemote()) {
        if (world.random.nextInt(10) < 6) {
            player.addPotionEffect(<potion:minecraft:hunger>.makePotionEffect(600, 1));
        }
    }
};
raw_nuggets.register();

var cooked_nuggets = VanillaFactory.createItemFood("chicken_nuggets", 5);
cooked_nuggets.saturation = 2.4;
cooked_nuggets.creativeTab = <creativetab:food>;
cooked_nuggets.register();
