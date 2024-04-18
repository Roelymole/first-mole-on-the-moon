#priority 500

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

function remove(item as IItemStack) {
    if (loadedMods has "jei") {
        mods.jei.JEI.removeAndHide(item);
    } else {
        recipes.remove(item);
    }
}

function removeList(items as IItemStack[]) {
    if (loadedMods has "jei") {
        for item in items {
            mods.jei.JEI.removeAndHide(item);
        }
    } else {
        for item in items {
            recipes.remove(item);
        }
    }
}

function hide(item as IItemStack) {
    if (loadedMods has "jei") {
        mods.jei.JEI.hide(item);
    }
}

function hideList(items as IItemStack[]) {
    if (loadedMods has "jei") {
        for item in items {
            mods.jei.JEI.hide(item);
        }
    }
}

function hideLiquid(liquid as ILiquidStack) {
    if (loadedMods has "jei") {
        mods.jei.JEI.hide(liquid * 1000);
    }
}

function hideLiquids(liquids as ILiquidStack[]) {
    if (loadedMods has "jei") {
        for liquid in liquids {
            mods.jei.JEI.hide(liquid * 1000);
        }
    }
}

function hideBucket(name as string) {
    if (loadedMods has "jei") {
        mods.jei.JEI.hide(<forge:bucketfilled>.withTag({FluidName: name, Amount: 1000}));
    }
}

function hideBuckets(names as string[]) {
    if (loadedMods has "jei") {
        for name in names {
            mods.jei.JEI.hide(<forge:bucketfilled>.withTag({FluidName: name, Amount: 1000}));
        }
    }
}

function hideLiquidAndBucket(liquid as ILiquidStack) {
    if (loadedMods has "jei") {
        mods.jei.JEI.hide(liquid * 1000);
        mods.jei.JEI.hide(<forge:bucketfilled>.withTag({FluidName: liquid.name, Amount: 1000}));
    }
}

function hideLiquidsAndBuckets(liquids as ILiquidStack[]) {
    if (loadedMods has "jei") {
        for liquid in liquids {
            mods.jei.JEI.hide(liquid * 1000);
            mods.jei.JEI.hide(<forge:bucketfilled>.withTag({FluidName: liquid.name, Amount: 1000}));
        }
    }
}
