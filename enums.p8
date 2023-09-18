pico-8 cartridge // http://www.pico-8.com
version 41
__lua__
--Made By Gurg
-- i want it to be made clear that i never said i was actually good at programming



TILE_FLAG = {
    FOREGROUND = 0,
    SOLID = 1,
    TOP = 2,
    ROUGH = 3,

    SCANNABLE = 6,
    SCREEN_TELEPORTER = 7
}

NPC_IDS = {
    EXPLOSION = 800,
    STATIC_VILLAGER = 899,
    MOVING_VILLAGER = 900
}


collectables = {                                                                         ---|
    ---                                                                                  ---| max length             
    [000] = "HAVE TO WAKE UP ONE DAY CANT JUST BLINK MY WHOLE LIFE AWAY. GOTTA MOVE GOTTA LIVE ",
    [001] = "the walls of the cave you have become familiar with. wet.",
    [033] = "the ship you arrived on, it landed after you ejected",
    [034] = "your ship deployed these save points before you crashed",
    [049] = "WEAK POROUS ROCK, VULNERABLE TO: [ERROR]",
    [050] = "POROUS ROCK, REINFORCED BY A HARDER SUBSTANCE",
    [074] = "the cavern wall drips with gooey green gunk.",
    [076] = "the blue has completely absorbed the moss of the cave",
    [102] = "mysterious blue mineral, it has a hauntingly steady glow",
    [066] = "the blue has weakened this rock",
    [114] = "the blue has seeped into the rock and consumed it",
    [092] = "this contraption is extracting the blue ore. its loud"
 }
                                                                                        ---|