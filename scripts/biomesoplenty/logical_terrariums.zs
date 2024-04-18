#modloaded biomesoplenty

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

val jar = <biomesoplenty:jar_empty>;
val cactus_terrarium = <biomesoplenty:terrarium:2>;
val koru_terrarium = <biomesoplenty:terrarium:5>;
val dead_terrarium = <biomesoplenty:terrarium:9>;
val ender_terrarium = <biomesoplenty:terrarium:15>;
val sandy_grass = <biomesoplenty:grass:3>;
val loamy_grass = <biomesoplenty:grass:2>;
val loamy_path = <biomesoplenty:grass_path>;
val end_stone = <minecraft:end_stone>;
val tiny_cactus = <biomesoplenty:plant_1:6>;
val koru = <biomesoplenty:plant_0:9>;
val dead_bush = <minecraft:deadbush>;
val chorus_flower = <minecraft:chorus_flower>;
recipes.remove(cactus_terrarium);
recipes.remove(koru_terrarium);
recipes.remove(dead_terrarium);
recipes.remove(ender_terrarium);

recipes.addShapeless("cactus_terrarium", cactus_terrarium, [sandy_grass, tiny_cactus, jar]);
recipes.addShapeless("koru_terrarium", koru_terrarium, [loamy_grass, koru, jar]);
recipes.addShapeless("dead_terrarium", dead_terrarium, [loamy_path, dead_bush, jar]);
recipes.addShapeless("ender_terrarium", ender_terrarium, [end_stone, chorus_flower, jar]);
