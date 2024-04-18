#priority 500

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

global energyUnit as string = "RF";

function formatRF(number as int) as string {
	if (number < 1000) {
		return number ~ " " ~ energyUnit;
	} else if (number < 1000000) {
		var decimal = number % 1000;
		var leading = (number - decimal) / 1000;
		var unit = decimal % 10;
		decimal -= unit;
		if (unit >= 5) {
			decimal += 10;
		}
		if (decimal == 0) {
			return leading ~ " k" ~ energyUnit;
		} else {
			var output = (leading as double) + ((decimal as double) / 1000.0);
			return output ~ " k" ~ energyUnit;
		}
	} else {
		var decimal = number % 1000000;
		var leading = (number - decimal) / 1000000;
		var unit = decimal % 10000;
		decimal -= unit;
		if (unit >= 5000) {
			decimal += 10000;
		}
		if (decimal == 0) {
			return leading ~ " M" ~ energyUnit;
		} else {
			var output = (leading as double) + ((decimal as double) / 1000000.0);
			return output ~ " M" ~ energyUnit;
		}
	}
}

function formatPercentage(number as int) as string {
	var decimal = number % 100;
	var leading = (number - decimal) / 100;
	if (decimal == 0) {
		return leading ~ "%";
	} else {
		var output = (leading as double) + ((decimal as double) / 100.0);
		return output ~ "%";
	}
}

function formatTime(number as int) as string {
	var seconds = number % 60;
	var minutes = (number - seconds) / 60;
	if (seconds == 0) {
		return minutes ~ " minutes";
	} else {
		return minutes ~ " minutes and " ~ seconds ~ " seconds";
	}
}
