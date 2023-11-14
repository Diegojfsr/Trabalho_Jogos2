
function scr_patrulhar_yellow(){

velocidade =2;
	 
	var dist = point_distance(x, y, destinox, destinoy);

	if dist >= 10
	   
		move_towards_point(destinox, destinoy, velocidade)
	else{
		randomize()
		destinox   = random_range(64, room_width-64);
		destinoy   = random_range(64, room_height-64);		
	}
	escrever_estado = "PATRULHANDO";

}