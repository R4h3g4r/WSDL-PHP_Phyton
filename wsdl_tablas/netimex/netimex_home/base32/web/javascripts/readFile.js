function readFile(fileName) {
  if (document.layers && navigator.javaEnabled()) { 
	netscape.security.PrivilegeManager.enablePrivilege('UniversalFileRead');
    var bfr = new java.io.BufferedReader(new java.io.FileReader(fileName));
    var line;
    var content = '';
    while ((line = bfr.readLine()) != null)
      content += line + java.lang.System.getProperty('line.separator');
    return content;
  }
  else if (document.all) {
    var fso = new ActiveXObject('Scripting.FileSystemObject');
    var fs = fso.OpenTextFile(fileName);
    var result = fs.ReadAll();
    return result;
  }
}   

