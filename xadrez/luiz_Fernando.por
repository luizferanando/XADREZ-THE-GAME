programa
{     // Xadrez cust
	inclua biblioteca Graficos --> g
	inclua biblioteca Util --> u
	inclua biblioteca Mouse --> m
	
 	inteiro tabuleiro = g.carregar_imagem("xadrez.jpg")
 	inteiro pecaPreta[16][6]
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
	         g.renderizar()
	  }
	}


	funcao carregarPecas(){
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
	 
	   	


	   	para(inteiro i = 0; i < 5; i++){
	   		pecaPreta[i][0] = g.redimensionar_imagem(pecaPreta[i][0], 55, 55, verdadeiro)
	   	}
	   	
 	}
	
	 funcao criar_janela(){
		 g.iniciar_modo_grafico(verdadeiro)
		 g.definir_dimensoes_janela(800,600)
		 g.definir_titulo_janela("xadrez cust")
	}
	funcao desenhaTodosElementos(){
	     g.desenhar_imagem(0, 0, tabuleiro_redimensionar)
	    para(inteiro i = 0; i < 5; i++){
	     g.desenhar_imagem(pecaPreta[i][1], pecaPreta[i][2], pecaPreta[i][0])
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
  }
	
	
	
	
          
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1590; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {pecaPreta, 8, 10, 9};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */