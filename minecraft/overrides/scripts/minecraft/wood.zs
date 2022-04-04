// TR: Sync Scripts #2 | 22/1/2

import crafttweaker.item.IItemStack;

// Planks

val Planks = [<minecraft:planks>, <minecraft:planks:1>, <minecraft:planks:2>, <minecraft:planks:3>,
		<minecraft:planks:4>, <minecraft:planks:5>, <techreborn:rubber_planks>] as IItemStack[];
val Logs = [<minecraft:log>, <minecraft:log:1>, <minecraft:log:2>, <minecraft:log:3>,
		<minecraft:log2>, <minecraft:log2:1>, <techreborn:rubber_log>] as IItemStack[];
val PlanksCraftingIdPrefix = "main/planks_" as string;
val PlanksCraftingId = ["minecraft_1", "minecraft_2", "minecraft_3", "minecraft_4",
		"minecraft_5", "minecraft_6", "techreborn_rubber"] as string[];
val PlanksCraftingNum = [[1] as int[], [1] as int[], [1] as int[], [1] as int[],
		[1] as int[], [1] as int[], [2] as int[]] as int[][];

for i in 0 to 7 {
	recipes.remove(Planks[i]);
	recipes.addShapeless(PlanksCraftingIdPrefix ~ PlanksCraftingId[i], Planks[i] * PlanksCraftingNum[i][0], [Logs[i]]);
}

// Sticks

recipes.remove(<minecraft:stick>);
recipes.addShaped("main/sticks", <minecraft:stick> * 2, [[<ore:plankWood>], [<ore:plankWood>]]);
