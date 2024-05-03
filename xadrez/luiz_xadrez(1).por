programa
{     // Xadrez cust
	inclua biblioteca Graficos --> g
	inclua biblioteca Util --> u
	inclua biblioteca Mouse --> m
	inteiro tabuleiro = g.carregar_imagem("xadrez.jpg")
     inteiro tabuleiro_redimensionar=g.redimensionar_imagem(tabuleiro,800,600,verdadeiro)
	inteiro START=0
	inteiro EXIT=0
	funcao inicio()
	{
    mostrar_janela()
       enquanto(verdadeiro){
       	g.definir_cor(g.COR_PRETO)
       	g.limpar()
       	desenhar_telal()
       tela_de_Menu()
      g.renderizar()

	  }
	}
	 
	 funcao mostrar_janela(){
	 g.iniciar_modo_grafico(verdadeiro)
	g.definir_dimensoes_janela(800,600)
	 g.definir_titulo_janela("xadrez cust")
	}
	funcao desenhar_telal(){
	  g.desenhar_imagem(0, 0, tabuleiro_redimensionar)
	  
	  
	}
	funcao tela_de_Menu(){
	g.definir_tamanho_texto(29.0)
	 g.desenhar_texto(350,300, "START")
	  	enquanto(verdadeiro){
	  	m.botao_pressionado(START)
	  	}
	  	g.definir_tamanho_texto(29.0)
	  g.desenhar_texto(359,340, "EXIT")
	  	m.botao_pressionado(EXIT)
		}
	}
	 
	  	
	  	
	  	 	
	  	
	 
	 
	 
	

	  
	   
	
	
	
	
		
	
	
	
          
	
	
	
	
	
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 918; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */