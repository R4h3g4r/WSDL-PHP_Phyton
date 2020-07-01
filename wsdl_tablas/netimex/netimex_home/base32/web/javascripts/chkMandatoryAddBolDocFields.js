function chkMandatoryAddBolDocFields() {
    var combo = document.<%getPageName()%>_form.doc_type_code;
    var gen_id = document.<%getPageName()%>_form.general_id;
    var doc_ver = document.<%getPageName()%>_form.version;
    var code = javascript:getValueOnCombo(combo);

    javascript:checkMandatory(combo, "Combo");

    var codeString = new String(code);
    code = codeString.substr(0, codeString.indexOf('|'));

    if (iErrorStatus == 99 && (code == "000" || code == "999")) {
        javascript:checkMandatory(gen_id, "Combo");
        if (iErrorStatus == 99)
            javascript:checkMandatory(doc_ver, "Combo");
    }
}