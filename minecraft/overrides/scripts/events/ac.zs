// TR: Sync Scripts #38 | 22/1/29

import crafttweaker.events.IEventManager;
import crafttweaker.event.CommandEvent;
import crafttweaker.player.IPlayer;
import crafttweaker.command.ICommand;
import crafttweaker.data.IData;

val allow_commands = ["?", "ct", "ctgui", "cheatingmode", "forge", "gamestage", "help", "me", "msg", "my_settings",
		"reload", "seed", "team", "tell", "tofe", "together", "togetherforever", "w",
		"reloadShaders", "reloadChunks"] as string[];

events.onCommand(function(event as CommandEvent) {
	if (event.commandSender instanceof IPlayer) {
        val player as IPlayer = event.commandSender;
        if (!event.commandSender.world.remote) {
			// val custom_data as IData = player.world.getCustomWorldData();
			// if (custom_data.keys has "cheating_mode") {
				// if (custom_data["cheating_mode"] == true) {
					// return;
				// }
			// }
			if (allow_commands has event.command.name) {
				return;
			}
            event.cancel();
            player.sendRichTextMessage(format.red("此指令已经被 TechReborn：Sync 禁用！"));
		}
    }
});
