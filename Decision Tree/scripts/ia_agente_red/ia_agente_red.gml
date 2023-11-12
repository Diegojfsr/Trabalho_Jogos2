
//FUNÇÃO NO ESTA DISTANTE AÇAO PATRULHAR

function ia_patrulhar(){
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


//---------------------------------------------------------------------------------------------------------


//FUNÇÃO NO LONGE AÇAO OBSTACULO


function ia_obstaculo(){
	
	if (frequencia > 0) {
	    frequencia -= 1;
	} else {
	    // Crie o objeto
	    instance_create_layer(x, y, "Instances", obj_superball_red2);
	    frequencia = 60; // Configurado novamente para 60 passos (1 segundo a 60 FPS)
	}	
	escrever_estado = "CRIA OBSTÁCULO";
}



//---------------------------------------------------------------------------------------------------------




//FUNÇÃO NO ESTA ENTRE  AÇAO PERSEGUIR 

function ia_perseguir(){
velocidade=1	
move_towards_point( obj_player.x, obj_player.y, velocidade)
escrever_estado = "PERSEGUIR";
}


//---------------------------------------------------------------------------------------------------------


//FUNÇÃO NO ESTA PERTO ACAO ATACAR

function ia_atacar(){

	instance_create_layer(x, y, "Instances", obj_superball_red);
	escrever_estado = "ATACANDO";
}
	

//---------------------------------------------------------------------------------------------------------


//FUNÇÃO NO ESTA PERTO ACAO ATACAR

function ia_gameover(){
	 game_restart()
	escrever_estado = "GAMEOVER";
}
	



//---------------------------------------------------------------------------------------------------------
