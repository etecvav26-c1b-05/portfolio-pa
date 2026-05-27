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

# *Exercicio 5*
```
/* 
	Nome: Marcos Gomes e Henzo Souza
	data: 21/05/2026
*/
#include <iostream>
using namespace std;

//Funçao
bool ehPalindromo(string palavra) {
    int inicio = 0;
    int fim = palavra.length() - 1;

    while (inicio < fim) {
        if (palavra[inicio] != palavra[fim]) {
            return false;
        }
        inicio++;
        fim--;
    }

    return true;
}

int main() {

    string palavra;

    cout << "Digite uma palavra: ";
    cin >> palavra;

    if (ehPalindromo(palavra)) {
        cout << "Eh palindromo";
    } else {
        cout << "Nao eh palindromo";
    }

    return 0;
}
```

# *Exercicio 6*
```
/* 
	Nome: Marcos Gomes e Henzo Souza
	data: 25/05/2026
*/
#include <iostream>
using namespace std;

// Função que retorna o dia da semana correspondente
string diaSemana(int numero) {
    switch(numero) {
        case 1: return "Domingo";
        case 2: return "Segunda-feira";
        case 3: return "Terça-feira";
        case 4: return "Quarta-feira";
        case 5: return "Quinta-feira";
        case 6: return "Sexta-feira";
        case 7: return "Sabado";
        default: return "Numero invalido";
    }
}

int main() {
    int numero;

    cout << "Digite um numero de 1 a 7: ";
    cin >> numero;

    cout << "Dia correspondente: " << diaSemana(numero) << endl;

    return 0;
}
```


# *Exercicio 7*
```
/* 
	Nome: Marcos Gomes e Henzo Souza
	data: 25/05/2026
*/

#include <iostream>
using namespace std;

// Função para analisar a ordem dos numeros
string ordem(int v[], int tamanho) {
    bool crescente = true;
    bool decrescente = true;

    for (int i = 0; i < tamanho - 1; i++) {
        if (v[i] < v[i + 1]) {
            decrescente = false;
        }
        if (v[i] > v[i + 1]) {
            crescente = false;
        }
    }

    if (crescente) {
        return "Em ordem crescente";
    } 
    else if (decrescente) {
        return "Em ordem decrescente";
    } 
    else {
        return "Nao ordenados";
    }
}

int main() {
    int numeros[5];

    cout << "Digite 5 numeros: ";
    
    for (int i = 0; i < 5; i++) {
        cin >> numeros[i];
    }

    cout << ordem(numeros, 5) << endl;

    return 0;
}
```


# *Exercicio 8*
```
/* 
	Nome: Marcos Gomes e Henzo Souza
	data: 25/05/2026
*/

#include <iostream>
using namespace std;

// Função para Calcular a Area
	
float calculoArea(int raio) {
	return 3.14 * (raio * raio);
}
	
	


int main() {
	int raio;
	float soma = 0 ;
	
	for(int i = 1; i <= 5; i++){
		cout << "Insira o Raio do Circulo " << i << " : ";
		cin >> raio ;
		
		soma = soma + calculoArea(raio) ;
	}
	
	cout << soma ;
	
	 
    return 0;
}
```


# *Exercicio 9*
```
/* 
	Nome: Marcos Gomes e Henzo Souza
	data: 25/05/2026
*/

#include <iostream>
using namespace std;

// Função que substitui vogais por '*'
string substituirVogais(string palavra) {
	
    for (int i = 0; i < palavra.length(); i++) {
        char c = palavra[i];

        if (c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u' || c == 'A' || c == 'E' || c == 'I' || c == 'O' || c == 'U') {
            palavra[i] = '*';
        }
    }
    return palavra;
}

int main() {
    string palavra;

    cout << "Digite uma palavra: ";
    cin >> palavra;

    cout << "Resultado: " << substituirVogais(palavra) << endl;

    return 0;
}
```

# *Exercicio 10*
```
/* 
	Nome: Marcos Gomes e Henzo Souza
	data: 25/05/2026
*/

#include <iostream>
using namespace std;

// Função que conta vogais
int vogaisC(string palavra) {
    int vogais = 0;

    for (int i = 0; i < palavra.length(); i++) {
        char c = palavra[i];

        if (c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u' ||
            c == 'A' || c == 'E' || c == 'I' || c == 'O' || c == 'U') {
            vogais++;
        }
    }
    return vogais;
}


// Função que conta vogais
int consoantesC(string palavra) {
    int consoantes = 0;

    for (int i = 0; i < palavra.length(); i++) {
        char c = palavra[i];

        if (c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u' ||
            c == 'A' || c == 'E' || c == 'I' || c == 'O' || c == 'U') {
        }
        else{
        	consoantes++;
        }
    }
    return consoantes;
}


int main() {
    string palavra;

    cout << "Digite uma palavra: ";
    getline(cin, palavra);

    cout << "Quantidade de vogais: " << vogaisC(palavra) << endl;
	cout << "Quantidade de Consoantes: " << consoantesC(palavra) << endl;
    return 0;
}
```


# *Exercicio 11*
```
/* 
	Nome: Marcos Gomes e Henzo Souza
	data: 25/05/2026
*/

#include <iostream>
using namespace std;

int main() {
    int v[10];

    // leitura do vetor
    for(int i = 0; i < 10; i++) {
        cout << "Digite o numero " << i + 1 << ": ";
        cin >> v[i];

        // substitui negativo por zero
        if(v[i] < 0) {
            v[i] = 0;
        }
    }

    cout << "\nVetor final:\n";

    // exibe o vetor
    for(int i = 0; i < 10; i++) {
        cout << v[i] << " ";
    }

    return 0;
}
```

# *Exercicio 12*
```
/* 
	Nome: Marcos Gomes e Henzo Souza
	data: 27/05/2026
*/

#include <iostream>
using namespace std;

int main() {
    int v[15];
    int par = 0, impar = 0;
	
// Leitura Dos Valroes
	for(int i= 1; i <= 15; i++ ) {
		cout << "Insira Um Numero: ";
		cin >> v[i] ;
	}
	
// Verifica Quais Sao pares e quais sao impares
	for(int i=1; i <= 15; i++) {
		if (v[i] % 2 == 0 ){
			par++ ;
		}
		else {
			impar++ ;
		}
	}
	
	
	cout << "Numero de Pares: " << par  << endl ;
	cout << "Numero de Impares: " << impar  << endl ;

    return 0;
}
```
