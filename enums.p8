pico-8 cartridge // http://www.pico-8.com
version 41
__lua__
--Made By Gurg
-- i want it to be made clear that i never said i was actually good at programming



TILE_FLAG = {
    FOREGROUND = 5,
    SOLID = 1,
    TOP = 2,
    ROUGH = 3,
    BREAKABLE1 = 4, 
    UPGRADER = 6, 
    COLLECTABLE = 7
}

NPC_IDS = {
    EXPLOSION = 800,
    STATIC_VILLAGER = 899,
    MOVING_VILLAGER = 900
}


collectables = {                                                                         ---|
    ---                                                                                  ---| max length             
    [000] = "THE PITCH BLACK GALACTIC SKY",
    [001] = "smooth dull rocks litter the surface and below. no footholds.",
    [028] = "yelleygold, the material you have been sent to PILLAGE/excavate ",
    [033] = "ROUGH JAGGED CEILING",
    [034] = "ROUGH JAGGED CEILING",
    [035] = "rough jagged wall, looks somewhat climbable",
    [036] = "rough jagged wall, looks somewhat climbable",
    [051] = "rough jagged wall, looks somewhat climbable",
    [042] = "THE STARS TWINKLE IN THE VOID WITH OPPORTUNITY",
    [043] = "ANOTHER PLANET IN THE SYSTEM, IT WILL BE FOUND/EXPLOITED SOON ENOUGH",
    [060] = "THIS SYSTEM IS HOME TO A GIANT, WITH RINGS MADE OF A BILLION ICE FRAGMENTS",
    [049] = "WEAK POROUS ROCK, VULNERABLE TO: [ERROR]",
    [050] = "POROUS ROCK, REINFORCED BY A HARDER SUBSTANCE",
    [052] = "yelleygold ore, its structure is weak enough to break with your laser",
    [074] = "the cavern wall drips with gooey green gunk.",
    [076] = "the blue has completely absorbed the moss of the cave",
    [102] = "mysterious blue mineral, it has a hauntingly steady glow",
    [066] = "the blue has weakened this rock",
    [114] = "the blue has seeped into the rock and consumed it",
    [092] = "this contraption is extracting the blue ore. its loud"
 }
                                                                                        ---|