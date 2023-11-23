// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function scr_set_sprite(){
	if(jumping || falling){
		sprite_index = spr_dino_stand;
	}
	
	if(ducking){
		sprite_index = spr_dino_duck;
		image_speed = 2;
	}
	
	if(!jumping && !falling && !ducking){
		sprite_index = spr_dino_run;
		image_speed = 2;
	}
}