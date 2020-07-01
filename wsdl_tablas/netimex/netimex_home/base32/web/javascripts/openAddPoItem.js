function openAddPoItem(Elem,NextPage,mode)
{	/* the version with BCV - keyid functionality*/
	var index = -1;	index = Elem.selectedIndex;
	var fieldName = Elem.name;
	var name,nextElement;
	var value = "";	
	if(index > -1){		var params = javascript:getRow(fieldName,index);		var paramsArr = params.split("|");
		for (var i=0; i < paramsArr.length; i++){
			nextElement = paramsArr[i];
			name = nextElement.substring(0,nextElement.indexOf("="));
			if (name == "item_id"){
				value = nextElement.substring(nextElement.indexOf("=")+1,nextElement.length);
				break;
			}
		}		if (value == ""){			mode="U";
			//javascript:openUpdateItem(Elem,NextPage,mode);			javascript:updatePoItem(Elem,NextPage,mode);	
			return;		}	}	else{
		//alert("Please select one of the elements!");		alert("<%getError(NMX00077)%>");
		return;	}	
	var params = "&";
	var sUrl = "<%getWebLocation()%>Page=<%getPageName()%>&mode="+mode+"&Action=get&PageNext="+NextPage;
	var rowParams = javascript:getRowParams(fieldName,index);
	var paramsArr = rowParams.split("&");
	index = javascript:getSelectItemIndex(Elem,mode);
	for (var i=1; i < paramsArr.length-1; i++)
	{
		nextElement = paramsArr[i];
		name = nextElement.substring(0,nextElement.indexOf("="));
		if (name == "item_id" || name == "product_name" || name == "quantity" || name == "quantity_measure" ||
			name == "unit_price" || name == "unit_price_measure" || name == "buyer_prod_id" ||
			name == "buyer_prod_no" || name == "supplier_prod_no" || name == "supplier_prod_id" ||
			name == "discount_amount" || name == "charge_amount" || name == "tax_amount" ||
			name == "item_description" ){
			value = "";
		
		}else{
			value = nextElement.substring(nextElement.indexOf("=")+1,nextElement.length);
		}
		if(name != "line_no" && name != "LineNo"){
			params+= name + '=' + value + '&';
		}
	}
	sUrl += params;
	sUrl += "<%getElemName()%>=" + fieldName + "&";
	sUrl += "<%getLineNo()%>=" + index + "&";
	sUrl += "<%getCustomizedURLParameters()%>";//avis - generalize url customization
	javascript:openNewWindow(sUrl,'DisplayWindow','menubar=yes,scrollbars=yes,status=no,width=755,height=360');
	
}
