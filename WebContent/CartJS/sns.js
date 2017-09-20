function showDiv(showID){
	if( showID != "snsHelp" && !checkMember()){
		return false;
	}
	if( showID == "snsSend"){
		$j("#comment0").val("내용을 입력하세요.");
		$j("#cmtByte").html("0");
		if($j("input[name=send_chk]:checkbox:checked").length == 0){
			alert("sns채널을 선택해주세요.");
			return false;
		}
	}
	if(preShowID != showID){
		if(preShowID!="" && $j("#"+preShowID).length > 0) $j("#"+preShowID).css({visibility:'hidden'});
		if($j("#"+showID).length > 0) $j("#"+showID).css({visibility:'visible'});
		preShowID = showID;
	}else{
		if($j("#"+showID).length > 0) $j("#"+showID).css({visibility:'hidden'});
		preShowID = "";
	}
	return false;
}

function checkMember(){
	if(memId == ""){
		alert("로그인이 필요한 서비스입니다.");
		return false;
	}
	return true;
}
function snsImg(){
	$j.post("/front/snsAction.php", { "method": "snsImage" }, function(data){
		if (data.result == 'true') {
			if ( data.sns_image != "" )
				$j("#snsThumb").attr("src", data.sns_image);
		}
		else {
			$j("#snsThumb").attr("src", "/images/design/sns_default.jpg");
			//alert("에러 발생 : " + data.message );
		}
	}, "json");
}
function setImgChange(type){
	if ( $j("#"+type+"LoginBtnChk").val() == "Y" ) {
		sImg1 ="_off.gif";sImg2 ="_on.gif";
		chkBoolean = false;
	}else{
		sImg1 ="_on.gif";sImg2 ="_off.gif";
		chkBoolean = true;
	}
	for(k=0;k<5;k++){
		
		var setName = "#"+type+"LoginBtn"+k;
		if($j(setName).length > 0){
			$j(setName).attr('src',$j(setName).attr('src').replace(sImg1,sImg2));
		}
	}
	if($j("#send_chk_"+type).length > 0){ 
		$j("#send_chk_"+type).attr("disabled",chkBoolean);
		$j("#send_chk_"+type).attr("checked",false); 
	}
}
function snsInfo(){
	$j.post("/front/snsAction.php", { "method": "snsLoginCheck" },
	 function(data){
		if (data.result == 'true') {
			if (data.twitter == undefined ) {
				$j("#tLoginBtnChk").val("NON");
				setImgChange("t");
			}else if ( data.twitter == "N") {
				$j("#tLoginBtnChk").val("N");
				setImgChange("t");
			}else if ( data.twitter == "Y") {
				$j("#tLoginBtnChk").val("Y");
				setImgChange("t");
			}
			if (data.facebook == undefined ) {
				$j("#fLoginBtnChk").val("NON");
				setImgChange("f");
			}else if ( data.facebook == "N") {
				$j("#fLoginBtnChk").val("N");
				setImgChange("f");
			}else if ( data.facebook == "Y") {
				$j("#fLoginBtnChk").val("Y");
				setImgChange("f");
			}
		}
		else {
			//alert("에러 발생 : " + data.message );
		}
	 }, "json");
}
function changeSnsInfo(type){
	if(checkMember()){
		var id = "#"+type+"LoginBtnChk";
		if (  $j(id).val() == "Y" || $j(id).val() == "N" ) {
			if ( $j(id).val() == "Y" ) {
				$j(id).val("N");
				setImgChange(type);
			}
			else if ( $j(id).val() == "N" ){
				$j(id).val("Y");
				setImgChange(type);
			}
			//sns 로그아웃
			$j.post("/front/snsAction.php", { "method": "snsChange",  "sns_type":type,  "sns_state":$j(id).val() },
			 function(data){
				if (data.result == 'true') {
				}
				else {
					alert("에러 발생 : " + data.message );
				}
			 }, "json");
		}else{
			if(type == "t") {
				window.open("/front/snsLogin.php?type="+type,  'snsLogin', 'width=800, height=500, top=0, left=0, scrollbars=yes');
			}else if(type == "f") {
				window.open("/front/facebook.php",  'snsLogin', 'width=1000, height=630, top=0, left=0, scrollbars=yes');
			}
			snsImg();
		}
	}
}
function snsReg_top(){
	if ( !checkMember() ) return false;
	if($j("input[name=send_chk]:checkbox:checked").length == 0){
		alert("sns채널을 선택해주세요.");
		return false;
	}
	if ( $j.trim($j("#comment0").val()) == '' ){
		alert("내용을  입력해 주십시오.");
		return;
	}
	$j("input[name=send_chk]").each(
		function(){
			if(this.checked)
				snsType += this.value+",";
		}
	)
	snsCmt = $j.trim($j('#comment0').val());
	snsCommonReg(snsType);
	$j("#comment0").val("");
	snsType ="";
	showDiv('snsSend');
}

function snsReg(){
	if ( !checkMember() ) return false;

	if($j("#tLoginBtnChk").val() != "Y" && $j("#fLoginBtnChk").val() != "Y" && $j("#mLoginBtnChk").val() != "Y"){
		alert("공유할 채널을 선택하세요.");
		return;
	}
	if ( $j.trim($j("#comment").val()) == '' ){
		alert("내용을  입력해 주십시오.");
		return;
	}
	if ( $j("#tLoginBtnChk").val() == "Y") {
		snsType +="t,";
	}
	if ( $j("#fLoginBtnChk").val() == "Y") {
		snsType +="f,";
	}
	snsCmt = $j.trim($j('#comment').val());
	snsCommonReg(snsType);	
	$j("#comment").val("");
	snsType ="";
}

function snsCommonReg(snsType){
	$j.post("/front/snsAction.php",
		{ method: "regPcode", pcode: pcode}
		,function(data){
			if ( data.result == 'true' ) {
				snsLink = $j.trim(data.sns_url);
				$j.post(
					"/front/snsAction.php",
					{ method: "regSns", sns_type:snsType, pcode: pcode, comment: snsCmt },
					  
					  function(data){
						if ( data.result == 'true' ) {
							if (snsType.indexOf("t") >-1) {
								$j.post(
									"/front/twitterReg.php",
									{comment: snsCmt+" | "+snsLink, seq: data.seq, name:productName },
									  function(data){
										if ( data.result == 'true' ) {
											showSnsComment();
										}else{
											showSnsComment();alert("twitter error : " + data.message );
										}
									},"json"
								)				
							}
							if ( snsType.indexOf("f") >-1) {
								$j.post(
									"/front/facebookReg.php",
									{comment: snsCmt, seq: data.seq , link:snsLink, picture :fbPicture, name:productName },
									  function(data){
										if ( data.result == 'true' ) {
											showSnsComment();
										}else{
											showSnsComment();alert("facebook error: " + data.message );
										}
									},"json"
								)
							}							
						}
						else {
							alert("에러 발생 : " + data.message );
						}
					},
					"json"
				);
			}
			else {
				alert("에러 발생 " + data.message);
			}

		},
		"json"
	);
}

function CopyUrl(){
	if ( !checkMember() ) return false;
	$j.post("/front/snsAction.php", { method: "regPcode", pcode: pcode}
		,function(data){
			if ( data.result == 'true' ) {
				window.clipboardData.setData("Text", data.sns_url);
				$j.post(
					"/front/snsAction.php",
					{ method: "regSnsUrl", pcode: pcode},
					  function(data){
						if ( data.result == 'true' ) {
							alert("URL이 복사되었습니다.\n블로그나 메신저 창에 붙여넣기 해보세요!");
							showSnsComment();
						}
						else {

							alert("에러 발생 : " + data.message );
						}
					},
					"json"
				);
			}
			else {
				alert("에러 발생 " + data.message);
			}
		},
		"json"
	)
}

function CopyUrl2(){
	if ( !checkMember() ) return false;
	if(pcode == ""){ alert("상품을 선택하세요.");return false;}
	$j.post("/front/snsAction.php",
		{ method: "regGonggu", pcode: pcode}
		,function(data){
			if ( data.result == 'true' ) {
				window.clipboardData.setData("Text", data.sns_url);
				$j.post(
					"/front/snsAction.php",
					{ method: "regGongguUrl", pcode: pcode},
					  function(data){
						if ( data.result == 'true' ) {
							alert("URL이 복사되었습니다.\n블로그나 메신저 창에 붙여넣기 해보세요!");
							showGongguCmt();
						}
						else {

							alert("에러 발생 : " + data.message );
						}
					},
					"json"
				);
			}
			else {
				alert("에러 발생 " + data.message);
			}
		},
		"json"
	);
}

function CopyBodUrl(){
	window.clipboardData.setData("Text", bodUrl);
}

function showSnsComment(block ,pgid){
	$j.post(
		"/front/snsComment.php",
		{pcode: pcode, gotopage :pgid, block :block},
		  function(data){
			$j("#snsBoardList").html(data);
		}
	)	
}

function CheckStrLen(maxlen,field,pos) {
	var fil_str = field.value;
	var fil_len = 0;
	fil_len =  field.value.length;
	//alert(this.value);
	if(pos =='top')
		$j("#cmtByte").html(fil_len);
	if (fil_len > maxlen ) {
	   alert("총 " + maxlen + "자 까지 저장 가능합니다.");
	   field.value = fil_str.substr(0,maxlen);
	   return;
	}
}

function snsGongguReg(){
	if ( !checkMember() ) return false;

	if(gRegFrm =="list"){
		if ( pcode == '' ){
			alert("상품을 선택해주세요.");
			return;
		}
	}

	if ( $j.trim($j("#gonggu_cmt").val()) == '' ){
		alert("내용을  입력해 주십시오.");
		return;
	}
	if ( $j("#tLoginBtnChk").val() == "Y") {
		snsType +="t,";
	}
	if ( $j("#fLoginBtnChk").val() == "Y") {
		snsType +="f,";
	}
	snsCmt = $j.trim($j('#gonggu_cmt').val());
	gongguCmtReg(snsType);	
	$j("#gonggu_cmt").val("");
	snsType ="";
}

function gongguCmtReg(snsType){
	$j.post("/front/snsAction.php",
		{ method: "regGonggu", pcode: pcode}
		,function(data){
			if ( data.result == 'true' ) {
				snsLink = $j.trim(data.sns_url);
				$j.post(
					"/front/snsAction.php",
					{ method: "regGongguCmt", sns_type:snsType, pcode: pcode, comment: snsCmt , etc:"11"},
					  function(data){
						if ( data.result == 'true' ) {
							if (snsType.indexOf("t") >-1) {
								$j.post(
									"/front/twitterReg.php",
									{comment: snsCmt+" | "+snsLink, seq: data.seq, name:productName, gb:"2" },
									  function(data){
										if ( data.result == 'true' ) {
											showGongguCmt();
										}else{
											showGongguCmt();alert("twitter error : " + data.message );
										}
									},"json"
								)				
							}

							if ( snsType.indexOf("f") >-1) {
								$j.post(
									"/front/facebookReg.php",
									{comment: snsCmt, seq: data.seq , link:snsLink, picture :fbPicture, name:productName, gb:"2" },
									  function(data){
										if ( data.result == 'true' ) {
											showGongguCmt();
										}else{
											showGongguCmt();alert("facebook error: " + data.message );
										}
									},"json"
								)
							}
							showGongguCmt();
						}
						else {
							alert("에러 발생 : " + data.message );
						}
					},
					"json"
				);
			}
			else {
				alert("에러 발생 " + data.message);
			}

		},
		"json"
	);
}

function showGongguCmt(block ,pgid){
	if(gRegFrm =="list"){
		//best 갱신
		showGongguCmtBest();
		pcode="";
		$j("#prdtSchBtn").attr('src', "../images/design/gonggu_order_btn04.gif");
	}
	$j.post(
		"/front/snsGongguCmt.php",
		{pcode: pcode, gotopage :pgid, block :block},
		  function(data){
			$j("#snsGongguList").html(data);
		}
	);
}

function checkWrite(c_seq, pcode, chkmemId){
	if ( !checkMember() ) return false;

	if(chkmemId == ""){
		chkval = "fail";
		alert("자신의 글에 등록 할 수 없습니다.");
	}else{
		var f = document.GongguWishFrm;
		if(f.comment.value==""){
			alert("메세지를 입력하세요");
		}
		$j.post(
			"/front/snsAction.php",
			{ method: "regGongguChk", c_seq:c_seq, pcode: pcode},
			  function(data){
				if ( data.check == 'ok' ) {

					var viewportScroll = $j(window).scrollTop();
			    	var cssLeft = (screen.width+200) / 2 - 420;
					var cssTop = (screen.height) / 2 + viewportScroll-320;					
					$j("#GongguWish").appendTo('body').css({'position':'absolute','top':cssTop+'px','left':cssLeft+'px','z-index':'1000'}).show();
					$j("#GongguWish .LayerHide").click(function() {
						$j("#GongguWish").hide();
					});					
					f.c_seq.value = c_seq;
					f.pcode.value = pcode;
				}else if (data.check == "duplicated")
				{
					alert("이미 글이 등록 되어 등록 할 수 없습니다.");
				}
			},
			"json"
		);
	}
}

function txtchk(f){
	if(f.value=="저도 이 제품 공동구매를 희망합니다."){
		f.value="";
	}
}
function regTogetherGonggu(){
	var f = document.GongguWishFrm;
	var chk = "";
	//핸드폰 메일 수신여부 체크
	if(f.hpno.checked&&f.email.checked){
		chk = "11";
	}else if(!(f.hpno.checked)&&f.email.checked){
		chk = "01";
	}else if(f.hpno.checked&&!(f.email.checked)){
		chk = "10";
	}else if(!(f.hpno.checked)&&!(f.email.checked)){
		chk = "00";
	}
	f.etc.value = chk;

	var reg_con = confirm('신청하시겠습니까? [확인]을 누르시면, 신청됩니다.');
 	if ( reg_con == true  )
	{
		f.method.value = "regGongguCmtsub";
		f.action = "snsAction.php";
		f.target = "ifrmHidden";
		f.submit();
	 }
	 $j("#GongguWish").hide();
	 showGongguCmt();
}
 
var preCmtSeq = "";
var preCmtSubObj = "";
function showGongguCmtRe(obj){
	var c_seq = obj.next('span').text();
	if(preCmtSubObj !=""){
		preCmtSubObj.attr('src',preCmtSubObj.attr('src').replace("gonggu_order_btn03_c.gif","gonggu_order_btn03.gif"));
		$j("#GongguCmtSubList"+preCmtSubObj.next('span').text()).html("");
	}
	if(preCmtSeq =="" || preCmtSeq != c_seq){
		$j.post(
			"/front/snsGongguCmtSub.php",{c_seq :c_seq},
			  function(data){
				preCmtSeq = c_seq;
				preCmtSubObj = obj;
				obj.attr('src',obj.attr('src').replace("gonggu_order_btn03.gif","gonggu_order_btn03_c.gif"));
				$j("#GongguCmtSubList"+c_seq).html(data);
				
			}
		)
	}else{
		preCmtSeq="";
		preCmtSubObj = "";
	}
}

//리스트삭제
function delGongguCmt(seq){
	if(confirm("삭제하시겠습니까?")) {
		$j.post(
			"/front/snsAction.php",
			{ method: "delGongguCmt", seq:seq},
			  function(data){
				if ( data.result == 'true' ) {
					alert("삭제되었습니다.");
					showGongguCmt();
					return false;
				}else
				{
					alert("이미 글이 등록 되어 삭제 할 수 없습니다.");
				}
			},
			"json"
		);
	}
}

//BEST 공구
function showGongguCmtBest(){
	$j.post(
		"/front/snsGongguCmtBest.php",
		  function(data){
			$j(".gongguBest").html(data);
		}
	);
}


$j('#prdtSchBtn').click(function(){
	var viewportScroll = $j(window).scrollTop();
	var cssLeft = document.body.clientWidth/2 - 330;
	var cssTop = document.body.clientHeight/2 - 250 + viewportScroll;	

	$j("#gongPrdtSearch").appendTo('body').css({'position':'absolute','top':cssTop+'px','left':cssLeft+'px','z-index':'1000'}).show();
	schGongguPrdt();

});

var mnuTab=1;
var categoryCode = "";
var s_check="";
var search_txt="";
function schGongguPrdt(){
	categoryCode ="";s_check="";search_txt="";
	$j.post(
		"/front/gongguProduct.php",
		{ mnuTab: mnuTab},
		  function(data){
			$j("#gongPrdtSearch").html(data);			
			$j("#gongPrdtClose").click(function() {
				$j("#gongPrdtSearch").hide();
			});	
			if(mnuTab ==1){
				showCatagory(1);
				searchPList();
			}
		}
	);
}

function selProductTab(tabId){
	mnuTab = tabId;
	schGongguPrdt();
}

function showCatagory(depth){
	$j.post(
		"/front/gongguProductCtgr.php",
		{ depth: depth, code:categoryCode},
		  function(data){
			$j("#prdt_ctgr"+depth).html(data);
		}
	);
}


function selectCode(depth,obj){
	categoryCode = obj.value;
	for(i=depth+1;i<=4;i++){
		$j("#prdt_ctgr"+i).empty();
	}
	if(obj.value !="" && depth<4 && obj.ctype!="X"){
		showCatagory(depth+1);
	}
}

function searchCheck(){
	s_check = $j("#s_check").val();
	search_txt = $j("#search_txt").val();
	searchPList();
}

function searchPList(block ,pgid){
	$j.post(
		"/front/gongguProductList.php",
		{code:categoryCode, s_check:s_check, search_txt:search_txt, gotopage :pgid, block :block},
		  function(data){
			$j("#prdtList").html(data);
		}
	);
}

function selectProduct(p_code){
	pcode=p_code;
	productName=$j("#thumb_"+p_code).attr('alt');
	$j("#prdtSchBtn").attr('src', $j("#thumb_"+p_code).attr('src'));
	$j("#gongPrdtSearch").hide();
}

/* board sns comment */
function showbodComment(){
	$j.post(
		"/board/snsbodComment.php",
		{board:board, num: bod_uid},
		  function(data){
			$j("#snsBoardList").html(data);
		}
	)	
}

function snsbodReg(){
	if ( !checkMember() ) return false;
/*
	if($j("#tLoginBtnChk").val() != "Y" && $j("#fLoginBtnChk").val() != "Y" && $j("#mLoginBtnChk").val() != "Y"){
		alert("공유할 채널을 선택하세요.");
		return;
	}
*/
	if ( $j.trim($j("#comment").val()) == '' ){
		alert("내용을  입력해 주십시오.");
		return;
	}
	snsType = "";
	if ( $j("#tLoginBtnChk").val() == "Y") {
		snsType +="t,";
	}
	if ( $j("#fLoginBtnChk").val() == "Y") {
		snsType +="f,";
	}
	snsCmt = $j.trim($j('#comment').val());
	$j.post("/front/snsAction.php",
		{ method: "regBodLink", board:board, bod_uid: bod_uid}
		,function(data){
			if ( data.result == 'true' ) {
				snsLink = $j.trim(data.sns_url);
				$j.post(
					"/front/snsAction.php",
					{ method: "regBod", sns_type:snsType, board:board, bod_uid: bod_uid, comment: snsCmt },
					  function(data){
						if ( data.result == 'true' ) {
							if (snsType.indexOf("t") >-1) {
								$j.post(
									"/front/twitterReg.php",
									{comment: snsCmt+" | "+snsLink, seq: data.num, gb:"3" },
									  function(data){
										if ( data.result == 'true' ) {
											showbodComment();
										}else{
											showbodComment();alert("twitter error : " + data.message );
										}
									},"json"
								)				
							}
							if ( snsType.indexOf("f") >-1) {
								$j.post(
									"/front/facebookReg.php",
									{comment: snsCmt, seq: data.num , link:snsLink, gb:"3" },
									  function(data){
										if ( data.result == 'true' ) {
											showbodComment();
										}else{
											showbodComment();alert("facebook error: " + data.message );
										}
									},"json"
								)
							}
							showbodComment();
						}
						else {
							alert("에러 발생 : " + data.message );
						}
					},
					"json"
				);
			}
			else {
				alert("에러 발생 " + data.message);
			}

		},
		"json"
	);

	$j("#comment").val("");
}

function delbodComment(c_num){
	$j.post(
		"/board/snsbodcomment_del.php",
		{board:board, num: bod_uid, c_num:c_num},
		  function(data){
			if ( data.result == 'ok' ) {
				alert("삭제되었습니다.");
				showbodComment();
			}else if( data.result == 'no authority' ) {
				alert("권한이 없습니다.");
			}else if( data.result == 'nodata' ) {
				alert("데이터가 없습니다.");
				showbodComment();
			}else if( data.result == 'no reply' ) {
				alert("댓글을 지원하지않습니다.");
			}
		},
		"json"
	);	
}

function snsbodCopy(){
	if ( !checkMember() ) return false;
	if($j("input[name=send_chk]:checkbox:checked").length == 0){
		alert("sns채널을 선택해주세요.");
		return false;
	}
	if ( $j.trim($j("#comment0").val()) == '' ){
		alert("내용을  입력해 주십시오.");
		return;
	}
	$j("input[name=send_chk]").each(
		function(){
			if(this.checked)
				snsType += this.value+",";
		}
	)
	snsCmt = $j.trim($j('#comment0').val());

	if (snsType.indexOf("t") >-1) {
		$j.post(
			"/front/twitterReg.php",
			{comment: snsCmt+" | "+bodUrl },
			  function(data){
				if ( data.result == 'true' ) {
				}
			},"json"
		)				
	}
	if ( snsType.indexOf("f") >-1) {
		$j.post(
			"/front/facebookReg.php",
			{comment: snsCmt, link:bodUrl, picture :fbPicture },
			  function(data){
				if ( data.result == 'true' ) {
				}
			},"json"
		)
	}


	$j("#comment0").val("");
	snsType ="";
}

function showDiv_bod(showID){
	if( showID != "snsHelp" && !checkMember()){
		return false;
	}
	if( showID == "snsSend"){
		$j("#comment0").val(bodbase_txt);
		$j("#cmtByte").html(bodbase_txt.length);
		if($j("input[name=send_chk]:checkbox:checked").length == 0){
			alert("sns채널을 선택해주세요.");
			return false;
		}
	}
	if(preShowID != showID){
		if(preShowID!="" && $j("#"+preShowID).length > 0) $j("#"+preShowID).css({visibility:'hidden'});
		if($j("#"+showID).length > 0) $j("#"+showID).css({visibility:'visible'});
		preShowID = showID;
	}else{
		if($j("#"+showID).length > 0) $j("#"+showID).css({visibility:'hidden'});
		preShowID = "";
	}
	return false;
}
