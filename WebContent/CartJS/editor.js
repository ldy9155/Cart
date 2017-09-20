/***********************************************************************
 *	program			:	ejEditor v.1.2
 *	author			:	tae hun lim (soonsoo@gmail.com)
 *	last modified	:	2011-04-28 17:22:16
 ***********************************************************************/
//	ejEditor
var ejEdtInfo = "ejEditor v.1.2";
//	range 객체
var ejRng = new Array();
//	array textarea
var ejTarea = new Array();
//	resize area height
var ejResHeight = 13;
//	editor로 전환된 textarea 개수
var ejEdtCnt = 0;
//	css path
var ejEdtPath = "/gmeditor";
//	editor image path
var ejEdtBtn = ejEdtPath + "/button";
var ejEdtEmo = ejEdtPath + "/emoticon";
//	use daum map
var ejDMapUse = false;
var myagent = "ns";

var ejPrefix = "ej-edt-";
var ejLayId = ['font', 'size', 'fcolor', 'bcolor', 'lheight', 'link', 'table', 'image', 'movie', 'flash', 'quote', 'emoticon', 'special', 'map'];
var ejEdtFont = ['굴림', '굴림체', '돋움', '돋움체', '바탕', '바탕체', '궁서', 'Arial', 'Tahoma', 'Verdana', 'Times New Roman'];
var ejEdtFface = ['gulim', 'gulimche', 'dotum', 'dotumche', 'batang', 'batangche', 'gungsuh', 'arial', 'tahoma', 'verdana', 'timesnewroman'];
var ejEdtFsize = ['10', '12', '14', '16', '18', '20', '22'];
var ejEdtFsLh = ['18', '18', '18', '22', '24', '26', '28'];
var ejEdtFsReal = ['1', '2', '3', '4', '5', '6', '7'];
var ejEdtLHeight = ['120%', '140%', '160%', '180%', '200%', '250%'];
var ejEdtColor = ['ff0000', 'ff4646', 'ff5a5a', 'ff6e6e', 'ff8282', 'ff9696', 'ffaaaa', 'ffbebe', 'ffd2d2', 'ffe6e6', '0000ff', '0078ff', '46beff', '3cc2ff', '1eddff', '5ae0ff', '78f3ff', '3cfbff', '96ffff', 'c8ffff', 'ff8200', 'ffa01e', 'ffb937', 'ffcd28', 'ffd73c', 'ffe150', 'faeb78', 'faf58c', 'fafaaa', 'fafad2', '006400', '1e821e', '3ca03c', '40a940', '5ec75e', '6dd66d', '80e12a', '94eb3e', 'a8f552', 'c6ff70', 'ff1493', 'ff28a7', 'ff3cbb', 'ff50cf', 'ff64e3', 'ff8cff', 'ffa0ff', 'ffb4ff', 'ffc8ff', 'ffdcff', '9400d3', '9e0add', 'a814e7', 'b21ef1', 'bc28fb', 'df75db', 'e97fe5', 'f389ef', 'fd93f9', 'ff9dff', '8b4513', '8b6331', 'ae5e1a', 'cc7c38', 'e0904c', 'ef9f5b', 'ffa98f', 'ffc7ad', 'ffdbc1', 'ffefd5', '000000', '464646', '5a5a5a', '6e6e6e', '828282', '969696', 'aaaaaa', 'bebebe', 'dcdcdc', 'ffffff'];
var ejEdtEmoticon = ['01.gif', '02.gif', '03.gif', '04.gif', '05.gif', '06.gif', '07.gif', '08.gif', '09.gif', '10.gif', '11.gif', '12.gif', '13.gif', '14.gif', '15.gif', '16.gif', '17.gif', '18.gif', '19.gif', '20.gif'];
var ejEdtSChar = new Array();
ejEdtSChar[0] = ["　", "※", "☆", "★", "○", "●", "◎", "◇", "◆", "□", "■", "△", "▲", "▽", "▼", "→", "←", "↑", "↓", "↔", "〓", "◁", "◀", "▷", "▶", "♤", "♠", "♡", "♥", "♧", "♣", "⊙", "◈", "▣", "◐", "◑", "▒", "▤", "▥", "▨", "▧", "▦", "▩", "♨", "☏", "☎", "☜", "☞", "¶", "‡", "↕", "↗", "↙", "↖", "↘", "♭", "♩", "♪", "♬", "㉿", "㈜", "№", "㏇", "™", "㏂", "㏘", "℡", "®", "ª", "º", "¹", "²", "³", "⁴", "ⁿ", "₁", "₂", "₃", "₄"];
ejEdtSChar[1] = ["㏄", "㎣", "㎤", "㎥", "㎦", "㎙", "㎚", "㎛", "㎜", "㎝", "㎞", "㎟", "㎠", "㎡", "㎢", "㏊", "㎍", "㎎", "㎏", "㏏", "㎈", "㎉", "㏈", "㎧", "㎨", "㎰", "㎱", "㎲", "㎳", "㎴", "㎵", "㎶", "㎷", "㎸", "㎹", "㎀", "㎁", "㎂", "㎃", "㎄", "㎺", "㎻", "㎼", "㎽", "㎾", "㎿", "㎐", "㎑", "㎒", "㎓", "㎔", "Ω", "㏀", "㏁", "㎊", "㎋", "㎌", "㏖", "㏅", "㎭", "㎮", "㎯", "㏛", "㎩", "㎪", "㎫", "㎬", "㏝", "㏐", "㏓", "ⅰ", "ⅱ", "ⅲ", "ⅳ", "ⅴ", "ⅵ", "ⅶ", "ⅷ", "ⅸ", "ⅹ", "Ⅰ", "Ⅱ", "Ⅲ", "Ⅳ", "Ⅴ", "Ⅵ", "Ⅶ", "Ⅷ", "Ⅸ", "Ⅹ", "½", "⅓", "⅔", "¼", "¾", "⅛", "⅜", "⅝", "⅞"];
ejEdtSChar[2] = ["─", "│", "┌", "┐", "┘", "└", "├", "┬", "┤", "┴", "┼", "━", "┃", "┏", "┓", "┛", "┗", "┣", "┳", "┫", "┻", "╋", "┠", "┯", "┨", "┷", "┿", "┝", "┰", "┥", "┸", "╂", "┒", "┑", "┚", "┙", "┖", "┕", "┎", "┍", "┞", "┟", "┡", "┢", "┦", "┧", "┩", "┪", "┭", "┮", "┱", "┲", "┵", "┶", "┹", "┺", "┽", "┾", "╀", "╁", "╃", "╄", "╅", "╆", "╇", "╈", "╉", "╊"];
ejEdtSChar[3] = ["㉠", "㉡", "㉢", "㉣", "㉤", "㉥", "㉦", "㉧", "㉨", "㉩", "㉪", "㉫", "㉬", "㉭", "㉮", "㉯", "㉰", "㉱", "㉲", "㉳", "㉴", "㉵", "㉶", "㉷", "㉸", "㉹", "㉺", "㉻", "㈀", "㈁", "㈂", "㈃", "㈄", "㈅", "㈆", "㈇", "㈈", "㈉", "㈊", "㈋", "㈌", "㈍", "㈎", "㈏", "㈐", "㈑", "㈒", "㈓", "㈔", "㈕", "㈖", "㈗", "㈘", "㈙", "㈚", "㈛", "ⓐ", "ⓑ", "ⓒ", "ⓓ", "ⓔ", "ⓕ", "ⓖ", "ⓗ", "ⓘ", "ⓙ", "ⓚ", "ⓛ", "ⓜ", "ⓝ", "ⓞ", "ⓟ", "ⓠ", "ⓡ", "ⓢ", "ⓣ", "ⓤ", "ⓥ", "ⓦ", "ⓧ", "ⓨ", "ⓩ", "①", "②", "③", "④", "⑤", "⑥", "⑦", "⑧", "⑨", "⑩", "⑪", "⑫", "⑬", "⑭", "⑮"];
ejEdtSChar[4] = ["ぁ", "あ", "ぃ", "い", "ぅ", "う", "ぇ", "え", "ぉ", "お", "か", "が", "き", "ぎ", "く", "ぐ", "け", "げ", "こ", "ご", "さ", "ざ", "し", "じ", "す", "ず", "せ", "ぜ", "そ", "ぞ", "た", "だ", "ち", "ぢ", "っ", "つ", "づ", "て", "で", "と", "ど", "な", "に", "ぬ", "ね", "の", "は", "ば", "ぱ", "ひ", "び", "ぴ", "ふ", "ぶ", "ぷ", "へ", "べ", "ぺ", "ほ", "ぼ", "ぽ", "ま", "み", "む", "め", "も", "ゃ", "や", "ゅ", "ゆ", "ょ", "よ", "ら", "り", "る", "れ", "ろ", "ゎ", "わ", "ゐ", "ゑ", "を", "ん"];
ejEdtSChar[5] = ["ァ", "ア", "ィ", "イ", "ゥ", "ウ", "ェ", "エ", "ォ", "オ", "カ", "ガ", "キ", "ギ", "ク", "グ", "ケ", "ゲ", "コ", "ゴ", "サ", "ザ", "シ", "ジ", "ス", "ズ", "セ", "ゼ", "ソ", "ゾ", "タ", "ダ", "チ", "ヂ", "ッ", "ツ", "ヅ", "テ", "デ", "ト", "ド", "ナ", "ニ", "ヌ", "ネ", "ノ", "ハ", "バ", "パ", "ヒ", "ビ", "ピ", "フ", "ブ", "プ", "ヘ", "ベ", "ペ", "ホ", "ボ", "ポ", "マ", "ミ", "ム", "メ", "モ", "ャ", "ヤ", "ュ", "ユ", "ョ", "ヨ", "ラ", "リ", "ル", "レ", "ロ", "ヮ", "ワ", "ヰ", "ヱ", "ヲ", "ン", "ヵ", "ヶ"];

function ejSetTbar(t_style, is_source, i) {
	var ejZidx = 999 - i;
	var ejTbar = '';
	ejTbar += '<ul class="ej-edt-menu">';
	
	if (is_source == 1) {
		ejTbar += '<li style="float:left; list-style:none; margin:3px 0 0; padding:0 3px 0 0; z-index:' + ejZidx + ';">';
		ejTbar += '<a href="javascript:" onclick="ejEdtSetMode(\'' + ejTarea[i] + '\',\'' + i + '\');" title="소스편집" id="ejModeSource' + i + '"><img src="' + ejEdtBtn + '/btn_source.gif" border="0" alt="소스편집" /></a>';
		ejTbar += '<a href="javascript:" onclick="ejEdtSetMode(\'' + ejTarea[i] + '\',\'' + i + '\');" title="에디터" id="ejModeEditor' + i + '" style="display:none;"><img src="' + ejEdtBtn + '/btn_editor.gif" border="0" alt="에디터" /></a>';
		ejTbar += '</li>'
	}
	
	ejTbar += '<li style="position:relative; float:left; list-style:none; margin:3px 0 0; padding:0; z-index:' + ejZidx + ';">';
	ejTbar += '	<a href="javascript:;" onclick="ejEdtShowLayer(' + i + ',\'font' + i + '\');" title="글꼴선택"><img class="' + ejPrefix + 'btn' + i + '" src="' + ejEdtBtn + '/btn_font_family.gif" border="0" alt="글꼴선택" /></a>';
	ejTbar += '	<div id="' + ejPrefix + 'font' + i + '" style="position:absolute; top:20px; left:0; width:130px; overflow:hidden; border:1px solid #ccc; background:#f5f5f5; display:none;">';
	ejTbar += '		<ul style="list-style:none; margin:0; padding:0;">';
	for (var c = 0; c < ejEdtFface.length; c++) {
		ejTbar += '		<li style="list-style:none; margin:0; padding:0;"><a href="javascript:;" onclick="ejEdtExec(\'' + ejTarea[i] + '\',\'fontname\',false,\'' + ejEdtFface[c] + '\',\'' + i + '\');" class="ej-edt-a1" style="height:18px; font:normal 12px/18px ' + ejEdtFface[c] + ';">' + ejEdtFont[c] + '</a></li>'
	}
	ejTbar += '		</ul>';
	ejTbar += '	</div>';
	ejTbar += '</li>';
	ejTbar += '<li style="position:relative; float:left; list-style:none; margin:3px 0 0 -1px; padding:0 3px 0 0; z-index:' + ejZidx + ';">';
	ejTbar += '	<a href="javascript:;" onclick="ejEdtShowLayer(' + i + ',\'size' + i + '\');" title="글꼴크기"><img class="' + ejPrefix + 'btn' + i + '" src="' + ejEdtBtn + '/btn_font_size.gif" border="0" alt="글꼴크기" /></a>';
	ejTbar += '	<div id="' + ejPrefix + 'size' + i + '" style="position:absolute; top:20px; left:0; width:250px; overflow:hidden; border:1px solid #ccc; background:#f5f5f5; display:none;">';
	ejTbar += '		<ul style="list-style:none; margin:0; padding:0;">';
	for (var c = 0; c < ejEdtFsize.length; c++) {
		ejTbar += '		<li style="list-style:none; margin:0; padding:0;"><a href="javascript:;" onclick="ejEdtExec(\'' + ejTarea[i] + '\',\'fontsize\',false,\'' + ejEdtFsReal[c] + '\',\'' + i + '\');" class="ej-edt-a1" style="height:' + ejEdtFsLh[c] + 'px; font:normal ' + ejEdtFsize[c] + 'px/' + ejEdtFsLh[c] + 'px gulim;">가나다ABCDabcd (' + ejEdtFsize[c] + 'px)</a></li>'
	}
	ejTbar += '		</ul>';
	ejTbar += '	</div>';
	ejTbar += '</li>';
	ejTbar += '<li style="position:relative; float:left; list-style:none; margin:3px 0 0; padding:0; z-index:' + ejZidx + ';">';
	ejTbar += '	<a href="javascript:;" onclick="ejEdtShowLayer(' + i + ',\'fcolor' + i + '\');" title="전경색"><img class="' + ejPrefix + 'btn' + i + '" src="' + ejEdtBtn + '/btn_font_color.gif" border="0" alt="전경색" /></a>';
	ejTbar += '	<div id="' + ejPrefix + 'fcolor' + i + '" style="position:absolute; top:20px; left:0; width:158px; border:1px solid #ccc; background:#f5f5f5; display:none;">';
	ejTbar += '		<ul style="list-style:none; width:142px; margin:8px; padding:0; overflow:hidden;">';
	for (var c = 0; c < ejEdtColor.length; c++) {
		ejTbar += '		<li style="float:left; list-style:none; margin:1px; padding:0;"><a href="javascript:;" onclick="ejEdtExec(\'' + ejTarea[i] + '\',\'forecolor\',false,\'#' + ejEdtColor[c] + '\',\'' + i + '\');" class="ej-edt-a2" style="background-color:#' + ejEdtColor[c] + ';" title="' + ejEdtColor[c] + '"><img src="' + ejEdtBtn + '/btn_blank.gif" width="12" height="12" border="0" alt="' + ejEdtColor[c] + '" /></a></li>'
	}
	ejTbar += '		</ul>';
	ejTbar += '	</div>';
	ejTbar += '</li>';
	ejTbar += '<li style="position:relative; float:left; list-style:none; margin:3px 0 0 -1px; padding:0; z-index:' + ejZidx + ';">';
	ejTbar += '	<a href="javascript:;" onclick="ejEdtShowLayer(' + i + ',\'bcolor' + i + '\');" title="배경색"><img class="' + ejPrefix + 'btn' + i + '" src="' + ejEdtBtn + '/btn_back_color.gif" border="0" alt="배경색" /></a>';
	ejTbar += '	<div id="' + ejPrefix + 'bcolor' + i + '" style="position:absolute; top:20px; left:0; width:158px; border:1px solid #ccc; background:#f5f5f5; display:none;">';
	ejTbar += '		<ul style="list-style:none; width:142px; margin:8px; padding:0; overflow:hidden;">';
	for (var c = 0; c < ejEdtColor.length; c++) {
		ejTbar += '		<li style="float:left; list-style:none; margin:1px; padding:0;"><a href="javascript:;" onclick="ejEdtExec(\'' + ejTarea[i] + '\',\'backcolor\',false,\'#' + ejEdtColor[c] + '\',\'' + i + '\');" class="ej-edt-a2" style="background-color:#' + ejEdtColor[c] + ';" title="' + ejEdtColor[c] + '"><img src="' + ejEdtBtn + '/btn_blank.gif" width="12" height="12" border="0" alt="' + ejEdtColor[c] + '" /></a></li>'
	}
	ejTbar += '		</ul>';
	ejTbar += '	</div>';
	ejTbar += '</li>';
	ejTbar += '<li style="float:left; list-style:none; margin:3px 0 0 -1px; padding:0; z-index:' + ejZidx + ';">';
	ejTbar += '	<a href="javascript:;" onclick="ejEdtExec(\'' + ejTarea[i] + '\',\'bold\',false,null,\'' + i + '\');" title="굵게"><img class="' + ejPrefix + 'btn' + i + '" src="' + ejEdtBtn + '/btn_bold.gif" border="0" alt="굵게" /></a>';
	ejTbar += '</li>';
	ejTbar += '<li style="float:left; list-style:none; margin:3px 0 0 -1px; padding:0; z-index:' + ejZidx + ';">';
	ejTbar += '	<a href="javascript:;" onclick="ejEdtExec(\'' + ejTarea[i] + '\',\'italic\',false,null,\'' + i + '\');" title="기울임"><img class="' + ejPrefix + 'btn' + i + '" src="' + ejEdtBtn + '/btn_emphasis.gif" border="0" alt="기울임" /></a>';
	ejTbar += '</li>';
	ejTbar += '<li style="float:left; list-style:none; margin:3px 0 0 -1px; padding:0; z-index:' + ejZidx + ';">';
	ejTbar += '	<a href="javascript:;" onclick="ejEdtExec(\'' + ejTarea[i] + '\',\'underline\',false,null,\'' + i + '\');" title="밑줄"><img class="' + ejPrefix + 'btn' + i + '" src="' + ejEdtBtn + '/btn_underline.gif" border="0" alt="밑줄" /></a>';
	ejTbar += '</li>';
	ejTbar += '<li style="float:left; list-style:none; margin:3px 0 0 -1px; padding:0 3px 0 0; z-index:' + ejZidx + ';">';
	ejTbar += '	<a href="javascript:;" onclick="ejEdtExec(\'' + ejTarea[i] + '\',\'StrikeThrough\',false,null,\'' + i + '\');" title="취소선"><img class="' + ejPrefix + 'btn' + i + '" src="' + ejEdtBtn + '/btn_strike.gif" border="0" alt="취소선" /></a>';
	ejTbar += '</li>';
	
	if (t_style == 1 || t_style == 2) {
		ejTbar += '<li style="float:left; list-style:none; margin:3px 0 0; padding:0; z-index:' + ejZidx + ';">';
		ejTbar += '<a href="javascript:;" onclick="ejEdtExec(\'' + ejTarea[i] + '\',\'justifyleft\',false,null,\'' + i + '\');" title="왼쪽정렬"><img class="' + ejPrefix + 'btn' + i + '" src="' + ejEdtBtn + '/btn_align_left.gif" border="0" alt="왼쪽정렬" /></a>';
		ejTbar += '</li>';
		ejTbar += '<li style="float:left; list-style:none; margin:3px 0 0 -1px; padding:0; z-index:' + ejZidx + ';">';
		ejTbar += '<a href="javascript:;" onclick="ejEdtExec(\'' + ejTarea[i] + '\',\'justifycenter\',false,null,\'' + i + '\');" title="중앙정렬"><img class="' + ejPrefix + 'btn' + i + '" src="' + ejEdtBtn + '/btn_align_center.gif" border="0" alt="중앙정렬" /></a>';
		ejTbar += '</li>';
		ejTbar += '<li style="float:left; list-style:none; margin:3px 0 0 -1px; padding:0; z-index:' + ejZidx + ';">';
		ejTbar += '<a href="javascript:;" onclick="ejEdtExec(\'' + ejTarea[i] + '\',\'justifyright\',false,null,\'' + i + '\');" title="우측정렬"><img class="' + ejPrefix + 'btn' + i + '" src="' + ejEdtBtn + '/btn_align_right.gif" border="0" alt="우측정렬" /></a>';
		ejTbar += '</li>';
		ejTbar += '<li style="float:left; list-style:none; margin:3px 0 0 -1px; padding:0; z-index:' + ejZidx + ';">';
		ejTbar += '<a href="javascript:;" onclick="ejEdtExec(\'' + ejTarea[i] + '\',\'justifyfull\',false,null,\'' + i + '\');" title="양쪽정렬"><img class="' + ejPrefix + 'btn' + i + '" src="' + ejEdtBtn + '/btn_align_justify.gif" border="0" alt="양쪽정렬" /></a>';
		ejTbar += '</li>';
		ejTbar += '<li style="float:left; list-style:none; margin:3px 0 0 -1px; padding:0; z-index:' + ejZidx + ';">';
		ejTbar += '<a href="javascript:;" onclick="ejEdtExec(\'' + ejTarea[i] + '\',\'indent\',false,null,\'' + i + '\');" title="들여쓰기"><img class="' + ejPrefix + 'btn' + i + '" src="' + ejEdtBtn + '/btn_indent.gif" border="0" alt="들여쓰기" /></a>';
		ejTbar += '</li>';
		ejTbar += '<li style="float:left; list-style:none; margin:3px 0 0 -1px; padding:0; z-index:' + ejZidx + ';">';
		ejTbar += '<a href="javascript:;" onclick="ejEdtExec(\'' + ejTarea[i] + '\',\'outdent\',false,null,\'' + i + '\');" title="내어쓰기"><img class="' + ejPrefix + 'btn' + i + '" src="' + ejEdtBtn + '/btn_outdent.gif" border="0" alt="내어쓰기" /></a>';
		ejTbar += '</li>';
		ejTbar += '<li style="float:left; list-style:none; margin:3px 0 0 -1px; padding:0; z-index:' + ejZidx + ';">';
		ejTbar += '<a href="javascript:;" onclick="ejEdtExec(\'' + ejTarea[i] + '\',\'insertunorderedlist\',false,null,\'' + i + '\');" title="순서없는목록"><img class="' + ejPrefix + 'btn' + i + '" src="' + ejEdtBtn + '/btn_unord_list.gif" border="0" alt="순서없는목록" /></a>';
		ejTbar += '</li>';
		ejTbar += '<li style="float:left; list-style:none; margin:3px 0 0 -1px; padding:0; z-index:' + ejZidx + ';">';
		ejTbar += '<a href="javascript:;" onclick="ejEdtExec(\'' + ejTarea[i] + '\',\'insertorderedlist\',false,null,\'' + i + '\');" title="순서있는목록"><img class="' + ejPrefix + 'btn' + i + '" src="' + ejEdtBtn + '/btn_ord_list.gif" border="0" alt="순서있는목록" /></a>';
		ejTbar += '</li>';
		ejTbar += '<li style="position:relative; float:left; list-style:none; margin:3px 0 0 -1px; padding:0 3px 0 0; z-index:' + ejZidx + ';">';
		ejTbar += '	<a href="javascript:;" onclick="ejEdtShowLayer(' + i + ',\'lheight' + i + '\');" title="줄간격"><img class="' + ejPrefix + 'btn' + i + '" src="' + ejEdtBtn + '/btn_line_height.gif" border="0" alt="줄간격" /></a>';
		ejTbar += '	<div id="' + ejPrefix + 'lheight' + i + '" style="position:absolute; top:20px; left:0; width:60px; overflow:hidden; border:1px solid #ccc; background:#f5f5f5; display:none;">';
		ejTbar += '		<ul style="list-style:none; margin:0; padding:0;">';
		for (var c = 0; c < ejEdtLHeight.length; c++) {
			ejTbar += '		<li style="list-style:none; margin:0; padding:0;"><a href="javascript:;" onclick="ejEdtLineHeight(\'' + ejTarea[i] + '\',\'' + i + '\',\'' + ejEdtLHeight[c] + '\');" class="ej-edt-a1" style="height:18px; font:normal 12px/18px gulim;">' + ejEdtLHeight[c] + '</a></li>'
		}
		ejTbar += '		</ul>';
		ejTbar += '	</div>';
		ejTbar += '</li>'; ///////
	}
	
	if (t_style == 1 || t_style == 3) {
		ejTbar += '<li style="position:relative; float:left; list-style:none; margin:3px 0 0; padding:0; z-index:' + ejZidx + ';">';
		ejTbar += '	<a href="javascript:;" onclick="ejEdtShowLayer(' + i + ',\'link' + i + '\');" title="링크"><img class="' + ejPrefix + 'btn' + i + '" src="' + ejEdtBtn + '/btn_url.gif" border="0" alt="링크" /></a>';
		ejTbar += '	<div id="' + ejPrefix + 'link' + i + '" class="ej-edt-pop-wrap" style="position:absolute; top:20px; left:-120px; width:250px; overflow:hidden; border:1px solid #ccc; background:#f5f5f5; display:none;">';
		ejTbar += '		<fieldset>';
		ejTbar += '			<legend>링크추가</legend>';
		ejTbar += '			<dl>';
		ejTbar += '				<dt>U R L</dt>';
		ejTbar += '				<dd class="once"><input id="' + ejPrefix + 'frm-linkurl' + i + '" type="text" class="ej-inp long" /></dd>';
		ejTbar += '			</dl>';
		ejTbar += '			<dl>';
		ejTbar += '				<dt>텍스트</dt>';
		ejTbar += '				<dd class="once"><input id="' + ejPrefix + 'frm-lintext' + i + '" type="text" class="ej-inp long" /></dd>';
		ejTbar += '			</dl>';
		ejTbar += '			<dl>';
		ejTbar += '				<dt>타 겟</dt>';
		ejTbar += '				<dd class="once">';
		ejTbar += '					<input id="' + ejPrefix + 'frm-target1' + i + '" name="' + ejPrefix + 'frm-target' + i + '" type="radio" checked="checked" /> <label for="' + ejPrefix + 'frm-target1' + i + '">새창</label> &nbsp;';
		ejTbar += '					<input id="' + ejPrefix + 'frm-target2' + i + '" name="' + ejPrefix + 'frm-target' + i + '" type="radio" /> <label for="' + ejPrefix + 'frm-target2' + i + '">현재창</label>';
		ejTbar += '				</dd>';
		ejTbar += '			</dl>';
		ejTbar += '		</fieldset>';
		ejTbar += '		<div class="ej-edt-btn_area">';
		ejTbar += '			<input type="button" value="적용" class="ej-edt-pop-btn" onclick="ejEdtLinkChk(\'' + ejTarea[i] + '\',' + i + ');" />&nbsp;';
		ejTbar += '			<input type="button" value="취소" class="ej-edt-pop-btn" onclick="ejEdtShowLayer(' + i + ',\'link' + i + '\');" />';
		ejTbar += '		</div>';
		ejTbar += '	</div>';
		ejTbar += '</li>';
		ejTbar += '<li style="position:relative; float:left; list-style:none; margin:3px 0 0 -1px; padding:0; z-index:' + ejZidx + ';">';
		ejTbar += '	<a href="javascript:;" onclick="ejEdtShowLayer(' + i + ',\'table' + i + '\');" title="테이블"><img class="' + ejPrefix + 'btn' + i + '" src="' + ejEdtBtn + '/btn_table.gif" border="0" alt="테이블" /></a>';
		ejTbar += '	<div id="' + ejPrefix + 'table' + i + '" class="ej-edt-pop-wrap" style="position:absolute; top:20px; left:-120px; width:260px; overflow:hidden; border:1px solid #ccc; background:#f5f5f5; display:none;">';
		ejTbar += '		<fieldset>';
		ejTbar += '			<legend>테이블추가</legend>';
		ejTbar += '			<dl>';
		ejTbar += '				<dt>가로셀</dt>';
		ejTbar += '				<dd class="double"><input id="' + ejPrefix + 'frm-tblcols' + i + '" type="text" value="3" maxlength="2" class="ej-inp short" onblur="ejEdtOnlyNo(this);" /> 개</dd>';
		ejTbar += '				<dt>세로셀</dt>';
		ejTbar += '				<dd class="double"><input id="' + ejPrefix + 'frm-tblrows' + i + '" type="text" value="3" maxlength="2" class="ej-inp short" onblur="ejEdtOnlyNo(this);" /> 개</dd>';
		ejTbar += '			</dl>';
		ejTbar += '			<dl>';
		ejTbar += '				<dt>안쪽여백</dt>';
		ejTbar += '				<dd class="double"><input id="' + ejPrefix + 'frm-tblcpad' + i + '" type="text" maxlength="2" class="ej-inp short" onblur="ejEdtOnlyNo(this);" /> px</dd>';
		ejTbar += '				<dt>셀여백</dt>';
		ejTbar += '				<dd class="double"><input id="' + ejPrefix + 'frm-tblspac' + i + '" type="text" maxlength="2" class="ej-inp short" onblur="ejEdtOnlyNo(this);" /> px</dd>';
		ejTbar += '			</dl>';
		ejTbar += '			<dl>';
		ejTbar += '				<dt>정렬</dt>';
		ejTbar += '				<dd class="double">';
		ejTbar += '					<select id="' + ejPrefix + 'frm-tblagn' + i + '">';
		ejTbar += '						<option value="left">left</option>';
		ejTbar += '						<option value="center">center</option>';
		ejTbar += '						<option value="right">right</option>';
		ejTbar += '						<dd class="double"></dd>';
		ejTbar += '					</select>';
		ejTbar += '				</dd>';
		ejTbar += '				<dt>테두리</dt>';
		ejTbar += '				<dd class="double"><input id="' + ejPrefix + 'frm-tblbrd' + i + '" value="1" maxlength="2" class="ej-inp short" onblur="ejEdtOnlyNo(this);" /></dd>';
		ejTbar += '			</dl>';
		ejTbar += '			<dl>';
		ejTbar += '				<dt>가로</dt>';
		ejTbar += '				<dd class="double"><input id="' + ejPrefix + 'frm-tblwdt' + i + '" type="text" maxlength="3" class="ej-inp short" onblur="ejEdtOnlyNo(this);" /> px</dd>';
		ejTbar += '				<dt>세로</dt>';
		ejTbar += '				<dd class="double"><input id="' + ejPrefix + 'frm-tblhet' + i + '" type="text" maxlength="3" class="ej-inp short" onblur="ejEdtOnlyNo(this);" /> px</dd>';
		ejTbar += '			</dl>';
		ejTbar += '		</fieldset>';
		ejTbar += '		<div class="ej-edt-btn_area">';
		ejTbar += '			<input type="button" value="적용" class="ej-edt-pop-btn" onclick="ejEdtTableChk(\'' + ejTarea[i] + '\',' + i + ');" />&nbsp;';
		ejTbar += '			<input type="button" value="취소" class="ej-edt-pop-btn" onclick="ejEdtShowLayer(' + i + ',\'table' + i + '\');" />';
		ejTbar += '		</div>';
		ejTbar += '	</div>';
		ejTbar += '</li>';
		
		var simgLf = (ejDMapUse) ? -100 : -160;
		
		ejTbar += '<li style="position:relative; float:left; list-style:none; margin:3px 0 0 -1px; padding:0; z-index:' + ejZidx + ';">';
		ejTbar += '	<a href="javascript:;" onclick="ejEdtShowLayer(' + i + ',\'image' + i + '\');" title="이미지"><img class="' + ejPrefix + 'btn' + i + '" src="' + ejEdtBtn + '/btn_image.gif" border="0" alt="이미지" /></a>';
		ejTbar += '	<div id="' + ejPrefix + 'image' + i + '" class="ej-edt-pop-wrap" style="position:absolute; top:20px; left:' + simgLf + 'px; width:280px; overflow:hidden; border:1px solid #ccc; background:#f5f5f5; display:none;">';
		ejTbar += '		<ul style="list-style:none; width:260px; height:170px; margin:8px; padding:0 0 0 1px; overflow:hidden;">';

		ejTbar += '			<li style="float:left; list-style:none; padding:0; width:49%"><a href="javascript:;" onclick="ejEdtImage(\'up\', \'' + i + '\');" class="ej-edt-tab">직접등록</a>';
		ejTbar += '				<div id="ej_image_up' + i + '" style="position:absolute; top:30px; left:0px; width:278px; list-style:none; display:none;">';
		ejTbar += '					<fieldset>';
		ejTbar += '						<legend>이미지업로드</legend>';
		ejTbar += '						<dl style="float:left; width:135px;">';
		ejTbar += '							<dt>등록</dt>';
		ejTbar += '							<dd class="upload"><input id="ej_img_up_btn' + i + '" type="button" value="찾아보기" style="width:70px; height:20px; font-size:11px;" class="ej-edt-pop-btn" /></dd>';
		ejTbar += '							<dt>가로</dt>';
		ejTbar += '							<dd class="upload"><input id="' + ejPrefix + 'frm-upimgwdt' + i + '" type="text" maxlength="4" class="ej-inp short" onblur="ejEdtOnlyNo(this);" /> px</dd>';
		ejTbar += '							<dt style="clear:both;">세로</dt>';
		ejTbar += '							<dd class="upload"><input id="' + ejPrefix + 'frm-upimghet' + i + '" type="text" maxlength="4" class="ej-inp short" onblur="ejEdtOnlyNo(this);" /> px</dd>';
		ejTbar += '						</dl>';
		ejTbar += '						<p id="ej_img_up_preview' + i + '" class="preview">미리보기</p>';
		ejTbar += '					</fieldset>';
		ejTbar += '					<div class="ej-edt-btn_area">';
		ejTbar += '						<input type="button" value="적용" class="ej-edt-pop-btn" onclick="ejEdtUploadChk(\'' + ejTarea[i] + '\',' + i + ');" />&nbsp;';
		ejTbar += '						<input type="button" value="취소" class="ej-edt-pop-btn" onclick="ejEdtShowLayer(' + i + ',\'image' + i + '\');" />';
		ejTbar += '					</div>'; ///
		ejTbar += '				</div>'; ///
		ejTbar += '			</li>'; ///
		
		ejTbar += '			<li style="float:left; list-style:none; padding:0; width:50%"><a href="javascript:;" onclick="ejEdtImage(\'url\', \'' + i + '\');" class="ej-edt-tab">URL등록</a>';
		ejTbar += '				<div id="ej_image_url' + i + '" style="position:absolute; top:30px; left:0px; width:278px; list-style:none; display:block;">';
		ejTbar += '					<fieldset>';
		ejTbar += '						<legend>이미지등록</legend>';
		ejTbar += '						<dl>';
		ejTbar += '							<dt>U R L</dt>';
		ejTbar += '							<dd class="u-once"><input id="' + ejPrefix + 'frm-imgurl' + i + '" type="text" class="ej-inp long" /></dd>';
		ejTbar += '						</dl>';
		ejTbar += '						<dl>';
		ejTbar += '							<dt>가로</dt>';
		ejTbar += '							<dd class="double"><input id="' + ejPrefix + 'frm-imgwdt' + i + '" type="text" maxlength="4" class="ej-inp short" onblur="ejEdtOnlyNo(this);" /> px</dd>';
		ejTbar += '							<dt>세로</dt>';
		ejTbar += '							<dd class="double"><input id="' + ejPrefix + 'frm-imghet' + i + '" type="text" maxlength="4" class="ej-inp short" onblur="ejEdtOnlyNo(this);" /> px</dd>';
		ejTbar += '						</dl>';
		ejTbar += '					</fieldset>';
		ejTbar += '					<div class="ej-edt-btn_area">';
		ejTbar += '						<input type="button" value="적용" class="ej-edt-pop-btn" onclick="ejEdtImageChk(\'' + ejTarea[i] + '\',' + i + ');" />&nbsp;';
		ejTbar += '						<input type="button" value="취소" class="ej-edt-pop-btn" onclick="ejEdtShowLayer(' + i + ',\'image' + i + '\');" />';
		ejTbar += '					</div>';
		ejTbar += '				</div>';
		ejTbar += '			</li>';
		ejTbar += '		</ul>'; ///
		ejTbar += '	</div>'; ///
		ejTbar += '</li>'; ///
/*
		ejTbar += '	</div>';
		ejTbar += '</div>';
		ejTbar += '</li>';
		ejTbar += '</ul>';
	//	ejTbar += '</div>';
	//	ejTbar += '</li>';*/
		var smovLf = (ejDMapUse) ? -120 : -180;
		
		ejTbar += '<li style="position:relative; float:left; list-style:none; margin:3px 0 0 -1px; padding:0; z-index:' + ejZidx + ';">';
		ejTbar += '	<a href="javascript:;" onclick="ejEdtShowLayer(' + i + ',\'movie' + i + '\');" title="동영상"><img class="' + ejPrefix + 'btn' + i + '" src="' + ejEdtBtn + '/btn_movie.gif" border="0" alt="동영상" /></a>';
		ejTbar += '	<div id="' + ejPrefix + 'movie' + i + '" class="ej-edt-pop-wrap" style="position:absolute; top:20px; left:' + smovLf + 'px; width:280px; overflow:hidden; border:1px solid #ccc; background:#f5f5f5; display:none;">';
		ejTbar += '		<fieldset>';
		ejTbar += '			<legend>동영상등록</legend>';
		ejTbar += '			<dl>';
		ejTbar += '				<dt>U R L</dt>';
		ejTbar += '				<dd class="u-once"><input id="' + ejPrefix + 'frm-movurl' + i + '" type="text" class="ej-inp long" /></dd>';
		ejTbar += '			</dl>';
		ejTbar += '			<dl>';
		ejTbar += '				<dt>가로</dt>';
		ejTbar += '				<dd class="double"><input id="' + ejPrefix + 'frm-movwdt' + i + '" type="text" maxlength="3" class="ej-inp short" onblur="ejEdtOnlyNo(this);" /> px</dd>';
		ejTbar += '				<dt>세로</dt>';
		ejTbar += '				<dd class="double"><input id="' + ejPrefix + 'frm-movhet' + i + '" type="text" maxlength="3" class="ej-inp short" onblur="ejEdtOnlyNo(this);" /> px</dd>';
		ejTbar += '			</dl>';
		ejTbar += '		</fieldset>';
		ejTbar += '		<div class="ej-edt-btn_area">';
		ejTbar += '			<input type="button" value="적용" class="ej-edt-pop-btn" onclick="ejEdtMovieChk(\'' + ejTarea[i] + '\',' + i + ');" />&nbsp;';
		ejTbar += '			<input type="button" value="취소" class="ej-edt-pop-btn" onclick="ejEdtShowLayer(' + i + ',\'movie' + i + '\');" />';
		ejTbar += '		</div>';
		ejTbar += '	</div>';
		ejTbar += '</li>';
		
		var sflaLf = (ejDMapUse) ? -140 : -200;
		ejTbar += '<li style="position:relative; float:left; list-style:none; margin:3px 0 0 -1px; padding:0; z-index:' + ejZidx + ';">';
		ejTbar += '	<a href="javascript:;" onclick="ejEdtShowLayer(' + i + ',\'flash' + i + '\');" title="플래시"><img class="' + ejPrefix + 'btn' + i + '" src="' + ejEdtBtn + '/btn_flash.gif" border="0" alt="플래시" /></a>';
		ejTbar += '	<div id="' + ejPrefix + 'flash' + i + '" class="ej-edt-pop-wrap" style="position:absolute; top:20px; left:' + sflaLf + 'px; width:280px; overflow:hidden; border:1px solid #ccc; background:#f5f5f5; display:none;">';
		ejTbar += '		<fieldset>';
		ejTbar += '			<legend>플래시등록</legend>';
		ejTbar += '			<dl>';
		ejTbar += '				<dt>U R L</dt>';
		ejTbar += '				<dd class="u-once"><input id="' + ejPrefix + 'frm-swfurl' + i + '" type="text" class="ej-inp long" /></dd>';
		ejTbar += '			</dl>';
		ejTbar += '			<dl>';
		ejTbar += '				<dt>가로</dt>';
		ejTbar += '				<dd class="double"><input id="' + ejPrefix + 'frm-swfwdt' + i + '" type="text" maxlength="3" class="ej-inp short" onblur="ejEdtOnlyNo(this);" /> px</dd>';
		ejTbar += '				<dt>세로</dt>';
		ejTbar += '				<dd class="double"><input id="' + ejPrefix + 'frm-swfhet' + i + '" type="text" maxlength="3" class="ej-inp short" onblur="ejEdtOnlyNo(this);" /> px</dd>';
		ejTbar += '			</dl>';
		ejTbar += '		</fieldset>';
		ejTbar += '		<div class="ej-edt-btn_area">';
		ejTbar += '			<input type="button" value="적용" class="ej-edt-pop-btn" onclick="ejEdtFlashChk(\'' + ejTarea[i] + '\',' + i + ');" />&nbsp;';
		ejTbar += '			<input type="button" value="취소" class="ej-edt-pop-btn" onclick="ejEdtShowLayer(' + i + ',\'flash' + i + '\');" />';
		ejTbar += '		</div>';
		ejTbar += '	</div>';
		ejTbar += '</li>';
		
		var squotLf = (ejDMapUse) ? -160 : -190;
		ejTbar += '<li style="position:relative; float:left; list-style:none; margin:3px 0 0 -1px; padding:0; z-index:' + ejZidx + ';">';
		ejTbar += '	<a href="javascript:;" onclick="ejEdtShowLayer(' + i + ',\'quote' + i + '\');" title="인용구"><img class="' + ejPrefix + 'btn' + i + '" src="' + ejEdtBtn + '/btn_quote.gif" border="0" alt="인용구" /></a>';
		ejTbar += '	<div id="' + ejPrefix + 'quote' + i + '" class="ej-edt-pop-wrap" style="position:absolute; top:20px; left:' + squotLf + 'px; width:250px; overflow:hidden; border:1px solid #ccc; background:#f5f5f5; display:none;">';
		ejTbar += '		<div class="ej-quote-div" style="border:1px solid #ff0000; background:#ffe6e6;"><a href="javascript:;" onclick="ejEdtQuoteChk(\'' + ejTarea[i] + '\',' + i + ',\'ff0000\',\'ffe6e6\');"><span></span></a></div>';
		ejTbar += '		<div class="ej-quote-div" style="border:1px solid #0078ff; background:#c8ffff;"><a href="javascript:;" onclick="ejEdtQuoteChk(\'' + ejTarea[i] + '\',' + i + ',\'0078ff\',\'c8ffff\');"><span></span></a></div>';
		ejTbar += '		<div class="ej-quote-div" style="border:1px solid #ff8200; background:#fafad2;"><a href="javascript:;" onclick="ejEdtQuoteChk(\'' + ejTarea[i] + '\',' + i + ',\'ff8200\',\'fafad2\');"><span></span></a></div>';
		ejTbar += '		<div class="ej-quote-div" style="border:1px solid #1e821e; background:#c6ff70;"><a href="javascript:;" onclick="ejEdtQuoteChk(\'' + ejTarea[i] + '\',' + i + ',\'1e821e\',\'c6ff70\');"><span></span></a></div>';
		ejTbar += '		<div class="ej-quote-div" style="border:1px solid #9400d3; background:#ffdcff;"><a href="javascript:;" onclick="ejEdtQuoteChk(\'' + ejTarea[i] + '\',' + i + ',\'9400d3\',\'ffdcff\');"><span></span></a></div>';
		ejTbar += '	</div>';
		ejTbar += '</li>';
		
		var semoLf = (ejDMapUse) ? -67 : -116;
		ejTbar += '<li style="position:relative; float:left; list-style:none; margin:3px 0 0 -1px; padding:0; z-index:' + ejZidx + ';">';
		ejTbar += '	<a href="javascript:;" onclick="ejEdtShowLayer(' + i + ',\'emoticon' + i + '\');" title="이모티콘"><img class="' + ejPrefix + 'btn' + i + '" src="' + ejEdtBtn + '/btn_emoticon.gif" border="0" alt="이모티콘" /></a>';
		ejTbar += '	<div id="' + ejPrefix + 'emoticon' + i + '" class="ej-edt-pop-wrap" style="position:absolute; top:20px; left:' + semoLf + 'px; width:155px; border:1px solid #ccc; background:#f5f5f5; display:none;">';
		ejTbar += '		<ul style="list-style:none; width:140px; height:100px; margin:8px; padding:0 0 0 1px; overflow:hidden;">';
		for (var c = 0; c < ejEdtEmoticon.length; c++) {
			ejTbar += '		<li style="float:left; list-style:none; margin:1px; padding:0;"><a href="javascript:;" onclick="ejEdtInEmoticon(\'' + ejTarea[i] + '\',' + i + ',\'' + ejEdtEmoticon[c] + '\');" class="ej-edt-a3" title="emo_' + ejEdtEmoticon[c] + '"><img src="' + ejEdtEmo + "/emo_" + ejEdtEmoticon[c] + '" align="middle" border="0" /></a></li>'
		}
		ejTbar += '		</ul>';
		ejTbar += '	</div>';
		ejTbar += '</li>';
		
		var scharLf = (ejDMapUse) ? -215 : -272;
		ejTbar += '<li style="position:relative; float:left; list-style:none; margin:3px 0 0 -1px; padding:0; z-index:' + ejZidx + ';">';
		ejTbar += '	<a href="javascript:;" onclick="ejEdtShowLayer(' + i + ',\'special' + i + '\');" title="특수문자"><img class="' + ejPrefix + 'btn' + i + '" src="' + ejEdtBtn + '/btn_specialchar_' + ((ejDMapUse) ? "off" : "on") + '.gif" border="0" alt="특수문자" /></a>';
		ejTbar += '	<div id="' + ejPrefix + 'special' + i + '" class="ej-edt-pop-wrap" style="position:absolute; top:20px; left:' + scharLf + 'px; width:290px; border:1px solid #ccc; background:#f5f5f5; display:none;">';
		ejTbar += '		<ul style="list-style:none; width:278px; height:150px; margin:8px; padding:0 0 0 1px; overflow:hidden;">';
		for (var c = 0; c < ejEdtSChar.length; c++) {
			var dis = (c == 0) ? "block" : "none";
			ejTbar += '		<li style="float:left; list-style:none; padding:0; width:16%"><a href="javascript:;" onclick="ejEdtSpeChar(\'' + i + '\',\'' + c + '\');" class="ej-edt-tab">문자' + (c + 1) + '</a>';
			ejTbar += '			<ul id="ej_special_' + i + c + '" style="position:absolute; top:30px; left:-32px; width:278px; list-style:none; display:' + dis + ';">';
			for (var s = 0; s < eval('ejEdtSChar[' + c + ']').length; s++) {
				ejTbar += '			<li style="float:left; list-style:none; margin:1px; padding:0r;"><a href="javascript:;" onclick="ejEdtInSpeChar(\'' + ejPrefix + 'frm-specialchar' + i + '\',\'' + ejEdtSChar[c][s] + '\');" class="ej-edt-a4" title="' + ejEdtSChar[c][s] + '">' + ejEdtSChar[c][s] + '</a></li>'
			}
			ejTbar += '			</ul>';
			ejTbar += '		</li>'
		}
		ejTbar += '		</ul>';
		ejTbar += '		<fieldset>';
		ejTbar += '			<legend>특수문자 입력</legend>';
		ejTbar += '			<dl>';
		ejTbar += '				<dt>선택문자</dt>';
		ejTbar += '				<dd class="u-once"><input id="' + ejPrefix + 'frm-specialchar' + i + '" type="text" class="ej-no-inp long" readonly="readonly" /></dd>';
		ejTbar += '			</dl>';
		ejTbar += '		</fieldset>';
		ejTbar += '		<div class="ej-edt-btn_area">';
		ejTbar += '			<input type="button" value="적용" class="ej-edt-pop-btn" onclick="ejEdtSpeCharChk(\'' + ejTarea[i] + '\',' + i + ');" />&nbsp;';
		ejTbar += '			<input type="button" value="취소" class="ej-edt-pop-btn" onclick="ejEdtShowLayer(' + i + ',\'special' + i + '\');" />';
		ejTbar += '		</div>';
		ejTbar += '	</div>';
		ejTbar += '</li>';
		if (ejDMapUse) {
			ejTbar += '<li style="position:relative; float:left; list-style:none; margin:3px 0 0 -1px; padding:0; z-index:' + ejZidx + ';">';
			ejTbar += '<a href="javascript:;" onclick="" title="지도"><img class="' + ejPrefix + 'btn' + i + '" src="' + ejEdtBtn + '/btn_map.gif" border="0" alt="지도" /></a>';
			ejTbar += '</li>'
		}
	}
	ejTbar += '</ul>';
	return ejTbar
}
var ejEdtGetMode = 1;

function ejEdtSetMode(tNm, no) {
	
	if ($("#ejModeEditor" + no).css("display") == "none") {
		ejEdtGetMode = 0;
		ejEdtHideLayer();
		ejEdtMenuOpacity(no, '0.3', 'disabled');
		$('#ejEdt_' + tNm).hide();
		$('#ejModeSource' + no).hide();
		$('#ejModeEditor' + no).show();
		document.getElementsByName(tNm)[0].style.display = "inline";
		document.getElementsByName(tNm)[0].value = document.getElementById('ejEdt_' + tNm).contentWindow.document.body.innerHTML;
		document.getElementsByName(tNm)[0].focus();
		$("#resize_ejEdt_" + tNm).hide()
	} else {
		ejEdtGetMode = 1;
		ejEdtMenuOpacity(no, '1.0', '');
		$('#ejEdt_' + tNm).show();
		$('#ejModeSource' + no).show();
		$('#ejModeEditor' + no).hide();
		document.getElementsByName(tNm)[0].style.display = "none";
		document.getElementById('ejEdt_' + tNm).contentWindow.document.body.innerHTML = document.getElementsByName(tNm)[0].value;
		document.getElementById('ejEdt_' + tNm).contentWindow.focus();
		$("#resize_ejEdt_" + tNm).show()
	}
}

function ejEdtMenuOpacity(no, opa, dis) {
	$(".ej-edt-menu > li > a > img." + ejPrefix + "btn" + no).css({
		"opacity": opa
	}).attr({
		"disabled": dis
	})
}
var ejOldLayer = "";

function ejEdtShowLayer(no, m_lay) {
	ejEdtHideLayer();
	if (m_lay != ejOldLayer && ejEdtGetMode == 1) {
		ejOldLayer = m_lay;		
		if(m_lay.substring(0,5) == 'image'){
			ejEdtImage('up',no);
		}
		
		$("#" + ejPrefix + m_lay).slideDown(250).css({
			"z-index": 9999
		})
	} else {
		$("#" + ejPrefix + m_lay).fadeOut(250);
		ejOldLayer = ""
	}
}

function ejEdtImage(t, i) {
	$("#ej_image_up" + i).parent().find('a').removeClass('on_active_tab');
	$("#ej_image_url" + i).parent().find('a').removeClass('on_active_tab');
	if (t == "up") {
		$("#ej_image_up" + i).show();
		$("#ej_image_url" + i).hide();		
		$("#ej_image_up" + i).parent().find('a').addClass('on_active_tab');
		new AjaxUpload('#ej_img_up_btn' + i, {
			action: ejEdtPath + '/filectrl.php',
			name: 'ej_edt_file',
			data: {},
			onSubmit: function (file, ext) {
				if (ext && /^(jpg|png|jpeg|gif)$/.test(ext)) {
					this.setData({
						'preview': 'ej_img_up_preview' + i
					});
					$('#ej_img_up_preview' + i).text('업로드중')
				} else {
					$('#ej_img_up_preview' + i).text('등록불가!');
					return false
				}
			}
		})
	} else {
		$("#ej_image_url" + i).parent().find('a').addClass('on_active_tab');
		$("#ej_image_url" + i).show();
		$("#ej_image_up" + i).hide()
	}
}

function ejEdtSpeChar(i, c) {
	for (var s = 0; s < ejEdtSChar.length; s++) {
		if (s == c) $("#ej_special_" + i + s).show();
		else $("#ej_special_" + i + s).hide()
	}
}

function ejEdtInSpeChar(i, c) {
	$("#" + i).val($("#" + i).val() + c)
}

function ejEdtHideLayer() {
	for (var x = 0; x < ejEdtCnt; x++) {
		for (var s = 0; s < ejLayId.length; s++) {
			$("#" + ejPrefix + ejLayId[s] + x).hide()
		}
	}
}

function ejEdt2Html() {
	for (var i = 0; i < ejTarea.length; i++) {
		document.getElementsByName(ejTarea[i])[0].value = document.getElementById("ejEdt_" + ejTarea[i]).contentWindow.document.body.innerHTML
	}
}

function ejEdt2Editor() {
	for (var i = 0; i < ejTarea.length; i++) {
		document.getElementById("ejEdt_" + ejTarea[i]).contentWindow.document.body.innerHTML = document.getElementsByName(ejTarea[i])[0].value
	}
}

function ejEdtExec(tNm, exe, bool, value, no) {
	ejOldLayer = "";
	if ($("ejEdt_" + tNm).css("display") != "none") {
		var ejEditors = document.getElementById('ejEdt_' + tNm).contentWindow;
		if (navigator.appName != "Microsoft Internet Explorer" && exe == "backcolor") exe = "hilitecolor";
		ejEditors.document.execCommand(exe, bool, value);
		ejEdt2Html();
		ejEdtHideLayer()
	} else {
		ejEdtHideLayer()
	}
}

function ejEdtLineHeight(tNm, i, lh) {
	if (document.selection) var txt = ejRng[i].htmlText;
	else if ($.browser.safari) var txt = getSelectedHTML(tNm);
	else var txt = getSelHtml(document.getElementById('ejEdt_' + tNm).contentWindow.document.getSelection());
	var source = '<div style="line-height:' + lh + ';">' + txt + '</div><br />';
	ejEdtIstHtml(i, tNm, source);
	ejEdtShowLayer('' + i + '', 'lheight' + i + '')
}

function getSelHtml(html) {
	html = html.replace(new RegExp(/[<][^>]*[>]/gi), "");
	html = html.replace(/(\r\n|\r|\n)/ig, "<br />");
	return html
}

function getSelectedHTML(tNm) {
	var rng = null,
		html = "";
	if (document.getElementById('ejEdt_' + tNm).contentWindow.document.selection && document.getElementById('ejEdt_' + tNm).contentWindow.document.selection.createRange) {
		rng = document.getElementById('ejEdt_' + tNm).contentWindow.document.selection.createRange();
		html = document.getElementById('ejEdt_' + tNm).htmlText || ""
	} else if (document.getElementById('ejEdt_' + tNm).contentWindow.getSelection) {
		rng = document.getElementById('ejEdt_' + tNm).contentWindow.getSelection();
		if (rng.rangeCount > 0 && document.getElementById('ejEdt_' + tNm).contentWindow.XMLSerializer) {
			rng = rng.getRangeAt(0);
			html = new XMLSerializer().serializeToString(rng.cloneContents())
		}
	}
	return html
}

function ejEdtLinkChk(tNm, i) {
	if ($('#' + ejPrefix + 'frm-linkurl' + i).val() == "") {
		alert("링크URL을 입력하세요.");
		$('#' + ejPrefix + 'frm-linkurl' + i).focus();
		return false
	}
	var url = $('#' + ejPrefix + 'frm-linkurl' + i).val();
	var name = ($('#' + ejPrefix + 'frm-lintext' + i).val() != "") ? $('#' + ejPrefix + 'frm-lintext' + i).val() : $('#' + ejPrefix + 'frm-linkurl' + i).val();
	var target = ($('#' + ejPrefix + 'frm-target1' + i).is(":checked") == true) ? "_blank" : "_self";
	var source = '<a href="' + url + '" target="' + target + '">' + name + '</a>';
	ejEdtIstHtml(i, tNm, source);
	$('#' + ejPrefix + 'frm-linkurl' + i).val("");
	$('#' + ejPrefix + 'frm-lintext' + i).val("");
	$('#' + ejPrefix + 'frm-target1' + i).attr("checked", "checked");
	ejEdtShowLayer('' + i + '', 'link' + i + '')
}

function ejEdtTableChk(tNm, i) {
	var cols = 2,
		rows = 2,
		border = 0,
		cpadding = -1,
		cspacing = -1,
		align, width, height;
	if ($('#' + ejPrefix + 'frm-tblcols' + i).val() == "") {
		alert("가로개수를 입력하세요.");
		$('#' + ejPrefix + 'frm-tblcols' + i).focus();
		return false
	}
	if ($('#' + ejPrefix + 'frm-tblrows' + i).val() == "") {
		alert("세로개수를 입력하세요.");
		$('#' + ejPrefix + 'frm-tblrows' + i).focus();
		return false
	}
	cols = $('#' + ejPrefix + 'frm-tblcols' + i).val();
	rows = $('#' + ejPrefix + 'frm-tblrows' + i).val();
	border = ($('#' + ejPrefix + 'frm-tblbrd' + i).val()) ? $('#' + ejPrefix + 'frm-tblbrd' + i).val() : 0;
	cpadding = ($('#' + ejPrefix + 'frm-tblcpad' + i).val()) ? $('#' + ejPrefix + 'frm-tblcpad' + i).val() : 0;
	cspacing = ($('#' + ejPrefix + 'frm-tblspac' + i).val()) ? $('#' + ejPrefix + 'frm-tblspac' + i).val() : 0;
	align = ($('#' + ejPrefix + 'frm-tblagn' + i).val()) ? $('#' + ejPrefix + 'frm-tblagn' + i).val() : "left";
	width = ($('#' + ejPrefix + 'frm-tblwdt' + i).val()) ? $('#' + ejPrefix + 'frm-tblwdt' + i).val() : 400;
	height = ($('#' + ejPrefix + 'frm-tblhet' + i).val()) ? $('#' + ejPrefix + 'frm-tblhet' + i).val() : (rows * 20);
	var source = "";
	source += '<table border="' + border + '" cellpadding="' + cpadding + '" cellspacing="' + cspacing + '" width="' + width + '" height="' + height + '" align="' + align + '">';
	for (var y = 0; y < rows; y++) {
		source += "<tr>";
		for (var x = 0; x < cols; x++) source += '<td>&nbsp;</td>';
		source += "</tr>"
	}
	source += "</table><br />";
	ejEdtIstHtml(i, tNm, source);
	$('#' + ejPrefix + 'frm-tblcols' + i).val("3");
	$('#' + ejPrefix + 'frm-tblrows' + i).val("3");
	$('#' + ejPrefix + 'frm-tblbrd' + i).val("1");
	$('#' + ejPrefix + 'frm-tblcpad' + i).val("");
	$('#' + ejPrefix + 'frm-tblspac' + i).val("");
	$('#' + ejPrefix + 'frm-tblagn' + i).val("left");
	$('#' + ejPrefix + 'frm-tblwdt' + i).val("");
	$('#' + ejPrefix + 'frm-tblhet' + i).val("");
	ejEdtShowLayer('' + i + '', 'table' + i + '')
}

function ejEdtMovieChk(tNm, i) {
	if ($('#' + ejPrefix + 'frm-movurl' + i).val() == "") {
		alert("동영상 URL을 입력하세요.");
		$('#' + ejPrefix + 'frm-movurl' + i).focus();
		return false
	}
	var url = $('#' + ejPrefix + 'frm-movurl' + i).val();
	var width = ($('#' + ejPrefix + 'frm-movwdt' + i).val()) ? $('#' + ejPrefix + 'frm-movwdt' + i).val() : 400;
	var height = ($('#' + ejPrefix + 'frm-movhet' + i).val()) ? $('#' + ejPrefix + 'frm-movhet' + i).val() : 300;
	var source = '<embed src="' + url + '" style="width:' + width + 'px; height:' + height + 'px;"></embed>';
	ejEdtIstHtml(i, tNm, source);
	$('#' + ejPrefix + 'frm-movurl' + i).val("");
	$('#' + ejPrefix + 'frm-movwdt' + i).val("");
	$('#' + ejPrefix + 'frm-movhet' + i).val("");
	ejEdtShowLayer('' + i + '', 'movie' + i + '')
}

function ejEdtFlashChk(tNm, i) {
	if ($('#' + ejPrefix + 'frm-swfurl' + i).val() == "") {
		alert("플래시 URL을 입력하세요.");
		$('#' + ejPrefix + 'frm-swfurl' + i).focus();
		return false
	}
	var url = $('#' + ejPrefix + 'frm-swfurl' + i).val();
	var width = ($('#' + ejPrefix + 'frm-swfwdt' + i).val()) ? $('#' + ejPrefix + 'frm-swfwdt' + i).val() : 400;
	var height = ($('#' + ejPrefix + 'frm-swfhet' + i).val()) ? $('#' + ejPrefix + 'frm-swfhet' + i).val() : 300;
	var source = '';
	source += '<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,0,0" width="' + width + '" height="' + height + '">';
	source += '<param name="movie" value="' + url + '" />';
	source += '<param name="wmode" value="transparent" />';
	source += '<!--[if !IE]> <-->';
	source += '<object type="application/x-shockwave-flash" data="' + url + '" width="' + width + '" height="' + height + '">';
	source += '<param name="wmode" value="transparent" />';
	source += '<p>사용자등록 플래시</p>';
	source += '</object>';
	source += '<!--> <![endif]-->';
	source += '</object>';
	ejEdtIstHtml(i, tNm, source);
	$('#' + ejPrefix + 'frm-swfurl' + i).val("");
	$('#' + ejPrefix + 'frm-swfwdt' + i).val("");
	$('#' + ejPrefix + 'frm-swfhet' + i).val("");
	ejEdtShowLayer('' + i + '', 'flash' + i + '')
}

function ejEdtImageChk(tNm, i) {
	if ($('#' + ejPrefix + 'frm-imgurl' + i).val() == "") {
		alert("이미지 URL을 입력하세요.");
		$('#' + ejPrefix + 'frm-imgurl' + i).focus();
		return false
	}
	var url = $('#' + ejPrefix + 'frm-imgurl' + i).val();
	var width = ($('#' + ejPrefix + 'frm-imgwdt' + i).val()) ? $('#' + ejPrefix + 'frm-imgwdt' + i).val() : 0;
	var height = ($('#' + ejPrefix + 'frm-imghet' + i).val()) ? $('#' + ejPrefix + 'frm-imghet' + i).val() : 0;
	var source = '<img src="' + url + '" style="';
	source += (width > 0) ? "width:" + width + "px;" : "";
	source += (height > 0) ? "height:" + height + "px;" : "";
	source += '" />';
	ejEdtIstHtml(i, tNm, source);
	$('#' + ejPrefix + 'frm-imgurl' + i).val("");
	$('#' + ejPrefix + 'frm-imgwdt' + i).val("");
	$('#' + ejPrefix + 'frm-imghet' + i).val("");
	ejEdtShowLayer('' + i + '', 'image' + i + '')
}

function ejEdtUploadChk(tNm, i) {
	if ($('#ej_img_up_preview' + i).children().is("img") == false) {
		alert("이미지를 업로드하세요.");
		return false
	}
	var url = $('#ej_img_up_preview' + i + ' > img').attr("src");
	var width = ($('#' + ejPrefix + 'frm-upimgwdt' + i).val()) ? $('#' + ejPrefix + 'frm-upimgwdt' + i).val() : 0;
	var height = ($('#' + ejPrefix + 'frm-upimghet' + i).val()) ? $('#' + ejPrefix + 'frm-upimghet' + i).val() : 0;
	var source = '<img src="' + url + '" style="';
	source += (width > 0) ? "width:" + width + "px;" : "";
	source += (height > 0) ? "height:" + height + "px;" : "";
	source += '" />';
	ejEdtIstHtml(i, tNm, source);
	$('#ej_img_up_preview' + i).html("미리보기");
	$('#' + ejPrefix + 'frm-upimgwdt' + i).val("");
	$('#' + ejPrefix + 'frm-upimghet' + i).val("");
	ejEdtShowLayer('' + i + '', 'image' + i + '')
}

function ejEdtQuoteChk(tNm, i, border, bcolor) {
	var source = '<div class="ej-edt-quote" style="margin:3px; padding:5px; border:1px solid #' + border + '; background:#' + bcolor + '; ">&nbsp;</div>&nbsp;';
	ejEdtIstHtml(i, tNm, source);
	ejEdtShowLayer('' + i + '', 'quote' + i + '')
}

function ejEdtInEmoticon(tNm, i, emo) {
	if (emo) {
		var source = '<img src="' + ejEdtEmo + "/emo_" + emo + '" border="0" />';
		ejEdtIstHtml(i, tNm, source);
		ejEdtShowLayer('' + i + '', 'emoticon' + i + '')
	}
}

function ejEdtSpeCharChk(tNm, i) {
	if ($('#' + ejPrefix + 'frm-specialchar' + i).val() == "") {
		alert("입력하실 특수문자를 선택하세요.");
		$('#' + ejPrefix + 'frm-specialchar' + i).focus();
		return false
	}
	var chars = $('#' + ejPrefix + 'frm-specialchar' + i).val();
	var source = chars;
	ejEdtIstHtml(i, tNm, source);
	$('#' + ejPrefix + 'frm-specialchar' + i).val("");
	ejEdtShowLayer('' + i + '', 'special' + i + '')
}

function ejEdtIstHtml(i, tNm, source) {
	if (document.selection) {
		if (ejRng[i].length > 0) {
			ejRng[i].select();
			ejRng[i].pasteHTML(source)
		} else {
			if (ejRng[i].length > 0) {
				document.getElementById('ejEdt_' + tNm).contentWindow.document.selection.createRange().pasteHTML(source)
			} else {
				document.getElementById('ejEdt_' + tNm).contentWindow.focus();
				document.getElementById('ejEdt_' + tNm).contentWindow.document.selection.createRange().pasteHTML(source)
			}
		}
	} else {
		ejEdtMakeHtml(document.getElementById('ejEdt_' + tNm).contentWindow.document, source)
	}
	ejEdt2Html()
}

function ejEdtMakeHtml(ifrm, html) {
	var ejRandStr = "ejEdtMakeHtml_" + Math.round(Math.random() * 100000000);
	ifrm.execCommand("insertimage", false, ejRandStr);
	var pat = new RegExp("<[^<]*" + ejRandStr + "[^>]*>");
	var current_html = ifrm.body.innerHTML = ifrm.body.innerHTML.replace(pat, html)
}

function ejEdtOnlyNo(obj) {
	var retxt = "";
	for (i = 0; i < obj.value.length; i++) {
		if (obj.value.charAt(i) >= 0 || obj.value.charAt(i) <= 9) {
			retxt += obj.value.charAt(i)
		}
	}
	obj.value = retxt
}

function cancelEvent(e, c) {
	e = e || window.event;
	e.returnValue = false;
	if (e.preventDefault) e.preventDefault();
	if (c) {
		e.cancelBubble = true;
		if (e.stopPropagation) e.stopPropagation()
	}
}

function ejEditor() {
	if (ejEdtInfo.substring(0, 8) != "ejEditor") {
		var notEdt = 0;
		if (notEdt == 0) {
			alert("에디터 정보를 변경하시면 사용 할 수 없습니다.");
			notEdt++
		}
	} else {
		if (myagent == 'ns' && navigator.userAgent.indexOf('Trident/7.0') != -1) {
			myagent = 'ie11';
		}

		var ejTareaObj = $("textarea");
		for (var i = 0; i < ejTareaObj.length; i++) {
			if ($(ejTareaObj[i]).attr("lang") && $(ejTareaObj[i]).attr("lang").substring(0, 9) == "ej-editor") {
				ejTarea[ejEdtCnt] = $(ejTareaObj[i]).attr("name");
				ejEdtCnt++
			}
		}
		for (var i = 0; i < ejTarea.length; i++) {
			var ejTareaOrg = document.getElementsByName(ejTarea[i])[0];
			var ejCretIfrm = document.createElement("iframe");
			$(ejCretIfrm).attr({
				"id": "ejEdt_" + ejTarea[i],
				"name": "ejEdt_" + ejTarea[i],
				"scrolling": "auto",
				"frameBorder": "no",
				"marginWidth": "0",
				"marginHeight": "0"
			});
			$(ejCretIfrm).css({
				"width": "95%",
				"height": ($(ejTareaOrg).height() - ejResHeight) + "px",
				"border": "1px solid #ddd",
				"padding": "3px"				
			});
			ejTareaOrg.parentNode.insertBefore(ejCretIfrm, ejTareaOrg);
			var ejIfrmDoc = document.getElementById("ejEdt_" + ejTarea[i]).contentWindow;
			ejIfrmDoc.document.open();
			ejIfrmDoc.document.write("<html>");
			ejIfrmDoc.document.write("<head>");
			ejIfrmDoc.document.write("<title>" + ejEdtInfo + "</title>");
			ejIfrmDoc.document.write("<link href=\"" + ejEdtPath + "/common.css\" rel=\"stylesheet\" type=\"text/css\" />");
			ejIfrmDoc.document.write("</head><body>" + ejTareaOrg.value + "</body></html>");
			ejIfrmDoc.document.close();
			ejIfrmDoc.document.designMode = "on";
			$(ejTareaOrg).css({
				"color": "#999",
				"font-size": "12px",
				"font-family": "gulim",
				"padding": "3px",
				"border": "1px solid #ddd",
				"background": "#fff",
				"display": "none"
			});
			$(ejIfrmDoc.document).bind('mousedown', ejEdt2Html);
			$(ejIfrmDoc.document).bind('keydown', ejEdt2Html);
			$(ejIfrmDoc.document).bind('keyup', ejEdt2Html);
			$(ejIfrmDoc.document).bind('blur', ejEdt2Html);
			$(ejTareaOrg).bind('mousedown', ejEdt2Editor);
			$(ejTareaOrg).bind('keydown', ejEdt2Editor);
			$(ejTareaOrg).bind('keyup', ejEdt2Editor);
			$(ejTareaOrg).bind('blur', ejEdt2Editor);
			/*$("#ejEdt_" + ejTarea[i]).after('<div id="resize_ejEdt_' + ejTarea[i] + '" style="width:' + ($("#ejEdt_" + ejTarea[i]).width() + 6) + 'px;" class="ej-editor-resize-bar" />').resizable({
				'maxHeight': 9999,
				'plusHeight': ejResHeight
			});*/
			$(ejIfrmDoc.document).bind("click", function () {
				ejOldLayer = "";
				ejEdtHideLayer()
			});
			$(ejIfrmDoc.document).bind("keydown", {
				rngNo: i
			},
			function (e) {
				var range = (this.getSelection) ? this.getSelection() : this.selection.createRange();
				if (e.keyCode == 13 && $.browser.msie && (range.parentElement && range.parentElement.tagName != "LI")) {
					cancelEvent(e, true);
					range.pasteHTML("<br />");
					range.select();
					return false
				}
				ejTareaOrg.value = this.body.innerHTML;
				ejRng[e.data.rngNo] = range
			});
			$(ejIfrmDoc.document).bind("keypress", {
				rngNo: i
			},
			function (e) {
				var range = (this.getSelection) ? this.getSelection() : this.selection.createRange();
				ejRng[e.data.rngNo] = range
			});
			$(ejIfrmDoc.document).bind("click", {
				rngNo: i
			},
			function (e) {
				var range = (this.getSelection) ? this.getSelection() : this.selection.createRange();
				ejRng[e.data.rngNo] = range
			});
			$(ejIfrmDoc.document).bind("focus", {
				rngNo: i
			},
			function (e) {
				var range = (this.getSelection) ? this.getSelection() : this.selection.createRange();
				ejRng[e.data.rngNo] = range
			});
			$(ejIfrmDoc.document).bind("mouseup", {
				rngNo: i
			},
			function (e) {
				var range = (this.getSelection) ? this.getSelection() : this.selection.createRange();
				ejRng[e.data.rngNo] = range
			});
			var ejTbarStyle = ($(ejTareaOrg).attr("lang").substring(9, 10)) ? $(ejTareaOrg).attr("lang").substring(9, 10) : 1;
			var ejTbarSource = ($(ejTareaOrg).attr("lang").substring(10, 11)) ? $(ejTareaOrg).attr("lang").substring(10, 11) : 1;
			var ejTbars = ejSetTbar(ejTbarStyle, ejTbarSource, i);
			var ejEditTdiv = document.createElement("div");
			$(ejEditTdiv).css({
				"margin": "0",
				"padding": "0",
				'width':'95%'			
			});
			ejCretIfrm.parentNode.insertBefore(ejEditTdiv, ejCretIfrm);
			ejEditTdiv.innerHTML = ejTbars
		}
	}
}