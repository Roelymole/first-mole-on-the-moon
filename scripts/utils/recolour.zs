#priority 500

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.recipes.IRecipeFunction;
import scripts.arrays.dyes.dyes;
import scripts.arrays.dyes.paintbrushes;

global check_colour as IRecipeFunction = function (out, ins, cInfo) as IItemStack {
    if (ins.keys has "input") {
        if !isNull(ins.input.definition) {
            if (out.definition.id == ins.input.definition.id) {
                if (out.metadata == ins.input.metadata) {
                    return null;
                }
            }
        }
        return out;
    } else {
        return null;
    }
};

function redye(recipeName as string, output as IItemStack,
               input as IIngredient, colour as string) as void {
    recipes.addShapeless(recipeName, output,
        [input.marked("input"), dyes[colour]],
        check_colour, null
    );
}

function surround(recipeName as string, output as IItemStack,
                  input as IIngredient, colour as string) as void {
    recipes.addShaped(recipeName, output,
        [[input, input, input],
         [input, dyes[colour], input],
         [input, input, input]]
    );
}

function repaint(recipeName as string, output as IItemStack,
                 input as IIngredient, colour as string) as void {
   val paintbrush = paintbrushes[colour];
   val new_paintbrush = paintbrush.transformReplace(paintbrush.withTag({"damage": 1 as byte}));
   val used_paintbrush = paintbrush.withTag({}).transformNew(
       function(item) {
           if (item.tag has "damage") {
               if (item.tag.damage >= 63) {
                   return null;
               } else {
                   return item.updateTag({"damage": (item.tag.damage + 1) as byte});
               }
           } else {
               return item.withTag({"damage": 1 as byte});
           }
       }
   );

    recipes.addShapeless(recipeName, output,
        [input.marked("input"), new_paintbrush],
        check_colour, null
    );
    recipes.addHiddenShapeless(recipeName ~ "_alt", output,
        [input.marked("input"), used_paintbrush],
        check_colour, null
    );
}
