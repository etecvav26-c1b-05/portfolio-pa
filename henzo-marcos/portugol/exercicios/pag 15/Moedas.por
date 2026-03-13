/*
* Instituição: EtecVAV - Vasco Antonio Vechiarutti
*
* Arquivo: Moedas.por
* Data: 12/03/2026
* Autor: Marcos Vnicius Mendonça Gomes, Henzo Souza
* Descrição: 
* O caixa do supermercado recebe uma certa quantidade de moedas por 
*dia. Ler a quantidade de moedas recebidas de acordo com cada um dos 
*valores 1, 5, 10, 25 e 50 centavos, e ainda moedas de 1 real. Calcular e 
*exibir o valor recebido de cada um dos tipos de moeda e a soma total em 
*moedas.
*/
programa
{
	funcao inicio()
	{
		inteiro moeda1
			escreva("quantas moedas de 1 centavo: ")
			leia(moeda1)
			limpa()

		inteiro moeda5
			escreva("quantas moedas de 5 centavos: ")
			leia(moeda5)
			limpa()
			
		inteiro moeda10
			escreva("quantas moedas de 10 centavos: ")
			leia(moeda10)
			limpa()

		inteiro moeda25
			escreva("quantas moedas de 25 centavos: ")
			leia(moeda25)
			limpa()

		inteiro moeda50
			escreva("quantas moedas de 50 centavos: ")
			leia(moeda50)
			limpa()

		inteiro moeda1r
			escreva("quantas moedas de 1 Real: ")
			leia(moeda1r)
			limpa()


		real moeda1valor = moeda1 * 0.01
		real moeda5valor = moeda5 * 0.05
		real moeda10valor = moeda10 * 0.10
		real moeda25valor = moeda25 * 0.25
		real moeda50valor = moeda50 * 0.50

		 
		escreva("\nMoedas 1 centavo: " + moeda1valor)
		escreva("\nMoedas 5 centavos: " + moeda5valor)
		escreva("\nMoedas 10 centavos: " + moeda10valor)
		escreva("\nMoedas 25 centavos: " + moeda25valor)
		escreva("\nMoedas 50 centavos: " + moeda50valor)
		escreva("\nMoedas de 1 real: " + moeda1r)

		escreva("\nValor Recebido: ", moeda1valor + moeda5valor + moeda10valor + moeda25valor + moeda50valor + moeda1valor)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 55; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */