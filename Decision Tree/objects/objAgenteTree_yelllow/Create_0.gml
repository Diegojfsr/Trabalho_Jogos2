/// @description Insert description here
// You can write your code in this editor


randomize()
//Controla a frequencia com que o obstaculo e criado
frequencia = 50;
//Controla a velocidade do objeto
velocidade = 2;


//Gera uma posição inicial alvo para o objeto
destinox = random_range(64, room_width-64);
destinoy = random_range(64, room_height-64);



// Municao
// Codigo para controlar a municao do yellow  
max_municao_yellow = 100;
municao_yellow = max_municao_yellow  ;

// Diminuir um pouco a cadência de tiro
cooldown = 0;

// Vida
// Codigo para controlar a vida do red
max_vida_yellow = 5;
vida_yellow = max_vida_yellow  ;


// Escreve o estado do obj na tela 
estado = ia_patrulharyellow();
escrever_estado_yellow = estado;

//------------------------AÇÕES------------------------------

// Nó Inicial | No 1
//Criando o no de ação PATRULHAR
no_acao_patrulhar_yellow = new NoAcaoPatrulharYellow(); 
no_acao_patrulhar_yellow.m_agente = self;

// Segundo Nó | No 2
//Criando o no de ação OBSTACULO
no_acao_obstaculo_yellow = new NoAcaoObstaculoYellow(); 
no_acao_obstaculo_yellow.m_agente = self;

// Terceiro Nó | No 3
//Criando o no de ação PERSEGUIR
no_acao_perseguir_yellow = new NoAcaoPerseguirYellow(); 
no_acao_perseguir_yellow.m_agente = self;

// Quarto Nó | No 4
//Criando o no de ação ATACAR
no_acao_atacar_yellow = new NoAcaoAtacarYellow(); 
no_acao_atacar_yellow.m_agente = self;

// Quinto Nó | No 5
//Criando o no de ação GAME OVER
no_acao_gameover_yellow = new NoAcaoGameOverYellow(); 
no_acao_gameover_yellow.m_agente = self;





//------------------------DECIÇÕES------------------------------

//NO ESTA DISTATE É UM NO RAIZ
// Nó Inicial | No 1
no_raiz_yellow = new NoEstaDistanteYellow();
//Referenciando o objeto atual que esta sendo
//criado na cena
no_raiz_yellow.m_agente  = self; 


// Quinto Nó | No 5
//Criando no de decição esta perto2 chamdo pelo no esta perto
no_esta_perto_yellow = new NoEstaPertoYellow();
no_esta_perto_yellow.m_agente = self;
no_esta_perto_yellow.no_sim = no_acao_gameover_yellow;
no_esta_perto_yellow.no_nao = no_raiz_yellow;

// Quarto Nó | No 4
//Criando o nó de decisão EstaPerto chamdo pelo no esta entre 2
no_esta_proximo_yellow = new NoEstaProximoYellow();
no_esta_proximo_yellow.m_agente = self;
no_esta_proximo_yellow.no_sim = no_acao_atacar_yellow;
no_esta_proximo_yellow.no_nao = no_esta_perto_yellow;

// Terceiro Nó | No 3
//Criando no de decição estaentre2 chamdo pelo no estaentre
no_esta_entre_yellow = new NoEstaEntreYellow();
no_esta_entre_yellow.m_agente = self;
no_esta_entre_yellow.no_sim = no_acao_perseguir_yellow;
no_esta_entre_yellow.no_nao = no_esta_proximo_yellow;

// Segundo Nó | No 2
//Criando no de decição estaentre chamdo pelo no raiz
no_esta_longe_yellow = new NoEstaLongeYellow();
no_esta_longe_yellow.m_agente = self;
no_esta_longe_yellow.no_sim = no_acao_obstaculo_yellow;
no_esta_longe_yellow.no_nao = no_esta_entre_yellow;



//No inicial | No raiz | No 1
// Esse Nó comeca no Topo.
//no_raiz_yellow   = new NoEstaDistanteyellow();







// Segunda parte do Nó inicial | Nó raiz

//Vinculando os nós(Ação ou Decisão) a raiz
no_raiz_yellow.no_sim = no_acao_patrulhar_yellow; 
//Vinculando o nó de decisão
no_raiz_yellow.no_nao = no_esta_longe_yellow;

//Inicialmente definimos o no raiz como atual
no_atual = no_raiz_yellow  






