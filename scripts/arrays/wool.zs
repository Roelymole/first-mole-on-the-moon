#priority 500

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

static wool as IOreDictEntry[string] = {
    "white": <ore:blockWoolWhite>,
    "orange": <ore:blockWoolOrange>,
    "magenta": <ore:blockWoolMagenta>,
    "light_blue": <ore:blockWoolLightBlue>,
    "yellow": <ore:blockWoolYellow>,
    "lime": <ore:blockWoolLime>,
    "pink": <ore:blockWoolPink>,
    "grey": <ore:blockWoolGray>,
    "light_grey": <ore:blockWoolLightGray>,
    "cyan": <ore:blockWoolCyan>,
    "purple": <ore:blockWoolPurple>,
    "blue": <ore:blockWoolBlue>,
    "brown": <ore:blockWoolBrown>,
    "green": <ore:blockWoolGreen>,
    "red": <ore:blockWoolRed>,
    "black": <ore:blockWoolBlack>
};

static legacy as IItemStack[string] = {
    "white": <chisel:wool_white>,
    "orange": <chisel:wool_orange>,
    "magenta": <chisel:wool_magenta>,
    "light_blue": <chisel:wool_lightblue>,
    "yellow": <chisel:wool_yellow>,
    "lime": <chisel:wool_lime>,
    "pink": <chisel:wool_pink>,
    "grey": <chisel:wool_gray>,
    "light_grey": <chisel:wool_lightgray>,
    "cyan": <chisel:wool_cyan>,
    "purple": <chisel:wool_purple>,
    "blue": <chisel:wool_blue>,
    "brown": <chisel:wool_brown>,
    "green": <chisel:wool_green>,
    "red": <chisel:wool_red>,
    "black": <chisel:wool_black>
};

static llama as IItemStack[string] = {
    "white": <chisel:wool_white:1>,
    "orange": <chisel:wool_orange:1>,
    "magenta": <chisel:wool_magenta:1>,
    "light_blue": <chisel:wool_lightblue:1>,
    "yellow": <chisel:wool_yellow:1>,
    "lime": <chisel:wool_lime:1>,
    "pink": <chisel:wool_pink:1>,
    "grey": <chisel:wool_gray:1>,
    "light_grey": <chisel:wool_lightgray:1>,
    "cyan": <chisel:wool_cyan:1>,
    "purple": <chisel:wool_purple:1>,
    "blue": <chisel:wool_blue:1>,
    "brown": <chisel:wool_brown:1>,
    "green": <chisel:wool_green:1>,
    "red": <chisel:wool_red:1>,
    "black": <chisel:wool_black:1>
};

<ore:blockWoolLegacy>.addItems(legacy.values);
<ore:blockWoolLlama>.addItems(llama.values);
