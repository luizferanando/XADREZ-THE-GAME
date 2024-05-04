programa
{     // Xadrez cust
	inclua biblioteca Graficos --> g
	inclua biblioteca Util --> u
	inclua biblioteca Mouse --> m
	
 	inteiro tabuleiro = g.carregar_imagem("xadrez.jpg")
     inteiro tabuleiro_redimensionar=g.redimensionar_imagem(tabuleiro,800,600,verdadeiro)
	logico start = verdadeiro
	logico EXIT =  verdadeiro
	funcao inicio()
	{
          criar_janela()
          enquanto(verdadeiro){
	       	g.definir_cor(g.COR_PRETO)
	       	g.limpar()
	       	desenhar_telal()
	           clicke_no_botao()
	          
         	     g.renderizar()
	  }
	}
	
	 funcao criar_janela(){
		 g.iniciar_modo_grafico(verdadeiro)
		 g.definir_dimensoes_janela(800,600)
		 g.definir_titulo_janela("xadrez cust")
	}
	funcao desenhar_telal(){
	     g.desenhar_imagem(0, 0, tabuleiro_redimensionar)
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
		 }       se(EXIT){
		 	  g.definir_tamanho_texto(29.0)
		   g.desenhar_texto(350,350, "EXIT")
		 }
		 se(m.algum_botao_pressionado()){
		 	se(m.posicao_x() >= 350 e m.posicao_x() <= 400){
		 		se(m.posicao_y() >= 350 e m.posicao_y() <=400){
		 		  EXIT = falso
		 		  g.sair_modo_tela_cheia()
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
 * @POSICAO-CURSOR = 1216; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */