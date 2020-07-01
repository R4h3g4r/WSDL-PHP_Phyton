dir_SRC=/export/weblogic/oracle10.3/wlsplatform/config/certificacion/applications/wcorpWebApp/
dir_DST=/export/weblogic/oracle10.3/wlsplatform/tablas/tablasGS
echo "================================1"
echo "
- JNDIConfig.parametros
- *.sig
- *.parametros.*
- *.codigos.*
- netimex
- *.xsl.*
- *.xml.*
" > tbl.excl
echo "================================2"
/usr/local/bin/rsync -avr --rsync-path=/usr/local/bin/rsync --exclude-from=tbl.excl $dir_SRC weblogic@161.131.232.241:$dir_DST
echo "================================3"
rm tbl.excl
echo "================================

Tablas actualizadas en interdomain

================================
"
