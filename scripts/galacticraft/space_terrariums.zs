#modloaded biomesoplenty galacticraftcore galacticraftplanets

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

val jar = <biomesoplenty:jar_empty>;
val moon_terrarium = <biomesoplenty:terrarium:12>;
val mars_terrarium = <biomesoplenty:terrarium:10>;
val venus_terrarium = <biomesoplenty:terrarium:4>;
val alien_terrarium = <biomesoplenty:terrarium:13>;
val cheese_ore = <galacticraftcore:basic_block_moon:2>;
val regolith = <galacticraftplanets:mars:5> | <galacticraftplanets:mars:6>;
val volcanic = <galacticraftplanets:venus:2>;
val mud = <biomesoplenty:mud>;
val vines = <galacticraftplanets:cavern_vines>;
val web = <galacticraftplanets:web_torch>;
val seed = <galacticraftplanets:strange_seed:*>;

recipes.remove(moon_terrarium);
recipes.remove(mars_terrarium);
recipes.remove(venus_terrarium);
recipes.remove(alien_terrarium);

recipes.addShapeless("moon_terrarium", moon_terrarium, [cheese_ore, jar]);
recipes.addShapeless("mars_terrarium", mars_terrarium, [regolith, vines, jar]);
recipes.addShapeless("venus_terrarium", venus_terrarium, [volcanic, web, jar]);
recipes.addShapeless("alien_terrarium", alien_terrarium, [mud, seed, jar]);
