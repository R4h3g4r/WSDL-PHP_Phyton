function removeItems(fromCtrl,sSendStr) {
        var i = 0;
        var j;
        var k = 0;
        var tmp=""
        while (i < (fromCtrl.options.length - k)) {
                if (fromCtrl.options[i].selected) {
                        // remove the item
                        for (j = i; j < (fromCtrl.options.length - 1); j++) {
                                fromCtrl.options[j].text = TrimIt(fromCtrl.options[j+1].text);
                                fromCtrl.options[j].value = fromCtrl.options[j+1].value;
                                fromCtrl.options[j].selected = fromCtrl.options[j+1].selected;
                        }
                         tmp=TrimIt(fromCtrl.options[i].text);
                        k++;
                }
                 else {
                        i++;
                }
        }
        for (i = 0; i < k; i++) {
                fromCtrl.options[fromCtrl.options.length - 1] = null;
        }
        if (tmp!=""){
            var inof=tmp.indexOf('|');
            if (inof!=-1)   { makeStringFromSelect(fromCtrl,sSendStr)};
        }else {alert("Select one of the elements!");}
}
