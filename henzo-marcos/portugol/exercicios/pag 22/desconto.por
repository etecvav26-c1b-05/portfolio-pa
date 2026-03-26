/*
* Instituição: EtecVAV - Vasco Antonio Vechiarutti
*
* Arquivo: desconto.por
* Data: 26/03/2026
* Autor: Marcos Vinicius Mendonça Gomes, Henzo Souza
* Descrição: Ler o valor de uma compra e calcular o desconto, de acordo com o valor
total da compra: se for menor que R$100, não há desconto; se for entre
R$100 e R$500, o desconto é de 10%; acima de R$500, o desconto é de
20%. Exibir o valor após aplicado o desconto.

*/
programa
{
	
	funcao inicio()
	{
		real valorcompra, desconto, total
			escreva("Valor da Compra: ")
			leia(valorcompra)
			limpa()

		se (valorcompra <= 100){
			desconto = 0
				
			} senao se(valorcompra > 100 e valorcompra <= 500) {
				desconto = valorcompra * 0.10
				
			}senao{
				desconto = valorcompra * 0.20
			}

		
			escreva("Valor da Compra sem Desconto: " + valorcompra)
			escreva("\nDesconto: " + desconto)
			escreva("\nValor com Desconto: " + (valorcompra-desconto))
			
				
				
			
				 
			
			
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 75; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */