import configparser
import pymysql

def connect():
    result = False
    try:
        config = configparser.ConfigParser()
        config.read('config.ini')
        db = pymysql.connect(
            config['LOCAL']['DB_NEXUS_HOST'],
            config['LOCAL']['DB_NEXUS_USER'], 
            config['LOCAL']['DB_NEXUS_PASSWORD'], 
            config['LOCAL']['DB_NEXUS_DATABASE'],
            int(config['LOCAL']['DB_NEXUS_PORT'])
            )
        result = db 
    except pymysql.Error as identifier:
        print('[ERROR] ocurrio un error conectando la base de datos: {}'.format(identifier))
    return result

def disconnect(db):
    result = False
    try:
        if db is not False:
            db.close()                    
        result = True
    except pymysql.Error as identifier:
        print('[ERROR] ocurrio un error desconectando la base de datos: {}'.format(identifier))
    return result

def executeQuery(db, query):
    result = False
    try:
        if db is False:
            return result
        cursor = db.cursor()
        cursor.execute(query)
        result = cursor.fetchall()
        cursor.close()
    except pymysql.Error as identifier:
        print('[ERROR] ocurrio un error ejecutando la query: {}'.format(query))
    return result

def executeUpdate(db, query):
    result = False
    try:
        if not db:
            return result
        cursor = db.cursor()
        cursor.execute(query)
        db.commit()
        cursor.close()
        result = True
    except pymysql.Error as identifier:
        print('[ERROR] ocurrio un error ejecutando la query: {}'.format(query))
    return result