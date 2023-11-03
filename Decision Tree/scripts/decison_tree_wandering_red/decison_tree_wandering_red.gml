

//VERIFICA SE ESTA LONGE >200PX
function NoEstaLonge() : NoDecisao() constructor{
	
	m_agente = noone;
	
	avaliar = function(){
		var _dist = 0;
		with(m_agente){
			_dist = point_distance(x, y, player.x, player.y);		
		}
		return (_dist > 200);
	}	
}

//NO DE DECISÃO >200PX AÇÃO PATRULHAR

function NoAcaoPatrulhar() : NoAcao() constructor{
	
	m_agente = noone;
	
	tomar_decisao = function(){
		with(m_agente){
			ia_patrulhar();
		}
		return m_agente.no_raiz;
	}
	
}




//VERIFICA SE ESTA PERTO <100PX

function NoEstaPerto() : NoDecisao() constructor{
	
	m_agente = noone;
	
	avaliar = function(){
		var _dist = 0;
		with(m_agente){
			_dist = point_distance(x, y, player.x, player.y);		
		}
		return (_dist < 100);
	}	
}


//NO DE DECISÃO <100PX AÇÃO ATACAR
function NoAcaoAtacar() : NoAcao() constructor{
	
	m_agente = noone;
	
	tomar_decisao = function(){
		with(m_agente){
			//if (!esta_invertido){
				//esta_invertido =false
			ia_atacar();
			//}
		}
		return m_agente.no_raiz;
	}
	
}


//VERIFICA SE ESTA ENTRE 100PX E 200PX

function NoEstaEntre() : NoDecisao() constructor{
	
	m_agente = noone;
	
	avaliar = function(){
		var _dist = 0;
		with(m_agente){
			_dist = point_distance(x, y, player.x, player.y);		
		}
		return (_dist > 100 and _dist < 200);
	}	
}

//NO DE DECISÃO ESTA ENTRE 100PX E 200PX AÇÃO PERSEGUIR
function NoAcaoPerseguir() : NoAcao() constructor{
	
	m_agente = noone;
	
	tomar_decisao = function(){
		with(m_agente){
			
			ia_perseguir();
		
		}
		return m_agente.no_raiz;
	}
	
}


