#openssl s_client -connect idp.example.be:8443 -CAfile MY-CA-CERT.crt -cert MYCERT.crt -key MYKEY.key 
/usr/local/ssl/bin/openssl s_client -connect wswebpay:8443 -CAfile Transbank_CA_PublicKEY.pem -cert bci2009firm.pem -certform PEM -key private_KEY_emisor.pem -keyform PEM
