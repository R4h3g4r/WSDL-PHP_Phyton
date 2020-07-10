from flask import Flask, render_template
import mysql_db as connection
import os

ruta_raiz = "C:/Users/Sebastian/Desktop/Projects/BCI/WSDL-PHP_Phyton/arbol/dir1"
tabla = 'tablas_parametros'

app =  Flask(__name__)

@app.route('/')
def home():
    return "Hello"

@app.route('/actualizar_tablas')
def actualizar_tablas():
    db = connection.connect()
    truncate = connection.executeUpdate(db,'TRUNCATE TABLE {}'.format(tabla))
    if truncate:
        for dirpath, dirnames, filenames in os.walk(ruta_raiz):
            # TODO: dirnames no se ocupa, verificar si se puede borrar
            if filenames:
                query = 'INSERT INTO test.tablas_parametros (tabla_nombre, tabla_path) VALUES ("{}", "{}")'.format(filenames[0], dirpath.replace('\\','/'))
                connection.executeUpdate(db,query)
    connection.disconnect(db)
    return "Proceso de actualizacion de tablas realizado exitosamente."

@app.route('/path_tabla/<nombre_tabla>')
def path_table(nombre_tabla):
    db = connection.connect()
    data = connection.executeQuery(db,'SELECT concat(tabla_path,"/",tabla_nombre) AS url FROM {} WHERE tabla_nombre = "{}" LIMIT 1'.format(tabla, nombre_tabla))
    print(data[0][0], type(data), len(data[0]))
    #TODO: mejorar la respuesta y contener cuando no se encuentra coincidencia
    return data[0][0]

if __name__== '__main__':
    app.run(
        port = 8080,
        debug = True,
        host = '0.0.0.0' 
    )