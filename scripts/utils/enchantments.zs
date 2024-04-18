#priority 500

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.enchantments.IEnchantmentDefinition;

static enchantments as IEnchantmentDefinition[short] = {
    32: <enchantment:minecraft:efficiency>,
    33: <enchantment:minecraft:silk_touch>,
    34: <enchantment:minecraft:unbreaking>,
    35: <enchantment:minecraft:fortune>,
    70: <enchantment:minecraft:mending>,
    71: <enchantment:minecraft:vanishing_curse>
};

function silk_touch_first(item as IItemStack) as IItemStack {
    if !isNull(item) {
        val enchants = item.tag.ench.asList();
        var output = item.removeTag("ench");
        for i, enchant in enchants {
            if ((enchant.id as short) == (33 as short)) {
                if (i == 0) {
                    // Silk touch is already first
                    return item;
                } else {
                    output.addEnchantment(enchantments[33 as short].makeEnchantment(1));
                }
            }
        }
        for i, enchant in enchants {
            if ((enchant.id as short) != (33 as short)) {
                output.addEnchantment(enchantments[enchant.id].makeEnchantment(enchant.lvl));
            }
        }
        return output;
    } else {
        return null;
    }
}
