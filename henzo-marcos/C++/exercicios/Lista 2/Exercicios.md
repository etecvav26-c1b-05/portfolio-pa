# *Exercicio 1*

```
/* 
	Nome: Marcos Gomes e Henzo Souza
	enunciado:  Ler a base e o expoente. Calcular a potência usando repetição.
	data: 21/05/2026
*/
#include <iostream>
using namespace std;

bool ehImpar(int numero) {
    return numero % 2 != 0;
}

int main() {
    int numero, soma = 0;

    cout << "Digite um numero: ";
    cin >> numero;

    for (int i = 1; i <= numero; i++) {
        if (ehImpar(i)) {
            soma = soma + i;
        }
    }

    cout << "Soma dos impares: " << soma;

    return 0;
}
```


# *Exercicio 2*
```
/* 
	Nome: Marcos Gomes e Henzo Souza
	enunciado:  Ler a base e o expoente. Calcular a potência usando repetição.
	data: 21/05/2026
*/
#include <iostream>
using namespace std;

int potencia(int base, int expoente) {
    int resultado = 1;

    for (int i = 0; i < expoente; i++) {
        resultado = resultado * base;
    }

    return resultado;
}

int main() {
    int base, expoente;

    cout << "Digite a base: ";
    cin >> base;

    cout << "Digite o expoente: ";
    cin >> expoente;

    cout << "Resultado: " << potencia(base, expoente);

    return 0;
}
```

# *Exercicio 3*
```
/* 
	Nome: Marcos Gomes e Henzo Souza
	enunciado:  Ler a base e o expoente. Calcular a potência usando repetição.
	data: 21/05/2026
*/
#include <iostream>
using namespace std;


// Funçoes que fazem o calculo
float pesoHomem(float altura) {
    return (72.7 * altura) - 58;
}

float pesoMulher(float altura) {
    return (62.1 * altura) - 44.7;
}


int main() {

    string sexo;
    float altura;


// Lê o sexo e a altura
    cout << "Insira a Altura: ";
    cin >> altura;

    cout << "Insira o Sexo (homem/mulher): ";
    cin >> sexo;

// Verifica se e homem Ou Mulher e Faz o Calculo
    if (sexo == "homem") {
        cout << "Peso Ideal: " << pesoHomem(altura);
    }
    else if (sexo == "mulher") {
        cout << "Peso Ideal: " << pesoMulher(altura);
    }
    else {
        cout << "Sexo invalido!";
    }

    return 0;
}
```

# *Exercicio 4*
```
/* 
	Nome: Marcos Gomes e Henzo Souza
	data: 21/05/2026
*/
#include <iostream>
using namespace std;

// Funçoes de Soma, subtraçao, multiplicaçao, divisao.
int adicao (int a, int b){
	return a + b ;
}


int subtracao (int a, int b){
	return a - b ;
}


int multiplicacao (int a , int b){
	return a * b ;
}


float divisao (int a , int b){
	return (float) a / b ;
}


int main() {
	
	float a , b ;
	
	//Lê os numeros
	cout << "Digite o Primeiro Numero: " ;
	cin >> a ;
	
	cout << "Digite o Primeiro Numero: " ;
	cin >> b ;
	
	//imprime os valores calculados na funçao
	cout << "Soma: " <<  adicao ( a, b) ;
	cout << "\nSubtracao: " << subtracao(a , b);
	cout << "\nMultiplicacao: " << multiplicacao(a , b);
	cout << "\nDivisao: " << divisao(a , b);
	

    return 0;
}
```
