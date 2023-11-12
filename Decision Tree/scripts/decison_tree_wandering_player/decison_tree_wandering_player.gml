

//---------------------------------NO VERIFICA SE ESTA DISTANTE(DECISÃO)-----------------------------------
function NoEstaDistantePlayer() : NoDecisaoPlayer() constructor{
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
function NoAcaoPatrulharPlayer() : NoAcaoPlayer() constructor{
	m_agente = noone;
	tomar_decisao = function(){
		with(m_agente){				
			ia_patrulharplayer();
		}
		return m_agente.no_raiz_player;
	}
}
//------------------------------------------------------------------------------------------------------



//------------------------------------NO ESTA ENTRE (DECISÃO)-----------------------------------
//------------------------------------Verifica se a dist>300-----------------------------------
function NoEstaLongePlayer() : NoDecisaoPlayer() constructor{
	
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

function NoAcaoObstaculoPlayer() : NoAcaoPlayer() constructor{
	
	m_agente = noone;
	
	tomar_decisao = function(){
		with(m_agente){				
			ia_obstaculoplayer();
		}
		return m_agente.no_raiz_player;
	}
}
//------------------------------------------------------------------------------------


//------------------------------------NO ESTA ENTRE 2 (DECISÃO)-----------------------------------
//------------------------------------Verifica se a dist>200-----------------------------------




function NoEstaEntrePlayer() : NoDecisaoPlayer() constructor{
	
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

function NoAcaoPerseguirPlayer() : NoAcaoPlayer() constructor{
	
	m_agente = noone;
	
	tomar_decisao = function(){
		with(m_agente){				
			ia_perseguirplayer();
		}
		return m_agente.no_raiz_player;
	}
}
//---------------------------------------------------------------------------------------------------

//------------------------------------NO ESTA PERTO(DECISÃO)-----------------------------------
//------------------------------------Verifica se a dist>100-----------------------------------

function NoEstaProximoPlayer() : NoDecisaoPlayer() constructor{
	
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

function NoAcaoAtacarPlayer() constructor{
	
	m_agente = noone;
	
	tomar_decisao = function(){
		with(m_agente){				
			ia_atacarplayer()
		}
		return m_agente.no_raiz_player;
	}
}

//---------------------------------------------------------------------------------------------------



//------------------------------------NO ESTA PERTO2(DECISÃO)-----------------------------------
//------------------------------------Verifica se a dist=0-----------------------------------

function NoEstaPertoPlayer() : NoDecisaoPlayer() constructor{
	
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

function NoAcaoGameOverPlayer() constructor{
	
	m_agente = noone;
	
	tomar_decisao = function(){
		with(m_agente){				
			ia_gameoverplayer()
		}
		return m_agente.no_raiz_player;
	}
}

//---------------------------------------------------------------------------------------------------








