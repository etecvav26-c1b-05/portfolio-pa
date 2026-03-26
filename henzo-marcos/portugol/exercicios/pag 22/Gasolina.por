/*
* Instituição: EtecVAV - Vasco Antonio Vechiarutti
*
* Arquivo: Gasolinas.por
* Data: 26/03/2026
* Autor: Marcos Vinicius Mendonça Gomes, Henzo Souza
* Descrição: Ler o preço do etanol e da gasolina. Sugerir o tipo de combustível a ser
utilizado em um carro, com base no preço: se o preço do etanol for até
70% do preço da gasolina, é recomendado usar álcool; caso contrário,
usar gasolina. Exibir o resultado sugerido.
*/
programa
{
	
	funcao inicio()
	{
		real gasolina, etanol, limiteEtanol
			escreva("Preço da Gasolina: ")
			leia(gasolina)
			limpa()
			
			escreva("Preço Etanol: ")
			leia(etanol)
			limpa()

		limiteEtanol = gasolina * 0.7

		se (etanol <= limiteEtanol)
			escreva("Utilizar Etanol.")

		senao
			escreva("utilizar gasolina.")
			
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 625; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */