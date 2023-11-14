

function scr_atacar_yellow(){

	veloc_atk = 2;
	dist_atk = 100;
	//cooldown = 0; //variavel colocada dentro do crear do obj


		if distance_to_object(obj_player) <= dist_atk{
			if (frequencia > 0) {
		    frequencia -= 1;
			} else {
			    // Crie o objeto
			    instance_create_layer(x, y, "Instances", obj_superball_yellow);
			    frequencia = 360; // Configurado novamente para 60 passos (1 segundo a 60 FPS)
			}
			escrever_estado = "SUPERBALL";
		}
	
}


	