function getDetails(){
		
    var ob=new XMLHttpRequest();
    
    ob.onreadystatechange=function ss()
    {
     if(ob.readyState==4)
     {
       var details=ob.responseText.split("||");

       document.form.email.value=details[0];
       document.form.uname.value=details[1];
       document.form.pwd.value=details[2];
       document.form.bloodgroup.value=details[3];
       document.form.contactnum.value=details[4];
       document.form.dob.value=details[5];
       document.form.gender.value=details[6];
      
     }
     
    }
    ob.open("GET","AutoFillDetails",true);
    ob.send();
    return true;
   }
    

    

