--
--track all the bullets on screen

max_bullets = 10
bullet_colour = 11

bullets = {}

function bullet_update_and_draw(bullet)

    --before we draw it, check if it needs to be deleted
    local deleted = bullet_del(bullet) 
    if deleted == true then
        return
    end
    local mul = 2 --bullet speed multiplier

    --update bullet positions according to thier velocity
    -- bullet = {x, y, radius, dx, dy, t} 
    bullet[1] += bullet[4] 
    bullet[2] += bullet[5]
    circ(bullet[1],bullet[2], bullet[3], bullet_colour)
end


function bullet_del(bullet)
    if on_screen(bullet[1], bullet[2]) then
        return false
    else
        del(bullets,bullet)
        return true
    end
end

function add_bullet()

    if #bullets > max_bullets then
        return
    end

    local cursor_x = stat(32)+camera_pos.x
    local cursor_y = stat(33)+camera_pos.y

    cx, cy = change_basis(player.x, player.y, cursor_x, cursor_y)

    local dx, dy = normalize(cx, cy)

    printh("dx, dy:"..dx..","..dy)

    local v = 3
    --x, y, radius, dx, dy, t
    local bullet = {player.x+2, player.y, 0.5, dx*v, dy*v}
    add(bullets, bullet)
end




