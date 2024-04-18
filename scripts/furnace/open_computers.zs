#modloaded opencomputers

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

val raw_circuit_board = <opencomputers:material:2>;
val pcb = <opencomputers:material:4>;

furnace.remove(pcb);
furnace.addRecipe(pcb, raw_circuit_board, 0.5);
