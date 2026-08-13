# *Exercicio 1*

```cpp
/*
    Autor: Kael Elodie Whitmore
    Data: Junho/2026
    Descrição: Lê um número inteiro e informa se ele é positivo, negativo ou zero.
*/

#include <iostream>
using namespace std;

int main()
{
    int numero;

    cout << "Digite um numero inteiro: ";
    cin >> numero;

    if (numero > 0)
    {
        cout << "O numero e positivo." << endl;
    }
    else if (numero < 0)
    {
        cout << "O numero e negativo." << endl;
    }
    else
    {
        cout << "O numero e zero." << endl;
    }

    return 0;
}
```
# *Exercicio 2*

```cpp
/*
    Autor: Kael Elodie Whitmore
    Data: Junho/2026
    Descrição: Lê dois números inteiros e informa qual é o maior ou se são iguais.
*/

#include <iostream>
using namespace std;

int main()
{
    int numero1, numero2;

    cout << "Digite o primeiro numero: ";
    cin >> numero1;

    cout << "Digite o segundo numero: ";
    cin >> numero2;

    if (numero1 > numero2)
    {
        cout << "O maior numero e: " << numero1 << endl;
    }
    else if (numero2 > numero1)
    {
        cout << "O maior numero e: " << numero2 << endl;
    }
    else
    {
        cout << "Os numeros sao iguais." << endl;
    }

    return 0;
}
```
# *Exercicio 3*

```cpp
/*
    Autor: Kael Elodie Whitmore
    Data: Junho/2026
    Descrição: Lê um número inteiro positivo e exibe a contagem de 1 até esse número.
*/

#include <iostream>
using namespace std;

int main()
{
    int numero;
    int contador = 1;

    cout << "Digite um numero inteiro positivo: ";
    cin >> numero;

    if (numero > 0)
    {
        while (contador <= numero)
        {
            cout << contador << endl;
            contador++;
        }
    }
    else
    {
        cout << "Numero invalido. Digite um valor positivo." << endl;
    }

    return 0;
}
```
# *Exercicio 4*

```cpp
/*
    Autor: Kael Elodie Whitmore
    Data: Junho/2026
    Descrição: Calcula a soma dos números pares de 1 até um número informado.
*/

#include <iostream>
using namespace std;

int main()
{
    int numero;
    int contador = 1;
    int soma = 0;

    cout << "Digite um numero inteiro positivo: ";
    cin >> numero;

    if (numero > 0)
    {
        while (contador <= numero)
        {
            if (contador % 2 == 0)
            {
                soma = soma + contador;
            }

            contador++;
        }

        cout << "Soma dos pares: " << soma << endl;
    }
    else
    {
        cout << "Numero invalido." << endl;
    }

    return 0;
}
```
# *Exercicio 5*

```cpp
/*
    Autor: Kael Elodie Whitmore
    Data: Junho/2026
    Descrição: Lê um número de 1 a 10 e exibe sua tabuada, validando a entrada.
*/

#include <iostream>
using namespace std;

int main()
{
    int numero;
    int contador = 1;

    cout << "Digite um numero de 1 a 10: ";
    cin >> numero;

    while (numero < 1 || numero > 10)
    {
        cout << "Valor invalido. Digite novamente: ";
        cin >> numero;
    }

    while (contador <= 10)
    {
        cout << numero << " x " << contador << " = " << numero * contador << endl;
        contador++;
    }

    return 0;
}
```
# *Exercicio 6*

```cpp
/*
    Autor: Kael Elodie Whitmore
    Data: Junho/2026
    Descrição: Calcula a média de notas válidas entre 0 e 10 usando while.
*/

#include <iostream>
using namespace std;

int main()
{
    float nota;
    float soma = 0;
    int quantidade = 0;

    cout << "Digite uma nota entre 0 e 10: ";
    cin >> nota;

    while (nota >= 0 && nota <= 10)
    {
        soma = soma + nota;
        quantidade++;

        cout << "Digite outra nota entre 0 e 10: ";
        cin >> nota;
    }

    if (quantidade > 0)
    {
        cout << "Media das notas: " << soma / quantidade << endl;
    }
    else
    {
        cout << "Nenhuma nota valida foi digitada." << endl;
    }

    return 0;
}
```
# *Exercicio 7*

```cpp
/*
    Autor: Kael Elodie Whitmore
    Data: Junho/2026
    Descrição: Lê 10 números e conta quantos são positivos, negativos e zeros.
*/

#include <iostream>
using namespace std;

int main()
{
    int numero;
    int contador = 1;
    int positivos = 0;
    int negativos = 0;
    int zeros = 0;

    while (contador <= 10)
    {
        cout << "Digite o " << contador << "o numero: ";
        cin >> numero;

        if (numero > 0)
        {
            positivos++;
        }
        else if (numero < 0)
        {
            negativos++;
        }
        else
        {
            zeros++;
        }

        contador++;
    }

    cout << "Positivos: " << positivos << endl;
    cout << "Negativos: " << negativos << endl;
    cout << "Zeros: " << zeros << endl;

    return 0;
}
```
# *Exercicio 8*

```cpp
/*
    Autor: Kael Elodie Whitmore
    Data: Junho/2026
    Descrição: Verifica se um número inteiro positivo é primo.
*/

#include <iostream>
using namespace std;

int main()
{
    int numero;
    int divisor = 1;
    int quantidadeDivisores = 0;

    cout << "Digite um numero inteiro positivo: ";
    cin >> numero;

    if (numero > 0)
    {
        while (divisor <= numero)
        {
            if (numero % divisor == 0)
            {
                quantidadeDivisores++;
            }

            divisor++;
        }

        if (quantidadeDivisores == 2)
        {
            cout << "O numero e primo." << endl;
        }
        else
        {
            cout << "O numero nao e primo." << endl;
        }
    }
    else
    {
        cout << "Numero invalido." << endl;
    }

    return 0;
}
```
# *Exercicio 9*

```cpp
/*
    Autor: Kael Elodie Whitmore
    Data: Junho/2026
    Descrição: Calcula o fatorial de um número inteiro positivo.
*/

#include <iostream>
using namespace std;

int main()
{
    int numero;
    int contador = 1;
    int fatorial = 1;

    cout << "Digite um numero inteiro positivo: ";
    cin >> numero;

    if (numero >= 0)
    {
        while (contador <= numero)
        {
            fatorial = fatorial * contador;
            contador++;
        }

        cout << "Fatorial: " << fatorial << endl;
    }
    else
    {
        cout << "Numero invalido." << endl;
    }

    return 0;
}
```
# *Exercicio 10*

```cpp
/*
    Autor: Kael Elodie Whitmore
    Data: Junho/2026
    Descrição: Simula um sistema simples de senha com até 3 tentativas.
*/

#include <iostream>
using namespace std;

int main()
{
    int senha;
    int senhaCorreta = 1234;
    int tentativas = 1;
    int limiteTentativas = 3;

    cout << "Digite a senha: ";
    cin >> senha;

    while (senha != senhaCorreta && tentativas < limiteTentativas)
    {
        cout << "Senha incorreta. Tente novamente: ";
        cin >> senha;

        tentativas++;
    }

    if (senha == senhaCorreta)
    {
        cout << "Acesso liberado." << endl;
    }
    else
    {
        cout << "Acesso bloqueado." << endl;
    }

    return 0;
}
```




