#modloaded jmc

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

val birthday = <jmc:birthday_cake>;
val sprinkle = <jmc:sprinkle_cake>;
val candle = <minecraft:torch>;

recipes.remove(birthday);
recipes.addShaped("birthday_cake", birthday,
    [[candle],
     [sprinkle]]
);
