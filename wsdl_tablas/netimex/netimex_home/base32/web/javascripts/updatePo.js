function updatePo(Elem,SendString,lineNo)
{
	var oldRow = javascript:getRow(Elem,lineNo);
	var startRefNo = oldRow.indexOf("reference_no=");
	var endRefNo = oldRow.indexOf("|",startRefNo+1);
	var oldRefNo = oldRow.substring(startRefNo+13,endRefNo);
	if(oldRow==""){			//it means: new line
		var tempIndex1 = SendString.indexOf("reference_no=");
		var tempIndex2 = SendString.indexOf("|",tempIndex1+1);
		var new_ref_no = SendString.substring(tempIndex1+13,tempIndex2);
		var oldTable = eval("window.document.<%getPageName()%>_form." + Elem);
		var sizeOldTable = oldTable.options.length;
		var fields, fieldsArr, nextFieldElem, fieldName, fieldValue;
		for(rowNum=0 ; rowNum < sizeOldTable ; rowNum++){
			fields = javascript:getRow(Elem,rowNum);
			fieldsArr = fields.split("|");
			for (fieldNo=0; fieldNo < fieldsArr.length; fieldNo++){
				nextFieldElem = fieldsArr[fieldNo];
				fieldName = nextFieldElem.substring(0,nextFieldElem.indexOf("="));
				if (fieldName == "reference_no"){
					fieldValue = nextFieldElem.substring(nextFieldElem.indexOf("=")+1,nextFieldElem.length);
					fieldValue = javascript:Trim(fieldValue);
					new_ref_no = javascript:Trim(new_ref_no);
					if(new_ref_no == fieldValue){
						alert("<%getError(POM00005)%>");
						//javascript:DisplayErrorMsg(Elem, "<%getError(POM00005)%>");
						return;
					}
				}
			}
		}
		javascript:updateItem(Elem,SendString,lineNo);
		return;
	}
	
	javascript:updateItem(Elem,SendString,lineNo);
	
	var index = -1;
	var elemField = eval("window.document.<%getPageName()%>_form." + Elem);	var index = lineNo;
	
	if(index > -1){		var params = javascript:getRow(Elem,index);		var paramsArr = params.split("|");
		var name,nextElement;
		var poGeneralDetails = "";
		
		for (var i=0; i < paramsArr.length; i++){
			nextElement = paramsArr[i];
			name = nextElement.substring(0,nextElement.indexOf("="));
			if (name == "reference_no" || name == "expiry_country" || name == "country_desc" 
				|| name == "transportation_type" || name == "transportation_desc" 
				|| name == "carrier_name" || name ==  "shipment_from" || name == "shipment_to" ){
					value = nextElement.substring(nextElement.indexOf("=")+1,nextElement.length);
					poGeneralDetails += name + "=" + value + "|";	
			}
		}
		var poTable = eval("window.document.<%getPageName()%>_form." + Elem);
		var maxLineNo = poTable.options.length;
		var startLine = "<%getStartLine()%>";
		var endLine = "<%getEndLine()%>";
		
		for(rowNo=0 ; rowNo < maxLineNo ; rowNo++){
			params = javascript:getRow(Elem,rowNo);
			var itemDetails = "";
			var reference_no , updatedLine , line_no;			paramsArr = params.split("|");
			for (paramNo=0; paramNo < paramsArr.length; paramNo++){
				nextElement = paramsArr[paramNo];
				name = nextElement.substring(0,nextElement.indexOf("="));
				if (name != "reference_no" && name != "expiry_country" && name != "country_desc" 
					&& name != "transportation_type" && name != "transportation_desc" 
					&& name != "carrier_name" && name !=  "shipment_from" && name != "shipment_to" ){
						value = nextElement.substring(nextElement.indexOf("=")+1,nextElement.length);
						itemDetails += name + "=" + value + "|";
				}
				if(name == "reference_no"){
					reference_no = nextElement.substring(nextElement.indexOf("=")+1,nextElement.length);
				}
			}
			reference_no = javascript:Trim(reference_no);
			oldRefNo = javascript:Trim(oldRefNo);
			if (reference_no == oldRefNo){
				updatedLine = poGeneralDetails + itemDetails;	
				updateItem(Elem,updatedLine,rowNo);
			}		
		}	}
}