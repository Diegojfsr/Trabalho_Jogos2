

//Estados/scripts
//Chama os scripts do red

estado_red_patrulhar = scr_patrulhar_red;
estado_red_perseguir = scr_perseguir_red;
estado_red_atacar = scr_atacar_red;

//Comando para padronizar os codigos
randomize()


velocidade = 1;

// Vida
// Codigo para controlar a vida do red
max_vida= 5;
vida = max_vida;

// Municao
// Codigo para controlar a municao do red
max_municao= 50;
municao = max_municao;



// Gera posicoes aleatorias
destinox   = random_range(64, room_width-64);
destinoy   = random_range(64, room_height-64);

