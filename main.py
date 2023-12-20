import psycopg2
from config import get_db_config
from datetime import datetime
import functions

db_config = get_db_config()
conn = psycopg2.connect(**db_config)
cursor = conn.cursor()

def inserir_Colonia():  
    Nome = input('Informe o nome da Colonia: ')
    Habitantes = int(input('Informe o numero de habitantes da colonia: '))
    Localizacao = input('Informe o Localizacao da Colonia: ')
    Corpoceleste = input('Informe o corpo Celeste do Colonia: ')

    functions.inserir_Colonia(Nome, Habitantes, Localizacao, Corpoceleste)
    conn.commit()

def inserir_corpo_celeste():  
    nome = input('Informe o nome do corpo celeste: ')
    tipo = input('Informe o tipo (PLANETA ou SATELITE): ')
    gravidade = float (input('Informe a gravidade do corpo celeste: '))
    numColonia = int (input('Informe o numero de colonias: '))

    functions.inserir_corpo_celeste(nome, tipo, gravidade, numColonia)
    conn.commit()

def inserir_turista():  
    passaporte = input('Informe seu passaporte: ')
    nome = input('Informe o Nome: ')
    celular = input('Informe o celular: ')
    telefone = input('Informe o telefone: ')
    cep = input('Informe o cep: ')
    numEndereco = int (input('Informe o numEndereco: '))
    pais = input('Informe o pais: ')
    dataNascimento = input('Informe o dataNascimento: ')

    functions.inserir_turista(passaporte, nome, celular, telefone, cep, numEndereco, pais, dataNascimento)
    conn.commit()

def avaliar_viagem():
    data_partida = input('informe a data de partida: ')
    pacote = input('Informe o pacote selecionado: ')
    turista = input('Informe o seu passaporte: ')
    nota = int (input('de uma nota de 0 a 10 pra viagem: '))
    comentario = input('insira o seu comentario sobre a viagem: ')
    dataHora = datetime.now()

    functions.inserir_avaliacao(data_partida, pacote, turista, nota, comentario, dataHora)


operacao = -1

while operacao != 0:
    print("\nOpções:")
    print("1 - Inserir turista")
    print("2 - Inserir colônia")
    print("3 - Inserir corpo celeste")
    print("4 - Consultar dívidas dos turistas espaciais")
    print("5 - Consultar experiências disponíveis")
    print("0 - Sair")

    # Adicionando linha horizontal
    print("-" * 40)

    operacao = int(input("Digite o código do comando (ou 0 para sair): "))

    if operacao == 1:
        inserir_turista()
    elif operacao == 2:
        inserir_Colonia()
    elif operacao == 3:
        inserir_corpo_celeste()
    elif operacao == 4:
        functions.consultar_dividas()
    elif operacao == 5:
        functions.consultar_experiencias_colonia()
    elif operacao == 0:
        print("Saindo do programa...")
    else:
        print("Comando inválido. Tente novamente.")

cursor.close()
conn.close()
