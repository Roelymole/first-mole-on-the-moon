#priority 500

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

static carpet as IOreDictEntry[string] = {
    "white": <ore:carpetWhite>,
    "orange": <ore:carpetOrange>,
    "magenta": <ore:carpetMagenta>,
    "light_blue": <ore:carpetLightBlue>,
    "yellow": <ore:carpetYellow>,
    "lime": <ore:carpetLime>,
    "pink": <ore:carpetPink>,
    "grey": <ore:carpetGray>,
    "light_grey": <ore:carpetLightGray>,
    "cyan": <ore:carpetCyan>,
    "purple": <ore:carpetPurple>,
    "blue": <ore:carpetBlue>,
    "brown": <ore:carpetBrown>,
    "green": <ore:carpetGreen>,
    "red": <ore:carpetRed>,
    "black": <ore:carpetBlack>
};

static legacy as IItemStack[string] = {
    "white": <chisel:carpet_white>,
    "orange": <chisel:carpet_orange>,
    "magenta": <chisel:carpet_magenta>,
    "light_blue": <chisel:carpet_lightblue>,
    "yellow": <chisel:carpet_yellow>,
    "lime": <chisel:carpet_lime>,
    "pink": <chisel:carpet_pink>,
    "grey": <chisel:carpet_gray>,
    "light_grey": <chisel:carpet_lightgray>,
    "cyan": <chisel:carpet_cyan>,
    "purple": <chisel:carpet_purple>,
    "blue": <chisel:carpet_blue>,
    "brown": <chisel:carpet_brown>,
    "green": <chisel:carpet_green>,
    "red": <chisel:carpet_red>,
    "black": <chisel:carpet_black>
};

static llama as IItemStack[string] = {
    "white": <chisel:carpet_white:1>,
    "orange": <chisel:carpet_orange:1>,
    "magenta": <chisel:carpet_magenta:1>,
    "light_blue": <chisel:carpet_lightblue:1>,
    "yellow": <chisel:carpet_yellow:1>,
    "lime": <chisel:carpet_lime:1>,
    "pink": <chisel:carpet_pink:1>,
    "grey": <chisel:carpet_gray:1>,
    "light_grey": <chisel:carpet_lightgray:1>,
    "cyan": <chisel:carpet_cyan:1>,
    "purple": <chisel:carpet_purple:1>,
    "blue": <chisel:carpet_blue:1>,
    "brown": <chisel:carpet_brown:1>,
    "green": <chisel:carpet_green:1>,
    "red": <chisel:carpet_red:1>,
    "black": <chisel:carpet_black:1>
};

<ore:carpetLegacy>.addItems(legacy.values);
<ore:carpetLlama>.addItems(llama.values);
