
no_atual = no_atual.tomar_decisao();

// Movimento do Player
if (keyboard_check(vk_right)) x += 4;
if (keyboard_check(vk_left)) x -= 4;
if (keyboard_check(vk_up)) y -= 4;
if (keyboard_check(vk_down)) y += 4;

// Girar o Player para ficar sempre de frente para o mouse
image_angle = point_direction(x, y, mouse_x, mouse_y);




// Desaparece a nave de um lado e aparece no outro
move_wrap(true, true, 0); 

// Contador vida = 0, destroi o obj
if(vida_player < 0) game_restart();









