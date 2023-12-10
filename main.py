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

print("Seja bem vindo ao nosso sistema\nDigite o código do comando:\n")
print("1- Inserir colonia no banco")
operacao = int(input())
while operacao != 0:
    if operacao == 1:
        inserir_Colonia_no_banco()

cursor.close()
conn.close()
