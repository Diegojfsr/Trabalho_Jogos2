

function scr_atacando_player(){

	// Codigo que gera os tiros 
	if municao >= 10{
		if (mouse_check_button(mb_left)) && (cooldown < 1){
			municao -= 10;//controla a municao
			alarm[0] = 180;
		    instance_create_layer(x, y, "Instances", obj_blue_powerball);
			//escrever_estado2 = "ATK"
		    cooldown = 10;
		}
		// Subtrai 1 da variável "cooldown" de cada quadro do jogo,
		cooldown = cooldown - 1;

	}


	// Controla a municao
	if alarm[0] <= 0{
		municao += 1;
	}
	municao = clamp(municao, 0, max_municao);
	
	
	
	if municao >= 20 {escrever_estado = "CARREGADO"};
	if municao <= 20 {escrever_estado = "DESCARREGADO"};
	
	
	
}