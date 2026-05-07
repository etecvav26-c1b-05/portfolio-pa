# **Exercicio 1-incompleto-**
```
/* 
	Nome: Marcos Gomes e Henzo Souza
	enunciado: Ler um número inteiro. Verificar e exibir se o número é primo.
	data: 30/04/2026
*/
#include <iostream>
using namespace std;

int main() {
	int numero;
	
	
	cout << "Insira um numero: ";
	cin >> numero;
	
	if (numero <= 1) {
		cout << numero << " Nao e primo";
	}
	else if (numero == 2) {
		cout << numero << " E primo";
	}
	else if (numero % 2 == 0) {
		cout << numero << " Nao e primo";
	}	
	else {
		cout << numero << " E primo";
	}
}

```

# **Exercicio 2**
```
/* 
	Nome: Marcos Gomes e Henzo Souza
	enunciado: Ler um número inteiro, calcular e exibir separadamente as potências de 2^0 até 2^(esse número).
	data: 30/04/2026
*/
#include <iostream>
using namespace std;

int main() {
	int numerolimite;
	
	cout << "Digite um Numero: ";
	cin >> numerolimite;
	
	int contador = 0;
	int potencia = 1;
	
	while (contador <= numerolimite) {
		cout << "2^" << contador << "= " << potencia << "\n";
		
		potencia = potencia * 2;
		contador++;
	}
	
	return 0;
}
```


# **Exercicio 3**
```
/* 
	Nome: Marcos Gomes e Henzo Souza
	enunciado: Ler vários números até que seja digitado um número negativo. Calcular e exibir a soma desses números.
	data: 30/04/2026
*/
#include <iostream>
using namespace std;

int main() {
	int numero = 1;
	int soma = 0;
	
	 while (numero > 0) {
		cout << "insira um numero: ";
		cin >> numero;
		cout << endl;
		if (numero > 0) {
			soma = soma + numero;
		}
	}
	
	cout << "Soma: " << soma;
	
	
	return 0;
}
```

# **Exercicio 4**
```
/* 
    Nome: Marcos Gomes e Henzo Souza
    enunciado: Ler 10 números. Verificar e exibir o menor e maior número dessa sequência.
    data: 07/05/2026
*/

#include <iostream>
using namespace std;

int main() {

    int numero, contador = 1;

    cout << "Insira um numero: ";
    cin >> numero;

    int menor = numero;
    int maior = numero;

    while (contador < 10) {

        cout << "Insira um numero: ";
        cin >> numero;

        if (numero > maior) {
            maior = numero;
        }

        if (numero < menor) {
            menor = numero;
        }

        contador = contador + 1;
    }

    cout << "\nMenor numero: " << menor << endl;
    cout << "Maior numero: " << maior << endl;

    return 0;
}
```

# **Exercicio 5**
```
/* 
    Nome: Marcos Gomes e Henzo Souza
    enunciado: Ler um número para a parada final e outro número que representa um múltiplo. Exibir os múltiplos do número lido de 1 até o número final lido.
    data: 07/05/2026
*/

#include <iostream>
using namespace std;

int main() {
	int multiploF;
	int numero;
	
	cout << "Insira o numero: ";
	cin >> numero;
	
	cout << "Insira o multiplo: ";
	cin >> multiploF;
	
	for (int i = 0 ; i <= multiploF ; i++) {
		cout << numero * i << "\n";
	}
	

    return 0;
}
```


# **Exercicio 6**
```
/* 
    Nome: Marcos Gomes e Henzo Souza
    enunciado: Ler vários números até que a soma desses números seja maior que 100. Exibir a multiplicação dos números lidos.
    data: 07/05/2026
*/

#include <iostream>
using namespace std;

int main() {
	int numero;
	int multi = 1;
	int soma = 0;
	
	while ( soma < 100) {
		cout << "Insira um Numero: ";
		cin >> numero;
		
		soma = soma + numero;
		multi = numero * multi;
	}
	
	cout << "Soma: " << soma << "\n";
	cout << "Multiplicaçao: " << multi;
    return 0;
}
```

# **Exercicio 9**
```
/* 
	Nome: Marcos Gomes e Henzo Souza
	enunciado: Ler um número entre 50 e 100. Exibir a sequência de Fibonacci até esse número.
	data: 07/05/2026
*/
#include <iostream>
using namespace std;

int main() {
    int limite;
    int a = 0, b = 1, prox;

    // Entrada
    printf("Digite um numero entre 50 e 100: ");
    scanf("%d", &limite);

    // Validação
    if (limite < 50 || limite > 100) {
        printf("Numero invalido!\n");
        return 0;
    }

    // Exibição dos primeiros termos
    printf("Sequencia de Fibonacci:\n");
    printf("%d %d ", a, b);

    // Próximo termo
    prox = a + b;

    // Geração da sequência
    while (prox <= limite) {
        printf("%d ", prox);

        a = b;
        b = prox;
        prox = a + b;
    }

    return 0;
}
```
# **Exercicio 10**
```
/* 
	Nome: Marcos Gomes e Henzo Souza
	enunciado: Simule um jogo de adivinhação. O programa deve gerar um número aleatório e o jogador precisa acertar o número.
	Cada vez que o jogador informar o número, deve exibir se o palpite é muito alto, muito baixo ou correto. Quando for correto,
	exibir a quantidade de palpites.
	data: 07/05/2026
*/
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main() {
    int numeroSecreto, palpite;
    int tentativas = 0;

    // Inicializa números aleatórios
    srand(time(NULL));

    // Gera número entre 1 e 100
    numeroSecreto = rand() % 100 + 1;

    printf("=== JOGO DE ADIVINHACAO ===\n");
    printf("Tente descobrir o numero entre 1 e 100.\n");

    // Loop do jogo
    do {
        printf("\nDigite seu palpite: ");
        scanf("%d", &palpite);

        tentativas++;

        if (palpite > numeroSecreto) {
            printf("Muito alto!\n");
        }
        else if (palpite < numeroSecreto) {
            printf("Muito baixo!\n");
        }
        else {
            printf("Correto!\n");
        }

    } while (palpite != numeroSecreto);

    // Resultado final
    printf("Voce acertou em %d tentativas!\n", tentativas);

    return 0;
}
