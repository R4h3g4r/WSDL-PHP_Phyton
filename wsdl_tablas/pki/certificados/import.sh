#!/bin/sh
if [ "$#" = "0" ] 
	then
        echo "Usage: import.sh name"
	exit 2
fi
rm -fr jssecacerts >> /dev/null
rm -fr testkeys >> /dev/null
cp jssecacerts.vacio jssecacerts >> /dev/null
cp testkeys.vacio testkeys >> /dev/null

keytool -keystore jssecacerts -import -alias ca-user-cert -file ca-user-cert.der -storepass changeit   -noprompt
keytool -keystore jssecacerts -import -alias ca-ocsp-cert -file ca-ocsp-cert.der -storepass changeit   -noprompt
keytool -keystore testkeys    -import -alias user-cert    -file user-cert.der    -storepass passphrase -noprompt
keytool -keystore testkeys    -import -alias $1           -file ocsp-cert.der    -storepass passphrase -noprompt
keytool -keystore jssecacerts -list  -storepass changeit   -noprompt
keytool -keystore testkeys    -list  -storepass passphrase -noprompt
