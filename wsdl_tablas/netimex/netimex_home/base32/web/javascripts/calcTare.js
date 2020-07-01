function calcTare(fieldOne , fieldTwo, fieldThree)
{
	var fieldOneValue = fieldOne.value;
	var fieldTwoValue = fieldTwo.value;	
	if (TrimIt(fieldTwoValue) != '')
	{
		if(TrimIt(fieldOneValue) != '')
		{
			if(parseInt(TrimIt(fieldOneValue)) > parseInt(TrimIt(fieldTwoValue)))
			{
				DisplayErrorMsg(fieldTwo,"Net Value bigger then Gross Value");
			}
			else
			{
				fieldThree.value = parseInt(fieldTwoValue)-parseInt(fieldOneValue);
			}
		}
	}		

}
