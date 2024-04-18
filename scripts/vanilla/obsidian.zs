import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

val vanilla = <minecraft:obsidian>;
val obsidian = <ore:obsidian>;

val items = [
    <minecraft:ender_chest>,
    <minecraft:enchanting_table>,
    <minecraft:beacon>
] as IItemStack[];

for item in items {
    recipes.replaceAllOccurences(vanilla, obsidian, item);
}
