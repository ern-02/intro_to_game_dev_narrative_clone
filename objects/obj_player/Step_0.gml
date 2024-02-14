/// @description Insert description here
// You can write your code in this editor
upkey = keyboard_check(ord("W"));
downkey = keyboard_check(ord("S"));
leftkey = keyboard_check(ord("A"));
rightkey = keyboard_check(ord("D"));

xspd = (rightkey - leftkey) * move_speed;
yspd  = (downkey - upkey) * move_speed;

if(place_meeting(x + xspd,y,obj_wall)){
	xspd = 0;
}

if(place_meeting(x,y + yspd,obj_wall)){
	yspd = 0;
}

if(place_meeting(x + xspd,y,obj_door) && global.key == false){
	xspd = 0;
}

if(place_meeting(x,y + yspd,obj_door) && global.key == false){
	yspd = 0;
}

if(x + sprite_width + xspd > room_width || x + sprite_width +xspd < 0){
	xspd = 0;
}

if(y + sprite_height + yspd > room_height || y + sprite_height + yspd < 0){
	yspd = 0;
}

x+=xspd;
y+=yspd;

if(keyboard_check(ord("W"))){
	sprite_index = spr_player_back;
}

if(keyboard_check(ord("S"))){
	sprite_index = spr_player;
}

if(keyboard_check(ord("D"))){
	sprite_index = spr_player_right;
}

if(keyboard_check(ord("A"))){
	sprite_index = spr_player_left;
}



