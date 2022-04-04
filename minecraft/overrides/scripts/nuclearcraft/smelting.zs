// TR: Sync Scripts #22 | 22/1/9

import crafttweaker.item.IItemStack;

val Recipes = [
	[<nuclearcraft:ore:3>, <techreborn:ingot:23>, <techreborn:smalldust:67>],
	[<nuclearcraft:ore:4>, <techreborn:ingot:24>, <techreborn:smalldust:68>],
	[<nuclearcraft:ore:5>, <nuclearcraft:ingot:5>, <contenttweaker:boron_nugget> * 3],
	[<nuclearcraft:ore:6>, <nuclearcraft:ingot:6>, <contenttweaker:lithium_nugget> * 2],
	[<nuclearcraft:ore:7>, <nuclearcraft:ingot:7>, <contenttweaker:magnesium_nugget> * 2]
] as IItemStack[][];

for i in Recipes {
	furnace.remove(i[1], i[0]);
	if (i[2] instanceof IItemStack) {
		furnace.addRecipe(i[2], i[0], 8);
	}
}
