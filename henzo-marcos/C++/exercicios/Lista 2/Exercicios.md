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


# *Exercicio 13*
```
/* 
	Nome: Marcos Gomes e Henzo Souza
	data: 25/05/2026
*/

#include <iostream>
using namespace std;

int main() {
	char l[20] ;
	char le ;
	int contador = 0 ;
	
	for (int i = 1 ; i <= 20 ; i++){
		cout<< i << "Insira Um Caracter: " ;
		cin >> l[i] ;
	}
	
	cout << "Escolha Uma Letra Para Contagem: " ;
	cin >> le ;
	
	for (int i = 1 ; i <= 20 ; i++){
		if (l[i] == le ) {
			contador++ ;
		}

	}
	
	cout << le << " Foi Digitado " << contador << " Vezes." ;
	
	
    return 0;
}
```


# *Exercicio 14*
```
/* 
	Nome: Marcos Gomes e Henzo Souza
	data: 25/05/2026
*/

#include <iostream>
using namespace std;

int main() {

	string nomes[10], aux;

	// Leitura dos nomes
	for(int i = 0; i < 10; i++) {
		cout << "Digite um nome: ";
		cin >> nomes[i];
	}

	// Ordenacao em ordem crescente
	for(int i = 0; i < 10; i++) {

		for(int j = i + 1; j < 10; j++) {

			if(nomes[i] > nomes[j]) {

				aux = nomes[i];
				nomes[i] = nomes[j];
				nomes[j] = aux;

			}
		}
	}

	// Exibicao
	cout << "\nNomes em ordem crescente:\n";

	for(int i = 0; i < 10; i++) {
		cout << nomes[i] << endl;
	}

	return 0;
}
```


# *Exercicio 15*
```
/* 
	Nome: Marcos Gomes e Henzo Souza
	data: 27/05/2026
*/

#include <iostream>
using namespace std;

int main() {

	int v[20] ;
	
	for (int i =1 ; i <= 20 ; i++){
		cout << "Valor " << i << " : " ;
		cin >> v[i] ;
	}
	
	for (int i =1 ; i <= 20 ; i++){
		if(v[i] < 0) {
			cout << "Indice do Numero Negativo: " << i ;
			break;
		}
	}
	
	

	return 0;
}
```


# *Exercicio 16*
```
/* 
    Nome: Marcos Gomes e Henzo Souza
    Data: 28/05/2026
*/

#include <iostream>
using namespace std;

int main() {
    int v[15];

// Leitura dos valores
    for (int i = 1; i <= 15; i++) {
        cout << i << " Insira um valor: ";
        cin >> v[i];
    }

// Inicializa maior e menor
    int maior = 0;
    int menor = 0;

// Procura os índices
    for (int i = 1; i < 15; i++) {
        if (v[i] > v[maior]) {
            maior = i;
        }

        if (v[i] < v[menor]) {
            menor = i;
        }
    }

//resultados
    cout << "\nIndice do maior valor: " << maior << endl;
    cout << "Valor do maior: " << v[maior] << endl;

    cout << "\nIndice do menor valor: " << menor << endl;
    cout << "Valor do menor: " << v[menor] << endl;

    return 0;
}
```





# *Exercicio 17*
```
/* 
    Nome: Marcos Gomes e Henzo Souza
    Data: 28/05/2026
*/

#include <iostream>
using namespace std;

int main() {

    char letras[20];
    char vogais[5];

    int contador = 0;

    // Leitura das letras
    for(int i = 0; i < 20; i++) {
        cout << "Digite uma letra: ";
        cin >> letras[i];
    }

    // Verificando vogais
    for(int i = 0; i < 20; i++) {

        if(letras[i] == 'a' || letras[i] == 'e' || letras[i] == 'i' || letras[i] == 'o' || letras[i] == 'u') {
            // Guardar no vetor de vogais
            if(contador < 5) {
                vogais[contador] = letras[i];
            }
			
            contador++;
        }    
	}
	

    // Exibindo quantidade
    cout << "\nQuantidade de vogais: " << contador;

    // Exibindo vetor de vogais
    cout << "\nVogais encontradas: ";

    for(int i = 0; i < contador && i < 5; i++) {
        cout << vogais[i] << " ";
    }

    return 0;
}
```


# *Exercício 18*
```
#include <iostream>
using namespace std;

int main() {
    char letras[20];
    int vogais[5] = {0}; // [0]=a, [1]=e, [2]=i, [3]=o, [4]=u
    int contagem = 0;

    cout << "Digite 20 letras:" << endl;
    for (int i = 0; i < 20; i++) {
        cout << "Letra " << i + 1 << ": ";
        cin >> letras[i];
        letras[i] = tolower(letras[i]);

        if (letras[i] == 'a') vogais[0]++;
        else if (letras[i] == 'e') vogais[1]++;
        else if (letras[i] == 'i') vogais[2]++;
        else if (letras[i] == 'o') vogais[3]++;
        else if (letras[i] == 'u') vogais[4]++;
    }

    cout << "\n--- Contagem de Vogais ---" << endl;
    char nomes[5] = {'a', 'e', 'i', 'o', 'u'};
    for (int i = 0; i < 5; i++) {
        cout << "'" << nomes[i] << "': " << vogais[i] << " vez(es)" << endl;
    }

    return 0;
}
```


# *Exercício 19*
```
#include <iostream>
#include <algorithm>
using namespace std;

void exibirVetor(const char* nome, int v[], int tam) {
    cout << nome << ": [ ";
    for (int i = 0; i < tam; i++) cout << v[i] << " ";
    cout << "]" << endl;
}

int main() {
    int nums[10];
    int pares[10], impares[10], soma[10];
    int qPares = 0, qImpares = 0;

    cout << "Digite 10 numeros:" << endl;
    for (int i = 0; i < 10; i++) {
        cout << "Numero " << i + 1 << ": ";
        cin >> nums[i];
        if (nums[i] % 2 == 0)
            pares[qPares++] = nums[i];
        else
            impares[qImpares++] = nums[i];
    }

    sort(pares, pares + qPares);
    sort(impares, impares + qImpares);

    int qSoma = min(qPares, qImpares);
    for (int i = 0; i < qSoma; i++)
        soma[i] = pares[i] + impares[i];

    cout << "\n--- Vetores ---" << endl;
    exibirVetor("Pares   ", pares, qPares);
    exibirVetor("Impares ", impares, qImpares);
    exibirVetor("Soma    ", soma, qSoma);

    return 0;
}
```


# *Exercício 20*
```
#include <iostream>
#include <algorithm>
using namespace std;

int main() {
    int nums[10];

    cout << "Digite 10 numeros:" << endl;
    for (int i = 0; i < 10; i++) {
        cout << "Numero " << i + 1 << ": ";
        cin >> nums[i];
    }

    sort(nums, nums + 10);

    cout << "\nVetor ordenado: [ ";
    for (int i = 0; i < 10; i++) cout << nums[i] << " ";
    cout << "]" << endl;

    cout << "Terceiro menor valor: " << nums[2] << endl;

    return 0;
}
```
