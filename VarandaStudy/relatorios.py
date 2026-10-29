from datetime import date

from database import conectar


def obter_resumo():
    hoje = date.today().isoformat()
    with conectar() as conexao:
        totais = conexao.execute(
            """SELECT COUNT(*) AS total,
                      SUM(CASE WHEN status = 'Pendente' THEN 1 ELSE 0 END) AS pendentes,
                      SUM(CASE WHEN status = 'Em andamento' THEN 1 ELSE 0 END) AS andamento,
                      SUM(CASE WHEN status = 'Concluída' THEN 1 ELSE 0 END) AS concluidas,
                      SUM(CASE WHEN status != 'Concluída' AND prazo < ? THEN 1 ELSE 0 END) AS atrasadas
               FROM tarefas""",
            (hoje,),
        ).fetchone()
        tempo_total = conexao.execute(
            "SELECT COALESCE(SUM(duracao_minutos), 0) AS minutos FROM sessoes_estudo"
        ).fetchone()["minutos"]
        por_materia = conexao.execute(
            """SELECT m.nome, COALESCE(SUM(s.duracao_minutos), 0) AS minutos
               FROM materias m LEFT JOIN sessoes_estudo s ON s.materia_id = m.id
               GROUP BY m.id, m.nome ORDER BY minutos DESC, m.nome COLLATE NOCASE"""
        ).fetchall()
    return {
        "total": totais["total"] or 0,
        "pendentes": totais["pendentes"] or 0,
        "andamento": totais["andamento"] or 0,
        "concluidas": totais["concluidas"] or 0,
        "atrasadas": totais["atrasadas"] or 0,
        "minutos_estudados": tempo_total,
        "por_materia": por_materia,
    }
