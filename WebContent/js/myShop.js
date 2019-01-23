function checkpId(){
	var pid = document.getElementById("pid").value;
	if(pid == ""){
		alert("Check your productID, Do not write blank!");
	}else{
		document.form1.submit();
	}
}