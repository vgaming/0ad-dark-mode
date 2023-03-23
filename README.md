# About
Dark Mode is a mod for 0ad that removes eye-straining colors when possible, replacing them with boring, monotonous but easy-for-the-eye terrains.

Currently, all terrain is replaced with a very dark volcanic terrain.

# Elevation
Elevation gradients are unfortunately harder to see on *very* dark terrains.
We should maybe move to a slightly lighter terrain in the future, one that shows elevation better?
On flat maps such as Mainland you should be perfectly fine with this Mod as it is.

# Building
To build the Mod, run:
```
./create.sh /usr/share/0ad/data/mods/public/public.zip
```

# TODO: hardcoded values
Instead of copying the current hardcoded terrain manually as is done now,
it could be better to extract it from public.zip as part of the `create.sh` script. 
Alas, I'm too lazy for that for now, it's a Proof of Concept for now.

# TODO: trees
Instead of allowing a hundred of visually different trees in the game,
maybe we should "shrink" them to only 5-10 visual variations for different sizes,
and pick the "smallest" visual tree when possible to avoid distractions.
This should help with:

- Counting how many trees there are in this corner here
- Seeing if your troops can pass behind those trees, or if they'll get stuck
- Make it easier for the eye to see units while some of them are in a forest

# License
CC0 (public domain) or Apache-2 at your choice. In simple words, do whatever you want.
In the future I might move the mod to GPLv3, but now it's only one script, so whatever.

# Get in touch
You can leave feedback on the forum! https://wildfiregames.com/forum/topic/106644-dark-mode/

Git: https://github.com/vgaming/0ad-dark-mode

By the way, friendly "Hi" to the "Abstract GUI" mod here: https://wildfiregames.com/forum/topic/106438-abstractgui-mod-by-yekaterina/  
I haven't actually tried the add-on yet (no clue if 0ad is 100% secure for trying out various mods anyway?),
but it seems to go in a similar direction to this mod here.
In the future, maybe some collaboration could be possible.
This mod is only few kilobytes, Abstract GUI is 750Mb but more thorough?
