# *Exercicio 1*
```python
"""
Autor: Marcos Gomes e Henzo Souza
Data: Agosto/2026
"""
numero = int(input("Digite um numero inteiro: "))

if numero > 0:
    print("O numero e positivo.")
elif numero < 0:
    print("O numero e negativo.")
else:
    print("O numero e zero.")

```

# *Exercicio 2*
```python
"""
Autor: Marcos Gomes e Henzo Souza
Data: Agosto/2026
"""
numero1 = int (input("Digite um numero inteiro: "))
numero2 = int (input("Digite um numero inteiro: "))

if numero1 > numero2:
    print ("O maior numero e:", numero1)
elif numero2 > numero1:
    print ("O maior numero e:", numero2)
else: 
    print ("o numero sao iguais.")
```

# *Exercicio 3*
```python
"""
Autor: Marcos Gomes e Henzo Souza
Data: Agosto/2026
"""
contador = 1
numero = int(input("Escreva um numero positivo: "))

if numero > 0: 
    while contador <= numero:
        print(contador)
        contador += 1
        
    else:
        print("Numero invalido. Digite um valor positivo")
```

# *Exercicio 4*
```python
"""
Autor: Marcos Gomes e Henzo Souza
Data: Agosto/2026
"""
numero = int(input("Digite um numero inteiro positivo: "))
contador = 1
soma = 0

if numero > 0:
    while contador <= numero:
        if contador % 2 == 0:
            soma = soma + contador

        contador += 1

    print("Soma dos pares:", soma)
else:
    print("Numero invalido.") 
```

# *Exercicio 5*
```python
"""
Autor: Marcos Gomes e Henzo Souza
Data: Agosto/2026
"""
numero = int(input("Digite um numero de 1 a 10: "))
contador = 1

while numero < 1 or numero > 10:
    numero = int(input("Valor invalido. Digite o numero novamente: "))

while contador <= 10:
    print(numero, "x", contador, "=", numero * contador)
    contador += 1

```


