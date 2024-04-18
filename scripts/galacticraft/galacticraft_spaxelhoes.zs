#modloaded galacticraftcore galacticraftplanets nuclearcraft

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.enchantments.IEnchantmentDefinition;

val spaxelhoes = {
    "Heavy Duty": <nuclearcraft:spaxelhoe_tough>,
    "Desh": <nuclearcraft:spaxelhoe_hard_carbon>,
    "Titanium": <nuclearcraft:spaxelhoe_boron_nitride>
} as IItemStack[string];

val swords = {
    "Heavy Duty": <galacticraftcore:steel_sword>,
    "Desh": <galacticraftplanets:desh_sword>,
    "Titanium": <galacticraftplanets:titanium_sword>
} as IItemStack[string];

val pickaxes = {
    "Heavy Duty": <galacticraftcore:steel_pickaxe>,
    "Desh": <galacticraftplanets:desh_pick>,
    "Titanium": <galacticraftplanets:titanium_pickaxe>
} as IItemStack[string];

val shovels = {
    "Heavy Duty": <galacticraftcore:steel_shovel>,
    "Desh": <galacticraftplanets:desh_spade>,
    "Titanium": <galacticraftplanets:titanium_shovel>
} as IItemStack[string];

val axes = {
    "Heavy Duty": <galacticraftcore:steel_axe>,
    "Desh": <galacticraftplanets:desh_axe>,
    "Titanium": <galacticraftplanets:titanium_axe>
} as IItemStack[string];

val hoes = {
    "Heavy Duty": <galacticraftcore:steel_hoe>,
    "Desh": <galacticraftplanets:desh_hoe>,
    "Titanium": <galacticraftplanets:titanium_hoe>
} as IItemStack[string];

val handle = <galacticraftcore:item_basic_moon>;

val levels = {
    "nuclearcraft:spaxelhoe_tough": 4 as short,
    "nuclearcraft:spaxelhoe_hard_carbon": 4 as short,
    "nuclearcraft:spaxelhoe_boron_nitride": 3 as short
} as short[string];

val enchantments = {
    32: <enchantment:minecraft:efficiency>,
    33: <enchantment:minecraft:silk_touch>,
    34: <enchantment:minecraft:unbreaking>,
    35: <enchantment:minecraft:fortune>,
    70: <enchantment:minecraft:mending>,
    71: <enchantment:minecraft:vanishing_curse>
} as IEnchantmentDefinition[short];

val too_efficient = function(item as IItemStack) as bool {
    if (item.tag has "ench") {
        for enchant in item.tag.ench.asList() {
            if ((enchant.id as short) == (32 as short)) {
                return ((enchant.lvl as short) > levels[item.definition.id]);
            }
        }
    }
    return false;
};

for type, spaxelhoe in spaxelhoes {
    recipes.remove(spaxelhoe);
    recipes.addShaped(type ~ "_spaxelhoe", spaxelhoe,
        [[axes[type], shovels[type], pickaxes[type]],
         [hoes[type], handle, swords[type]],
         [null, handle, null]]
    );

    recipes.addHiddenShapeless(type ~ "_remove_efficiency", spaxelhoe,
        [spaxelhoe.only(too_efficient).marked("s")],
        function(out, ins, cInfo) {
            val enchants = ins.s.tag.ench.asList();
            var output = ins.s.removeTag("ench");
            for i, enchant in enchants {
                if ((enchant.id as short) == (32 as short)) {
                    output.addEnchantment(enchantments[enchant.id].makeEnchantment(levels[ins.s.definition.id]));
                } else {
                    output.addEnchantment(enchantments[enchant.id].makeEnchantment(enchant.lvl));
                }
            }
            return output;
        }, null
    );
}
