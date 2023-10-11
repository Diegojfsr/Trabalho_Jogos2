/// @description Insert description here
// You can write your code in this editor


other.vida -= obj_blue.dano;


var _dir = point_direction(obj_red.x, obj_red.y, other.x, other.y);
other.empurrar_dir =  _dir;
other.empurrar_veloc = 35;
other.estado = scr_red_hit;
other.alarm[1] = 5;
other.hit = true;

