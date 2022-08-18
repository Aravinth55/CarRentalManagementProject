function dateCalculation(){
	let date1 = document.getElementById("fromDate").value;
	let date2 = document.getElementById("dueDate").value;
	let date3 = new Date(date1);
	let date4 = new Date(date2);
	let total = parseInt((date4 - date3) / (1000 * 60 * 60 * 24), 10); 
	document.getElementById("retailFee").value = parseInt(total)*1000;
	return parseInt(total);
}

let dateCheck = function() {
	let date1 = document.getElementById("fromDate").valueAsDate;
	let todayDate = new Date();
	if(date1 < todayDate){
        if(alert("Please Enter valid Fromdate")){ 
             document.form.fromDate.focus();
        }
        else
            document.activeElement.blur();
    }
 else{
        return false;
    } 
  }
  
let dueDateCheck = function() {
	let date2 = document.getElementById("dueDate").valueAsDate;
	let todayDate2 = new Date();
	if(date2 < todayDate2){
        if(alert("Please Enter valid Duedate")){ 
             document.form.dueDate.focus();
        }
        else
            document.activeElement.blur();
    }
 else{
        return false;
    } 
  }