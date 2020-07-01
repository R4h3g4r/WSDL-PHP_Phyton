function addItemsNew(fromCtrl, toCtrl) {
	var i;
	var j;
	var itemexists;
	var nextitem;

    var count_o_col=document.<%getPageName()%>_form[fromCtrl].length;
    var count_d_col=document.<%getPageName()%>_form[toCtrl].length;

	// step through all items in fromCtrl
	for (i = 0; i < count_o_col ; i++) {
		if (document.<%getPageName()%>_form[fromCtrl].options[i].selected) {
			// search toCtrl to see if duplicate
			j = 0;
			itemexists = false;
			while ((j < count_d_col) && (!(itemexists))) {
				if (document.<%getPageName()%>_form[toCtrl].options[j].value == document.<%getPageName()%>_form[fromCtrl].options[i].value) {
					itemexists = true;
	//				alert(document.<%getPageName()%>_form[fromCtrl].options[i].value + " found!");
				}
				j++;
			}
			if (!(itemexists)) {
				// add the item
				nextitem = document.<%getPageName()%>_form[toCtrl].length;
              //  alert(nextitem);
				var tmp=document.<%getPageName()%>_form[fromCtrl].options[i].text;
				document.<%getPageName()%>_form[toCtrl].options[nextitem] = new Option(tmp);
				document.<%getPageName()%>_form[toCtrl].options[nextitem].value = document.<%getPageName()%>_form[fromCtrl].options[i].value;
               // nextitem = nextitem +1; 
			}
		}		
	}
}
