import sqlite3

from database import conectar


def listar_materias():
    with conectar() as conexao:
        return conexao.execute("SELECT id, nome FROM materias ORDER BY nome").fetchall()


def buscar_materia(materia_id):
    with conectar() as conexao:
        return conexao.execute(
            "SELECT id, nome FROM materias WHERE id = ?", (materia_id,)
        ).fetchone()


def criar_materia(nome):
    try:
        with conectar() as conexao:
            cursor = conexao.execute("INSERT INTO materias (nome) VALUES (?)", (nome,))
            return cursor.lastrowid
    except sqlite3.IntegrityError:
        return None


def renomear_materia(materia_id, novo_nome):
    try:
        with conectar() as conexao:
            cursor = conexao.execute(
                "UPDATE materias SET nome = ? WHERE id = ?", (novo_nome, materia_id)
            )
            return cursor.rowcount > 0
    except sqlite3.IntegrityError:
        return False


def excluir_materia(materia_id):
    """Não permite apagar matéria que ainda tenha tarefas ou sessões."""
    try:
        with conectar() as conexao:
            cursor = conexao.execute("DELETE FROM materias WHERE id = ?", (materia_id,))
            return cursor.rowcount > 0
    except sqlite3.IntegrityError:
        return False
