

//Estados/scripts
//Chama os scripts do objeto
estado_red_patrulhar = scr_patrulhar_red();
estado_red_perseguir = scr_perseguir_red();
estado_red_atacar = scr_atacar_red();




// Desaparece a nave de um lado e aparece no outro
move_wrap(true, true, 0);

// Se a variavel vida < 0 o objeto e destruido
if (vida) <= 0 instance_destroy();

