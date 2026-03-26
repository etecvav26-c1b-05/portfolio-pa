/*
* Instituição: EtecVAV - Vasco Antonio Vechiarutti
*
* Arquivo: AnoBissexto.por
* Data: 19/03/2026
* Autor: Marcos Vinicius Mendonça Gomes, Henzo Souza
* Descrição: Ler um ano e verificar se o ano é bissexto. Um ano é bissexto se for
divisível por 4, mas não por 100, exceto se for divisível por 400. Exibir o
ano lido, informando se é ou não é bissexto.
*/
programa
{
	
	funcao inicio()
	{
		inteiro ano
			escreva("Insira o Ano: ")
			leia(ano)
			limpa()

			se (ano % 4 == 0)
				escreva(ano + " É um ano bissexto")

			senao
				escreva(ano + " Não é um ano Bissexto")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 558; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */