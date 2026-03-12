
/*
* Instituição: EtecVAV - Vasco Antonio Vechiarutti
*
* Arquivo: Salario.por
* Data: 05/03/2026
* Autor: Marcos Vnicius Mendonça Gomes, Henzo Souza
* Descrição: 
* O vendedor recebe seu salário fixo acrescido de comissões de vendas,
*calculada a partir do percentual do valor de suas vendas. Ler o salário
*fixo do vendedor, o valor de suas vendas e o percentual sobre as vendas.
*Calcular e exibir o salário final do vendedor.
*/
programa
{
	
	funcao inicio()
	{	
	 real SalarioFixo
		escreva("Salario Fixo: ")
		leia(SalarioFixo)
		limpa()

	real ValorVendas
		escreva("Digite o Valor das Vendas: ")
		leia(ValorVendas)
		limpa()

	real Porcentual
		escreva("Digite o Porcentual De Vendas: ")
		leia(Porcentual)
		limpa()
		
	real SalarioFinal
		SalarioFinal = SalarioFixo + (ValorVendas * Porcentual / 100)
		escreva("Salario Fixo: " + SalarioFixo)
		escreva("\nValor das Vendas: " + ValorVendas)
		escreva("\nPorcentual sobre as vendas: " + Porcentual)
		escreva("\nSalario Final: " + SalarioFinal)	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 751; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */