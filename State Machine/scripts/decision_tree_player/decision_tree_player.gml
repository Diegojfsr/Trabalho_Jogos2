


function NoBasePlayer() constructor{
	
	tomar_decisao = function(){
	}	
}
//Nó utilizado para tomar a decisão lógica
function NoDecisaoPlayer() : NoBasePlayer() constructor{
	
	//Definindo os nós filhos 
	no_sim = noone;
	no_nao = noone;
	
	avaliar = function(){
		return false;	
	}
	
	tomar_decisao = function(){
		if avaliar(){
			return no_sim;
		}
		else{
			return no_nao;
		}
	}
}


function NoAcaoPlayer() : NoBasePlayer() constructor{
	
	tomar_decisao = function(){
		
	}
	
}




