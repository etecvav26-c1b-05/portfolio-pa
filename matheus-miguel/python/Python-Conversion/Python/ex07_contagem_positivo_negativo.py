# Autores: Miguel Rossi, Matheus Felipe e Samuel Kimura.
# Data 13/08/2026
# Descrição: Lê 10 números e conta quantos são positivos, negativos e zeros.


contador = 1
positivos = 0
negativos = 0
zeros = 0

while contador <= 10:
    numero = int(input("Digite o " + str(contador) + "o numero: "))

    if numero > 0:
        positivos = positivos + 1
    elif numero < 0:
        negativos = negativos + 1
    else:
        zeros = zeros + 1

    contador = contador + 1

print("Positivos:", positivos)
print("Negativos:", negativos)
print("Zeros:", zeros)
