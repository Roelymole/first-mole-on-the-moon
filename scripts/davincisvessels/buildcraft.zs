#modloaded davincisvessels buildcrafttransport buildcraftfactory

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

val balloon = <davincisvessels:balloon:*>;
val floater = <davincisvessels:floater>;
val buffer = <davincisvessels:buffer>;
val waterproof = <buildcrafttransport:waterproof>;
val gel = <buildcraftfactory:gel>;

recipes.remove(floater);
recipes.remove(buffer);

recipes.addShapeless("floater", floater, [balloon, waterproof]);
recipes.addShapeless("shore_buffer", buffer, [floater, gel]);
