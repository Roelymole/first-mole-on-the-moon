import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import scripts.utils.recolour.repaint;
import scripts.arrays.dyes.colours;

val items = {
    //"concrete": <minecraft:concrete:*>,
    "clock": <cfm:digital_clock:*>,
    "photo_frame": <cfm:photo_frame:*>,
    "pipewire": <buildcrafttransport:wire:*>
} as IItemStack[string];

var def as IItemDefinition;
for name, item in items {
    def = item.definition;
    for i, colour in colours {
        repaint(name ~ "_repaint_" ~ colour, def.makeStack(i), item, colour);
    }
}
