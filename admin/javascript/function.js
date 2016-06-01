function comfirm()
{
	if(confirm('是否确认当前操作？')==false)
	{
		return false;
	}
}


function CheckAll(form)
{
    for (var i = 0; i < form.elements.length; i++)
    {
        var e = form.elements[i];
        if (e.name != 'chkAll' && e.disabled == false)
        {
            e.checked = form.chkAll.checked;
        }
    }
}