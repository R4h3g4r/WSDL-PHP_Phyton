function addItems(fromCtrl, toCtrl) {
        var i;
        var j;
        var itemexists;
        var nextitem;

        // step through all items in fromCtrl
        for (i = 0; i < fromCtrl.options.length; i++) {
                if (fromCtrl.options[i].selected) {
                        // search toCtrl to see if duplicate
                        j = 0;
                        itemexists = false;
                        while ((j < toCtrl.options.length) && (!(itemexists))) {
                                if (toCtrl.options[j].value == fromCtrl.options[i].value) {
                                        itemexists = true;
                                        alert(fromCtrl.options[i].value + " found!");
                                }
                                j++;
                        }
                        if (!(itemexists)) {
                                // add the item
                                nextitem = toCtrl.options.length;
                                var tmp=fromCtrl.options[i].text;
                                var inof=tmp.indexOf('|')
                                if (inof==-1)
                                {
                                        for(var ii=tmp.length; ii<35; ii++){
                                           tmp+=" ";
                                        }
                                        tmp+="|0     |0";
                                }
                                else {
                                //max lenth Rigth=25
                                     tmp=TrimIt(tmp.substring(0,25));
                                };
                                toCtrl.options[nextitem] = new Option(tmp);
                                toCtrl.options[nextitem].value = fromCtrl.options[i].value;
                        }
                }
        }
}

