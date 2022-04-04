// TR: Sync Scripts #37 | 22/1/15

import scripts.gamestages.age_one_id as age_one_id;

recipes.remove(<minecraft:crafting_table>);
recipes.remove(<tconstruct:tooltables>);
recipes.addShaped("main/crafting_table", <tconstruct:tooltables>,
		[[<ore:plankWood>, <ore:plankWood>],
		[<ore:plankWood>, <ore:plankWood>]]);

mods.recipestages.Recipes.addShapeless(age_one_id, <minecraft:crafting_table>, [<tconstruct:tooltables>]);
