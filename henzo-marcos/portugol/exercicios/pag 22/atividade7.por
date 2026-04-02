/*
* Instituição: EtecVAV - Vasco Antonio Vechiarutti
*
* Arquivo: Letra.por
* Data: 02/04/2026
* Autor: Marcos Vinicius Mendonça Gomes, Henzo Souza
* Descrição:  Ler um caractere. Verificar se o caractere lido é uma vogal. Exibir o 
caractere lido com a informação se é ou não uma vogal. 
*/
programa
{
	
	funcao inicio()
	{
		caracter letra
			escreva("Insira o Caracter: ")
			leia(letra)

		se (letra == 'a' ou letra == 'e' ou letra == 'i' ou letra == 'o' ou letra == 'u'){
			escreva(letra + " É uma Vogal")
		}
		senao{
			escreva(letra + " Não é uma Vogal")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 521; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */