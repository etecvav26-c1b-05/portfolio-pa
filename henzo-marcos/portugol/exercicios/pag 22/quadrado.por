/*
* Instituição: EtecVAV - Vasco Antonio Vechiarutti
*
* Data: 09/04/2026
* Autores: Henzo Souza, Marcos Gomes 
* Descrição: Ler número e conferir se é um quadrado perfeito.
*/

programa
{
	inclua biblioteca Matematica --> mat
	inclua biblioteca Tipos --> tp

	
	funcao inicio()
	{
		real numero, resultado

		escreva("Qual o número?\n")

		leia(numero)

		limpa()

		resultado = mat.raiz(numero, 2.0)
		
		real raiz = mat.raiz(numero, 2.0)

		inteiro raizInteira = tp.real_para_inteiro(raiz)
		
		se 
			(raizInteira * raizInteira == numero)
		{
			escreva(numero, " é um quadrado perfeito.")
		}
		senao
		{
			escreva(numero, " não é um quadrado perfeito.")
		
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 661; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */