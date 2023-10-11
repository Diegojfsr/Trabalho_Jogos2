/// @description Insert description here
// You can write your code in this editor


other.vida -= obj_red.dano;


var _dir = point_direction(obj_blue.x, obj_blue.y, other.x, other.y);
other.empurrar_dir =  _dir;
other.empurrar_veloc = 55;
other.estado = scr_blue_hit;
other.alarm[2] = 5;
other.hit = true;



