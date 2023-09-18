pico-8 cartridge // http://www.pico-8.com
version 41
__lua__
--Made By Gurg
-- i want it to be made clear that i never said i was actually good at programming


function m_villager_script(n)
    
    if timer % 240 == 0 then
        
        local r = rnd(0,1)

        if not n.flipx then
            n.dest_x = n.px - 8
            n.flipx =  true

        else
            n.dest_x = n.px + 8
            n.flipx =  false
        end 
    end

end

function explosion_script(n)
    if n.timer == 30 then 
        delete_actor(n)
    end
end

function s_villager_script(n)
    return
end