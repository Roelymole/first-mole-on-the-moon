#priority 500
#modloaded woolplates

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

static plates as IItemStack[string] = {
    "white": <woolplates:wool_plate_white>,
    "orange": <woolplates:wool_plate_orange>,
    "magenta": <woolplates:wool_plate_magenta>,
    "light_blue": <woolplates:wool_plate_light_blue>,
    "yellow": <woolplates:wool_plate_yellow>,
    "lime": <woolplates:wool_plate_lime>,
    "pink": <woolplates:wool_plate_pink>,
    "grey": <woolplates:wool_plate_gray>,
    "light_grey": <woolplates:wool_plate_silver>,
    "cyan": <woolplates:wool_plate_cyan>,
    "purple": <woolplates:wool_plate_purple>,
    "blue": <woolplates:wool_plate_blue>,
    "brown": <woolplates:wool_plate_brown>,
    "green": <woolplates:wool_plate_green>,
    "red": <woolplates:wool_plate_red>,
    "black": <woolplates:wool_plate_black>
};

<ore:plateWool>.addItems(plates.values);
