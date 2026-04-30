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
