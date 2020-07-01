
function chkCriteriaWithDates(criteriaField , fromField, toField){
	if(criteriaField !=null)
	{
		var criteria = criteriaField.value;
		if (criteria == "3")
		{
			if (fromField.value != "")
			{
				javascript:DisplayErrorMsg(fromField,"<%getErrorMsg(NMX00032)%>");
			}
			if (toField.value != "")
			{
				javascript:DisplayErrorMsg(toField,"<%getErrorMsg(NMX00032)%>");
			}
		}
	}
}
