
/*
* Instituição: EtecVAV - Vasco Antonio Vechiarutti
*
* Arquivo: PesoGramas.por
* Data: 05/03/2026
* Autor: Marcos vinicius mendonça gomes, Henzo souza
* Descrição: converte seu peso de KG para gramas
* Ler o peso de uma pessoa em quilos, calcular e mostrar o peso em
*gramas.
*/
programa
{
	
	funcao inicio()
	{
		real Peso
			escreva("Qual seu peso em Kg? ")
			leia(Peso)
			limpa()
			escreva("Seu Peso em gramas: " + Peso*1000)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 154; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */