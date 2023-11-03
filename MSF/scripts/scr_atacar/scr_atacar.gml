

function scr_atacar_red(){


	veloc_atk = 2;
	dist_atk = 100;
	cooldown = 10;
	municao = 50;
	
	if distance_to_object(obj_player) <= dist_atk{
		move_towards_point( obj_player.x, obj_player.y, veloc_atk)
			// Codigo que gera os tiros 
			if municao >= 10{
			municao -= 10;
			//alarm[0] = 100;
			//alarm[1] = 100;
				instance_create_layer(x, y, "Instances", obj_red_powerball);
		
				// Subtrai 1 da variável "cooldown" de cada quadro do jogo,
				cooldown = cooldown - 1;
			}

		// Controla a municao
		if alarm[0] <= 0{
			municao += 1;
		}
		//municao = clamp(municao, 0, max_municao);
	
		escrever_estado = "ATACANDO";

	}





}