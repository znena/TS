// TR: Sync Scripts #6 | 22/1/1

import crafttweaker.item.IItemStack;

// CobbleStone

recipes.removeByRecipeName("improvedextraction:tile.stonebrick");
recipes.addShapeless("main/cobblestone", <minecraft:cobblestone>,
		[<improvedextraction:rock>, <improvedextraction:rock>, <improvedextraction:rock>,
		<improvedextraction:rock>, <improvedextraction:rock>, <improvedextraction:rock>,
		<improvedextraction:rock>, <improvedextraction:rock>, <improvedextraction:rock>]);
