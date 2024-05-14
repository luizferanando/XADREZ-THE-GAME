programa
{     // XADREZ-THE-GAME
	inclua biblioteca Graficos --> g
	inclua biblioteca Util --> u
	inclua biblioteca Mouse --> m
	
 	inteiro tabuleiro = g.carregar_imagem("xadrez.jpg")
 	inteiro pecaPreta[16][16]
 	inteiro pecaBranca[16][16]
 	inteiro tabuleiro_redimensionar=g.redimensionar_imagem(tabuleiro,800,600,verdadeiro)
	logico start = verdadeiro
	
	funcao inicio()
	{
          criar_janela()
          carregarPecas()
          enquanto(verdadeiro){
	       	g.definir_cor(g.COR_PRETO)
	       	g.limpar()
	       	desenhaTodosElementos()
	          clicke_no_botao()
	         movimentos_das_peca()
	         g.renderizar()
	  }
	}


	funcao carregarPecas(){
		//peças pretas
	   	pecaPreta[0][0] = g.carregar_imagem("torre_preta.png")
	   	pecaPreta[0][1] = 147
	   	pecaPreta[0][2] = 45
	   	pecaPreta[1][0] = g.carregar_imagem("bispo_preto.png")
	   	pecaPreta[1][1] = 210
	   	pecaPreta[1][2] = 45
	     pecaPreta[2][0] = g.carregar_imagem("cavalo_preto.png")
	   	pecaPreta[2][1] = 275
	   	pecaPreta[2][2] = 45
	 	pecaPreta[3][0] = g.carregar_imagem("rei_preto.png")
	   	pecaPreta[3][1] = 339
	   	pecaPreta[3][2] = 45
	     pecaPreta[4][0] = g.carregar_imagem("rainha_preto.png")
	   	pecaPreta[4][1] = 405
	   	pecaPreta[4][2] = 45
	     pecaPreta[5][0] = g.carregar_imagem("cavalo_preto.png")
	   	pecaPreta[5][1] = 469
	   	pecaPreta[5][2] = 45
	     pecaPreta[6][0] = g.carregar_imagem("bispo_preto.png")
	   	pecaPreta[6][1] = 534
	   	pecaPreta[6][2] = 45
	     pecaPreta[7][0] = g.carregar_imagem("torre_preta.png")
	   	pecaPreta[7][1] = 599
	   	pecaPreta[7][2] = 45
          pecaPreta[8][0] = g.carregar_imagem("peao_preto.png")
	   	pecaPreta[8][1] = 147
	   	pecaPreta[8][2] = 110
	     pecaPreta[9][0] = g.carregar_imagem("peao_preto.png")
	   	pecaPreta[9][1] = 210
	   	pecaPreta[9][2] = 110
	     pecaPreta[10][0] = g.carregar_imagem("peao_preto.png")
	   	pecaPreta[10][1] = 275
	   	pecaPreta[10][2] = 110
          pecaPreta[11][0] = g.carregar_imagem("peao_preto.png")
	   	pecaPreta[11][1] = 339
	   	pecaPreta[11][2] = 110
          pecaPreta[12][0] = g.carregar_imagem("peao_preto.png")
	   	pecaPreta[12][1] = 405
	   	pecaPreta[12][2] = 110
          pecaPreta[13][0] = g.carregar_imagem("peao_preto.png")
	   	pecaPreta[13][1] = 469
	   	pecaPreta[13][2] = 110
          pecaPreta[14][0] = g.carregar_imagem("peao_preto.png")
	   	pecaPreta[14][1] = 534
	   	pecaPreta[14][2] = 110
          pecaPreta[15][0] = g.carregar_imagem("peao_preto.png")
	   	pecaPreta[15][1] = 599
	   	pecaPreta[15][2] = 110
          //peças brancas
          pecaBranca[0][0] = g.carregar_imagem("torre_Branca.png")
	   	pecaBranca[0][1] = 147
	   	pecaBranca[0][2] = 496
	   	pecaBranca[1][0] = g.carregar_imagem("bispo_Branco.png")
	     pecaBranca[1][1] = 210
	   	pecaBranca[1][2] = 496
          pecaBranca[2][0] = g.carregar_imagem("cavalo_Branco.png")
	   	pecaBranca[2][1] = 275
	   	pecaBranca[2][2] = 496
	   	pecaBranca[3][0] = g.carregar_imagem("rei_Branco.png")
	   	pecaBranca[3][1] = 339
	   	pecaBranca[3][2] = 496
        	pecaBranca[4][0] = g.carregar_imagem("rainha_Branca.png")
	   	pecaBranca[4][1] = 405
	   	pecaBranca[4][2] = 496
          pecaBranca[5][0] = g.carregar_imagem("cavalo_Branco.png")
	   	pecaBranca[5][1] = 469
	   	pecaBranca[5][2] = 496
	   	pecaBranca[6][0] = g.carregar_imagem("bispo_Branco.png")
	   	pecaBranca[6][1] = 534
	   	pecaBranca[6][2] = 496
          pecaBranca[7][0] = g.carregar_imagem("torre_Branca.png")
	   	pecaBranca[7][1] = 599
	   	pecaBranca[7][2] = 496
          pecaBranca[8][0] = g.carregar_imagem("peao_Branco.png")
	   	pecaBranca[8][1] = 147
	   	pecaBranca[8][2] = 433
	     pecaBranca[9][0] = g.carregar_imagem("peao_Branco.png")
	   	pecaBranca[9][1] = 210
	   	pecaBranca[9][2] = 433
	     pecaBranca[10][0] = g.carregar_imagem("peao_Branco.png")
	   	pecaBranca[10][1] = 275
	   	pecaBranca[10][2] = 433
          pecaBranca[11][0] = g.carregar_imagem("peao_Branco.png")
	   	pecaBranca[11][1] = 339
	   	pecaBranca[11][2] = 433
          pecaBranca[12][0] = g.carregar_imagem("peao_Branco.png")
	   	pecaBranca[12][1] = 405
	   	pecaBranca[12][2] = 433
          pecaBranca[13][0] = g.carregar_imagem("peao_Branco.png")
	   	pecaBranca[13][1] = 469
	   	pecaBranca[13][2] = 433
          pecaBranca[14][0] = g.carregar_imagem("peao_Branco.png")
	   	pecaBranca[14][1] = 534
	   	pecaBranca[14][2] = 433
          pecaBranca[15][0] = g.carregar_imagem("peao_Branco.png")
	   	pecaBranca[15][1] = 599
	   	pecaBranca[15][2] = 433
	 
         
         
	 
         
         
	 
	 
	   	para(inteiro i = 0; i < 16; i++){
	   		pecaPreta[i][0] = g.redimensionar_imagem(pecaPreta[i][0], 55, 55, verdadeiro)
	   	}
	   		para(inteiro i = 0; i <16; i++){
	   		pecaBranca[i][0] = g.redimensionar_imagem(pecaBranca[i][0],55, 55, verdadeiro)
	   	}
 	}
	
	 funcao criar_janela(){
		 g.iniciar_modo_grafico(verdadeiro)
		 g.definir_dimensoes_janela(800,600)
		 g.definir_titulo_janela("XADREZ-THE-GAME")
	}
	funcao desenhaTodosElementos(){
	     g.desenhar_imagem(0, 0, tabuleiro_redimensionar)
	    para(inteiro i = 0; i < 16; i++){
	     g.desenhar_imagem(pecaPreta[i][1], pecaPreta[i][2], pecaPreta[i][0])
	    }
	       para(inteiro i = 0; i < 16; i++){
	     g.desenhar_imagem(pecaBranca[i][1], pecaBranca[i][2], pecaBranca[i][0])
	       }
	   }
	   funcao clicke_no_botao(){
		se(start){
		   g.definir_tamanho_texto(29.0)
		   g.desenhar_texto(350,300, "start")
		}
		 se(m.algum_botao_pressionado()){
		 	se(m.posicao_x() >= 350 e m.posicao_x() <= 400){
		 		se(m.posicao_y() >= 300 e m.posicao_y() <=325){
		 		  start = falso
		 		}
		 	}
		 } 
	  }
	  //movimentos das peças
	  funcao movimentos_das_peca(){
	  	
	  }
  }   
  
	
	
	
	
          
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 589; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {pecaPreta, 8, 10, 9};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */