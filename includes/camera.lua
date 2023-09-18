


--returns camx, camy
function get_camera_pos()
    return peek2(0x5f28), peek2(0x5f2a)
end

function move_camera_to(x, y)
    camera_pos.x = x
    camera_pos.y = y

end


function update_camera()

    local camera_speed = 1
    if player.px - camera_pos.x > 70 then 
        camera_pos.x += camera_speed
    elseif player.px - camera_pos.x < 54 then 
        camera_pos.x -= camera_speed
    end

    camera_speed = 1.4
    if player.py - camera_pos.y > 90 then 
        camera_pos.y += camera_speed
    elseif player.py - camera_pos.y < 40 then 
        camera_pos.y -= camera_speed
    end

    if camera_pos.x < 0 then camera_pos.x = 0 end
    if camera_pos.y < 0 then camera_pos.y = 0 end

    camera(camera_pos.x, camera_pos.y)
end

--checks to see if the coordinate is on screen or not
function on_screen(x, y)
    if x < camera_pos.x or x > camera_pos.x+128 then
        return false
    elseif y < camera_pos.y or y > camera_pos.y+128 then
        return false
    else
        return true
    end
end