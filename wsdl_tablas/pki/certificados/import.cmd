@if "%OS%" == "Windows_NT" setlocal

@if "%1" == "" goto noNAME

@keytool -keystore jssecacerts -import -alias ca-user-cert -file ca-user-cert.der -storepass changeit   -noprompt
@keytool -keystore jssecacerts -import -alias ca-ocsp-cert -file ca-ocsp-cert.der -storepass changeit   -noprompt

@keytool -keystore testkeys    -import -alias user-cert    -file user-cert.der    -storepass passphrase -noprompt
@keytool -keystore testkeys    -import -alias %1           -file ocsp-cert.der    -storepass passphrase -noprompt

@keytool -keystore jssecacerts -list                                              -storepass changeit   -noprompt
@keytool -keystore testkeys    -list                                              -storepass passphrase -noprompt

@rem keytool -keystore jssecacerts -delete -alias duke                                -storepass changeit   -noprompt
@rem keytool -keystore testkeys    -delete -alias duke                                -storepass passphrase -noprompt

@goto end

:noNAME

@echo Usage:  import name
@goto end

:end
