#modloaded nuclearcraft
#priority 98

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.nuclearcraft.ChanceItemIngredient;
import mods.nuclearcraft.RockCrusher;

val stone = <ore:stone>;
val granite = <ore:stoneGranite>;
val diorite = <ore:stoneDiorite>;
val andesite = <ore:stoneAndesite>;
val cobblestone = <minecraft:cobblestone>;
val granite_cobblestone = <buildingblocks:morestones>;
val diorite_cobblestone = <buildingblocks:morestones:2>;
val andesite_cobblestone = <buildingblocks:morestones:4>;

val gravel = <minecraft:gravel>;
val pebbles = <buildingblocks:pebbles>;
val sand = <minecraft:sand>;
val flint = <minecraft:flint>;
val rhodochrosite = <nuclearcraft:gem_dust:1>;
val villiaumite = <nuclearcraft:gem_dust:8>;
val zirconium = <nuclearcraft:dust:10>;
val fluorite = <nuclearcraft:gem_dust:5>;
val beryllium = <nuclearcraft:dust:9>;
val alugentum = <nuclearcraft:compound:11>;

val other_stones = {
    <ore:stoneLimestone>: <buildingblocks:morestones:7>,
    <ore:stoneMarble>: <buildingblocks:morestones:11>,
    <ore:stoneSandstoneYellow>: <buildingblocks:morestones:15>,
    <ore:stoneBasalt>: <buildingblocks:morestones2:3>,
    <ore:stoneSandstoneRed>: <buildingblocks:morestones2:7>
} as IItemStack[IOreDictEntry];

RockCrusher.removeAllRecipes();

RockCrusher.addRecipe(stone, cobblestone, null, null, 0.75, 0.5, 0);
RockCrusher.addRecipe(cobblestone, gravel,
    ChanceItemIngredient.create(pebbles, 20),
    null
);
RockCrusher.addRecipe(gravel, sand,
    ChanceItemIngredient.create(flint, 20),
    null
);

RockCrusher.addRecipe(granite, granite_cobblestone, null, null, 0.75, 0.5, 0);
RockCrusher.addRecipe(granite_cobblestone,
    ChanceItemIngredient.create(rhodochrosite * 2, 40),
    ChanceItemIngredient.create(villiaumite, 35),
    null
);

RockCrusher.addRecipe(diorite, diorite_cobblestone, null, null, 0.75, 0.5, 0);
RockCrusher.addRecipe(diorite_cobblestone,
    ChanceItemIngredient.create(zirconium * 2, 50),
    ChanceItemIngredient.create(fluorite * 2, 45),
    null
);

RockCrusher.addRecipe(andesite, andesite_cobblestone, null, null, 0.75, 0.5, 0);
RockCrusher.addRecipe(andesite_cobblestone,
    ChanceItemIngredient.create(beryllium * 2, 50),
    ChanceItemIngredient.create(alugentum * 2, 30),
    null
);

for stone, cobblestone in other_stones {
    RockCrusher.addRecipe(stone, cobblestone, null, null, 0.75, 0.5, 0);
}
