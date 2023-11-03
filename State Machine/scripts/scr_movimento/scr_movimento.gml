
function scr_movimento_player(){
	
	
	
	
// Movimento do Player.
//Teclas que sao apertadas recebe posição x do Player e acrecenta ou reduz 4.
if (keyboard_check(vk_right)) x += 4; 
if (keyboard_check(vk_left)) x -= 4; 
if (keyboard_check(vk_up)) y -= 4;
if (keyboard_check(vk_down)) y += 4; 



//Codigo para escrever qual tecla esta sendo apertada
escrever_estado = "";


// Girar o Player para ficar sempre de frente para o mouse
image_angle = point_direction(x, y, mouse_x, mouse_y);



// Desaparece a nave de um lado e aparece no outro
move_wrap(true, true, 0); 

}








   
















