--The name of the mod displayed in the 'mods' screen.
name = "[Hamlet] Royal Crown"

--A description of the mod.
description = "Royal Crown from Hamlet DLC of Don't Starve."

--Who wrote this awesome mod?
author = "KaiserKatze"

--A version number so you can ask people if they are running an old version of your mod.
version = "1.0.3"

--This lets other players know if your mod is out of date. This typically needs to be updated every time there's a new game update.
api_version = 10

dst_compatible = true

--This lets clients know if they need to get the mod from the Steam Workshop to join the game
all_clients_require_mod = true

--This determines whether it causes a server to be marked as modded (and shows in the mod list)
client_only_mod = false

--This lets people search for servers with this mod by these tags
server_filter_tags = {"hamlet"}

icon_atlas = "modicon.xml"
icon = "modicon.tex"

forumthread = ""

configuration_options =
{
  {
  name = "SANITY_RATE",
  label = "Restore Sanity",
  hover = "How fast you restore your sanity",
  options =
    {
      {description = "Disabled", data = 0},
      {description = "Normal", data = 1},
      {description = "Large", data = 2},
      {description = "Huge", data = 1},
      {description = "Super Huge", data = 2},
    },
    default = 1,
  },
}
