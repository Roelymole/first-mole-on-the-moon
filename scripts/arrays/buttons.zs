#priority 500
#modloaded sbmwoolbuttons

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

static buttons as IItemStack[string] = {
    "white": <sbmwoolbuttons:wool_button_white>,
    "orange": <sbmwoolbuttons:wool_button_orange>,
    "magenta": <sbmwoolbuttons:wool_button_magenta>,
    "light_blue": <sbmwoolbuttons:wool_button_light_blue>,
    "yellow": <sbmwoolbuttons:wool_button_yellow>,
    "lime": <sbmwoolbuttons:wool_button_lime>,
    "pink": <sbmwoolbuttons:wool_button_pink>,
    "grey": <sbmwoolbuttons:wool_button_gray>,
    "light_grey": <sbmwoolbuttons:wool_button_silver>,
    "cyan": <sbmwoolbuttons:wool_button_cyan>,
    "purple": <sbmwoolbuttons:wool_button_purple>,
    "blue": <sbmwoolbuttons:wool_button_blue>,
    "brown": <sbmwoolbuttons:wool_button_brown>,
    "green": <sbmwoolbuttons:wool_button_green>,
    "red": <sbmwoolbuttons:wool_button_red>,
    "black": <sbmwoolbuttons:wool_button_black>
};

<ore:buttonWool>.addItems(buttons.values);
