{
    var device;
    var mx;
    var my;
    var bullet;
    for(device = 0 ; device <= 4; device+=1){
        mx = device_mouse_x(device);
        my = device_mouse_y(device);
        if( device_mouse_check_button(device, mb_left) = true ){
            if( place_meeting(mx, my, obj_ui_left) = true ){
                if(!place_meeting(x - 5, y, obj_block)){
                    x -= 5;
                    if(sprite_index = spr_lock_right_standing || sprite_index = spr_lock_left_standing){
                        sprite_index = spr_lock_left_run;
                    }
                }
            }
            if( place_meeting(mx, my, obj_ui_right) = true ){
                if(place_meeting(x-5, y, obj_block2) = true){
                    hspeed = 0; 
                }
                if(!place_meeting(x + 5, y, obj_block)){
                    x += 5;
                    if(sprite_index = spr_lock_right_standing || sprite_index = spr_lock_left_standing){
                    sprite_index = spr_lock_right_run;
                    }
                }
            }
        }
        if( device_mouse_check_button_pressed(device, mb_left) = true ){
            if(place_meeting(mx, my+100, obj_ui_jump) = true ){
                if( place_meeting(x, y+5, obj_block) = true ){
                    vspeed = -16;
                    if( sprite_index = spr_lock_right_run || sprite_index = spr_lock_right_standing){
                        sprite_index = spr_lock_right_jumping;
                    }
                    if( sprite_index = spr_lock_left_run || sprite_index = spr_lock_left_standing){
                        sprite_index = spr_lock_left_jumping;
                    }
                }
            }
            if(place_meeting(mx, my, obj_ui_shoot) = true){
                if (alarm[2] < 0) {
                    alarm[2] = room_speed * 0.25; 
                    if(sprite_index = spr_lock_left_standing){
                        sprite_index = spr_lock_left_shoot;
                        bullet = instance_create(x-100, y-105, obj_bullet);
                        with(bullet){
                            speed = 20;
                            direction = 180;
                        }
                    }
                    if(sprite_index = spr_lock_right_standing){
                        sprite_index = spr_lock_right_shoot;
                        bullet = instance_create(x, y-105, obj_bullet);
                        with(bullet){
                            speed = 20;
                            direction = 0;
                        }
                    }
                    if(sprite_index = spr_lock_left_jumping){
                        sprite_index = spr_lock_left_jump_shoot;
                        bullet = instance_create(x-100, y-120, obj_bullet);
                        with(bullet){
                            speed = 20;
                            direction = 180;
                        }
                    }
                    if(sprite_index = spr_lock_right_jumping){
                        sprite_index = spr_lock_right_jump_shoot;
                        bullet = instance_create(x, y-120, obj_bullet);
                        with(bullet){
                            speed = 20;
                            direction = 0;
                        }
                    }
                    if(sprite_index = spr_lock_right_run){
                        sprite_index = spr_lock_right_run_shoot;
                        bullet = instance_create(x, y-105, obj_bullet);
                        with(bullet){
                            speed = 20;
                            direction = 0;
                        }
                    }
                    if(sprite_index = spr_lock_left_run){
                        sprite_index = spr_lock_left_run_shoot;
                        bullet = instance_create(x-100, y-105, obj_bullet);
                        with(bullet){
                            speed = 20;
                            direction = 180;
                        }
                    }
                }
            }
        }
        if( device_mouse_check_button_released(device, mb_left) = true){
            if(sprite_index = spr_lock_right_jumping || sprite_index = spr_lock_right_jump_shoot){
                sprite_index = spr_lock_right_jumping;
            }
            if(sprite_index = spr_lock_left_jumping || sprite_index = spr_lock_left_jump_shoot){
                sprite_index = spr_lock_left_jumping;
            }
            if(sprite_index = spr_lock_right_run){
                sprite_index = spr_lock_right_standing;
            }
            if(sprite_index = spr_lock_left_run){
                sprite_index = spr_lock_left_standing;
            }
            if(sprite_index = spr_lock_right_run_shoot){
                sprite_index = spr_lock_right_run;
            }
            if(sprite_index = spr_lock_left_run_shoot){
                sprite_index = spr_lock_left_run;
            }
            if(sprite_index = spr_lock_left_shoot){
                sprite_index = spr_lock_left_standing;
            }
            if(sprite_index = spr_lock_right_shoot){
                sprite_index = spr_lock_right_standing;
            }
        }
    }
}
