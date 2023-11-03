


function scr_perseguir_red(){
/*
// Se a distância para o objeto (jogador) for menor que 100 pixels
if (distance_to_object(obj_player) >= 100) {
    // Vai na direção do objeto (jogador) na posição x e y, na velocidade 2
    // O parâmetro 'true' faz com que o inimigo desvie de todos os objetos (sólidos e não sólidos)
    mp_potential_step(obj_player.x, obj_player.y, 2, true)
}
escrever_estado = "PERSEGUINDO";
*/


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
