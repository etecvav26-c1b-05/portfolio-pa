from database import conectar


PRIORIDADES = ("Baixa", "Média", "Alta")
STATUS = ("Pendente", "Em andamento", "Concluída")


def criar_tarefa(titulo, descricao, materia_id, prazo, prioridade):
    with conectar() as conexao:
        cursor = conexao.execute(
            """INSERT INTO tarefas
               (titulo, descricao, materia_id, prazo, prioridade)
               VALUES (?, ?, ?, ?, ?)""",
            (titulo, descricao, materia_id, prazo, prioridade),
        )
        return cursor.lastrowid


def listar_tarefas(status=None, materia_id=None, busca=None):
    """Busca tarefas; quando há filtros, combina-os e ordena por prazo/prioridade."""
    consulta = """SELECT t.*, m.nome AS materia_nome
                  FROM tarefas t JOIN materias m ON m.id = t.materia_id"""
    condicoes = []
    parametros = []
    if status:
        condicoes.append("t.status = ?")
        parametros.append(status)
    if materia_id:
        condicoes.append("t.materia_id = ?")
        parametros.append(materia_id)
    if busca:
        condicoes.append("(t.titulo LIKE ? OR t.descricao LIKE ?)")
        termo = f"%{busca}%"
        parametros.extend((termo, termo))
    if condicoes:
        consulta += " WHERE " + " AND ".join(condicoes)
    consulta += """ ORDER BY t.prazo ASC,
                      CASE t.prioridade WHEN 'Alta' THEN 1
                                        WHEN 'Média' THEN 2 ELSE 3 END,
                      t.titulo COLLATE NOCASE"""
    with conectar() as conexao:
        return conexao.execute(consulta, parametros).fetchall()


def buscar_tarefa(tarefa_id):
    with conectar() as conexao:
        return conexao.execute(
            """SELECT t.*, m.nome AS materia_nome
               FROM tarefas t JOIN materias m ON m.id = t.materia_id
               WHERE t.id = ?""",
            (tarefa_id,),
        ).fetchone()


def atualizar_tarefa(tarefa_id, titulo, descricao, materia_id, prazo, prioridade):
    with conectar() as conexao:
        cursor = conexao.execute(
            """UPDATE tarefas
               SET titulo = ?, descricao = ?, materia_id = ?, prazo = ?, prioridade = ?
               WHERE id = ?""",
            (titulo, descricao, materia_id, prazo, prioridade, tarefa_id),
        )
        return cursor.rowcount > 0


def atualizar_status(tarefa_id, novo_status):
    if novo_status not in STATUS:
        return False
    with conectar() as conexao:
        cursor = conexao.execute(
            "UPDATE tarefas SET status = ? WHERE id = ?", (novo_status, tarefa_id)
        )
        return cursor.rowcount > 0


def excluir_tarefa(tarefa_id):
    with conectar() as conexao:
        cursor = conexao.execute("DELETE FROM tarefas WHERE id = ?", (tarefa_id,))
        return cursor.rowcount > 0
