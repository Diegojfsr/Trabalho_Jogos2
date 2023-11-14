

//Estados/scripts
//Chama os scripts do objeto
script_execute(estado_patrulharplayer);
script_execute(estado_atacarplayer);





// Desaparece a nave de um lado e aparece no outro
move_wrap(true, true, 0);

// Se a variavel vida < 0 o objeto e destruido
//if (vida) <= 0 instance_destroy();
// Contador vida = 0, destroi o obj
if(vida_player < 0) game_restart();
