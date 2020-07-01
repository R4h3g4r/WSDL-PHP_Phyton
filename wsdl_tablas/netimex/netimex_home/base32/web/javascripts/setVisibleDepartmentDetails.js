function setVisibleDepartmentDetails(box,visItem) {
      if(box == null)
            return;
      var id = 'div_ItemsT';
      var departmentTable;
      if(document.all){//explorer 5
            departmentTable = document.all[id];
      }else if(document.getElementById){//explorer 6
            departmentTable = document.getElementById(id);
      }else if (document.layers) {
            departmentTable = document.layers[id]; 
      }
      if(box.checked){
            //departmentTable.style.visibility='visible';
            departmentTable.className = 'visible';
      }
      else{
            //departmentTable.style.visibility='hidden';
            departmentTable.className = 'hidden';
      }
}


