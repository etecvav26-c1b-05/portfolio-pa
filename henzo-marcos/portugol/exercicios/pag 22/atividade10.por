/*
* Instituição: EtecVAV - Vasco Antonio Vechiarutti
*
* Arquivo: classificação.por
* Data: 02/04/2026
* Autor: Marcos Vinicius Mendonça Gomes, Henzo Souza
* Descrição: Ler a classificação indicativa de um filme. Identificar e exibir a categoria
desse filme, com base na classificação indicativa: até 10 anos (infantil),
de 11 a 14 anos (infantojuvenil), de 15 a 17 anos (juvenil) e acima de 17
anos (adulto).
*/
programa
{
	
	funcao inicio()
	{
		inteiro idade
			escreva("Insira a Idade: ")
			leia(idade)
			limpa()

		se ( idade <= 10){
			escreva("Classificação infantil")
		}
		senao se (idade >= 11 e idade <=14){
			escreva("Classificação infantojuvenil")
		}
		senao se (idade >= 15 e idade <= 17){
			escreva("Classificação juvenil")
		}
		senao{
			escreva("Classificação Adulto")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 708; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */