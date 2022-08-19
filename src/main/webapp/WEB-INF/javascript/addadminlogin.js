let userNameCheck = function() {
	 let nameRegex =`("^[a-zA-Z]+$")`;
	 if(!document.myForm.userName.value.match(nameRegex)){
			if(alert("Name can't be empty or must contain only alphabets")){ 
				 document.myForm.userName.focus();
		    }
			else
				document.activeElement.blur();
		}
   else{
       return false;
   } 
  
}
let userpasswordCheck = function() {
	 let passwordRegex =`("^[a-zA-Z0-9]*$")`;
	 if(!document.myForm.userPassword.value.match(passwordRegex)){
			if(alert("Password must be contain 6 to 20 characters which contain at least one numeric digit, one uppercase and one lowercase letter")){ 
				 document.myForm.userPassword.focus();
		    }
			else
				document.activeElement.blur();
		}
  else{
      return false;
  } 
 
}