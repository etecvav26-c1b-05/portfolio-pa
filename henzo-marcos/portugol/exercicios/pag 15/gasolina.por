/*
* Instituição: EtecVAV - Vasco Antonio Vechiarutti
*
* Arquivo: Gasolina.por
* Data: 05/03/2026
* Autor: Marcos Vinicius Mendonça Gomes, Henzo Souza
* Descrição: O motorista de aplicativo abastece o tanque do seu carro com um
*determinado valor em reais. Ler o preço do litro de combustível e o valor
*que pretende abastecer. Calcular a quantidade de litro no abastecimento
*e exibir os dados lidos e o valor calculado.
*/
programa
{
	
	funcao inicio()
	{
	real preco
		preco = 5
		limpa()

	real valor
		escreva("Quanto deseja abastecer? ")
		leia(valor)
		limpa()

	real litros
		escreva("preco por litro= "+ preco)
		escreva("\nValor Abastecido= "+valor)
		escreva("\nLitros= "+ valor/preco)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 422; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */