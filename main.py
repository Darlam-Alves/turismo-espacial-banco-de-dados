import psycopg2
from config import get_db_config
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

print("Digite o código do comando:\n")
print("1 - Inserir turista")
print("2 - Inserir colônia")
print("3 - Inserir corpo celeste")
print("4 - Consultar dividas dos turistas espaciais")
print("5 - Consultar experiencias disponiveis ")
print("0 - Sair")

operacao = int(input())

while operacao != 0:
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
    else:
        print("Comando inválido. Tente novamente.")

    print("Digite o código do comando (ou 0 para sair):")
    operacao = int(input())

cursor.close()
conn.close()
