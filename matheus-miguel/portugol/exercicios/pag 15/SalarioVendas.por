/*
* Instituição: EtecVAV - Vasco Antonio Vechiarutti
*
* Arquivo: PesoBoi.por
* Data: 05/03/2026
* Autor: Marcos Vinicius Mendonça Gomes, Henzo Souza Pereira
* Descrição: calcula o salario fixo + percentual de vendas
*/
programa
{
	
	funcao inicio()
	{
		real salariofixo

			escreva("Qual o salário fixo do vendedor?\n") 

			leia (salariofixo)

			limpa()

		real vendas

			escreva("Qual o valor das vendas??\n")

			leia (vendas)

			limpa()

		real percentualvendas

			escreva("Qual o percentual sobre as vendas?\n")

			leia (percentualvendas)

			limpa()

		real salariofinal

			salariofinal = salariofixo + (vendas * percentualvendas / 100)

			escreva("Salário final: " +salariofinal)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 217; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */