function verifymail(str){
	
    var xttp = new XMLHttpRequest();
    xttp.onreadystatechange = function ss(){
        if(xttp.readyState==4){
		
			
            document.getElementById("p1").innerHTML = xttp.responseText;
			
        }
    }
    xttp.open("GET","CheckMail?msg="+str,true);
    xttp.send();
}


function validatepswd() {
	var passw = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,20}$/;
	var pswd = document.getElementById("pwd").value;
	if(pswd.match(passw)) 
	{ 
		document.getElementById("p2").innerHTML = "";
	}
	else
	{ 
		document.getElementById("p2").innerHTML = "You password should be a combination of numbers,letters and special characters";
		document.getElementById("myBtn").disabled = true;
		
	}
}

function verifypswd(){
    var pswd = document.getElementById("pwd").value;
    var confirmpwd  = document.getElementById("confirmpwd").value;
    if(pswd===confirmpwd){
        document.getElementById("p3").innerHTML = "";
    }
    else{
        document.getElementById("p3").innerHTML = "Password and Confirm password doesn't match";
		document.getElementById("myBtn").disabled = true;
    }
}