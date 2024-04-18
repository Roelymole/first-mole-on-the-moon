import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import scripts.utils.patterns.stairpattern;
import scripts.utils.patterns.slabpattern;
import scripts.utils.patterns.fencepattern;
import scripts.utils.patterns.columns;

val stick = <ore:stickWood>;

val wooden_items = {
    <ore:plankOak>: {
        "stairs": <minecraft:oak_stairs> * 4,
        "slab": <minecraft:wooden_slab> * 6,
        "fence": <minecraft:fence> * 3,
        "gate": <minecraft:fence_gate>,
        "door": <minecraft:wooden_door> * 3,
        "boat": <minecraft:boat>
    },
    <ore:plankSpruce>: {
        "stairs": <minecraft:spruce_stairs> * 4,
        "slab": <minecraft:wooden_slab:1> * 6,
        "fence": <minecraft:spruce_fence> * 3,
        "gate": <minecraft:spruce_fence_gate>,
        "door": <minecraft:spruce_door> * 3,
        "boat": <minecraft:spruce_boat>
    },
    <ore:plankBirch>: {
        "stairs": <minecraft:birch_stairs> * 4,
        "slab": <minecraft:wooden_slab:2> * 6,
        "fence": <minecraft:birch_fence> * 3,
        "gate": <minecraft:birch_fence_gate>,
        "door": <minecraft:birch_door> * 3,
        "boat": <minecraft:birch_boat>
    },
    <ore:plankJungle>: {
        "stairs": <minecraft:jungle_stairs> * 4,
        "slab": <minecraft:wooden_slab:3> * 6,
        "fence": <minecraft:jungle_fence> * 3,
        "gate": <minecraft:jungle_fence_gate>,
        "door": <minecraft:jungle_door> * 3,
        "boat": <minecraft:jungle_boat>
    },
    <ore:plankAcacia>: {
        "stairs": <minecraft:acacia_stairs> * 4,
        "slab": <minecraft:wooden_slab:4> * 6,
        "fence": <minecraft:acacia_fence> * 3,
        "gate": <minecraft:acacia_fence_gate>,
        "door": <minecraft:acacia_door> * 3,
        "boat": <minecraft:acacia_boat>
    },
    <ore:plankDarkOak>: {
        "stairs": <minecraft:dark_oak_stairs> * 4,
        "slab": <minecraft:wooden_slab:5> * 6,
        "fence": <minecraft:dark_oak_fence> * 3,
        "gate": <minecraft:dark_oak_fence_gate>,
        "door": <minecraft:dark_oak_door> * 3,
        "boat": <minecraft:dark_oak_boat>
    }
} as IItemStack[string][IOreDictEntry];

val names = {
    <ore:plankOak>: "oak",
    <ore:plankSpruce>: "spruce",
    <ore:plankBirch>: "birch",
    <ore:plankJungle>: "jungle",
    <ore:plankAcacia>: "acacia",
    <ore:plankDarkOak>: "dark_oak"
} as string[IOreDictEntry];

var name = "";
for planks, variants in wooden_items {
    for item in variants.values {
        recipes.remove(item);
    }

    name = names[planks];
    stairpattern(name ~ "_stairs", variants["stairs"], planks);
    slabpattern(name ~ "_slab", variants["slab"], planks);
    fencepattern(name ~ "_fence", variants["fence"], planks, stick);
    fencepattern(name ~ "_gate", variants["gate"], stick, planks);
    columns(name ~ "_door", variants["door"], planks, planks);
    recipes.addShaped(name ~ "_boat", variants["boat"],
        [[planks,  null,  planks],
         [planks, planks, planks]]
    );
}
