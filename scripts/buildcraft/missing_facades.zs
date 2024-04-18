#modloaded buildcraftsilicon buildcrafttransport buildingblocks

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.buildcraft.AssemblyTable;

val structure_pipe = <buildcrafttransport:pipe_structure>;

val missing = {
	"marble": <buildingblocks:morestones:10>,
	"basalt": <buildingblocks:morestones2:2>,
	"limestone": <buildingblocks:morestones:6>,
	"sandstone": <buildingblocks:morestones:14>,
	"red_sandstone": <buildingblocks:morestones2:6>
} as IItemStack[string];

var facade as IItemStack = <buildcraftsilicon:plug_facade>;
var facade_hollow as IItemStack = <buildcraftsilicon:plug_facade>;

// Allow missing facades to be created using the assembly table
for name, block in missing {
	facade = <buildcraftsilicon:plug_facade>.withTag({facade: {isHollow: 0 as byte, states: [{state: {Properties: {variant: name}, Name: block.definition.id}}]}});
	facade_hollow = <buildcraftsilicon:plug_facade>.withTag({facade: {isHollow: 1 as byte, states: [{state: {Properties: {variant: name}, Name: block.definition.id}}]}});

	AssemblyTable.addRecipe(name + "_facade", facade * 6, 68, [block, structure_pipe * 3]);
	AssemblyTable.addRecipe(name + "_facade_hollow", facade_hollow * 6, 68, [block, structure_pipe * 3]);
}

// Remove incorrect recipes
// AssemblyTable.removeByName("buildcrafttransport:facaderecipes");