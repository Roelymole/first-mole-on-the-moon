import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

val unit = <appliedenergistics2:crafting_unit>;
val components = {
    <appliedenergistics2:crafting_storage_1k>:
        [<galacticraftcore:basic_item:3>, <appliedenergistics2:material:35>],
    <appliedenergistics2:crafting_storage_4k>:
        [<minecraft:gold_ingot>, <appliedenergistics2:material:36>],
    <appliedenergistics2:crafting_storage_16k>:
        [<minecraft:emerald>, <appliedenergistics2:material:37>],
    <appliedenergistics2:crafting_storage_64k>:
        [<minecraft:diamond>, <appliedenergistics2:material:38>],
    <appliedenergistics2:crafting_accelerator>:
        [<biomesoplenty:gem>, <appliedenergistics2:material:24>]
} as IItemStack[][IItemStack];

for block, items in components {
    recipes.remove(block);
    recipes.addShapeless(block, [unit, items[0], items[1]]);
}
