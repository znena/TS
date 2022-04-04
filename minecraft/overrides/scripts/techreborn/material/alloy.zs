// TR: Sync Scripts #23 | 22/1/11

import mods.techreborn.alloySmelter;


// Bronze

for i in 0 to 4 {
	alloySmelter.removeRecipe(<techreborn:ingot:2> * 4);
}

alloySmelter.addRecipe(<techreborn:ingot:2>, <techreborn:ingot:4> * 4,
		<ore:ingotTin>, 1200, 16);
alloySmelter.addRecipe(<techreborn:ingot:2>, <techreborn:dust:14> * 4,
		<ore:ingotTin>, 900, 16);
alloySmelter.addRecipe(<techreborn:ingot:2>, <techreborn:ingot:4> * 4,
		<ore:dustTin>, 900, 16);
alloySmelter.addRecipe(<techreborn:ingot:2>, <techreborn:dust:14> * 4,
		<ore:dustTin>, 600, 32);


// Electrum

for i in 0 to 4 {
	alloySmelter.removeRecipe(<techreborn:ingot:5> * 2);
}

alloySmelter.addRecipe(<techreborn:nuggets:5> * 3, <ore:ingotGold>,
		<ore:ingotSilver>, 2400, 32);
alloySmelter.addRecipe(<techreborn:nuggets:5> * 3, <ore:dustGold>,
		<ore:ingotSilver>, 1600, 32);
alloySmelter.addRecipe(<techreborn:nuggets:5> * 3, <ore:ingotGold>,
		<ore:dustSilver>, 1600, 32);
alloySmelter.addRecipe(<techreborn:nuggets:5> * 3, <ore:dustGold>,
		<ore:dustSilver>, 800, 32);

