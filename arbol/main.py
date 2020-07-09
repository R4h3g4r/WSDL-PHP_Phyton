import sybase_connection as connection
import os

db = connection.connect()

# for dirpath, dirnames, filenames in os.walk("C:/Users\wlopeso\Desktop\ejemplo_organigrama"):
#     print("Ruta actual:", dirpath)
#     print("Carpetas:", ", ".join(dirnames))
#     print("Archivos:", ", ".join(filenames))

data = connection.executeQuery(db,'''select * 
from tdm.dbo.MAP_FICHA_HEADER mfh 
    join tdm.dbo.MAP_FICHA_CONTENT mfc on mfc.ID_FICHA_CABECERA = mfh.ID 
    join tdm.dbo.MAP_SERVICIOS ms on mfc.ID_SERVICIO = ms.ID
where mfh.ID = 2;''')

print(data)

connection.disconnect(db)


