function src_ground_check(){
	if(duck_key){
		ducking = true;
		jumping = false;
		falling = true;
	}

	if(place_meeting(x,y + 1, obj_block)){
		vspd = 0;
		jumping = false;
		falling = false;
	
		if(!duck_key)
			ducking = false;
		
		if((jumping || jump_key_alt) && !duck_key){
			jumping = true;
			vspd = -jspd;
		}
	} else {
		if(ducking){
			vspd += grav * 4;
		} else {
			if(vspd < term_velocity)
			vspd += grav;
		
			if(sign(vspd) == 1)
				falling = true;
		}
	}
}

