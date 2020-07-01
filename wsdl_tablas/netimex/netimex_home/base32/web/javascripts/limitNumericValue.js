function limitNumericValue(element, max_value)
{
	if (javascript:bIsNum(element.value))
	{
	  var element_value = element.value;
	  if (element_value != '' && (element_value > max_value  || element_value < 1))
	  {
		javascript:ErrorMsg(element, "Field must be 1 to " + max_value + ".");

	  }
	}
}	
