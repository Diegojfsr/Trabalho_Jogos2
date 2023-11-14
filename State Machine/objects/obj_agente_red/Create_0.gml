

//Estados/scripts
//Chama os scripts do red

estado_red_patrulhar = scr_patrulhar_red;
estado_red_perseguir = scr_perseguir_red;
estado_red_atacar = scr_atacar_red;

//Comando para padronizar os codigos
randomize()


// Municao
// Codigo para controlar a municao do player
max_municao_agente = 100;
municao_agente = max_municao_agente;

// Diminuir um pouco a cadência de tiro
cooldown = 0;

// Vida
// Codigo para controlar a vida do red
max_vida_agente = 5;
vida_agente = max_vida_agente;



// Gera posicoes aleatorias
destinox   = random_range(64, room_width-64);
destinoy   = random_range(64, room_height-64);


// Desaparece a nave de um lado e aparece no outro
move_wrap(true, true, 0);

// Se a variavel vida < 0 o objeto e destruido
if(vida_agente < 0) instance_destroy()







