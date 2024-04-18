#priority 500

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.world.IWorld;
import crafttweaker.world.IBlockPos;

function drop(item as IItemStack, world as IWorld, position as IBlockPos) as void {
    if !world.isRemote() {
        val x = (position.x as float) + 0.5f;
        val y = position.y as float;
        val z = (position.z as float) + 0.5f;
        world.spawnEntity(item.createEntityItem(world, x, y, z));
    }
}

function silk_touched(item as IItemStack) as bool {
    if (item.tag has "ench") {
        for enchant in item.tag.ench.asList() {
            if ((enchant.id as short) == (33 as short)) {
                return true;
            }
        }
    }
    return false;
}
