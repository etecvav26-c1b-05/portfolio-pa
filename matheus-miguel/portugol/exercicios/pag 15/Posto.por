/*
* Instituição: ETECVAV
* Data: 12/03/2026
* Autores: Miguel e Matheus
* Descricao: Calcula a quantidade de litros de gasolina colocados
*/

programa
{
	
	funcao inicio()
	{
		real precofinal

			escreva("Qual foi o preço final?\n")

			leia (precofinal)

			limpa()

		real precolitro

			escreva("Qual é o preço por litro?\n")

			leia (precolitro)

			limpa()

			escreva("Litros colocados: " +precofinal /precolitro)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 138; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */