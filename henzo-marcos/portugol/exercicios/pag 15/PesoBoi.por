/*
* Instituição: EtecVAV - Vasco Antonio Vechiarutti
*
* Arquivo: PesoBoi.por
* Data: 05/03/2026
* Autor: Marcos Vinicius Mendonça Gomes, Henzo Souza Pereira
* Descrição: calcula o novo peso do boi apartir do porcentual
*  Ler o peso de um boi e o percentual de engorda. Calcular e exibir o novo
*peso do boi.
*/
programa
{
	funcao inicio()
	{
		real Peso
			escreva("Peso Do Boi: ")
			leia(Peso)
			limpa()
		
		real Porcentual
			escreva("Porcentual: ")
			leia(Porcentual)
			limpa()

		real NovoPeso
			NovoPeso= Peso + (Peso*Porcentual)/100
			escreva("Novo Peso: "+ NovoPeso)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 531; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */