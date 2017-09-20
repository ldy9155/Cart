    	var date="";
    	function dateProcess(){  	
    	var clock="";    
    	var date=new Date();
    	clock=date.getHours()+':'+date.getMinutes()+':'+date.getSeconds();
    	date=date.getFullYear()+'/'+(date.getMonth()+1)+'/'+date.getDate()+' ';
    	//alert(clock);
    	document.getElementById("date").innerHTML=date;
    	document.getElementById("clock").innerHTML=clock;
    	//setInterval('dateProcess()',1000);
    	setTimeout('dateProcess()',1000);
}