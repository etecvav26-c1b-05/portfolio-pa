from datetime import datetime


def pedir_texto(mensagem, obrigatorio=True, padrao=None):
    while True:
        dica = f" [{padrao}]" if padrao is not None else ""
        valor = input(f"{mensagem}{dica}: ").strip()
        if not valor and padrao is not None:
            return padrao
        if valor or not obrigatorio:
            return valor
        print("Este campo não pode ficar vazio.")


def pedir_data(mensagem, padrao=None):
    """Recebe uma data em DD/MM/AAAA e devolve no padrão AAAA-MM-DD."""
    while True:
        dica = f" [{datetime.strptime(padrao, '%Y-%m-%d').strftime('%d/%m/%Y')}]" if padrao else ""
        valor = input(f"{mensagem} (DD/MM/AAAA){dica}: ").strip()
        if not valor and padrao:
            return padrao
        try:
            return datetime.strptime(valor, "%d/%m/%Y").date().isoformat()
        except ValueError:
            print("Data inválida. Use o formato dia/mês/ano, por exemplo 25/11/2026.")


def pedir_inteiro(mensagem, minimo=1, padrao=None):
    while True:
        dica = f" [{padrao}]" if padrao is not None else ""
        valor = input(f"{mensagem}{dica}: ").strip()
        if not valor and padrao is not None:
            return padrao
        try:
            numero = int(valor)
            if numero >= minimo:
                return numero
        except ValueError:
            pass
        print(f"Digite um número inteiro igual ou maior que {minimo}.")


def escolher_opcao(titulo, opcoes, padrao=None):
    """Mostra opções numeradas e devolve o valor associado à escolha."""
    while True:
        print(titulo)
        for numero, (rotulo, _) in enumerate(opcoes, start=1):
            print(f"{numero}. {rotulo}")
        dica = f" [{padrao}]" if padrao else ""
        escolha = input(f"Escolha uma opção{dica}: ").strip()
        if not escolha and padrao:
            escolha = str(padrao)
        if escolha.isdigit() and 1 <= int(escolha) <= len(opcoes):
            return opcoes[int(escolha) - 1][1]
        print("Opção inválida.")


def confirmar(mensagem):
    return input(f"{mensagem} (s/n): ").strip().lower() == "s"


def formatar_data(data_iso):
    return datetime.strptime(data_iso, "%Y-%m-%d").strftime("%d/%m/%Y")
