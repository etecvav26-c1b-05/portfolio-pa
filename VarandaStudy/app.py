import sqlite3
from datetime import date

import estudos
import materias
import relatorios
import tarefas
from database import iniciar_banco
from utils import (
    confirmar,
    escolher_opcao,
    formatar_data,
    pedir_data,
    pedir_inteiro,
    pedir_texto,
)


def mostrar_materias():
    lista = materias.listar_materias()
    if not lista:
        print("Nenhuma matéria cadastrada.")
        return lista
    print("\nMatérias:")
    for materia in lista:
        print(f"  {materia['id']}. {materia['nome']}")
    return lista


def selecionar_materia():
    lista = mostrar_materias()
    if not lista:
        print("Cadastre uma matéria antes de continuar.")
        return None
    ids = {materia["id"] for materia in lista}
    while True:
        escolhido = pedir_inteiro("Digite o número da matéria", minimo=1)
        if escolhido in ids:
            return escolhido
        print("Esse número não corresponde a uma matéria da lista.")


def menu_materias():
    while True:
        print("\n--- Matérias ---")
        print("1. Cadastrar matéria\n2. Listar matérias\n3. Renomear matéria\n4. Excluir matéria\n0. Voltar")
        opcao = input("Opção: ").strip()
        if opcao == "1":
            nome = pedir_texto("Nome da matéria")
            if materias.criar_materia(nome):
                print("Matéria cadastrada.")
            else:
                print("Já existe uma matéria com esse nome.")
        elif opcao == "2":
            mostrar_materias()
        elif opcao == "3":
            materia_id = selecionar_materia()
            if materia_id is not None:
                materia = materias.buscar_materia(materia_id)
                if materia:
                    nome = pedir_texto("Novo nome", padrao=materia["nome"])
                    print("Nome atualizado." if materias.renomear_materia(materia_id, nome) else "Não foi possível alterar o nome.")
                else:
                    print("ID de matéria não encontrado.")
        elif opcao == "4":
            mostrar_materias()
            materia_id = pedir_inteiro("ID da matéria que deseja excluir")
            if confirmar("Confirma a exclusão"):
                if materias.excluir_materia(materia_id):
                    print("Matéria excluída.")
                else:
                    print("Não foi possível excluir. Verifique o ID e se a matéria possui tarefas ou sessões ligadas a ela.")
        elif opcao == "0":
            return
        else:
            print("Opção inválida.")


def imprimir_tarefas(lista):
    if not lista:
        print("Nenhuma tarefa encontrada.")
        return
    hoje = date.today().isoformat()
    print("\nTarefas (ordenadas por prazo e prioridade):")
    for item in lista:
        situacao = "ATRASADA" if item["status"] != "Concluída" and item["prazo"] < hoje else item["status"]
        descricao = f" | {item['descricao']}" if item["descricao"] else ""
        print(
            f"{item['id']}. {item['titulo']} | {item['materia_nome']} | "
            f"prazo {formatar_data(item['prazo'])} | {item['prioridade']} | {situacao}{descricao}"
        )


def criar_tarefa_menu():
    materia_id = selecionar_materia()
    if materia_id is None:
        return
    titulo = pedir_texto("Título")
    descricao = pedir_texto("Descrição (opcional)", obrigatorio=False)
    prazo = pedir_data("Prazo")
    prioridade = escolher_opcao("Prioridade:", [(p, p) for p in tarefas.PRIORIDADES])
    tarefa_id = tarefas.criar_tarefa(titulo, descricao, materia_id, prazo, prioridade)
    print(f"Tarefa cadastrada com o número {tarefa_id}.")


def editar_tarefa_menu():
    imprimir_tarefas(tarefas.listar_tarefas())
    tarefa_id = pedir_inteiro("ID da tarefa que deseja editar")
    atual = tarefas.buscar_tarefa(tarefa_id)
    if not atual:
        print("Tarefa não encontrada.")
        return
    titulo = pedir_texto("Título", padrao=atual["titulo"])
    descricao = pedir_texto("Descrição", obrigatorio=False, padrao=atual["descricao"])
    prazo = pedir_data("Prazo", padrao=atual["prazo"])
    prioridade = escolher_opcao(
        "Prioridade:", [(p, p) for p in tarefas.PRIORIDADES],
        padrao=tarefas.PRIORIDADES.index(atual["prioridade"]) + 1,
    )
    trocar_materia = confirmar("Deseja trocar a matéria")
    materia_id = selecionar_materia() if trocar_materia else atual["materia_id"]
    if materia_id is not None and tarefas.atualizar_tarefa(
        tarefa_id, titulo, descricao, materia_id, prazo, prioridade
    ):
        print("Tarefa atualizada.")


def menu_tarefas():
    while True:
        print("\n--- Tarefas ---")
        print("1. Cadastrar tarefa\n2. Listar todas\n3. Filtrar por situação\n4. Filtrar por matéria\n5. Pesquisar\n6. Editar tarefa\n7. Alterar situação\n8. Excluir tarefa\n0. Voltar")
        opcao = input("Opção: ").strip()
        if opcao == "1":
            criar_tarefa_menu()
        elif opcao == "2":
            imprimir_tarefas(tarefas.listar_tarefas())
        elif opcao == "3":
            status = escolher_opcao("Situação:", [(s, s) for s in tarefas.STATUS])
            imprimir_tarefas(tarefas.listar_tarefas(status=status))
        elif opcao == "4":
            materia_id = selecionar_materia()
            if materia_id is not None:
                imprimir_tarefas(tarefas.listar_tarefas(materia_id=materia_id))
        elif opcao == "5":
            termo = pedir_texto("Palavra para pesquisar")
            imprimir_tarefas(tarefas.listar_tarefas(busca=termo))
        elif opcao == "6":
            editar_tarefa_menu()
        elif opcao == "7":
            imprimir_tarefas(tarefas.listar_tarefas())
            tarefa_id = pedir_inteiro("ID da tarefa")
            novo_status = escolher_opcao("Nova situação:", [(s, s) for s in tarefas.STATUS])
            print("Situação atualizada." if tarefas.atualizar_status(tarefa_id, novo_status) else "Tarefa não encontrada.")
        elif opcao == "8":
            imprimir_tarefas(tarefas.listar_tarefas())
            tarefa_id = pedir_inteiro("ID da tarefa que deseja excluir")
            if confirmar("Confirma a exclusão"):
                print("Tarefa excluída." if tarefas.excluir_tarefa(tarefa_id) else "Tarefa não encontrada.")
        elif opcao == "0":
            return
        else:
            print("Opção inválida.")


def menu_estudos():
    while True:
        print("\n--- Sessões de estudo ---")
        print("1. Registrar sessão\n2. Listar sessões\n3. Listar por matéria\n4. Editar sessão\n5. Excluir sessão\n0. Voltar")
        opcao = input("Opção: ").strip()
        if opcao == "1":
            materia_id = selecionar_materia()
            if materia_id is None:
                continue
            data = pedir_data("Data do estudo", padrao=date.today().isoformat())
            minutos = pedir_inteiro("Duração em minutos")
            observacao = pedir_texto("O que estudou (opcional)", obrigatorio=False)
            sessao_id = estudos.registrar_sessao(materia_id, data, minutos, observacao)
            print(f"Sessão registrada com o número {sessao_id}.")
        elif opcao in ("2", "3"):
            materia_id = selecionar_materia() if opcao == "3" else None
            if opcao == "2" or materia_id is not None:
                lista = estudos.listar_sessoes(materia_id)
                if not lista:
                    print("Nenhuma sessão encontrada.")
                for sessao in lista:
                    horas, minutos = divmod(sessao["duracao_minutos"], 60)
                    duracao = f"{horas}h {minutos}min" if horas else f"{minutos} min"
                    nota = f" | {sessao['observacao']}" if sessao["observacao"] else ""
                    print(f"{sessao['id']}. {sessao['materia_nome']} | {formatar_data(sessao['data'])} | {duracao}{nota}")
        elif opcao == "4":
            lista = estudos.listar_sessoes()
            if not lista:
                print("Nenhuma sessão para editar.")
                continue
            for sessao in lista:
                print(f"{sessao['id']}. {sessao['materia_nome']} | {formatar_data(sessao['data'])} | {sessao['duracao_minutos']} min")
            sessao_id = pedir_inteiro("ID da sessão que deseja editar")
            atual = estudos.buscar_sessao(sessao_id)
            if not atual:
                print("Sessão não encontrada.")
                continue
            data = pedir_data("Data", padrao=atual["data"])
            duracao = pedir_inteiro("Duração em minutos", padrao=atual["duracao_minutos"])
            observacao = pedir_texto("Observação", obrigatorio=False, padrao=atual["observacao"])
            trocar_materia = confirmar("Deseja trocar a matéria")
            materia_id = selecionar_materia() if trocar_materia else atual["materia_id"]
            if materia_id is not None and estudos.atualizar_sessao(
                sessao_id, materia_id, data, duracao, observacao
            ):
                print("Sessão atualizada.")
        elif opcao == "5":
            lista = estudos.listar_sessoes()
            if not lista:
                print("Nenhuma sessão para excluir.")
                continue
            for sessao in lista:
                print(f"{sessao['id']}. {sessao['materia_nome']} | {formatar_data(sessao['data'])} | {sessao['duracao_minutos']} min")
            sessao_id = pedir_inteiro("ID da sessão")
            if confirmar("Confirma a exclusão"):
                print("Sessão excluída." if estudos.excluir_sessao(sessao_id) else "Sessão não encontrada.")
        elif opcao == "0":
            return
        else:
            print("Opção inválida.")


def mostrar_painel():
    resumo = relatorios.obter_resumo()
    print("\n--- Painel de estudos ---")
    print(f"Tarefas cadastradas: {resumo['total']}")
    print(f"Pendentes: {resumo['pendentes']} | Em andamento: {resumo['andamento']} | Concluídas: {resumo['concluidas']}")
    print(f"Tarefas atrasadas: {resumo['atrasadas']}")
    if resumo["total"]:
        percentual = resumo["concluidas"] * 100 / resumo["total"]
        print(f"Percentual concluído: {percentual:.1f}%")
    horas, minutos = divmod(resumo["minutos_estudados"], 60)
    print(f"Tempo total estudado: {horas}h {minutos}min")
    print("Tempo por matéria:")
    if not resumo["por_materia"]:
        print("  Ainda não há matérias cadastradas.")
    for item in resumo["por_materia"]:
        h, m = divmod(item["minutos"], 60)
        print(f"  {item['nome']}: {h}h {m}min")


def main():
    iniciar_banco()
    print("VarandaStudy iniciado. Seus dados ficam salvos no banco SQLite.")
    while True:
        print("\n=== VarandaStudy ===")
        print("1. Matérias\n2. Tarefas\n3. Sessões de estudo\n4. Painel de resumo\n0. Sair")
        opcao = input("Opção: ").strip()
        try:
            if opcao == "1":
                menu_materias()
            elif opcao == "2":
                menu_tarefas()
            elif opcao == "3":
                menu_estudos()
            elif opcao == "4":
                mostrar_painel()
            elif opcao == "0":
                print("Dados salvos. Até mais!")
                break
            else:
                print("Opção inválida.")
        except sqlite3.Error as erro:
            print(f"O banco de dados informou um problema: {erro}")


if __name__ == "__main__":
    main()
