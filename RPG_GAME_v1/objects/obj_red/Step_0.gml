/// @description Insert description here
// You can write your code in this editor


script_execute(estado);

if alarm[2] <= 0{
	ataque += 1;
}
ataque = clamp(ataque, 0, max_ataque)