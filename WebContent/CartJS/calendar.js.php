function Calendar(obj) {
	var now = obj.value.split("-");
	if (now.length == 3) {
		strleft = "dialogleft:" + eval(window.screenLeft + window.event.clientX ) ;
		strtop = ";dialogtop:" + eval(window.screenTop + window.event.clientY ) ;
		val=window.showModalDialog("/admin/calendar.php?year="+now[0]+"&month="+now[1]+"&day="+now[2],"",strleft +  strtop +";dialogWidth:180px; dialogHeight:198px;scroll:no;status:no;titlebar:no;center:no;help:yes;");
		if(typeof(val) != "undefined") {
			if(val.length==10) {
				obj.value=val;
			}
		}
	} else {
		now = new Date();
		strleft = "dialogleft:" + eval(window.screenLeft + window.event.clientX ) ;
		strtop = ";dialogtop:" + eval(window.screenTop + window.event.clientY ) ;
		val=window.showModalDialog("/admin/calendar.php?year="+now.getFullYear()+"&month="+now.getMonth()+"&day="+now.getDate(),"",strleft +  strtop +";dialogWidth:180px; dialogHeight:198px;scroll:no;status:no;titlebar:no;center:no;help:yes;");
		if(typeof(val) != "undefined") {
			if(val.length==10) {
				obj.value=val;
			}
		}
	}
}
