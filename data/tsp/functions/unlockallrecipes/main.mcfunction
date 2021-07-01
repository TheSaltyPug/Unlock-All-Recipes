#> tsp:unlockallrecipes/main
# This function will run every 20 ticks

execute as @a[tag=!tsp.unlockallrecipes] run function tsp:unlockallrecipes/grant
schedule function tsp:unlockallrecipes/main 20s
