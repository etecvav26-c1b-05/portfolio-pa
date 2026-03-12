/*
* Instituição: EtecVAV - Vasco Antonio Vechiarutti
*
* Arquivo: NomeIdade.por
* Data: 05/03/2026
* Autor: Marcos Vinicius Mendonça Gomes, Henzo Souza
* Descrição: ler o nome e a idade do usuario. calcular 
* a idade em meses e dias. exibir o nome e a idade em 
* anos, meses e dias
*/
programa
{
	
	funcao inicio()
	{
	cadeia nome
		escreva("qual é seu nome: ")
		leia(nome)
		limpa()
		
	inteiro idade
		escreva("qual sua idade: ")
		leia (idade)
		limpa ()
		escreva("nome: "+ nome)
		escreva("sua idade em anos: "+ idade)
		escreva("sua idade em meses: " + idade*12)
		escreva("sua idade em dias: "+ idade*365)
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 544; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */