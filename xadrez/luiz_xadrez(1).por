programa
{     // Xadrez cust
	inclua biblioteca Graficos --> g
	inclua biblioteca Util --> u
	inclua biblioteca Mouse --> m
	
 
     const  inteiro ALTURA_JANELA = 720
     const inteiro LARGURA_JANELA = 1200
 inteiro tabuleiro = g.carregar_imagem("xadrez.jpg")
	
	funcao inicio()
	{
    montar_janela()
       enquanto(verdadeiro){

       	g.renderizar()

	  }
	}
	 
	 funcao montar_janela(){
	 g.iniciar_modo_grafico(verdadeiro)
	 g.definir_dimensoes_janela(LARGURA_JANELA,ALTURA_JANELA)
	 g.definir_titulo_janela("xadrez cust")
	
	}
	funcao pintar_janela(){
		g.definir_cor(g.COR_BRANCO)
		g.limpar()
		
	}
	funcao desenhar_painel(){
		g.definir_cor(g.COR_AZUL)
		g.desenhar_retangulo(0,0, LARGURA_JANELA, 50, falso,verdadeiro)
		g.definir_cor(g.COR_AMARELO)
          g.desenhar_imagem(0, 0, tabuleiro)
	}
	
	
	}
	
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 813; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */