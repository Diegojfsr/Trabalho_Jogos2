/// @description Insert description here
// You can write your code in this editor


randomize()
//Controla a frequencia com que o obstaculo e criado
frequencia = 2;
//Controla a velocidade do objeto
velocidade = 2;


//Gera uma posição inicial alvo para o objeto
destinox   = random_range(64, room_width-64);
destinoy   = random_range(64, room_height-64);


randomize()
velocidade3 = 3;


// Municao
// Codigo para controlar a municao do player
max_municao_agente = 100;
municao_agente = max_municao_agente;

// Diminuir um pouco a cadência de tiro
cooldown = 0;

// Vida
// Codigo para controlar a vida do red
max_vida_agente = 5;
vida_agente = max_vida_agente;


// Escreve o estado do obj na tela 
estado = ia_patrulhar;
escrever_estado = estado;











//------------------------AÇÕES------------------------------




//Criando o no de ação patrulhar
no_acao_patrulhar = new NoAcaoPatrulhar(); 
no_acao_patrulhar.m_agente = self;

//Criando o no de ação obstaculo
no_acao_obstaculo = new NoAcaoObstaculo(); 
no_acao_obstaculo.m_agente = self;

//Criando o no de ação perseguir2
no_acao_perseguir = new NoAcaoPerseguir(); 
no_acao_perseguir.m_agente = self;

//Criando o no de ação atacar
no_acao_atacar = new NoAcaoAtacar(); 
no_acao_atacar.m_agente = self;

//Criando o no de ação atacar2
no_acao_gameover = new NoAcaoGameOver(); 
no_acao_gameover.m_agente = self;








//------------------------DECIÇÕES------------------------------

//NO ESTA DISTATE É UM NO RAIZ
no_raiz = new NoEstaDistante();
//Referenciando o objeto atual que esta sendo
//criado na cena
no_raiz.m_agente  = self; 





//Criando no de decição esta perto2 chamdo pelo no esta perto
no_esta_perto = new NoEstaPerto();
no_esta_perto.m_agente = self;
no_esta_perto.no_sim = no_acao_gameover;
no_esta_perto.no_nao = no_raiz;

//Criando o nó de decisão EstaPerto chamdo pelo no esta entre 2
no_esta_proximo = new NoEstaProximo();
no_esta_proximo.m_agente = self;
no_esta_proximo.no_sim = no_acao_atacar;
no_esta_proximo.no_nao = no_esta_perto;


//Criando no de decição estaentre2 chamdo pelo no estaentre
no_esta_entre = new NoEstaEntre();
no_esta_entre.m_agente = self;
no_esta_entre.no_sim = no_acao_perseguir;
no_esta_entre.no_nao = no_esta_proximo;


//Criando no de decição estaentre chamdo pelo no raiz
no_esta_longe = new NoEstaLonge();
no_esta_longe.m_agente = self;
no_esta_longe.no_sim = no_acao_obstaculo;
no_esta_longe.no_nao = no_esta_entre;












//Vinculando os nós(Ação ou Decisão) a raiz
no_raiz.no_sim = no_acao_patrulhar
//Vinculando o nó de decisão
no_raiz.no_nao = no_esta_longe;

//Inicialmente definimos o no raiz como atual
no_atual = no_raiz




