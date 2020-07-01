<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format"
    version="1.0">
    <xsl:template match="comprobante">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <!-- layout for the first page -->
            <fo:layout-master-set>
                <!-- layout for the first page -->
                <fo:simple-page-master master-name="first"
                    page-height="29.7cm"
                    page-width="21cm"
                    margin-top="1cm"
                    margin-bottom="2cm"
                    margin-left="2.5cm"
                    margin-right="2.5cm" border="thick solid red">
                    <fo:region-body margin-top="0cm"/>
                    <fo:region-before extent="0cm"/>
                    <fo:region-after extent="0cm"/>
                </fo:simple-page-master>                
                <fo:page-sequence-master master-name="basicPSM" >
                    <fo:repeatable-page-master-alternatives>
                        <fo:conditional-page-master-reference master-reference="first" page-position="first" />
                    </fo:repeatable-page-master-alternatives>
                </fo:page-sequence-master>
            </fo:layout-master-set>

            <fo:page-sequence master-reference="basicPSM">
                <fo:flow flow-name="xsl-region-body">
                    <fo:block padding-top="4pt" border-style="solid"  border-width="0.5pt solid" >
                        <fo:block padding-top="3pt" text-align="left" >
                            <fo:external-graphic  scaling="uniform">
                                <xsl:attribute name="src">
                                    <xsl:value-of select="urlLogo" />
                                </xsl:attribute>
                            </fo:external-graphic>
                        </fo:block>                        
                        <fo:block font="9pt Helvetica" text-align="center" font-weight="bold" padding-top="20pt" >Comprobante de Entrega Clave Secreta</fo:block>
                        <fo:block font="9pt Helvetica" margin-left="30pt" padding-top="20pt"  >
                            <fo:inline font-weight="bold">Nombre Cliente: </fo:inline><xsl:value-of select='nombre'  />
                        </fo:block>                        

                        <fo:block margin-left="30pt" font="8pt Helvetica" margin-right="30pt" padding-top="20pt">
                            Estimado Cliente:
                        </fo:block>                      
                        <fo:block margin-left="30pt" font="8pt Helvetica" margin-right="30pt" padding-top="2pt" text-align="justify">
                            Se le ha entregado un sobre sellado que contiene su clave secreta, 
                            ahora podrá acceder a nuestro servicio <xsl:value-of select='tipoCanal' /> 
                            a través de <xsl:value-of select='dirCanal' /> y disponer de los servicios 
                            seguros de la corporación BCI asociados a los productos que usted posee con nosotros.
                        </fo:block>
                        <fo:block margin-left="30pt" font="8pt Helvetica" margin-right="30pt" padding-top="5pt" text-align="justify">
                            Para comenzar a operar siga los siguientes pasos:
                        </fo:block>
                        <fo:block margin-left="30pt" font="8pt Helvetica" margin-right="30pt" padding-top="5pt" text-align="justify">
                            1.- <xsl:value-of select='tipoIngreso' /><xsl:value-of select='dirCanal' />
                        </fo:block>
                        <fo:block margin-left="30pt" font="8pt Helvetica" margin-right="30pt" padding-top="2pt" text-align="justify">
                            2.- Digite su RUT personal y la clave indicada por su sobre sellado.
                        </fo:block>
                        <fo:block margin-left="30pt" font="8pt Helvetica" margin-right="30pt" padding-top="2pt" text-align="justify">
                            3.- El Sistema le exigirá como primera operación cambiar la clave entregada. Si no lo hace no podrá consultar o efectuar transacciones hasta haber realizado este cambio.
                        </fo:block>
                        <fo:block margin-left="30pt" font="8pt Helvetica" margin-right="10pt" padding-top="20pt">
                            Para su protección y seguridad, cada vez que usted solicite una nueva clave en cualquiera de las sucursales del Banco 
                            le ofreceremos dos niveles de protección:
                        </fo:block>                      
                        <fo:block margin-left="30pt" font="8pt Helvetica" margin-right="30pt" padding-top="2pt" text-align="justify">
                            - La primera transacción que se le exigirá al ingresar a los servicios seguros de Bcinet será el cambio de clave. 
                        </fo:block>
                        <fo:block margin-left="30pt" font="8pt Helvetica" margin-right="30pt" padding-top="2pt" text-align="justify">
                            - Usted podrá efectuar transacciones financieras y consultas de sus productos,  
                            al día siguiente del cambio de clave. El Banco resguarda de esta manera el uso de esta clave durante este período.  
                        </fo:block>
                        <fo:block margin-left="30pt" font="8pt Helvetica" margin-right="30pt" padding-top="10pt" text-align="justify" padding-bottom="20pt">
                            Le recordamos además que al tercer intento fallido acumulado de ingreso de clave, se bloqueará automáticamente <fo:inline font-weight="bold">sólo este servicio</fo:inline>. Para desbloquearlo usted deberá contactarse con su Ejecutivo Comercial o al Fono Ayuda <xsl:value-of select='fonoCanal' />.
                        </fo:block>
                        
                        <fo:block font="7pt Helvetica" border-top="0.5pt solid black" margin-left="5pt" margin-right="5pt" padding-top="10pt">
                            <fo:block  font="7pt Helvetica">Responsable Operación : <xsl:value-of select='responsable'  /></fo:block>
                            <fo:block  font="7pt Helvetica">Oficina : <xsl:value-of select='codOficina'/> - <xsl:value-of select='oficina' /></fo:block>
                        </fo:block>
                    </fo:block>
                </fo:flow>
            </fo:page-sequence>

            <fo:page-sequence master-reference="basicPSM">
                <fo:flow flow-name="xsl-region-body">
                    <fo:block padding-top="3pt" text-align="left" >
                     </fo:block>
                    <fo:block padding-top="4pt" border-style="solid"  border-width="0.5pt solid" >
                        <fo:external-graphic  scaling="uniform">
                            <xsl:attribute name="src">
                                <xsl:value-of select="urlLogo" />
                            </xsl:attribute>
                        </fo:external-graphic>                        
                        <fo:block font="9pt Helvetica" text-align="center" padding-top="20pt" font-weight="bold" >Recepción Comprobante de Entrega Clave Secreta</fo:block>
                        <fo:block font="9pt Helvetica" margin-left="30pt" padding-top="20pt">
                            <fo:inline font-weight="bold">Cliente:</fo:inline> <xsl:value-of select='nombre'  />
                        </fo:block>                        
                        <fo:block font="9pt Helvetica" margin-left="30pt">
                            <fo:inline font-weight="bold">Rut:</fo:inline> <xsl:value-of select='rut'  />
                        </fo:block>
                        
                        <fo:block margin-left="30pt" font="8pt Helvetica" margin-right="30pt" padding-top="20pt" text-align="justify">
                            El Cliente que firma declara haber recibido un sobre sellado que contiene una clave, 
                            para ser usada en <xsl:value-of select='dirCanal' />, 
                            la cual tiene estado transitorio hasta el cambio de la misma.
                        </fo:block>
                        <fo:block padding-bottom="20pt">
                            <fo:table table-layout="fixed"  text-align="center" border-spacing="3pt" padding-top="40pt" margin-left="30pt" margin-right="30pt">
                                <fo:table-column column-width="120pt"/>
                                <fo:table-column column-width="65pt"/>
                                <fo:table-column column-width="120pt"/>
                                <fo:table-body>
                                    <fo:table-row>
                                        <fo:table-cell padding-top="6pt" border-top="0.5pt solid black" >
                                            <fo:block  font="9pt Helvetica" text-align="center" >V°B° Banco</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell> <fo:block></fo:block> </fo:table-cell>
                                        <fo:table-cell padding-top="6pt" border-top="0.5pt solid black">
                                            <fo:block font="9pt Helvetica" text-align="center">Firma Cliente</fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                 </fo:table-body>
                            </fo:table>
                        </fo:block>
                        <fo:block font="7pt Helvetica" border-top="0.5pt solid black" margin-left="5pt" margin-right="5pt" padding-top="10pt">
                            <fo:block  font="7pt Helvetica">Responsable Operación : <xsl:value-of select='responsable'  /></fo:block>
                            <fo:block  font="7pt Helvetica">Oficina : <xsl:value-of select='codOficina'/> - <xsl:value-of select='oficina' /></fo:block>
                        </fo:block>
                    </fo:block>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>