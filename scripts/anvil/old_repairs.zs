import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.event.PlayerAnvilUpdateEvent;

val sets = {
    "galacticraftcore:basic_item:9": [
        "galacticraftcore:steel_pickaxe",
        "galacticraftcore:steel_axe",
        "galacticraftcore:steel_hoe",
        "galacticraftcore:steel_shovel",
        "galacticraftcore:steel_sword",
        "galacticraftcore:steel_helmet",
        "galacticraftcore:steel_chestplate",
        "galacticraftcore:steel_leggings",
        "galacticraftcore:steel_boots"
    ],
    "galacticraftplanets:item_basic_mars:5": [
        "galacticraftplanets:desh_pick",
        "galacticraftplanets:desh_axe",
        "galacticraftplanets:desh_hoe",
        "galacticraftplanets:desh_spade",
        "galacticraftplanets:desh_sword",
        "galacticraftplanets:desh_pick_slime"
    ],
    "galacticraftplanets:item_basic_asteroids:6": [
        "galacticraftplanets:titanium_pickaxe",
        "galacticraftplanets:titanium_axe",
        "galacticraftplanets:titanium_hoe",
        "galacticraftplanets:titanium_shovel",
        "galacticraftplanets:titanium_sword",
        "galacticraftplanets:titanium_helmet",
        "galacticraftplanets:titanium_chestplate",
        "galacticraftplanets:titanium_leggings",
        "galacticraftplanets:titanium_boots"
    ],
    "nuclearcraft:alloy:1": [
        "nuclearcraft:spaxelhoe_tough"
    ],
    "nuclearcraft:alloy:2": [
        "nuclearcraft:spaxelhoe_hard_carbon"
    ],
    "nuclearcraft:gem:1": [
        "nuclearcraft:spaxelhoe_boron_nitride"
    ],
    "minecraft:diamond:0": [
        "chisel:chisel_diamond",
        "chisel:chisel_hitech"
    ]
} as string[][string];

val levels = {
    "nuclearcraft:spaxelhoe_tough": 4 as short,
    "nuclearcraft:spaxelhoe_hard_carbon": 4 as short,
    "nuclearcraft:spaxelhoe_boron_nitride": 3 as short
} as short[string];

val picks = [
    "minecraft:wooden_pickaxe",
    "minecraft:stone_pickaxe",
    "minecraft:iron_pickaxe",
    "minecraft:gold_pickaxe",
    "minecraft:diamond_pickaxe",
    "galacticraftcore:steel_pickaxe",
    "galacticraftplanets:desh_pick",
    "galacticraftplanets:desh_pick_slime",
    "galacticraftplanets:titanium_pickaxe",
    "galacticraftplanets:volcanic_pickaxe",
    "nuclearcraft:spaxelhoe_tough",
    "nuclearcraft:spaxelhoe_hard_carbon",
    "nuclearcraft:spaxelhoe_boron_nitride"
] as string[];

val efficiency = function(item as IItemStack) as short {
    if (item.tag has "ench") {
        for enchant in item.tag.ench.asList() {
            if ((enchant.id as short) == (32 as short)) {
                return enchant.lvl as short;
            }
        }
    }
    if (item.tag has "StoredEnchantments") {
        for enchant in item.tag.StoredEnchantments.asList() {
            if ((enchant.id as short) == (32 as short)) {
                return enchant.lvl as short;
            }
        }
    }
    return 0;
};

events.onPlayerAnvilUpdate(function (event as PlayerAnvilUpdateEvent) {
    var left = event.leftItem.definition.id;
    var right = event.rightItem.definition.id ~ ":" ~ event.rightItem.metadata;
    if (sets.keys has right) {
        if (sets[right] has left) {
            event.cancel();
        }
    }

    if (levels.keys has left) {
        val left_efficiency = efficiency(event.leftItem);
        val right_efficiency = efficiency(event.rightItem);
        val max_level = levels[left];
        if ((left_efficiency > max_level) || (right_efficiency > max_level)) {
            event.cancel();
        }
        if ((left_efficiency + right_efficiency) >= 2 * max_level) {
            event.cancel();
        }
    }
});
