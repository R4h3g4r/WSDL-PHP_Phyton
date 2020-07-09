import pyodbc

def connect():
    result = False
    try:
        db = pyodbc.connect(driver='{Devart ODBC Driver for ASE}', 
                        server='161.131.232.225', 
                        port='7850', 
                        database='tdm', 
                        uid='everistdm', 
                        pwd='chi08le!')
        result = db 
    except pyodbc.Error as identifier:
        print('[ERROR] ocurrio un error conectando la base de datos: {}'.format(identifier))
    return result

def disconnect(db):
    result = False
    try:
        if db is not False:
            db.close()                    
        result = True
    except pyodbc.Error as identifier:
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
    except pyodbc.Error as identifier:
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
    except pyodbc.Error as identifier:
        print('[ERROR] ocurrio un error ejecutando la query: {}'.format(query))
    return result