

randomize()
//Controla a frequencia com que o obstaculo e criado
frequencia = 2;
//Controla a velocidade do objeto
velocidade = 2;


//Gera uma posição inicial alvo para o objeto
destinox   = random_range(64, room_width-64);
destinoy   = random_range(64, room_height-64);



// Municao
// Codigo para controlar a municao do player
max_municao_player = 100;
municao_player = max_municao_player;

// Diminuir um pouco a cadência de tiro
cooldown = 0;

// Vida
// Codigo para controlar a vida do Player
max_vida_player = 5;
vida_player = max_vida_player;

// Supervelocidade
// Codigo para controlar a Supervelocidade do Plyer
max_superball = 1;
superball = max_superball;



// Escreve o estado do obj na tela 
estado = ia_patrulharplayer();
escrever_estado_player = estado;

//------------------------AÇÕES------------------------------

// Nó Inicial | No 1
//Criando o no de ação PATRULHAR
no_acao_patrulhar_player = new NoAcaoPatrulharPlayer(); 
no_acao_patrulhar_player.m_agente = self;

// Segundo Nó | No 2
//Criando o no de ação OBSTACULO
no_acao_obstaculo_player = new NoAcaoObstaculoPlayer(); 
no_acao_obstaculo_player.m_agente = self;

// Terceiro Nó | No 3
//Criando o no de ação PERSEGUIR
no_acao_perseguir_player = new NoAcaoPerseguirPlayer(); 
no_acao_perseguir_player.m_agente = self;

// Quarto Nó | No 4
//Criando o no de ação ATACAR
no_acao_atacar_player = new NoAcaoAtacarPlayer(); 
no_acao_atacar_player.m_agente = self;

// Quinto Nó | No 5
//Criando o no de ação GAME OVER
no_acao_gameover_player = new NoAcaoGameOverPlayer(); 
no_acao_gameover_player.m_agente = self;





//------------------------DECIÇÕES------------------------------

//NO ESTA DISTATE É UM NO RAIZ
// Nó Inicial | No 1
no_raiz_player = new NoEstaDistantePlayer();
//Referenciando o objeto atual que esta sendo
//criado na cena
no_raiz_player.m_agente  = self; 


// Quinto Nó | No 5
//Criando no de decição esta perto2 chamdo pelo no esta perto
no_esta_perto_player = new NoEstaPertoPlayer();
no_esta_perto_player.m_agente = self;
no_esta_perto_player.no_sim = no_acao_gameover_player;
no_esta_perto_player.no_nao = no_raiz_player;

// Quarto Nó | No 4
//Criando o nó de decisão EstaPerto chamdo pelo no esta entre 2
no_esta_proximo_player = new NoEstaProximoPlayer();
no_esta_proximo_player.m_agente = self;
no_esta_proximo_player.no_sim = no_acao_atacar_player;
no_esta_proximo_player.no_nao = no_esta_perto_player;

// Terceiro Nó | No 3
//Criando no de decição estaentre2 chamdo pelo no estaentre
no_esta_entre_player = new NoEstaEntrePlayer();
no_esta_entre_player.m_agente = self;
no_esta_entre_player.no_sim = no_acao_perseguir_player;
no_esta_entre_player.no_nao = no_esta_proximo_player;

// Segundo Nó | No 2
//Criando no de decição estaentre chamdo pelo no raiz
no_esta_longe_player = new NoEstaLongePlayer();
no_esta_longe_player.m_agente = self;
no_esta_longe_player.no_sim = no_acao_obstaculo_player;
no_esta_longe_player.no_nao = no_esta_entre_player;



//No inicial | No raiz | No 1
// Esse Nó comeca no Topo.
//no_raiz_player = new NoEstaDistantePlayer();







// Segunda parte do Nó inicial | Nó raiz

//Vinculando os nós(Ação ou Decisão) a raiz
no_raiz_player.no_sim = no_acao_patrulhar_player
//Vinculando o nó de decisão
no_raiz_player.no_nao = no_esta_longe_player;

//Inicialmente definimos o no raiz como atual
no_atual = no_raiz_player






