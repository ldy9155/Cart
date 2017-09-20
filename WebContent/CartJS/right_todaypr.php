document.writeln('	<table border=0 cellpadding=0 cellspacing=0 width=100% style="table-layout:fixed">');
document.writeln('	<tr>');
document.writeln('		<td align=center style="font-size:0px;line-height:0%;"><a href="javascript:updown_click(\'up\');"><img src="../images/common/newproductview/btn_plus001.gif" border="0"></a></td>');
document.writeln('	</tr>');
document.writeln('	<tr><td height=10></td></tr>');
document.writeln('	<tr>');
document.writeln('		<td id="recent_idx0" ></td>');
document.writeln('	</tr>');
document.writeln('	<tr>');
document.writeln('		<td id="recent_idx1" ></td>');
document.writeln('	</tr>');
document.writeln('	<tr>');
document.writeln('		<td id="recent_idx2" ></td>');
document.writeln('	</tr>');
document.writeln('	<tr>');
document.writeln('		<td id="recent_idx3" ></td>');
document.writeln('	</tr>');
document.writeln('	<tr><td height=10></td></tr>');
document.writeln('	<tr>');
document.writeln('		<td align=center style="font-size:0px;line-height:0%;"><a href="javascript:updown_click(\'down\');"><img src="../images/common/newproductview/btn_minus001.gif" border="0"></a></td>');
document.writeln('	</tr>');
document.writeln('	</table>');
document.writeln('');

var recent_list = new Array();
var recentnum=0;
var prdt_cnt = 4;

function updown_click(updownValue)
{
	if(prdt_cnt < recent_list.length) {
		if(updownValue == "up") {
			if(recentnum>0 && recent_list[recentnum-1]) {
				recentnum=recentnum-1;
			}
		} else {
			if(recent_list[recentnum+1] && recent_list[recentnum+prdt_cnt]) {
				recentnum = recentnum+1;
			}
		}

		var j=recentnum;

		for(var i=0; i<prdt_cnt; i++)
		{
			if(recent_list[j] && document.all["recent_idx"+i]) {
				document.all["recent_idx"+i].innerHTML=recent_list[j].html1+recent_list[j].html2+recent_list[j].html3;
			} else if(document.all["recent_idx"+i]) {
				document.all["recent_idx"+i].innerHTML="";
			}
			j++;
		}
	}
}

function ObjNPList() {
	var argv = ObjNPList.arguments;
	var argc = ObjNPList.arguments.length;

	//Property 선언
	this.classname		= "ObjNPList";
	this.debug			= false;
	this.num			= new String((argc > 0) ? argv[0] : "0");
	this.html1			= new String((argc > 1) ? argv[1] : "");
	this.html2			= new String((argc > 2) ? argv[1] : "");
	this.html3			= new String((argc > 3) ? argv[1] : "");
}
