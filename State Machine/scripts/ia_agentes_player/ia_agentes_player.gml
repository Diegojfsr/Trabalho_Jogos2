


//FUNÇÃO NO ESTA DISTANTE AÇAO PATRULHAR

function ia_patrulharplayer(){

	// Movimento do Player
	if (keyboard_check(vk_right)) x += 4;
	if (keyboard_check(vk_left)) x -= 4;
	if (keyboard_check(vk_up)) y -= 4;
	if (keyboard_check(vk_down)) y += 4;

	// Girar o Player para ficar sempre de frente para o mouse
	image_angle = point_direction(x, y, mouse_x, mouse_y);

	// Desaparece a nave de um lado e aparece no outro
	move_wrap(true, true, 0); 

	//escrever_estado_player = "PATRULHANDO";
	
}


//---------------------------------------------------------------------------------------------------------


//FUNÇÃO NO LONGE AÇAO OBSTACULO

function ia_obstaculoplayer(){

	// Movimento do Player
	if (keyboard_check(vk_right)) x += 4;
	if (keyboard_check(vk_left)) x -= 4;
	if (keyboard_check(vk_up)) y -= 4;
	if (keyboard_check(vk_down)) y += 4;

	// Girar o Player para ficar sempre de frente para o mouse
	image_angle = point_direction(x, y, mouse_x, mouse_y);

	// Desaparece a nave de um lado e aparece no outro
	move_wrap(true, true, 0); 
	//escrever_estado_player = "CRIA OBSTÁCULO";
		
}



//---------------------------------------------------------------------------------------------------------




//FUNÇÃO NO ESTA ENTRE  AÇAO PERSEGUIR 

function ia_perseguirplayer(){

	// Movimento do Player
	if (keyboard_check(vk_right)) x += 4;
	if (keyboard_check(vk_left)) x -= 4;
	if (keyboard_check(vk_up)) y -= 4;
	if (keyboard_check(vk_down)) y += 4;

	// Girar o Player para ficar sempre de frente para o mouse
	image_angle = point_direction(x, y, mouse_x, mouse_y);

	// Desaparece a nave de um lado e aparece no outro
	move_wrap(true, true, 0); 
	//escrever_estado_player = "PERSEGUIR";

}


//---------------------------------------------------------------------------------------------------------


//FUNÇÃO NO ESTA PERTO ACAO ATACAR

function ia_atacar_player(){

		// Movimento do Player
	if (keyboard_check(vk_right)) x += 4;
	if (keyboard_check(vk_left)) x -= 4;
	if (keyboard_check(vk_up)) y -= 4;
	if (keyboard_check(vk_down)) y += 4;

	// Girar o Player para ficar sempre de frente para o mouse
	image_angle = point_direction(x, y, mouse_x, mouse_y);

	// Desaparece a nave de um lado e aparece no outro
	move_wrap(true, true, 0); 
	//escrever_estado_player = "ATACANDO";

}
	

//---------------------------------------------------------------------------------------------------------


//FUNÇÃO NO ESTA PERTO ACAO GAME OVER

function ia_gameoverplayer(){

	 // Movimento do Player
	if (keyboard_check(vk_right)) x += 4;
	if (keyboard_check(vk_left)) x -= 4;
	if (keyboard_check(vk_up)) y -= 4;
	if (keyboard_check(vk_down)) y += 4;

	// Girar o Player para ficar sempre de frente para o mouse
	image_angle = point_direction(x, y, mouse_x, mouse_y);

	// Desaparece a nave de um lado e aparece no outro
	move_wrap(true, true, 0); 
	
	//escrever_estado_player = "GAMEOVER";
	
	
	// Codigo que gera os tiros 
	if municao_player >= 10{
		if (mouse_check_button(mb_left)) && (cooldown < 1){
			municao_player -= 10;//controla a municao
			alarm[0] = 180;
		    instance_create_layer(x, y, "Instances", obj_superball_blue);
		    cooldown = 10;
		}
		// Subtrai 1 da variável "cooldown" de cada quadro do jogo,
		cooldown = cooldown - 1;
	}


	// Controla a municao
	if alarm[0] <= 0{
		municao_player += 1;
	}
	municao_player = clamp(municao_player, 0, max_municao_player);
	
	
}
	
//---------------------------------------------------------------------------------------------------------




