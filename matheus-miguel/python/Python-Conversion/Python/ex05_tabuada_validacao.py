# Autores: Miguel Rossi, Matheus Felipe e Samuel Kimura.
# Data 13/08/2026
# Descrição: Lê um número de 1 a 10 e exibe sua tabuada, validando a entrada.

numero = int(input("Digite um numero de 1 a 10: "))
contador = 1

while numero < 1 or numero > 10:
    numero = int(input("Valor invalido. Digite novamente: "))

while contador <= 10:
    print(numero, "x", contador, "=", numero * contador)
    contador += 1