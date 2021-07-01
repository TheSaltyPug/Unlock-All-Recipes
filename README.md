# Unlock All Recipes
Unlocks all the vanilla crafting recipes for every player in an efficient, non-
obtrusive way that won't conflict with knowledge book crafting recipes.

## The Issue
The recipe book is a useful tool. It is so useful, that there are datapacks that
unlock every recipe for every player when they join a world. Useful, right?

The problem is that many of these datapacks simply run the command:
```mcfunction
recipe give @a *
```
every tick, which will give every player every recipe. This conflicts with any 
datapack that adds custom recipes via the knowledge book method, a method of 
custom nbt crafting which uses advancements and a knowledge book recipe to create
custom items. Long story short, this means that *all* custom items will be given
to every player, every tick (20 times per second!). Which is a big no-no.

## The Solution
Unlike the advancement commannd, there is no way to structure recipes in any way
such that we can give only a certain list of recipes. To give every recipe, you
have to either give `*` (the issue discussed above) or give every recipe except
the knowledge book. 

This datapack runs every 20 seconds to check for new players that have joined
the server/world. If it finds one, it will run down a list that grants them every
recipe from the vanilla game. If they already have had their recipes unlocked, 
it doesn't run on them (much optimize, such wow!).
