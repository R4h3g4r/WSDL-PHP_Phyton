from flask import Flask, render_template
import mysql_db as connection
import os

ruta_raiz = "C:/Users/Sebastian/Desktop/Projects/BCI/WSDL-PHP_Phyton/wsdl_tablas" #url raiz del arbol que contiene los archivos
tabla = 'tablas_parametros' # tabla de la base de datos

app =  Flask(__name__)

@app.route('/')
def home():
    db = connection.connect()
    query = 'select curdate()'
    cursor = connection.executeQuery(db,query)
    date = cursor.fetchone()
    connection.disconnect(db)
    return "Hello! current date is {}.".format(date[0])

@app.route('/actualizar_tablas')
def actualizar_tablas():
    db = connection.connect()
    truncate = connection.executeUpdate(db,'TRUNCATE TABLE {}'.format(tabla))
    if truncate:
        for dirpath, dirnames, filenames in os.walk(ruta_raiz):
            # TODO: dirnames no se ocupa, verificar si se puede borrar
            if filenames:                
                for file_name in filenames:   
                    if file_name.find('.parametros') > 0 and file_name.find('.parametros') + len('.parametros') == len(file_name):
                        # print('file_name:', file_name)
                        # print('dir_name:',dirnames)
                        # print('dir_path_name:',dirpath)
                        query = 'INSERT INTO test.tablas_parametros (tabla_nombre, tabla_path) VALUES ("{}", "{}")'.format(file_name, dirpath.replace('\\','/'))
                        connection.executeUpdate(db,query)
    connection.disconnect(db)
    return "Proceso de actualizacion de tablas realizado exitosamente."

@app.route('/path_tabla/<nombre_tabla>')
def path_table(nombre_tabla):
    db = connection.connect()
    cursor = connection.executeQuery(db,'SELECT concat(tabla_path,"/",tabla_nombre) AS url FROM {} WHERE tabla_nombre = "{}" LIMIT 1'.format(tabla, nombre_tabla))
    data = cursor.fetchone()
    # print(cursor, data, 'SELECT concat(tabla_path,"/",tabla_nombre) AS url FROM {} WHERE tabla_nombre = "{}" LIMIT 1'.format(tabla, nombre_tabla))
    return data[0]

if __name__== '__main__':
    app.run(
        port = 8080,
        debug = True,
        host = '0.0.0.0' 
    )