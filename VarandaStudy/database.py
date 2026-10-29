import sqlite3
from contextlib import contextmanager
from pathlib import Path


DATA_DIR = Path(__file__).parent / "dados"
DATABASE_PATH = DATA_DIR / "varandastudy.db"


@contextmanager
def conectar():
    """Abre uma conexão, confirma alterações e sempre fecha o banco."""
    DATA_DIR.mkdir(exist_ok=True)
    conexao = sqlite3.connect(DATABASE_PATH)
    conexao.row_factory = sqlite3.Row
    conexao.execute("PRAGMA foreign_keys = ON")
    try:
        yield conexao
        conexao.commit()
    except Exception:
        conexao.rollback()
        raise
    finally:
        conexao.close()


def iniciar_banco():
    """Cria as tabelas na primeira execução; não apaga dados existentes."""
    comandos = [
        """
        CREATE TABLE IF NOT EXISTS materias (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            nome TEXT NOT NULL UNIQUE
        )
        """,
        """
        CREATE TABLE IF NOT EXISTS tarefas (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            titulo TEXT NOT NULL,
            descricao TEXT NOT NULL DEFAULT '',
            materia_id INTEGER NOT NULL,
            prazo TEXT NOT NULL,
            prioridade TEXT NOT NULL CHECK (prioridade IN ('Baixa', 'Média', 'Alta')),
            status TEXT NOT NULL DEFAULT 'Pendente'
                CHECK (status IN ('Pendente', 'Em andamento', 'Concluída')),
            criada_em TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
            FOREIGN KEY (materia_id) REFERENCES materias(id) ON DELETE RESTRICT
        )
        """,
        """
        CREATE TABLE IF NOT EXISTS sessoes_estudo (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            materia_id INTEGER NOT NULL,
            data TEXT NOT NULL,
            duracao_minutos INTEGER NOT NULL CHECK (duracao_minutos > 0),
            observacao TEXT NOT NULL DEFAULT '',
            FOREIGN KEY (materia_id) REFERENCES materias(id) ON DELETE RESTRICT
        )
        """,
        "CREATE INDEX IF NOT EXISTS idx_tarefas_prazo ON tarefas(prazo)",
        "CREATE INDEX IF NOT EXISTS idx_tarefas_status ON tarefas(status)",
        "CREATE INDEX IF NOT EXISTS idx_sessoes_data ON sessoes_estudo(data)",
    ]
    with conectar() as conexao:
        for comando in comandos:
            conexao.execute(comando)
