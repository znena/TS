// TR: Sync Scripts #4 | 22/1/19
#priority 998

import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerLoggedInEvent;
import scripts.utils.pack_version as pack_version;

events.onPlayerLoggedIn(function(event as PlayerLoggedInEvent){
    event.player.sendRichTextMessage(format.green("欢迎来到 TechReborn: Sync ( Version: " ~
			pack_version ~ " )."));
});
