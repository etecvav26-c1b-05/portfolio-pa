Lista de Exercícios — C++

/*
    Nome: Marcos Gomes e Henzo Souza
    Lista: C++ para Conversão em Python
    Data: Junho/2026
*/

Exercício 1 — Número positivo, negativo ou zero

/*
    Nome: Marcos Gomes e Henzo Souza
    Data: Junho/2026
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

Exercício 2 — Maior entre dois números

/*
    Nome: Marcos Gomes e Henzo Souza
    Data: Junho/2026
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

Exercício 3 — Contagem de 1 até N

/*
    Nome: Marcos Gomes e Henzo Souza
    Data: Junho/2026
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

Exercício 4 — Soma dos números pares

/*
    Nome: Marcos Gomes e Henzo Souza
    Data: Junho/2026
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

Exercício 5 — Tabuada com validação

/*
    Nome: Marcos Gomes e Henzo Souza
    Data: Junho/2026
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

Exercício 6 — Média de notas

/*
    Nome: Marcos Gomes e Henzo Souza
    Data: Junho/2026
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

Exercício 7 — Contador de positivos, negativos e zeros

/*
    Nome: Marcos Gomes e Henzo Souza
    Data: Junho/2026
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

Exercício 8 — Número primo

/*
    Nome: Marcos Gomes e Henzo Souza
    Data: Junho/2026
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

Exercício 9 — Fatorial

/*
    Nome: Marcos Gomes e Henzo Souza
    Data: Junho/2026
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

Exercício 10 — Sistema simples de senha

/*
    Nome: Marcos Gomes e Henzo Souza
    Data: Junho/2026
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
