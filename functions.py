import psycopg2
from config import get_db_config

def conectar_banco():
    config = get_db_config()
    conn = psycopg2.connect(**config)
    cursor = conn.cursor()
    return conn, cursor

def inserir_Colonia(Nome, Habitantes, Localizacao, Corpoceleste):
    try:
        conn, cursor = conectar_banco()

        query = "INSERT INTO colonia(nome, habitantes, localização, corpoCeleste) VALUES (%s, %s, %s, %s)"
        values = (Nome, Habitantes, Localizacao, Corpoceleste)
        cursor.execute(query, values)
        conn.commit()
        print("Colônia inserida com sucesso no banco de dados.")

    except Exception as e:
        print("Erro ao inserir colônia:", e)

    finally:
        cursor.close()
        conn.close()

def inserir_corpo_celeste(nome, tipo, gravidade, numColonia):
    try:
        conn, cursor = conectar_banco()

        query = "INSERT INTO corpoCeleste(nome, tipo, gravidade, numColonias) VALUES (%s, %s, %s, %s)"
        values = (nome, tipo, gravidade, numColonia)
        cursor.execute(query, values)
        conn.commit()
        print("Colônia inserida com sucesso no banco de dados.")

    except Exception as e:
        print("Erro ao inserir corpo celeste:", e)

    finally:
        cursor.close()
        conn.close()

def consultar_pacotes():
    try:
        conn, cursor = conectar_banco()

        cursor.execute("SELECT * FROM Pacote")
        results = cursor.fetchall()
        for row in results:
            print(row)

    except Exception as e:
        print("Erro ao consultar os pacotes disponíveis:", e)
        print("Tipo de exceção:", type(e).__name__)

    finally:
        cursor.close()
        conn.close()

