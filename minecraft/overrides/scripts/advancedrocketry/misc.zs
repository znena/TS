// TR: Sync Scripts #41 | 22/1/27

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

val Recipes = {
	<advancedrocketry:satelliteprimaryfunction> : [<techreborn:plates:38>, <techreborn:part:24>,
			<techreborn:plates:33>, <techreborn:plates:33>]
} as IIngredient[][IItemStack];

for o, r in Recipes {
	recipes.remove(o);
	recipes.addShapeless("main/advancedrocketry." ~ o.name, o, r);
}
