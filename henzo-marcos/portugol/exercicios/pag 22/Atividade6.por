/*
* Instituição: EtecVAV - Vasco Antonio Vechiarutti
*
* Arquivo: Passagem.por
* Data: 02/04/2026
* Autor: Marcos Vinicius Mendonça Gomes, Henzo Souza
* Descrição:  Ler a idade do passageiro. Determinar o preço de uma passagem de 
acordo com a idade do passageiro: até 2 anos (gratuita), de 3 a 12 anos 
(meia tarifa) e acima de 12 anos (tarifa completa). Exibir o tipo de tarifa 
que deve ser aplicada. 
*/
programa
{
	
	funcao inicio()
	{
		inteiro idade
			escreva("Insira a idade: ")
			leia(idade)
			limpa()

		se (idade <= 2){
			escreva("Passagem gratuita")
		}
		senao se (idade >= 3 e idade <= 12){
			escreva("Meia Tarifa")
		}
		senao{
			escreva("Tarifa Completa")
		}
			

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 421; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */