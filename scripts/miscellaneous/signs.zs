#modloaded moarsigns

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import scripts.utils.removeAndHide.removeList;

val stick = <ore:stickWood>;

val unused = [
    <moarsigns:nugget:1>,
    <moarsigns:nugget:2>,
    <moarsigns:nugget:3>,
    <moarsigns:nugget:4>,
    <minecraft:sign>,
    <moarsigns:moar_sign>.withTag({SignTexture: "bop/ethereal_sign"})
] as IItemStack[];

val signs = {
    <minecraft:iron_ingot>: <moarsigns:moar_sign:1>.withTag({SignTexture: "iron_sign"}),
    <minecraft:gold_ingot>: <moarsigns:moar_sign:1>.withTag({SignTexture: "gold_sign"}),
    <minecraft:diamond>: <moarsigns:moar_sign:1>.withTag({SignTexture: "diamond_sign"}),
    <minecraft:emerald>: <moarsigns:moar_sign:1>.withTag({SignTexture: "emerald_sign"}),
    <minecraft:dye:4>: <moarsigns:moar_sign:1>.withTag({SignTexture: "lapis_sign"}),
    <minecraft:quartz>: <moarsigns:moar_sign:1>.withTag({SignTexture: "quartz_sign"})
} as IItemStack[IItemStack];

val wooden = {
    <ore:plankOak>: <moarsigns:moar_sign>.withTag({SignTexture: "oak_sign"}),
    <ore:plankSpruce>: <moarsigns:moar_sign>.withTag({SignTexture: "spruce_sign"}),
    <ore:plankBirch>: <moarsigns:moar_sign>.withTag({SignTexture: "birch_sign"}),
    <ore:plankJungle>: <moarsigns:moar_sign>.withTag({SignTexture: "jungle_sign"}),
    <ore:plankAcacia>: <moarsigns:moar_sign>.withTag({SignTexture: "acacia_sign"}),
    <ore:plankDarkOak>: <moarsigns:moar_sign>.withTag({SignTexture: "big_oak_sign"})
} as IItemStack[IOreDictEntry];

removeList(unused);

recipes.removeByRecipeName("moarsigns:diamond_nugget_reverse");
recipes.removeByRecipeName("moarsigns:emerald_nugget_reverse");
recipes.removeByRecipeName("moarsigns:lapis_nugget_reverse");
recipes.removeByRecipeName("moarsigns:quartz_nugget_reverse");

for material, sign in signs {
    recipes.remove(sign);
    recipes.remove(sign * 9);
    recipes.addShaped(sign.tag.SignTexture, sign * 3,
        [[material, material, material],
         [material, material, material],
         [null, stick, null]]
    );
}

for material, sign in wooden {
    recipes.remove(sign);
    recipes.addShaped(sign.tag.SignTexture, sign * 3,
        [[material, material, material],
         [material, material, material],
         [null, stick, null]]
    );
}
