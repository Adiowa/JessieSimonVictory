///all of the logic we need for moving and colliding with the solid. 

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