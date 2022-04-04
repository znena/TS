// TR: Sync Scripts #9 | 22/1/9

import crafttweaker.item.IItemStack;

val Recipes = [
	[<improvedextraction:ore_cluster:2>, <nuclearcraft:ingot:0>, <techreborn:nuggets:4> * 3],
	[<improvedextraction:ore_cluster:3>, <nuclearcraft:ingot:1>, <techreborn:nuggets:13> * 3],
	[<improvedextraction:ore_cluster:5>, <nuclearcraft:ingot:2>, <techreborn:nuggets:8> * 3],
	[<improvedextraction:ore_cluster:4>, <nuclearcraft:ingot:13>, <techreborn:nuggets:11> * 3],
	[<improvedextraction:ore_cluster:6>, <nuclearcraft:ingot:12>, null],
	[<improvedextraction:ore_cluster:13>, <libvulpes:productingot:10>, null],
	[<improvedextraction:ore_cluster:14>, <libvulpes:productingot:7>, null]
] as IItemStack[][];

for i in Recipes {
	furnace.remove(i[1], i[0]);
	if (i[2] instanceof IItemStack) {
		furnace.addRecipe(i[2], i[0], 5);
	}
}
