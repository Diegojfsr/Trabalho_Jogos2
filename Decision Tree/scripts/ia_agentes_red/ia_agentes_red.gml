// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function ia_atacar(){

	// Codigo que gera os tiros 
	if municao >= 10{
		
			municao -= 10;//controla a municao
			alarm[0] = 180;
			destinox   = random_range(64, room_width-64);
			destinoy   = random_range(64, room_height-64);
		    instance_create_layer(x, y, "Instances", obj_red_powerball);
			velocidade = 2;


		    cooldown = 10;
		
		// Subtrai 1 da variável "cooldown" de cada quadro do jogo,
		cooldown = cooldown - 1;
	}

	// Controla a municao
	if alarm[0] <= 0{
		municao += 1;
	}
	municao = clamp(municao, 0, max_municao);
	
	escrever_estado = "ATACANDO";
}



 


function ia_patrulhar(){
	
	var dist = point_distance(x, y, destinox, destinoy);


	if dist >= 200
	
		move_towards_point(destinox, destinoy, velocidade);

	else{
		randomize()
		destinox   = random_range(64, room_width-64);
		destinoy   = random_range(64, room_height-64);		
	}
	
			escrever_estado = "PATRULHANDO";
	
}


function ia_perseguir(){
	
velocidade =1
//var dis = point_distance(x, y, obj_ponto.x, obj_ponto.y);
move_towards_point( player.x, player.y, velocidade)

escrever_estado = "PERSEGUINDO";
//instance_create_layer(x, y, "Instances", obj_red_hitbox);

}

