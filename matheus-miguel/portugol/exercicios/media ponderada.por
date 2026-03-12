/*
* Instituição: ETECVAV
* Data: 05/03/2026
* Autores: Miguel e Matheus
* Descricao: Calcula media ponderada de 4 notas
*/

programa
{
	funcao inicio()
	{
	real nota1
	
		escreva("Qual a nota?\n")
		
		leia(nota1)
		
		limpa()
	
	real nota2

		escreva("\nQual a nota 2?\n")
	    
	     leia(nota2)
		
		limpa()
	
	real nota3
		
		escreva("\nQual a nota 3?\n")
		
		leia(nota3)
		
		limpa()

	real nota4
		
		escreva("\nQual a nota 4?\n")
		
		leia(nota4)
		
		limpa()

		escreva("nota 1: "+ nota1*1)
		escreva("\nNota 2: "+ nota2*2)
		escreva("\nNota 3: "+ nota3*3)
		escreva("\nNota 4: "+ nota4 *4)
		escreva("\nMedia ponderada: "+ (nota1 * 1 + nota2 * 2 + nota3 * 3 + nota4 * 4)/10)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 116; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */