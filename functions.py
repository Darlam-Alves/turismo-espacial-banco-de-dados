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

def inserir_turista(passaporte, nome, celular, telefone, cep, numEndereco, pais, dataNascimento):
    try:
        conn, cursor = conectar_banco()

        query = "INSERT INTO turistaespacial(passaporte, nome, celular, telFixo, cep, numEndereço, pais, dataNascimento) VALUES (%s, %s, %s, %s, %s, %s, %s, %s)"
        values = (passaporte, nome, celular, telefone, cep, numEndereco, pais, dataNascimento)
        cursor.execute(query, values)
        conn.commit()
        print("Turista espacial inserido com sucesso no banco de dados.")

    except Exception as e:
        print("Erro ao inserir turista espacial:", e)

    finally:
        cursor.close()
        conn.close()


def consultar_dividas():
    try:
        conn, cursor = conectar_banco()

        cursor.execute("SELECT t.nome AS turista, pag.valor AS valor_a_pagar, v.pacote AS pacote_referente FROM viagem v JOIN turistaEspacial t ON (v.turista = t.passaporte) JOIN pagamento pag ON (pag.numTransacao = v.pagamento) WHERE estado = 'Não Pago' ORDER BY t.nome;")
        results = cursor.fetchall()

        # Imprimindo rótulos de coluna
        print("Turista\t\tValor a Pagar\tPacote Referente")
        print("--------------------------------------------")

        # Imprimindo resultados
        for row in results:
            # Ajuste: usando índices numéricos
            print(f"{row[0]}\t{row[1]}\t\t{row[2]}")

    except Exception as e:
        print("Erro ao consultar os pacotes disponíveis:", e)
        print("Tipo de exceção:", type(e).__name__)

    finally:
        cursor.close()
        conn.close()


def consultar_experiencias_colonia():
    try:
        conn, cursor = conectar_banco()

        cursor.execute("SELECT c.nome AS colonia, e.nome AS experiencia, e.tipo AS tipo FROM experiencia e JOIN colonia c ON (e.colonia = c.nome) ORDER BY c.nome;")
        results = cursor.fetchall()

        # Imprimindo rótulos de coluna
        print(f"{'Colonia':<20}{'Experiencia':<40}{'Tipo'}")
        print("-" * 80)

        # Imprimindo resultados
        for row in results:
            colonia, experiencia, tipo = row  # Desempacotamento da tupla
            print(f"{colonia:<20}{experiencia:<40}{tipo}")

    except Exception as e:
        print("Erro ao consultar as experiências disponíveis:", e)
        print("Tipo de exceção:", type(e).__name__)

    finally:
        cursor.close()
        conn.close()
