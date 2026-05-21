# *Exercicio 1*

```
/* 
	Nome: Marcos Gomes e Henzo Souza
	enunciado: Ler um número inteiro. Verificar e exibir se o número é primo.
	data: 30/04/2026
*/
#include <iostream>
using namespace std;

bool Impar(int numero) {
    return numero % 2 != 0;
}	

int main() {
    int numero;

    cout << "Digite um numero: ";
    cin >> numero;

    if (Impar(numero)) {
        cout << "O numero e impar." << endl;
    } else {
        cout << "O numero e par." << endl;
    }

    return 0;
}
```
