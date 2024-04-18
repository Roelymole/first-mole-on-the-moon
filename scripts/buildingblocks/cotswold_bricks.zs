#modloaded buildingblocks

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import scripts.utils.patterns.fullgrid;

val cotswold = <buildingblocks:cotswoldbricks>;
val limestone = <ore:stoneLimestone>;

recipes.remove(cotswold * 4);
fullgrid("cotswold_bricks", cotswold, limestone, true);
