import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

val materials = {
    "heavy_duty": <nuclearcraft:alloy:5>,
    "desh": <galacticraftplanets:item_basic_mars:2>,
    "titanium": <galacticraftplanets:item_basic_asteroids>
} as IIngredient[string];

val handles = {
    "heavy_duty": <ore:stickWood>,
    "desh": <galacticraftplanets:item_basic_mars:1>,
    "titanium": <galacticraftcore:steel_pole>
} as IIngredient[string];

val sets = {
    "heavy_duty": {
        "pickaxe": <galacticraftcore:steel_pickaxe>,
        "axe": <galacticraftcore:steel_axe>,
        "hoe": <galacticraftcore:steel_hoe>,
        "shovel": <galacticraftcore:steel_shovel>,
        "sword": <galacticraftcore:steel_sword>,
        "helmet": <galacticraftcore:steel_helmet>,
        "chestplate": <galacticraftcore:steel_chestplate>,
        "leggings": <galacticraftcore:steel_leggings>,
        "boots": <galacticraftcore:steel_boots>
    },
    "desh": {
        "pickaxe": <galacticraftplanets:desh_pick>,
        "axe": <galacticraftplanets:desh_axe>,
        "hoe": <galacticraftplanets:desh_hoe>,
        "shovel": <galacticraftplanets:desh_spade>,
        "sword": <galacticraftplanets:desh_sword>,
        "helmet": <galacticraftplanets:desh_helmet>,
        "chestplate": <galacticraftplanets:desh_chestplate>,
        "leggings": <galacticraftplanets:desh_leggings>,
        "boots": <galacticraftplanets:desh_boots>
    },
    "titanium": {
        "pickaxe": <galacticraftplanets:titanium_pickaxe>,
        "axe": <galacticraftplanets:titanium_axe>,
        "hoe": <galacticraftplanets:titanium_hoe>,
        "shovel": <galacticraftplanets:titanium_shovel>,
        "sword": <galacticraftplanets:titanium_sword>,
        "helmet": <galacticraftplanets:titanium_helmet>,
        "chestplate": <galacticraftplanets:titanium_chestplate>,
        "leggings": <galacticraftplanets:titanium_leggings>,
        "boots": <galacticraftplanets:titanium_boots>
    }
} as IItemStack[string][string];

var material as IIngredient;
var handle as IIngredient;

for name, set in sets {
    material = materials[name];
    handle = handles[name];

    for label, item in set {
        recipes.remove(item);
    }

    recipes.addShaped(name ~ "_pickaxe", set["pickaxe"],
        [[material, material, material],
         [  null,    handle,    null  ],
         [  null,    handle,    null  ]]
    );
    recipes.addShapedMirrored(name ~ "_axe", set["axe"],
        [[material, material],
         [material,  handle ],
         [  null,    handle ]]
    );
    recipes.addShapedMirrored(name ~ "_hoe", set["hoe"],
        [[material, material],
         [  null,    handle ],
         [  null,    handle ]]
    );
    recipes.addShaped(name ~ "_shovel", set["shovel"],
        [[material],
         [ handle ],
         [ handle ]]
    );
    recipes.addShaped(name ~ "_sword", set["sword"],
        [[material],
         [material],
         [ handle ]]
    );
    recipes.addShaped(name ~ "_helmet", set["helmet"],
        [[material, material, material],
         [material,   null,   material]]
    );
    recipes.addShaped(name ~ "_chestplate", set["chestplate"],
        [[material,   null,   material],
         [material, material, material],
         [material, material, material]]
    );
    recipes.addShaped(name ~ "_leggings", set["leggings"],
        [[material, material, material],
         [material,   null,   material],
         [material,   null,   material]]
    );
    recipes.addShaped(name ~ "_boots", set["boots"],
        [[material, null, material],
         [material, null, material]]
    );
}
