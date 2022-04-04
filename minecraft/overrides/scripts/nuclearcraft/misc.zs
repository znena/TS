// TR: Sync Scripts #14 | 22/1/27

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

val Recipes = {
	<nuclearcraft:part:4> :
		[[<techreborn:ingot:1>, <techreborn:ingot:1>, <techreborn:ingot:1>],
		 [<techreborn:ingot>, <techreborn:ingot>, <techreborn:ingot>],
		 [<techreborn:ingot:1>, <techreborn:ingot:1>, <techreborn:ingot:1>]],
	<nuclearcraft:part> :
		[[<nuclearcraft:ingot:8>, <techreborn:part:42>, <libvulpes:productingot:3>],
		 [<techreborn:part:42>, <libvulpes:productplate:10>, <techreborn:part:42>],
		 [<libvulpes:productingot:3>, <techreborn:part:42>, <nuclearcraft:ingot:8>]]
} as IIngredient[][][IItemStack];

for o, r in Recipes {
	recipes.remove(o);
	recipes.addShaped("main/nuclearcraft_misc." ~ o.name, o, r);
}
