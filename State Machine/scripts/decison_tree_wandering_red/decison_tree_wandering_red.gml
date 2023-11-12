
/*Nó de teste que verifica se o agente está longe do 
jogador ou algum objeto.
Estamos considerando o objeto (obj_ponto) para
verificar se o agente(objAgenteTree) está longe dele.
*/

//------------------------------------NO VERIFICA SE ESTA DISTANTE(DECISÃO)-----------------------------------
function NoEstaDistante() : NoDecisao() constructor{
	
	m_agente = noone;
	
	avaliar = function(){
		var _dist = 0;
		
		with(m_agente){
			_dist = point_distance(x, y, obj_player.x, obj_player.y);		
	
		}
		return (_dist > 400);
	}	
}

//AÇÃO PATRULHAR
function NoAcaoPatrulhar() : NoAcao() constructor{
	
	m_agente = noone;
	
	tomar_decisao = function(){
		with(m_agente){				
			ia_patrulhar();
		}
		return m_agente.no_raiz;
	}
	
}
//------------------------------------------------------------------------------------------------------



//------------------------------------NO ESTA ENTRE (DECISÃO)-----------------------------------
//------------------------------------Verifica se a dist>300-----------------------------------
function NoEstaLonge() : NoDecisao() constructor{
	
	m_agente = noone;
	
	avaliar = function(){
		var _dist = 0;
		with(m_agente){
			_dist = point_distance(x, y, obj_player.x, obj_player.y);		
		}
		return (_dist > 300);
	}	
}

//AÇÃO PERSEGUIR

function NoAcaoObstaculo() : NoAcao() constructor{
	
	m_agente = noone;
	
	tomar_decisao = function(){
		with(m_agente){				
			ia_obstaculo();
		}
		return m_agente.no_raiz;
	}
	
}
//------------------------------------------------------------------------------------


//------------------------------------NO ESTA ENTRE 2 (DECISÃO)-----------------------------------
//------------------------------------Verifica se a dist>200-----------------------------------




function NoEstaEntre() : NoDecisao() constructor{
	
	m_agente = noone;
	
	avaliar = function(){
		var _dist = 0;
		with(m_agente){
			_dist = point_distance(x, y, obj_player.x, obj_player.y);		
		}
		return (_dist > 200);
	}	
}

//AÇÃO PERSEGUIR2

function NoAcaoPerseguir() : NoAcao() constructor{
	
	m_agente = noone;
	
	tomar_decisao = function(){
		with(m_agente){				
			ia_perseguir();
		}
		return m_agente.no_raiz;
	}
	
}
//---------------------------------------------------------------------------------------------------

//------------------------------------NO ESTA PERTO(DECISÃO)-----------------------------------
//------------------------------------Verifica se a dist>100-----------------------------------

function NoEstaProximo() : NoDecisao() constructor{
	
	m_agente = noone;
	
	avaliar = function(){
		var _dist = 0;
		with(m_agente){
			_dist = point_distance(x, y, obj_player.x, obj_player.y);		
		}
		return (_dist > 100);//_dist < 200
	}	
}

//AÇÃO ATACAR

function NoAcaoAtacar() constructor{
	
	m_agente = noone;
	
	tomar_decisao = function(){
		with(m_agente){				
			ia_atacar()
		}
		return m_agente.no_raiz;
	}
	
}

//---------------------------------------------------------------------------------------------------



//------------------------------------NO ESTA PERTO2(DECISÃO)-----------------------------------
//------------------------------------Verifica se a dist=0-----------------------------------

function NoEstaPerto() : NoDecisao() constructor{
	
	m_agente = noone;
	
	avaliar = function(){
		var _dist = 0;
		with(m_agente){
			_dist = point_distance(x, y, obj_player.x, obj_player.y);		
		}
		return (_dist >50);
}
}

//AÇÃO ATACAR2

function NoAcaoGameOver() constructor{
	
	m_agente = noone;
	
	tomar_decisao = function(){
		with(m_agente){				
			ia_gameover()
		}
		return m_agente.no_raiz;
	}
	
}

//---------------------------------------------------------------------------------------------------


