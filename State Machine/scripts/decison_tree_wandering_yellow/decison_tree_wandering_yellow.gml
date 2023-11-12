

//---------------------------------NO VERIFICA SE ESTA DISTANTE(DECISÃO)-----------------------------------
function NoEstaDistanteYellow() : NoDecisaoYellow() constructor{
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
function NoAcaoPatrulharYellow() : NoAcaoYellow() constructor{
	m_agente = noone;
	tomar_decisao = function(){
		with(m_agente){				
			ia_patrulharyellow();
		}
		return m_agente.no_raiz_yellow;
	}
}
//------------------------------------------------------------------------------------------------------



//------------------------------------NO ESTA ENTRE (DECISÃO)-----------------------------------
//------------------------------------Verifica se a dist>300-----------------------------------
function NoEstaLongeYellow() : NoDecisaoYellow() constructor{
	
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

function NoAcaoObstaculoYellow() : NoAcaoYellow() constructor{
	
	m_agente = noone;
	
	tomar_decisao = function(){
		with(m_agente){				
			ia_obstaculoyellow();
		}
		return m_agente.no_raiz_yellow;
	}
}
//------------------------------------------------------------------------------------


//------------------------------------NO ESTA ENTRE 2 (DECISÃO)-----------------------------------
//------------------------------------Verifica se a dist>200-----------------------------------




function NoEstaEntreYellow() : NoDecisaoYellow() constructor{
	
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

function NoAcaoPerseguirYellow() : NoAcaoYellow() constructor{
	
	m_agente = noone;
	
	tomar_decisao = function(){
		with(m_agente){				
			ia_perseguiryellow();
		}
		return m_agente.no_raiz_yellow;
	}
}
//---------------------------------------------------------------------------------------------------

//------------------------------------NO ESTA PERTO(DECISÃO)-----------------------------------
//------------------------------------Verifica se a dist>100-----------------------------------

function NoEstaProximoYellow() : NoDecisaoYellow() constructor{
	
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

function NoAcaoAtacarYellow() constructor{
	
	m_agente = noone;
	
	tomar_decisao = function(){
		with(m_agente){				
			ia_atacaryellow()
		}
		return m_agente.no_raiz_yellow;
	}
}

//---------------------------------------------------------------------------------------------------



//------------------------------------NO ESTA PERTO2(DECISÃO)-----------------------------------
//------------------------------------Verifica se a dist=0-----------------------------------

function NoEstaPertoYellow() : NoDecisaoYellow() constructor{
	
	m_agente = noone;
	
	avaliar = function(){
		var _dist = 0;
		with(m_agente){
			_dist = point_distance(x, y, obj_player.x, obj_player.y);		
		}
		return (_dist = 0);
	}
}

//AÇÃO ATACAR2

function NoAcaoGameOverYellow() constructor{
	
	m_agente = noone;
	
	tomar_decisao = function(){
		with(m_agente){				
			ia_gameoveryellow()
		}
		return m_agente.no_raiz_yellow;
	}
}

//---------------------------------------------------------------------------------------------------








