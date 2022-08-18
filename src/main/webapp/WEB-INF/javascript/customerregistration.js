 var userNameCheck = function() {
	 var nameRegex = new RegExp("^[a-zA-Z]+$");
	 if(!document.myForm.customerName.value.match(nameRegex)){
			if(alert("Name can't be empty or must contain only alphabets")){ 
				document.myForm.customerName.focus();
		    }
			else
				document.activeElement.blur();
		}
    else{
        return false;
    } 
   
}
 var userpasswordCheck = function() {
	 var customerPasswordRegex = new RegExp("/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,20}$/");
	 if(!document.myForm.customerPassword.value.match(customerPasswordRegex)){
			if(alert("password must be contain 6 to 20 characters which contain at least one numeric digit, one uppercase and one lowercase letter")){ 
				 document.myForm.customerPassword.focus();
		    }
			else
				document.activeElement.blur();
		}
    else{
        return false;
    } 
   
}
 var addressCheck = function() {
	 if(document.myForm.address.value == ""){
			if(alert("Address cannot be blank")){ 
				 document.myForm.address.focus();
		    }
			else
				document.activeElement.blur();
		}
	 else{
	    	return false;
	    }
 }
 var phoneNumberCheck = function() {
	 var phoneRg = new RegExp("[1-9]{1}[0-9]{9}");
	 if(!document.myForm.mobileNo.value.match(phoneRg)){
			if(alert("Phone Number not valid")){
				 document.myForm.mobileNo.focus();
			}
			else
				document.activeElement.blur();
		}
    else{
    	return false;
    }
} 
 

var genderNameCheck = function() {
	var genderRegex = new RegExp("^[a-zA-Z]+$");
	if(!document.myForm.gender.value.match(genderRegex)){
		if(alert("Gender name can't be empty or must contain only alphabets")){
			 document.myForm.gender.focus();
		}
		else
			document.activeElement.blur();
	}
	else{
    	return false;
    }
}
var bloodgroupNameCheck = function() {
	var bloodgroupRegex = new RegExp("^[a-zA-Z]+$");
	if(!document.myForm.bloodGroup.value.match(bloodgroupRegex)){
		if(alert("BloodGroup name can't be empty or must contain only alphabets")){
			 document.myForm.bloodGroup.focus();
		}
		else
			document.activeElement.blur();
	}
	else{
    	return false;
    }
}
var personTypeNameCheck = function() {
	var personTypeRegex = new RegExp("^[a-zA-Z]+$");
	if(!document.myForm.personType.value.match(personTypeRegex)){
		if(alert("PersonType name can't be empty or must contain only alphabets")){
			 document.myForm.personType.focus();
		}
		else
			document.activeElement.blur();
	}
	else{
    	return false;
    }
}
var dateCheck = function() {
	var date1 = document.getElementById("joiningDate").valueAsDate;
	var todayDate = new Date();
	if(date1 < todayDate){
        if(alert("Please Enter valid joiningDate")){ 
             document.form.joiningDate.focus();
        }
        else
            document.activeElement.blur();
    }
 else{
        return false;
    } 
  }
   
   function todayDateCheck(){
	  document.getElementById("joiningDate").valueAsDate = new Date();
  }

