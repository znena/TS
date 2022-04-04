// TR: Sync Scripts #39 | 22/1/27

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

val Recipes = {
	<nuclearcraft:manufactory_idle> :
		[[<ore:ingotInvar>, <ore:dustLapis>, <ore:ingotInvar>],
		 [<techreborn:part:41>, <techreborn:machine_casing:1>, <techreborn:part:41>],
		 [<ore:ingotInvar>, <nuclearcraft:part:4>, <ore:ingotInvar>]]
} as IIngredient[][][IItemStack];

for o, r in Recipes {
	recipes.remove(o);
	recipes.addShaped("machine/nuclearcraft." ~ o.name, o, r);
}
