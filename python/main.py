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
        print('Actualizando arbol de tablas en la bd')
        for dirpath, dirnames, filenames in os.walk(ruta_raiz):
            if filenames:                
                for file_name in filenames:   
                    if file_name.find('.parametros') > 0 and file_name.find('.parametros') + len('.parametros') == len(file_name):
                        query = 'INSERT INTO tablas_parametros (tabla_path) VALUES ("{}")'.format(dirpath.replace('\\','/') + '/' + file_name)
                        connection.executeUpdate(db,query)
    connection.disconnect(db)
    return "Proceso de actualizacion de tablas realizado exitosamente."

@app.route('/path_tabla/<nombre_archivo>')
def path_table(nombre_archivo):
    print('buscando archivo: {} ...'.format(nombre_archivo))
    if len(nombre_archivo) < 5:
        return "El nombre del archivo no es válido."
    db = connection.connect()
    cursor = connection.executeQuery(db,'SELECT tabla_path AS url FROM {} WHERE tabla_path like "%{}" LIMIT 1'.format(tabla, nombre_archivo))
    data = cursor.fetchone()
    if data is None:
        return 'Archivo de tabla no existe'
    else:
        return data[0]

if __name__== '__main__':
    app.run(
        port = 8080,
        debug = True,
        host = '0.0.0.0' 
    )