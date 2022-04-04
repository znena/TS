// TR: Sync Scripts #35 | 22/1/16

import crafttweaker.item.IItemDefinition;
import mods.techreborn.grinder;

grinder.addRecipe(<contenttweaker:calcite_dust>, <contenttweaker:calcite>, 600, 3);
grinder.addRecipe(<contenttweaker:refined_iron_dust>, <techreborn:ingot:19>, 300, 2);

for i in 0 to 6 {
	grinder.removeInputRecipe(<improvedextraction:ore_cluster>.definition.makeStack(i));
}
