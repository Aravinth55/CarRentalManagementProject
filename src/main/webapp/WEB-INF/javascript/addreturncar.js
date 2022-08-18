function calculation() {
		let payelapsed = document.getElementById("payElapsed").value;
		let totalfee = parseInt(payelapsed) * 500;

		let date1 = document.getElementById("fromDate").value;
		let date2 = document.getElementById("dueDate").value;
		let date3 = new Date(date1);
		let date4 = new Date(date2);
		let total = parseInt((date4 - date3) / (1000 * 60 * 60 * 24), 10);
		document.getElementById("carFine").value = totalfee;
		document.getElementById("totalFee").value = parseInt(total) * 1000
				+ parseInt(totalfee);

		return parseInt(total);
	}
