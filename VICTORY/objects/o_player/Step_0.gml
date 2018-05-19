///@description Player Movement
if keyboard_check(vk_right) {
		hspeed_ = 4;	
	}
else if keyboard_check(vk_left) {
		hspeed_ = -4;	
	} 
else {
		hspeed_ = 0;
	}

if keyboard_check(vk_up)
	{
		vspeed_ = -6;
	} 
else if keyboard_check(vk_down) {
		vspeed_ = 6;
	} 
else {
		vspeed_ = 0; 
	}

if place_meeting(x+hspeed_, y, o_solid_wall) {
	while !place_meeting(x+sign(hspeed_), y, o_solid_wall) {
		x+= sign(hspeed_);
	
		
	}
	hspeed_ = 0;

}

x += hspeed_;

if place_meeting(x, y+vspeed_, o_solid_wall) {
	while !place_meeting(x, y+sign(vspeed_), o_solid_wall) {
		y+= sign(vspeed_);
	}
	vspeed_ = 0;
}
y += vspeed_;