package com.chainsys.carrental.businesslogic;

import java.text.ParseException;

public class BusinessLogic {
	public static int dayCalculation(String date1,String date2) {
		String dateArray1[]=date1.split("/");
		String dateArray2[]=date2.split("/");
		int day1=Integer.parseInt(dateArray1[0]);
		int day2=Integer.parseInt(dateArray2[0]);
		int month1=Integer.parseInt(dateArray1[1]);
		int month2=Integer.parseInt(dateArray2[1]);
		if((month2-month1)>0) {
			if(month1==1 ||month1==3 || month1==5||month1==7||month1==8||month1==10||month1==12)
			day2+=31;
			else if(month1==4||month1==6||month1==9||month1==11)
				day2+=30;
			else if(month1==2)
				day2+=28;
		}
		int difference_In_Days= day2-day1;
		return difference_In_Days;
          
	}
	public static void main(String[] args) {
	
		System.out.println(	dayCalculation("01/05/2022", "10/05/2022"));
	}
	
}
