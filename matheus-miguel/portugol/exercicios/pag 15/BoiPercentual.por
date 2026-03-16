/*
* Instituição: ETECVAV
* Data: 12/03/2026
* Autores: Miguel e Matheus
* Descricao: Calcula o percentual e novo peso do boi
*/
 
programa
{
	funcao inicio()
	{
		real peso
		
			escreva("Qual o peso do boi: ")
			
			leia (peso)
			
			limpa()
		
		real porcentual
		
			escreva("Qual o percentual de gordura?: ")
			
			leia(porcentual)
			
			limpa()

		real novopeso
		
			novopeso= peso - (peso*porcentual)/100
			
			escreva("Novo Peso: "+ novopeso)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 125; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */