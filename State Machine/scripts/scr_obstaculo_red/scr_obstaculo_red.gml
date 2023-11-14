// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_obstaculo_red(){
	
// Variaveis para Perseguicao
veloc_perseg = 2;
dist_perseg = 300;

	//Calcular a distância entre o Agente e o Jogador
	if distance_to_object(obj_player) <= dist_perseg{	
		if (frequencia > 0) {
		    frequencia -= 1;
		} else {
		    // Crie o objeto
		    instance_create_layer(x, y, "Instances", obj_superball_red2);
		    frequencia = 360; // Configurado novamente para 60 passos (1 segundo a 60 FPS)
		}	
		escrever_estado = "CRIA OBSTÁCULO";
	}
	
	

}