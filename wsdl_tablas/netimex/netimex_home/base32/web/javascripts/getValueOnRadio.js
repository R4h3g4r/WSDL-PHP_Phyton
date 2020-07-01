function getValueOnRadio(field){
        for(var i=0; i < field.length;i++){
                if(field[i].checked){
                        return(field[i].value);
                }
        }
        return("");
}
