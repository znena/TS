// TR: Sync Scripts #17 | 22/1/27

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import scripts.gamestages.age_one_id as age_one_id;

val Recipes = {
	<techreborn:compressor> : 
		[[<contenttweaker:basalt>, <techreborn:part:41>, <contenttweaker:basalt>],
		 [<techreborn:plate_bending_machine>, <techreborn:machine_casing>, <techreborn:plate_bending_machine>],
		 [<contenttweaker:basalt>, <techreborn:part:41>, <contenttweaker:basalt>]],
} as IIngredient[][][IItemStack];
val Recipe_stages = {
	<techreborn:compressor> : age_one_id
} as string[IItemStack];


for o, r in Recipes {
	recipes.remove(o);
	mods.recipestages.Recipes.addShaped(Recipe_stages[o], o, r);
}
