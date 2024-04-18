#modloaded galacticraftcore

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;

val buggy_materials = <galacticraftcore:buggymat>.definition;

for i in 0 to 3 {
    buggy_materials.makeStack(i).maxStackSize = 64;
}
