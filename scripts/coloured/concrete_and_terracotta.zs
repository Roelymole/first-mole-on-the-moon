import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import scripts.utils.recolour.repaint;
import scripts.utils.recolour.surround;
import scripts.arrays.dyes.colours;

val concrete = <ore:blockConcrete>;
val concrete_def = <minecraft:concrete>.definition;
val powder = <minecraft:concrete_powder:*>;
val powder_def = powder.definition;
val terracotta = <ore:terracotta>;
val terracotta_def = <minecraft:stained_hardened_clay>.definition;
var block as IItemStack;

for i, colour in colours {
    repaint("concrete_repaint_" ~ colour, concrete_def.makeStack(i), concrete, colour);
    surround("concrete_powder_redye_" ~ colour, powder_def.makeStack(i), powder, colour);

    block = terracotta_def.makeStack(i) * 8;
    recipes.remove(block);
    surround("terracotta_redye_" ~ colour, block, terracotta, colour);
}
