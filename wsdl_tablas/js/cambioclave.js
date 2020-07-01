function valida_clave(rut_val,clave) {
         // JPCA - SEnTRA. Se agregan validaciones al cambio de clave.
        // valida el largo de la clave
        if (clave.length < 8)
        {
           return false;
        }

      //clave no debe tener caracteres que no sean alfanumericos
        cant_no_alf  = 0;
        for (i=0; i < clave.length; i++)
        {
            val_pri =  clave.charCodeAt(i);
            if ((val_pri >= 33 && val_pri <= 47)  || (val_pri >= 58 && val_pri <= 64)  || (val_pri >= 91 && val_pri <= 96)  || (val_pri >= 123 && val_pri <= 126))
                  cant_no_alf = cant_no_alf + 1;
         }
         if (cant_no_alf > 0)
         {
              return false;
         }
         // hasta aca

        //clave debe ser distinta del rut
        if (clave == rut_val)
        {
           return false;
        }

        //clave no debe estar dentro del rut
        for (i=0;i<=rut_val.length; i++)
        {
            if (clave == rut_val.substring(i,clave.length+i))
            {
                return false;
            }
        }

        //clave debe tener espacios en blanco
        for (i=0; i < clave.length; i++)
        {
            Prim = clave.charAt(i);
            if (Prim == " ")
            {
                return false;
            }
        }

        //clave debe tener caracteres distintos
        cont=0;
        cuenta_car = 0;
        for (i=0; i < clave.length-1; i++)
        {
            Prim = clave.charAt(i);
            Segu = clave.charAt(i+1);
                  Terc = clave.charAt(i+2);

                   if (Prim == Segu && Segu == Terc)
                 {
                        return false;
                 }
        }
        for (i=0; i < clave.length; i++)
        {
                  Prim = clave.charAt(i);
            if (Prim >= "a" && Prim <= "z") cuenta_car = cuenta_car +1;
                  if (Prim >= "A" && Prim <= "Z") cuenta_car = cuenta_car +1;
        }

        if (cuenta_car < 2) //contenido debe tener al menos 2 letras (a-z)
        {
           return false;
        }
        //clave no debe ser de caracteres consecutivos
        var val_dif=0;
        cant_car_cons = 0;
        cant_num_cons = 0;

        for (i=0; i < clave.length-2; i++) // se compara y guarda diferencia entre valores
        {
            val_pri =  clave.charCodeAt(i);
            val_seg =  clave.charCodeAt(i+1);
            val_ter =  clave.charCodeAt(i+2);

            //LETRAS NO DEBEN SER CONSECUTIVAS
            if ( ((val_pri >= 65 && val_pri <= 90) && (val_seg >= 65 && val_seg <= 90)) || ((val_pri >= 97 && val_pri <= 122) && (val_seg >= 97 && val_seg <= 122)))
            {
                // COMPARO PRIMERO CON SEGUNDO
                val_dif = val_pri - val_seg;
                if (val_dif == 1 || val_dif == -1) cant_car_cons = cant_car_cons + 1;

                // COMPARO SEGUNDO CON TERCERO
                val_dif = val_seg - val_ter;
                if (val_dif == 1 || val_dif == -1) cant_car_cons = cant_car_cons + 1;
            }

            if (cant_car_cons >= 2)
            {
                return false;
            }


            //NUMEROS NO DEBEN SER CONSECUTIVAS
            if ((val_pri>=48 && val_pri <=57) && (val_seg>=48 && val_seg<=57))
            {
                // COMPARO PRIMERO CON SEGUNDO
                val_dif = val_pri - val_seg;
                if (val_dif == 1 || val_dif == -1) cant_num_cons = cant_num_cons + 1;

                // COMPARO SEGUNDO CON TERCERO
                val_dif = val_seg - val_ter;
                if (val_dif == 1 || val_dif == -1) cant_num_cons = cant_num_cons + 1;
            }

            if (cant_num_cons >= 2)
            {
               return false;
            }

            cant_car_cons = 0;
            cant_num_cons = 0;
        }

        // JPCA - SEnTRA.   FIN
       return true;
      }
