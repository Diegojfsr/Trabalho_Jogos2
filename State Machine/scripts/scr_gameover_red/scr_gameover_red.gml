// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_gameover_red(){

// Variaveis para Perseguicao
veloc_perseg = 2;
dist_perseg = 0;

	//Calcular a distância entre o Agente e o Jogador
	if distance_to_object(obj_player) <= dist_perseg {	
		game_restart()
		
		escrever_estado = "GAMEOVER";
	}

}