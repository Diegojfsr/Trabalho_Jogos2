


//FUNÇÃO NO ESTA DISTANTE AÇAO PATRULHAR

function ia_patrulharyellow(){

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


//FUNÇÃO NO LONGE AÇAO CRIAR VIDA

function ia_obstaculoyellow(){

	if (frequencia > 0) {
	    frequencia -= 1;
	} else {
	    // Crie o objeto
	    instance_create_layer(x, y, "Instances", obj_superball_yellow2);
	    frequencia = 60; // Configurado novamente para 60 passos (1 segundo a 60 FPS)
	}
	escrever_estado = "VIDA";
}



//---------------------------------------------------------------------------------------------------------




//FUNÇÃO NO ESTA ENTRE  AÇAO PERSEGUIR 

function ia_perseguiryellow(){
/*
	velocidade=1	
	move_towards_point( obj_player.x, obj_player.y, velocidade)
	escrever_estado = "PERSEGUIR";
	escrever_estado = "PERSEGUIR";
	*/
}


//---------------------------------------------------------------------------------------------------------


//FUNÇÃO NO ESTA PERTO ACAO ATACAR

function ia_atacaryellow(){

	//instance_create_layer(x, y, "Instances", obj_superball_yellow);
	
	
	if (frequencia > 0) {
	    frequencia -= 1;
	} else {
	    // Crie o objeto
	    instance_create_layer(x, y, "Instances", obj_superball_yellow);
	    frequencia = 60; // Configurado novamente para 60 passos (1 segundo a 60 FPS)
	}
	escrever_estado = "SUPERBALL";

}
	

//---------------------------------------------------------------------------------------------------------


//FUNÇÃO NO ESTA PERTO ACAO GAME OVER

function ia_gameoveryellow(){
/*
	 game_restart()
	escrever_estado = "GAMEOVER";
*/
}
	
//---------------------------------------------------------------------------------------------------------




