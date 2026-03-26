/*
* Instituição: EtecVAV - Vasco Antonio Vechiarutti
*
* Arquivo: estacionamento.por
* Data: 26/03/2026
* Autor: Marcos Vinicius Mendonça Gomes, Henzo Souza
* Descrição: Ler o tempo de permanência de um veículo em um estacionamento.
Calcular e exibir o preço a ser pago, considerando o tempo de permanência
do veículo. As primeiras 2 horas custam R$ 2,00 cada, e cada hora
adicional custa R$1,00.
*/
programa
{
	
	funcao inicio()
	{
		real tempo, pagar
			escreva("Tempo de Permanencia: ")
			leia(tempo)
			limpa()
		se (tempo <= 2){
			pagar = tempo * 2
		} 
		
		senao {
			pagar = 4 + (tempo - 2) * 1.0
		}
		 escreva("Tempo de permanência: ", tempo, " horas")
   		 escreva("\nPreço a pagar: R$ ", pagar)
			
			
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 723; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */