let CustomerIdCheck = function() {
	if(document.myForm.customerId.value == ""){
		
		if(alert("Customer Id cannot be blank")){
			document.myForm.customerId.focus();
		}
		else
			document.activeElement.blur();
        	
    }
    else{
        return false;
    } 
}
let customerpasswordCheck = function() {
	 let passwordRegex = new RegExp("/^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{7,15}$/");
	 if(!document.myForm.customerPassword.value.match(passwordRegex)){
			if(alert("Password should contain at least one lowercase letter, one uppercase letter, one numeric digit, and one special character")){ 
				 document.myForm.customerPassword.focus();
		    }
			else
				document.activeElement.blur();
		}
   else{
       return false;
   } 
  
}