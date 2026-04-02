/*
* Instituição: EtecVAV - Vasco Antonio Vechiarutti
*
* Arquivo: MaiorNumero.por
* Data: 26/03/2026
* Autor: Marcos Vinicius Mendonça Gomes, Henzo Souza
* Descrição: Ler três números inteiros e exibir o maior desses três números. 
*/
programa
{
	
	funcao inicio()
	{
		inteiro numeroA, numeroB, numeroC, maior
			escreva("Insira o primeiro numero: ")
			leia(numeroA)
			limpa()

			escreva("Insira o segundo numero: ")
			leia(numeroB)
			limpa()

			escreva("Insira o terceiro numero: ")
			leia(numeroC)
			limpa()

		maior = numeroA

		se (numeroB >  maior){
			maior = numeroB
		}
		se (numeroC > maior){
			maior = numeroC
		}

		escreva("Maior numero: " + maior)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 616; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */