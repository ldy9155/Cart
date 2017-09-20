$j(document).ready(function() {
	$j(".memberPolicy .viewPolicyBtn").on("click", function() {
		$j("#policyView").show();
	});
	$j("#policyView .viewCloseBtn").on("click", function() {
		$j("#policyView").hide();
	});
	$j(".memberProtect .viewPolicyBtn").on("click", function() {
		$j("#ProtectView").show();
	});
	$j("#ProtectView .viewCloseBtn").on("click", function() {
		$j("#ProtectView").hide();
	});

	$j(".joinFormBtn .btn_agreeJoin").on("click", function() {
		$j("input[name='agreement']").val("Y");
		$j("input[name='privercy']").val("Y");
	});
});

function strnumkeyup2(field) {
	if (!isNumber(field.value)) {
		alert("숫자만 입력하세요.");
		field.value = strLenCnt(field.value, field.value.length - 1);
		field.focus();
		return;
	}
	if (field.name == "resno1") {
		if (field.value.length == 6) {
			form1.resno2.focus();
		}
	}
}

function CheckFormData(data) {
	var numstr = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	var thischar;
	var count = 0;
	data = data.toUpperCase(data)

	for (var i = 0; i < data.length; i++) {
		thischar = data.substring(i, i + 1);
		if (numstr.indexOf(thischar) != -1)
			count++;
	}
	if (count == data.length)
		return (true);
	else
		return (false);
}

function CheckForm() {
	var form = document.form1, gendercheck = "H", birthcheck = "Y", gendercount = 0;

	if (gendercheck == "Y") {
		for (var i = 0; i < form.gender.length; i++) {
			if (form.gender[i].checked == true) {
				gendercount++;
			}
		}
	}

	if (!form.agreement || form.agreement.value != "Y") {
		alert("회원약관에 동의하셔야 회원가입이 가능합니다.");
		if (form.agreement) {
			form.agreement.focus();
		}
		return;
	} else if (!form.privercy || form.privercy.value != "Y") {
		alert("개인보호취급방침에 동의하셔야 회원가입이 가능합니다.");
		if (form.privercy) {
			form.privercy.focus();
		}
		return;
	}

	if (form.id.value.length == 0) {
		alert("아이디를 입력하세요.");
		form.id.focus();
		return;
	}
	if (form.id.value.length < 4 || form.id.value.length > 12) {
		alert("아이디는 4자 이상 12자 이하로 입력하셔야 합니다.");
		form.id.focus();
		return;
	}
	if (CheckFormData(form.id.value) == false) {
		alert("ID는 영문, 숫자를 조합하여 4~12자 이내로 등록이 가능합니다.");
		form.id.focus();
		return;
	}
	if (form.idChk.value == "0") {
		alert("아이디 중복 체크를 하셔야 합니다!");
		idcheck();
		return;
	}
	if (form.passwd1.value.length == 0) {
		alert("비밀번호를 입력하세요.");
		form.passwd1.focus();
		return;
	}
	if (form.passwd1.value != form.passwd2.value) {
		alert("비밀번호가 일치하지 않습니다.");
		form.passwd2.focus();
		return;
	}
	if (form.email.value.length == 0) {
		alert("이메일을 입력하세요.");
		form.email.focus();
		return;
	}
	if (!IsMailCheck(form.email.value)) {
		alert("이메일 형식이 맞지않습니다.\n\n확인하신 후 다시 입력하세요.");
		form.email.focus();
		return;
	}
	if (form.mailChk.value == "0") {
		alert("이메일 중복 체크를 하셔야 합니다!");
		mailcheck();
		return;
	}
	if (form.name.value.length == 0) {
		alert("고객님의 이름을 입력하세요.");
		form.name.focus();
		return;
	}
	if (form.name.value.length > 10) {
		alert("이름은 한글 5자, 영문 10자 이내로 입력하셔야 합니다.");
		form.name.focus();
		return;
	}
	if (form.mobile.value.length == 0) {
		alert("휴대전화를 입력하세요.");
		form.mobile.focus();
		return;
	}

	if (gendercheck == "Y" && gendercount <= 0) {
		alert("성별을 선택하세요");
		form.gender.value.focus();
		return;
	}
	if (birthcheck == "Y" && form.birth.value == "") {
		alert("생년월일을 입력하세요");
		form.birth.value.focus();
		return;
	}

	form.type.value = "insert";

	if (confirm("회원가입을 하겠습니까?")) {
		form.submit();
	} else {
		return;
	}
}

function f_addr_search(form, post, addr, gbn) {
	window.open("../front/addr_search.php?form=" + form + "&post=" + post
			+ "&addr=" + addr + "&gbn=" + gbn, "f_post",
			"resizable=no,scrollbars=yes,x=100,y=200,width=280,height=280");
}

function idcheck() {
	form1.idChk.value = "0";
	window.open(
			"/Cart/ClientCartJSP/idCheck.jsp?id=" + document.form1.id.value,
			"", "resizable=no,scrollbars=no,height=280,width=280");
}

function mailcheck() {
	if (!IsMailCheck(form1.email.value)) {
		alert("이메일 형식이 맞지않습니다.\n\n확인하신 후 다시 입력하세요.");
		form1.email.focus();
		return;
	}
	form1.mailChk.value = "0";
	window.open("/Cart/ClientCartJSP/emailCheck.jsp?email="
			+ document.form1.email.value, "", "height=280,width=280");
}