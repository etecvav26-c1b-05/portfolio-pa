from database import conectar


def registrar_sessao(materia_id, data, duracao_minutos, observacao):
    with conectar() as conexao:
        cursor = conexao.execute(
            """INSERT INTO sessoes_estudo
               (materia_id, data, duracao_minutos, observacao)
               VALUES (?, ?, ?, ?)""",
            (materia_id, data, duracao_minutos, observacao),
        )
        return cursor.lastrowid


def listar_sessoes(materia_id=None):
    consulta = """SELECT s.*, m.nome AS materia_nome
                  FROM sessoes_estudo s
                  JOIN materias m ON m.id = s.materia_id"""
    parametros = ()
    if materia_id:
        consulta += " WHERE s.materia_id = ?"
        parametros = (materia_id,)
    consulta += " ORDER BY s.data DESC, s.id DESC"
    with conectar() as conexao:
        return conexao.execute(consulta, parametros).fetchall()


def buscar_sessao(sessao_id):
    with conectar() as conexao:
        return conexao.execute(
            """SELECT s.*, m.nome AS materia_nome
               FROM sessoes_estudo s
               JOIN materias m ON m.id = s.materia_id
               WHERE s.id = ?""",
            (sessao_id,),
        ).fetchone()


def atualizar_sessao(sessao_id, materia_id, data, duracao_minutos, observacao):
    with conectar() as conexao:
        cursor = conexao.execute(
            """UPDATE sessoes_estudo
               SET materia_id = ?, data = ?, duracao_minutos = ?, observacao = ?
               WHERE id = ?""",
            (materia_id, data, duracao_minutos, observacao, sessao_id),
        )
        return cursor.rowcount > 0


def excluir_sessao(sessao_id):
    with conectar() as conexao:
        cursor = conexao.execute(
            "DELETE FROM sessoes_estudo WHERE id = ?", (sessao_id,)
        )
        return cursor.rowcount > 0
