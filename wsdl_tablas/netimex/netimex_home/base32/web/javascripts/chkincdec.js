function chkincdec(Elem) {
    if (Elem != null && Elem.type != "hidden") {
        if (document.<%getPageName()%>_form.dec_amount.value != ""
            && document.<%getPageName()%>_form.inc_amount.value != "") {
            javascript:DisplayErrorMsg(Elem, "<%getError(NMX00067)%>");
            document.<%getPageName()%>_form.dec_amount.value = "";
            document.<%getPageName()%>_form.inc_amount.value = "";
        } else {
            var dec = javascript:TrimIt(javascript:GetElemValue(document.<%getPageName()%>_form.dec_amount));
            var amount = TrimIt(GetElemValue(document.<%getPageName()%>_form.amount));
            if ((amount - dec) < 0) {
                javascript:DisplayErrorMsg(Elem, "<%getError(NMX00068)%>");
                document.<%getPageName()%>_form.dec_amount.value = "";
            }
        }
    }
}
