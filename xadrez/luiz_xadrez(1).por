programa
{     // Xadrez cust
	inclua biblioteca Graficos --> g
	inclua biblioteca Util --> u
	inclua biblioteca Mouse --> m
	
 	inteiro tabuleiro = g.carregar_imagem("xadrez.jpg")
     inteiro tabuleiro_redimensionar=g.redimensionar_imagem(tabuleiro,800,600,verdadeiro)
	inteiro start
	funcao inicio()
	{
    criar_janela()
       enquanto(verdadeiro){
       	g.definir_cor(g.COR_PRETO)
       	g.limpar()
       	desenhar_telal()
       cricke_no_botao()
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
	funcao cricke_no_botao(){
	 g.definir_tamanho_texto(29.0)
	 g.desenhar_texto(350,300, "start")
	
	
	}
		
	
	
	
          
	
	
	
	
	
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 825; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */