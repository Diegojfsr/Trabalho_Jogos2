

function scr_atacar_red(){

	veloc_atk = 2;
	dist_atk = 100;
	//cooldown = 0; //variavel colocada dentro do crear do obj


		if distance_to_object(obj_player) <= dist_atk{
			if cooldown < 1 {
				move_towards_point( obj_player.x, obj_player.y, veloc_atk);// Move o obj ate o player
				instance_create_layer(x, y, "Instances", obj_red_powerball);//Cria o powerboll
				cooldown = 50;//Tempo do contador da municao, quanto maior valor, maior o tempo entre o disparo
			}
			cooldown = cooldown - 1;// O contador recebe o tempo -1
			escrever_estado = "ATACANDO";
		}
	
	
}


	