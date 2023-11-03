
// Codigo que retira 1 a cada colisao com o inimigo red.
//Usamos “with” para alterar o escopo  do bloco de código seguinte, 
//fazendo-o rodar a partir da instância ou objeto que indicamos. 
//Se fizéssemos com (obj_enemy) {}, por exemplo, o código que 
//colocarmos em {} seria executado em todas  as instâncias de obj_enemy.

with (other){
    vida = vida - 1;
}
instance_destroy();



