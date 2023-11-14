
//Estados/scripts
//Chama os scripts do red

estado_yellow_patrulhar = scr_patrulhar_yellow;
estado_yellow_obstaculo = scr_obstaculo_yellow;
estado_yellow_atacar = scr_atacar_yellow;

//Comando para padronizar os codigos
randomize()


//Controla a frequencia com que o obstaculo e criado
frequencia = 2;
//Controla a velocidade do objeto
velocidade = 2;

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
//if (vida) <= 0 instance_destroy();




