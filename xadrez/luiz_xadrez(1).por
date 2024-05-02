programa
{     // Xadrez cust
	inclua biblioteca Graficos --> g
	inclua biblioteca Util --> u
	inclua biblioteca Mouse --> m
	

	inteiro tabuleiro = g.carregar_imagem("xadrez.jpg")
	inteiro start
	funcao inicio()
	{
   montar_janela()
   }
	 
	 funcao montar_janela(){
	g.iniciar_modo_grafico(verdadeiro)
	 g.definir_dimensoes_janela(1600,1200)
	 g.definir_titulo_janela("xadrez cust")
	 enquanto(verdadeiro){
	  	g.desenhar_imagem(0, 0, tabuleiro)
	  	g.renderizar()
	
}
}
      
     


	  

	  	
	  
	 
funcao pintar_janela(){
		g.definir_cor(g.COR_BRANCO)
		g.limpar()
		
	}
	}
	
		
	
	

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 469; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */