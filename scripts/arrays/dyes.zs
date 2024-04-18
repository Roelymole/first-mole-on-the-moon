#priority 500

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

static colours as string[] = [
    "white",
    "orange",
    "magenta",
    "light_blue",
    "yellow",
    "lime",
    "pink",
    "grey",
    "light_grey",
    "cyan",
    "purple",
    "blue",
    "brown",
    "green",
    "red",
    "black"
];

static dyes as IOreDictEntry[string] = {
    "white": <ore:dyeWhite>,
    "orange": <ore:dyeOrange>,
    "magenta": <ore:dyeMagenta>,
    "light_blue": <ore:dyeLightBlue>,
    "yellow": <ore:dyeYellow>,
    "lime": <ore:dyeLime>,
    "pink": <ore:dyePink>,
    "grey": <ore:dyeGray>,
    "light_grey": <ore:dyeLightGray>,
    "cyan": <ore:dyeCyan>,
    "purple": <ore:dyePurple>,
    "blue": <ore:dyeBlue>,
    "brown": <ore:dyeBrown>,
    "green": <ore:dyeGreen>,
    "red": <ore:dyeRed>,
    "black": <ore:dyeBlack>
};

static paintbrushes as IItemStack[string] = {
    "white": <buildcraftcore:paintbrush:1>,
    "orange": <buildcraftcore:paintbrush:2>,
    "magenta": <buildcraftcore:paintbrush:3>,
    "light_blue": <buildcraftcore:paintbrush:4>,
    "yellow": <buildcraftcore:paintbrush:5>,
    "lime": <buildcraftcore:paintbrush:6>,
    "pink": <buildcraftcore:paintbrush:7>,
    "grey": <buildcraftcore:paintbrush:8>,
    "light_grey": <buildcraftcore:paintbrush:9>,
    "cyan": <buildcraftcore:paintbrush:10>,
    "purple": <buildcraftcore:paintbrush:11>,
    "blue": <buildcraftcore:paintbrush:12>,
    "brown": <buildcraftcore:paintbrush:13>,
    "green": <buildcraftcore:paintbrush:14>,
    "red": <buildcraftcore:paintbrush:15>,
    "black": <buildcraftcore:paintbrush:16>
};
