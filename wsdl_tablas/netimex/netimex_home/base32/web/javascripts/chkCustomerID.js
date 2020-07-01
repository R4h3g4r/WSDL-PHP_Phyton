
function chkCustomerID(Elem)
{
	var ret = false;
	ret = javascript:chkInvalidSwiftChar(Elem);
	if (!ret)
	{
		ret = javascript:chkApostrophe(Elem);
	}
	return ret;
}

