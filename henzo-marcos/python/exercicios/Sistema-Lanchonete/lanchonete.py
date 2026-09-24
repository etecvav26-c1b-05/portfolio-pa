import json
import os

arquivo = "lanchonete_dados.json"

produtos = []
pedidos = []


def carregar_dados():
    global produtos, pedidos

    if os.path.exists(arquivo):
        try:
            with open(arquivo, "r", encoding="utf-8") as arq:
                dados = json.load(arq)

            produtos = dados["produtos"]
            pedidos = dados["pedidos"]

        except:
            print("Erro ao carregar os dados.")
            produtos = []
            pedidos = []

    else:
        produtos = []
        pedidos = []
        salvar_dados()


def salvar_dados():
    dados = {
        "produtos": produtos,
        "pedidos": pedidos
    }

    with open(arquivo, "w", encoding="utf-8") as arq:
        json.dump(dados, arq, indent=4, ensure_ascii=False)


def procurar_produto(codigo):
    for produto in produtos:
        if produto["codigo"] == codigo:
            return produto

    return None


def cadastrar_produto():
    print("\n--- CADASTRAR PRODUTO ---")

    codigo = input("Digite o código: ")

    if procurar_produto(codigo) != None:
        print("Esse código já existe.")
        return

    nome = input("Digite o nome: ")

    preco = float(input("Digite o preço: "))
    estoque = int(input("Digite a quantidade em estoque: "))

    produto = {
        "codigo": codigo,
        "nome": nome,
        "preco": preco,
        "estoque": estoque
    }

    produtos.append(produto)

    salvar_dados()

    print("Produto cadastrado!")


def listar_produtos():
    print("\n--- PRODUTOS ---")

    if len(produtos) == 0:
        print("Nenhum produto cadastrado.")
        return

    for produto in produtos:
        print("Código:", produto["codigo"])
        print("Nome:", produto["nome"])
        print("Preço: R$", produto["preco"])
        print("Estoque:", produto["estoque"])
        print("------------------------")


def fazer_pedido():
    print("\n--- FAZER PEDIDO ---")

    if len(produtos) == 0:
        print("Não existem produtos.")
        return

    cliente = input("Nome do cliente: ")

    listar_produtos()

    codigo = input("Digite o código do produto: ")

    produto = procurar_produto(codigo)

    if produto == None:
        print("Produto não encontrado.")
        return

    quantidade = int(input("Digite a quantidade: "))

    if quantidade > produto["estoque"]:
        print("Não tem estoque suficiente.")
        return

    total = quantidade * produto["preco"]

    produto["estoque"] = produto["estoque"] - quantidade

    pedido = {
        "cliente": cliente,
        "produto": produto["nome"],
        "codigo": produto["codigo"],
        "quantidade": quantidade,
        "total": total
    }

    pedidos.append(pedido)

    salvar_dados()

    print("\nPedido realizado!")
    print("Cliente:", cliente)
    print("Produto:", produto["nome"])
    print("Quantidade:", quantidade)
    print("Total: R$", total)


def listar_pedidos():
    print("\n--- PEDIDOS ---")

    if len(pedidos) == 0:
        print("Nenhum pedido realizado.")
        return

    for pedido in pedidos:
        print("Cliente:", pedido["cliente"])
        print("Produto:", pedido["produto"])
        print("Código:", pedido["codigo"])
        print("Quantidade:", pedido["quantidade"])
        print("Total: R$", pedido["total"])
        print("------------------------")


def menu():
    print("\n===== LANCHONETE =====")
    print("1 - Cadastrar produto")
    print("2 - Listar produtos")
    print("3 - Fazer pedido")
    print("4 - Ver pedidos")
    print("5 - Sair")


carregar_dados()

while True:
    menu()

    opcao = input("Escolha uma opção: ")

    if opcao == "1":
        cadastrar_produto()

    elif opcao == "2":
        listar_produtos()

    elif opcao == "3":
        fazer_pedido()

    elif opcao == "4":
        listar_pedidos()

    elif opcao == "5":
        salvar_dados()
        print("Programa encerrado.")
        break

    else:
        print("Opção inválida.")

