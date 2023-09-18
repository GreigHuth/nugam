pico-8 cartridge // http://www.pico-8.com
version 41
__lua__
--Made By Gurg
-- i want it to be made clear that i never said i was actually good at programming

enemies = {}

function create_enemy(x,y,anim)
    return {
        x = x, --tile position
        y = y,

        px = x*8, --pixel position
        py = y*8,

        anim = anim,
        frame = 1
    }
end

function moveto(npc,x,y)
    npc.x = x
    npc.y = y
    -- wait until npc reaches destination
    repeat
        yield()
    until actor_at_dest(npc)
end

function moveby(npc,dx,dy)
    moveto(npc, npc.x+dx, npc.y+dy)
end
