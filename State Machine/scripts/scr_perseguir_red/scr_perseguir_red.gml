


function scr_perseguir_red(){


// Variaveis para Perseguicao
veloc_perseg = 2;
dist_perseg = 300;

	//Calcular a distância entre o Agente e o Jogador
	if distance_to_object(obj_player) <= dist_perseg{
    // Vai na direção do objeto (jogador) na posição x e y, na velocidade 2
		move_towards_point( obj_player.x, obj_player.y, veloc_perseg)
		escrever_estado = "PERSEGUINDO";
	}
}
