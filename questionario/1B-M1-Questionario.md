<font size="15">Exercicio 1</font> - Marcos Gomes
  O que é um algoritmo?
  Um algoritmo é basicamente um passo a passo para resolver um problema, é como uma receita que você segue etapas organizadas pra chegar em um resultado

  Relação entre lógica de programação e algoritmos
  A lógica de programação é o jeito de pensar pra montar esse passo a passo. Ja o algoritmo é o resultado desse pensamento organizado. Ou seja, a lógica ajuda a criar o algoritmo

  Exemplo do cotidiano
  Fazer miojo:

  -ferver a água
  -colocar o macarrão
  -esperar alguns minutos
  -adicionar o tempero
  -mexer e servir


  *Exercicio 2* - Miguel Rossi
  Descreva um algoritmo em linguagem natural para resolver esse problema.
  Um algoritmo para resolver este problema consiste em:
  1- Ler os 3 números
  2- Comparar os 3 números
  3- Indentificar se o primeiro é maior que os outros, e se for. ele é o maior número
  4- Repetir o processo para os outros 2 números
  5- Mostrar o maior número

  Representação em pseudocódigo:
        leia n1, n2, n3
        
        se n1 > n2 e n1 > n3
          escreva n1
        senão se n2 > n3
          escreva n2
        senão
          escreva n3



  *Exercício 3* - Matheus
  O que é o Portugol Studio?
    O Portugol Studio é um programa usado pra aprender lógica de programação.
  Ele permite escrever algoritmos em português (tipo “leia”, “escreva”, “se”), o que facilita bastante pra quem está começando.

   ele serve pra:
Treinar lógica de programação
Entender como programas funcionam
Aprender antes de ir pra linguagens mais difíceis (tipo Java, Python, etc.)

Crie um pequeno programa que leia um número e mostre o número multiplicado por 2:

programa
{
    funcao inicio()
    {
        inteiro numero

		escreva("Qual o número que vai ser multiplicado?\n")
		
		leia(numero)
		
		escreva("O seu número, multiplicado por 2, é " +numero * 2)
    }
}
Print do código
https://github.com/user-attachments/assets/3b07ae7e-d9e4-46b2-89d5-796de2f64290
	

Minha experiência:
Usar o Portugol Studio é muito fácil.
Ele é fácil de entender porque usa palavras em português, então é muito mais tranquilo de entender os comandos

	*Exercicio 4 - Henzo
	O que é um algoritmo?
Um algoritmo é um conjunto de passos ou instruções que indicam como realizar uma tarefa ou resolver um problema, de forma organizada e lógica.
A lógica de programação é a forma de pensar e organizar esses passos para criar algoritmos que o computador possa entender e executar.
	Exemplo simples de algoritmo do cotidiano:
Fazer um sanduíche:

1-Pegue duas fatias de pão.
2-Coloque uma fatia de queijo.
3-Coloque uma fatia de presunto.
4-Junte as duas fatias de pão.
5-Sirva.
Exercício 2 — Pergunta de aplicação

Problema: Receber três números e mostrar o maior.

Algoritmo em linguagem natural:

Ler o primeiro número e guardar como A.
Ler o segundo número e guardar como B.
Ler o terceiro número e guardar como C.
Comparar A com B e C para saber qual é maior.
Mostrar o maior número encontrado.
programa
{
	
	funcao inicio()
	{
		var
  real A, B, C

		inicio
 	 leia(A)
 	 leia(B)
	  leia(C)

	 se ((A >= B) e (A >= C)) entao
		{	 
	    escreva("Maior: ", A)
		}
 	 senao se ((B >= A) e (B >= C)) entao
  		  {
 	     escreva("Maior: ", B)
  		  }
  	  senao
  	  {
  	    escreva("Maior: ", C)
  	  }
	}
}
Exercício 3 — Investigação
O que é o Portugol Studio?

O Portugol Studio é um programa usado para aprender lógica de programação.
Ele permite escrever algoritmos em uma linguagem simples (parecida com português), facilitando o aprendizado.

  Para que ele é utilizado?
Aprender programação do zero
Treinar lógica
Criar algoritmos simples
Preparar para linguagens como Java, Python, C, etc.
 Código criado (multiplicar por 2)
programa
{
    funcao inicio()
    {
        inteiro numero

        leia(numero)
        escreva("Resultado: ", numero * 2)
    }
}


Exercicio 4 - Reflexão
Por que essas ferramentas são importantes?

Ferramentas como IDEs, bibliotecas e frameworks são importantes porque facilitam e aceleram o desenvolvimento de software.

Quais problemas poderiam surgir se os programadores precisassem desenvolver todos os componentes do zero? Justifique sua resposta com exemplos.

Quais problemas poderiam surgir se os programadores precisassem desenvolver todos os componentes do zero? Justifique sua resposta com exemplos.
Se os programadores tivessem que desenvolver tudo do zero, o processo seria muito mais lento, pois teriam que criar até funções básicas, como login e interface. 
Além disso, aumentaria a chance de erros e falhas de segurança, já que essas partes não seriam previamente testadas. Também haveria retrabalho, pois estariam recriando coisas que já existem, diminuindo a produtividade.
Por isso, o desenvolvimento seria mais difícil, demorado e menos eficiente.
