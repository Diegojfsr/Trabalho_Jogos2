


function NoBaseYellow() constructor{
	
	tomar_decisao = function(){
	}	
}
//Nó utilizado para tomar a decisão lógica
function NoDecisaoYellow() : NoBaseYellow() constructor{
	
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


function NoAcaoYellow() : NoBaseYellow() constructor{
	
	tomar_decisao = function(){
		
	}
	
}




