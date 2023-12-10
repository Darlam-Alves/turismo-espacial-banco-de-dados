import psycopg2
from config import get_db_config
import functions

db_config = get_db_config()

conn = psycopg2.connect(**db_config)
cursor = conn.cursor()

def inserir_Colonia_no_banco():  
    Nome = input('Informe o nome da Colonia: ')
    Habitantes = int(input('Informe o numero de habitantes da colonia: '))
    Localizacao = input('Informe o Localizacao da Colonia: ')
    Corpoceleste = input('Informe o corpo Celeste do Colonia: ')

    functions.inserir_Colonia(Nome, Habitantes, Localizacao, Corpoceleste)
    conn.commit()

print("Seja bem-vindo ao nosso sistema\nDigite o código do comando:\n")
print("1- Inserir colônia no banco")
print("2 - Consultar pacotes")
print("0 - Sair")
operacao = int(input())

while operacao != 0:
    if operacao == 1:
        inserir_Colonia_no_banco()
    elif operacao == 2:
        functions.consultar_pacotes()
    else:
        print("Comando inválido. Tente novamente.")

    print("Digite o código do comando (ou 0 para sair):")
    operacao = int(input())

cursor.close()
conn.close()
