# ODBC com Django (Python)

## O que é ODBC?

ODBC (Open Database Connectivity) é uma interface padrão que permite que aplicações acessem diversos sistemas de bancos de dados (como SQL Server, MySQL, PostgreSQL) de forma independente do fornecedor, por meio de drivers ODBC.

## Por que usar ODBC com Django?

Django normalmente usa drivers nativos para cada banco, mas o ODBC pode ser útil em casos como:

- Integração com bancos legados.
- Acesso a bancos com suporte apenas via ODBC (ex: MS Access, IBM DB2).
- Ambientes corporativos padronizados com ODBC.

## Requisitos

- Django instalado (`pip install django`)
- Driver ODBC para o banco desejado (ex: `ODBC Driver 17 for SQL Server`)
- `pyodbc`: biblioteca Python que permite conexão via ODBC

  ```bash
  pip install pyodbc
