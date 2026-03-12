/*
* Instituição: ETECVAV
* Data: 05/03/2026
* Autor: Matheus e Miguel
* Descricao: lê o nome e idade do usuario, e calcula
* a idade em meses e dias
*/

programa
{
	
	funcao inicio()
	{
		cadeia nome
			escreva("Qual seu nome?\n")

			leia(nome)

			limpa()

			escreva("ola " +nome)
			
		inteiro idade

			escreva("\nqual sua idade? ")

			leia(idade)

			escreva("nome:" +nome)
			escreva("\n idade em meses: " +idade *12)
			escreva("\n idade em dias:" +idade *365)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 70; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */