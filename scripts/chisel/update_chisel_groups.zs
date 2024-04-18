#modloaded chisel
#priority 1

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.chisel.Carving;

val entries = {
    "blockDiamond": <ore:blockDiamond>,
    "blockEmerald": <ore:blockEmerald>,
    "blockLapis": <ore:blockLapis>,
    "blockAluminum": <ore:blockAluminum>,
    "blockBronze": <ore:blockBronze>,
    "blockCopper": <ore:blockCopper>,
    "blockGold": <ore:blockGold>,
    "blockIron": <ore:blockIron>,
    "blockLead": <ore:blockLead>,
    "blockSilver": <ore:blockSilver>,
    "blockSteel": <ore:blockSteel>,
    "blockTin": <ore:blockTin>,
    "blockUranium": <ore:blockUranium>
} as IOreDictEntry[string];

for name, entry in entries {
    Carving.removeGroup(name);
    Carving.addGroup(name);

    for block in entry.items {
        Carving.addVariation(name, block);
    }
}
