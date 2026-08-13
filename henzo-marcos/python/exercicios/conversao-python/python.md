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
-----
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

# *Exercicio 6*
```python
"""
Autor: Marcos Gomes e Henzo Souza
Data: Agosto/2026
"""
soma = 0
quantidade = 0

nota = float(input("Digite uma nota entre 0 a 10: "))

while nota >= 0 and nota <=10:
    soma = soma + nota
    quantidade += 1

    nota = float(input("Digite uma nota entre 0 a 10: "))

if quantidade > 0:
    print("Media das notas;", soma / quantidade)
else:
    print("Nenhuma nota valida foio digitada.")
```

# *Exercicio 7*
```python
"""
Autor: Marcos Gomes e Henzo Souza
Data: Agosto/2026
"""
numero = 0
contador = 1
positivos = 0
negativos = 0
zeros = 0

while contador <= 10:
    numero = int(input("Digite o "  + str(contador) + "o numero "))

    if numero> 0:
        positivos += 1
    elif numero < 0:
        negativos += 1
    else:
        zeros+= 1

    contador += 1
    
print("Positivos:", positivos)
print("Negativos:", negativos)
print("zeros:", zeros)
```

# *Exercicio 8*
```python
"""
Autor: Marcos Gomes e Henzo Souza
Data: Agosto/2026
"""
numero = int(input("Digite um numero inteiro positivo: "))

divisor = 1
quantidade_divisores = 0

if numero > 0:
    while divisor <= numero:
        if numero% divisor == 0:
            quantidade_divisores+= 1

        divisor += 1

    if quantidade_divisores == 2:
        print("O numero e primo.")
    else:
        print("O numero nao e primo.")
else:
    print("Numero invalido.")
```

# *Exercicio 9*
```python
"""
Autor: Marcos Gomes e Henzo Souza
Data: Agosto/2026
"""
numero = int(input("Digite um numero inteiro positivo: "))

contador = 1
fatorial = 1

if numero>= 0:
    while contador <= numero:
        fatorial= fatorial* contador
        contador += 1

    print("fatorial:", fatorial)
else:
    print("Numero invalido.")
```

# *Exercicio 10*
```python
"""
Autor: Marcos Gomes e Henzo Souza
Data: Agosto/2026
"""
senhaCorreta = 1234
tentativas = 1
limiteTentativas = 3

senha = int(input("Digite a senha: "))

while senha != senhaCorreta and tentativas < limiteTentativas:
    senha = int(input("Senha incorreta. Tente novamente: "))
    tentativas += 1

if senha == senhaCorreta:
    print("Aceesso Liberado.")
else:
    print("Acesso Bloqueado.")

```



