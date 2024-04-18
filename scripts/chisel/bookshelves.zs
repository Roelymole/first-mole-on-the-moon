#modloaded chisel

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.chisel.Carving;

val bookshelves = {
    "books": {
        "oak": [
            <minecraft:bookshelf>,
            <chisel:bookshelf_oak>,
            <chisel:bookshelf_oak:3>,
            <chisel:bookshelf_oak:6>,
            <chisel:bookshelf_oak:7>
        ],
        "spruce": [
            <chisel:bookshelf_spruce>,
            <chisel:bookshelf_spruce:3>,
            <chisel:bookshelf_spruce:6>,
            <chisel:bookshelf_spruce:7>
        ],
        "birch": [
            <chisel:bookshelf_birch>,
            <chisel:bookshelf_birch:3>,
            <chisel:bookshelf_birch:6>,
            <chisel:bookshelf_birch:7>
        ],
        "jungle": [
            <chisel:bookshelf_jungle>,
            <chisel:bookshelf_jungle:3>,
            <chisel:bookshelf_jungle:6>,
            <chisel:bookshelf_jungle:7>
        ],
        "acacia": [
            <chisel:bookshelf_acacia>,
            <chisel:bookshelf_acacia:3>,
            <chisel:bookshelf_acacia:6>,
            <chisel:bookshelf_acacia:7>
        ],
        "darkoak": [
            <chisel:bookshelf_darkoak>,
            <chisel:bookshelf_darkoak:3>,
            <chisel:bookshelf_darkoak:6>,
            <chisel:bookshelf_darkoak:7>
        ]
    },
    "necromancer": {
        "oak": [
            <chisel:bookshelf_oak:1>,
            <chisel:bookshelf_oak:2>
        ],
        "spruce": [
            <chisel:bookshelf_spruce:1>,
            <chisel:bookshelf_spruce:2>
        ],
        "birch": [
            <chisel:bookshelf_birch:1>,
            <chisel:bookshelf_birch:2>
        ],
        "jungle": [
            <chisel:bookshelf_jungle:1>,
            <chisel:bookshelf_jungle:2>
        ],
        "acacia": [
            <chisel:bookshelf_acacia:1>,
            <chisel:bookshelf_acacia:2>
        ],
        "darkoak": [
            <chisel:bookshelf_darkoak:1>,
            <chisel:bookshelf_darkoak:2>
        ]
    },
    "cobwebs": {
        "oak": [<chisel:bookshelf_oak:4>],
        "spruce": [<chisel:bookshelf_spruce:4>],
        "birch": [<chisel:bookshelf_birch:4>],
        "jungle": [<chisel:bookshelf_jungle:4>],
        "acacia": [<chisel:bookshelf_acacia:4>],
        "darkoak": [<chisel:bookshelf_darkoak:4>]
    },
    "hoarder": {
        "oak": [<chisel:bookshelf_oak:5>],
        "spruce": [<chisel:bookshelf_spruce:5>],
        "birch": [<chisel:bookshelf_birch:5>],
        "jungle": [<chisel:bookshelf_jungle:5>],
        "acacia": [<chisel:bookshelf_acacia:5>],
        "darkoak": [<chisel:bookshelf_darkoak:5>]
    },
    "cans": {
        "oak": [<chisel:bookshelf_oak:8>],
        "spruce": [<chisel:bookshelf_spruce:8>],
        "birch": [<chisel:bookshelf_birch:8>],
        "jungle": [<chisel:bookshelf_jungle:8>],
        "acacia": [<chisel:bookshelf_acacia:8>],
        "darkoak": [<chisel:bookshelf_darkoak:8>]
    },
    "paper": {
        "oak": [<chisel:bookshelf_oak:9>],
        "spruce": [<chisel:bookshelf_spruce:9>],
        "birch": [<chisel:bookshelf_birch:9>],
        "jungle": [<chisel:bookshelf_jungle:9>],
        "acacia": [<chisel:bookshelf_acacia:9>],
        "darkoak": [<chisel:bookshelf_darkoak:9>]
    }
} as IItemStack[][string][string];

val planks = {
    "oak": <ore:plankOak>,
    "spruce": <ore:plankSpruce>,
    "birch": <ore:plankBirch>,
    "jungle": <ore:plankJungle>,
    "acacia": <ore:plankAcacia>,
    "darkoak": <ore:plankDarkOak>
} as IOreDictEntry[string];

val book = <minecraft:book>;
val ingredients = {
    "books": [book, book, book],
    "necromancer": [book, <minecraft:skull> | <minecraft:skull:1>, book],
    "cobwebs": [<minecraft:web>, book, <minecraft:web>],
    "hoarder": [<minecraft:golden_apple>, book, <minecraft:iron_ingot>],
    "cans": [<ore:canFood>, <ore:canFood>, <ore:canFood>],
    "paper": [<minecraft:paper>, <minecraft:paper>, <minecraft:paper>]
} as IIngredient[][string];

for name, blocks in bookshelves["books"] {
    recipes.remove(blocks[0]);
    Carving.removeGroup("bookshelf_" ~ name);
}

var groupName = "";
for name, shelves in bookshelves {
    for material, blocks in shelves {
        groupName = material ~ "_bookshelf_" ~ name;
        if (name == "hoarder") {
            recipes.addShapedMirrored(groupName, blocks[0],
                [[planks[material], planks[material], planks[material]],
                 ingredients[name],
                 [planks[material], planks[material], planks[material]]]
            );
        } else {
            recipes.addShaped(groupName, blocks[0],
                [[planks[material], planks[material], planks[material]],
                 ingredients[name],
                 [planks[material], planks[material], planks[material]]]
            );
        }

        if (blocks.length > 1) {
            Carving.addGroup(groupName);
            for block in blocks {
                Carving.addVariation(groupName, block);
            }
        }
    }
}
