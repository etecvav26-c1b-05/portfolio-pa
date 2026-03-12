
/*
* Instituição: EtecVAV - Vasco Antonio Vechiarutti
*
* Arquivo: MediaNotas.por
* Data: 05/03/2026
* Autor: Marcos Vinicius Mendonça Gomes, Henzo Souza Pereira
* Descrição: Ler 4 notas, calcular a média ponderada com os pesos 1, 2, 3 e 4 
respectivamente e exibir as notas e o resultado da média.
*/
programa
{
	funcao inicio()
	{
	real nota1
	
		escreva("Qual a nota?\n")
		leia(nota1)
		limpa()
		
	real nota2

		escreva("\nQual a nota2?\n")
		        leia(nota2)
		limpa()

	real nota3
		 escreva("\nQual a nota3?\n")
		 leia(nota3)
		limpa()

	real nota4
		escreva("\nQual a nota4?\n")
		leia(nota4)
		limpa()

	real  Media
		escreva("nota 1: "+ nota1*1)
		escreva("\nNota 2: "+ nota2*2)
		escreva("\nNota 3: "+ nota3*3)
		escreva("\nNota 4: "+ nota4 *4)
		escreva("\nMedia ponderada: "+ (nota1 * 1 + nota2 * 2 + nota3 * 3 + nota4 * 4)/10)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 54; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */