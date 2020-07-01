function getValueFromUrl(paramName) {

	var str,sUrl;
	var tmp;
	var urlParamsArr;
	var name,nextElement;
	var value = "";

	sUrl = unescape(window.document.URL);

	if(sUrl.indexOf(paramName)>-1){
		tmp = sUrl.substring(sUrl.indexOf('?')+1,sUrl.length);
		urlParamsArr = tmp.split("&");
		for (var i=0; i < urlParamsArr.length; i++){
			nextElement = urlParamsArr[i];
			name = nextElement.substring(0,nextElement.indexOf("="));
			if (name == paramName){
				value = nextElement.substring(nextElement.indexOf("=")+1,nextElement.length);
				break;
			}
		}
	}
	return value;
}
