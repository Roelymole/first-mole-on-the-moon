import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import scripts.utils.recolour.redye;
import scripts.arrays.dyes.colours;
import scripts.arrays.dyes.dyes;
import scripts.arrays.wool;
import scripts.arrays.carpets;
import scripts.arrays.buttons.buttons;
import scripts.arrays.plates.plates;

val items = {
    "wool": <minecraft:wool:*>,
    "carpet": <minecraft:carpet:*>,
    "bed": <minecraft:bed:*>,
    "sofa": <cfm:couch:*>,
    "lamp": <cfm:lamp_off:*>,
    "doormat": <cfm:door_mat:*>,
    "modern_bed": <cfm:modern_bed_bottom:*>,
    "bouncy": <cfm:inflatable_castle:*>
} as IItemStack[string];

var def = <minecraft:wool>.definition;

for j in 1 to 16 {
    recipes.remove(def.makeStack(j));
}

for name, item in items {
    def = item.definition;
    for i, colour in colours {
        redye(name ~ "_redye_" ~ colour, def.makeStack(i), item, colour);
    }
}

if (loadedMods has "chisel") {
    for colour in colours {
        redye("legacy_block_redye_" ~ colour, wool.legacy[colour], <ore:blockWoolLegacy>, colour);
        redye("llama_block_redye_" ~ colour, wool.llama[colour], <ore:blockWoolLlama>, colour);
        redye("legacy_carpet_redye_" ~ colour, carpets.legacy[colour], <ore:carpetLegacy>, colour);
        redye("llama_carpet_redye_" ~ colour, carpets.llama[colour], <ore:carpetLlama>, colour);
    }
}

if (loadedMods has "sbmwoolbuttons") {
    for colour in colours {
        redye("woolbutton_redye_" ~ colour, buttons[colour], <ore:buttonWool>, colour);
    }
}

if (loadedMods has "woolplates") {
    for colour in colours {
        redye("woolplate_redye_" ~ colour, plates[colour], <ore:plateWool>, colour);
    }
}
