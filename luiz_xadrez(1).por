programa
{     // Xadrez cust
	inclua biblioteca Graficos --> g
	inclua biblioteca Util --> u
	inclua biblioteca Mouse --> m
	
 	inteiro tabuleiro = g.carregar_imagem("xadrez.jpg")
     inteiro tabuleiro_redimensionar=g.redimensionar_imagem(tabuleiro,800,600,verdadeiro)
	inteiro start=0
	funcao inicio()
	{
    criar_janela()
       enquanto(verdadeiro){
       	g.definir_cor(g.COR_PRETO)
       	g.limpar()
       	desenhar_telal()
         inicia_game()
         cricke_Botao()
         pecas_brancas()
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
	funcao inicia_game(){
	 g.definir_tamanho_texto(29.0)
	 g.desenhar_texto(350,300, "start")

}
  funcao cricke_Botao(){
  m.botao_pressionado(start)
  }
  funcao pecas_brancas(){
  	
  	
  }
		
	
	
	
          
	
	
	
	
	
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 871; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */