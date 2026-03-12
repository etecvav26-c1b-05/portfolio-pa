
/*
* Instituição: EtecVAV - Vasco Antonio Vechiarutti
*
* Arquivo: AreaTrapezio.por
* Data: 05/03/2026
* Autor: Marcos Vinicius Mendonça Gomes, Henzo Souza
* Descrição: Calcula a area de um trapezio
* Ler a base menor, a base maior e a altura. Calcular e mostrar a área de
*um trapézio: (base menor + base maior) * altura / 2.
*/
programa
{
	funcao inicio()
	{
		real BaseMenor
			escreva("Medida Da Base Menor? ")
			leia(BaseMenor)
			limpa()
		real BaseMaior
			escreva("Medida Da Base Maior? ")
			leia(BaseMaior)
			limpa()
		real altura
			escreva("Qual a Medida da Altura? ")
			leia(altura)
			limpa()
				escreva("Area Do Trapezio: "+(BaseMenor+BaseMaior)*altura / 2)
			
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 54; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */