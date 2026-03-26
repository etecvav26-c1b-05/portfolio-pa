/*
* Instituição: EtecVAV - Vasco Antonio Vechiarutti
*
* Arquivo: triangulo.por
* Data: 26/03/2026
* Autor: Marcos Vinicius Mendonça Gomes, Henzo Souza
* Descrição: Ler três números, verificar se formam um triângulo e, se sim, exibir se é 
um triângulo equilátero, isósceles ou escaleno.
*/
programa
{
	
	funcao inicio()
	{
		real a
			escreva("Valor lado A: ")
			leia(a)
			limpa()

		real b
			escreva("Valor lado B: ")
			leia(b)
			limpa()

		real c
			escreva("Valor lado B: ")
			leia(c)
			limpa()

		inteiro a45

			se (a < b + c e c < a + b e b < a + c){ 
				se (b == a e b == c){
					escreva("triangulo equilatero")
      				
   				} senao se (a == b ou a == c ou b == c) {
      				escreva("Isosceles")
      				
 				  } senao {
     			 escreva("Escaleno")
 				  }
			}senao 
 			escreva("nao e trinagulo")
			
	 
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 302; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */