function checkCombinationCompatibility(elem1, elem2, array)
{
	var value1 = GetElemValue(elem1);	
	var value2 = GetElemValue(elem2);

	var ROWS = array.length;
	var COLUMNS = array[0].length;
	var i = 0;
	var j = 0;

	for (; i < ROWS; i++)
	{
		if (value2 == array[i][0])
		{
			break;
		}
	}
	
	for (; j < COLUMNS; j++)
	{
		if (value1 == array[0][j])
		{
			break;
		}
	}

	return (array[i][j] == '1');
}	//checkCombinationCompatibility