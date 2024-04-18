#priority 500

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

function alternate(recipeName as string, output as IItemStack,
                   input1 as IIngredient, input2 as IIngredient,
                   input3 as IIngredient = null) as void {
    recipes.addShaped(recipeName, output,
        [[input1, input2, input1],
         [input2, input3, input2],
         [input1, input2, input1]]
    );
}

function checkerboard(recipeName as string, output as IItemStack,
                      input1 as IIngredient, input2 as IIngredient,
                      smallgrid as bool = false) as void {
    if smallgrid {
        recipes.addShapedMirrored(recipeName, output,
            [[input1, input2],
             [input2, input1]]
        );
    } else {
        alternate(recipeName, output, input1, input2, input1);
    }
}

function plus(recipeName as string, output as IItemStack,
              input1 as IIngredient, input2 as IIngredient) as void {
    alternate(recipeName, output, input1, input2, input2);
}

function surround(recipeName as string, output as IItemStack,
                  input1 as IIngredient, input2 as IIngredient) as void {
    alternate(recipeName, output, input1, input1, input2);
}

function fullgrid(recipeName as string, output as IItemStack,
                  input as IIngredient, smallgrid as bool = false) as void {
    checkerboard(recipeName, output, input, input, smallgrid);
}

function rows(recipeName as string, output as IItemStack,
              input1 as IIngredient, input2 as IIngredient,
              input3 as IIngredient = null) as void {
    if isNull(input3) {
        recipes.addShaped(recipeName, output,
            [[input1, input1, input1],
             [input2, input2, input2]]
        );
    } else {
        recipes.addShaped(recipeName, output,
            [[input1, input1, input1],
             [input2, input2, input2],
             [input3, input3, input3]]
        );
    }
}

function columns(recipeName as string, output as IItemStack,
                 input1 as IIngredient, input2 as IIngredient,
                 input3 as IIngredient = null, mirror as bool = false) as void {
    if isNull(input3) {
        if mirror {
            recipes.addShapedMirrored(recipeName, output,
                [[input1, input2],
                 [input1, input2],
                 [input1, input2]]
            );
        } else {
            recipes.addShaped(recipeName, output,
                [[input1, input2],
                 [input1, input2],
                 [input1, input2]]
            );
        }
    } else {
        if mirror {
            recipes.addShapedMirrored(recipeName, output,
                [[input1, input2, input3],
                 [input1, input2, input3],
                 [input1, input2, input3]]
            );
        } else {
            recipes.addShaped(recipeName, output,
                [[input1, input2, input3],
                 [input1, input2, input3],
                 [input1, input2, input3]]
            );
        }
    }
}

function vertical(recipeName as string, output as IItemStack,
                  input1 as IIngredient, input2 as IIngredient,
                  input3 as IIngredient = null) as void {
    if isNull(input3) {
        recipes.addShaped(recipeName, output,
            [[input1],
             [input2]]
        );
    } else {
        recipes.addShaped(recipeName, output,
            [[input1],
             [input2],
             [input3]]
        );
    }
}

function diagonal(recipeName as string, output as IItemStack,
                  input1 as IIngredient, input2 as IIngredient,
                  input3 as IIngredient = null) as void {
    if isNull(input3) {
        recipes.addShapedMirrored(recipeName, output,
            [[null, input2],
             [input1, null]]
        );
    } else {
        recipes.addShapedMirrored(recipeName, output,
            [[null, null, input3],
             [null, input2, null],
             [input1, null, null]]
        );
    }
}

function stairpattern(recipeName as string, output as IItemStack,
                      input as IIngredient) as void {
    recipes.addShapedMirrored(recipeName, output,
        [[input,  null,  null],
         [input, input,  null],
         [input, input, input]]
    );
}

function slabpattern(recipeName as string, output as IItemStack,
                     input as IIngredient) as void {
    recipes.addShaped(recipeName, output,
        [[input, input, input]]
    );
}

function platepattern(recipeName as string, output as IItemStack,
                      input as IIngredient) as void {
    recipes.addShaped(recipeName, output,
        [[input, input]]
    );
}

function fencepattern(recipeName as string, output as IItemStack,
                      input1 as IIngredient, input2 as IIngredient = null) as void {
    if isNull(input2) {
        recipes.addShaped(recipeName, output,
            [[input1, input1, input1],
             [input1, input1, input1]]
        );
    } else {
        recipes.addShaped(recipeName, output,
            [[input1, input2, input1],
             [input1, input2, input1]]
        );
    }
}

function tablepattern(recipeName as string, output as IItemStack,
                      top as IIngredient, leg as IIngredient,
                      mid as IIngredient = null, alt as IIngredient = null) as void {
    if isNull(alt) {
        recipes.addShaped(recipeName, output,
            [[top, top, top],
             [leg, mid, leg],
             [leg, mid, leg]]
        );
    } else {
        recipes.addShaped(recipeName, output,
            [[top, alt, top],
             [leg, mid, leg],
             [leg, mid, leg]]
        );
    }
}

function benchpattern(recipeName as string, output as IItemStack,
                      top as IIngredient, leg as IIngredient,
                      alt as IIngredient = null) as void {
    if isNull(alt) {
        recipes.addShaped(recipeName, output,
            [[top,  top, top],
             [leg, null, leg]]
        );
    } else {
        recipes.addShaped(recipeName, output,
            [[top,  alt, top],
             [leg, null, leg]]
        );
    }
}

function chairpattern(recipeName as string, output as IItemStack,
                      legs as IIngredient, back as IIngredient = null,
                      seat as IIngredient = null) as void {
    if isNull(back) {
        recipes.addShapedMirrored(recipeName, output,
            [[legs, null, null],
             [legs, legs, legs],
             [legs, null, legs]]
        );
    } else if isNull(seat) {
        recipes.addShapedMirrored(recipeName, output,
            [[back, null, null],
             [back, back, back],
             [legs, null, legs]]
        );
    } else {
        recipes.addShapedMirrored(recipeName, output,
            [[back, null, null],
             [back, seat, seat],
             [legs, null, legs]]
        );
    }
}

function cupboardpattern(recipeName as string, output as IItemStack,
                         door as IIngredient, side as IIngredient,
                         centre as IIngredient = <minecraft:chest>) as void {
    recipes.addShapedMirrored(recipeName, output,
        [[side,  side,  door],
         [side, centre, door],
         [side,  side,  door]]
    );
}

function unpack(input as IIngredient) as IItemStack[] {
    var output = [null, null, null] as IItemStack[];
    var i = 0;
    for item in input.items {
        output[i] = item;
        i += 1;
    }
    while i < 3 {
        output[i] = output[0];
        i += 1;
    }
    return output;
}

function cakerecipe(recipeName as string, output as IItemStack,
                    topping as IIngredient, middle as IIngredient,
                    base as IIngredient) as void {
    recipes.addShaped(recipeName, output, [unpack(topping), unpack(middle), unpack(base)]);
}
