#!/usr/bin/python

import psycopg2
from termcolor import colored
from config import get_db_config  

def create_tables():
    conn = None
    try:
        params = get_db_config()

        # connect to the PostgreSQL server
        conn = psycopg2.connect(**params)
        cur = conn.cursor()

        print(colored("ATENÇÃO: Todas as tabelas serão apagadas e recriadas.", "red"))
        input("Pressione ENTER para confirmar...")

        # drop All tables
        cur.execute("SELECT table_name FROM information_schema.tables WHERE table_schema = 'public'")
        tables = cur.fetchall()
        for table in tables:
            cur.execute(f"DROP TABLE {table[0]} CASCADE")
        print(colored("TODAS AS TABELAS FORAM APAGADAS.", 'green'))

        # create tables from esquema.sql
        cur.execute(open("./sql/esquema.sql", "r").read())

        # Execute the query to count all tables
        cur.execute("SELECT count(*) FROM information_schema.tables WHERE table_schema = 'public'")

        # Fetch the result
        count = cur.fetchone()[0]

        print(colored(f"{count} TABELAS CRIADAS:", 'green'))

        # Execute the query to list all tables names
        cur.execute("SELECT table_name FROM information_schema.tables WHERE table_schema = 'public'")
        names = cur.fetchall()

        table_names = ', '.join(name[0] for name in names)
        print(table_names)

        # close communication with the PostgreSQL database server
        cur.close()

        # commit the changes
        conn.commit()
    except (Exception, psycopg2.DatabaseError) as error:
        print(error)

    finally:
        if conn is not None:
          conn.close()

if __name__ == '__main__':
    create_tables()