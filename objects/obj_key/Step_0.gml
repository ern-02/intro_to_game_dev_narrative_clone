/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,obj_player)){
	global.key = true;
	instance_destroy();
	audio_play_sound(snd_keygrab,10,false);
}

