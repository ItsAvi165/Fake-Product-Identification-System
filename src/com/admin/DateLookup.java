package com.admin;

import java.sql.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.Duration;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeParseException;
import java.time.temporal.ChronoUnit;
import java.util.Calendar;
import java.util.Date;
import java.util.concurrent.TimeUnit;

import com.user.DBconn;


public class DateLookup {

	public static int timeflag=0;
	public static int dateflag=0,dateflag_mfg=0;
	public static int Mfg_date(String Mfg_Date) {
		try {
			SimpleDateFormat sdfnew = new SimpleDateFormat("yyyy-MM-dd");
			Date currentdate = new Date();
			String newdate = sdfnew.format(currentdate);
			System.out.println("Date working" + newdate);
			Date date1 = sdfnew.parse(newdate);  
			Date date2 = sdfnew.parse(Mfg_Date);  
			 if(date1.compareTo(date2) == 0)   
			{  
				 dateflag_mfg=0;
			System.out.println("Both dates are equal");  
			} 
			 else if(date1.compareTo(date2) > 0)   
				{  
				 dateflag_mfg=0;
				System.out.println("Date 1 comes after Date 2");  
				} 
			 else
			 {
				 dateflag_mfg=1;
				 System.out.println("Wrong Date");  
				 
			 }
		} catch (Exception e) {
			//
			e.printStackTrace();
		} // Instantiate a Date object
		return timeflag;
	}
	public static int exp_date(String Exp_date) {
		try {
			SimpleDateFormat sdfnew = new SimpleDateFormat("yyyy-MM-dd");
			Date currentdate = new Date();
			String newdate = sdfnew.format(currentdate);
			System.out.println("Date working" + newdate);
			Date date1 = sdfnew.parse(newdate);  
			Date date2 = sdfnew.parse(Exp_date);  
			if(date1.compareTo(date2) > 0)   
			{  
				dateflag=1;
			System.out.println("Date 1 comes after Date 2");  
			}   
			else if(date1.compareTo(date2) < 0)   
			{  
				dateflag=0;
			System.out.println("Date 1 comes before Date 2");  
			}   
			else if(date1.compareTo(date2) == 0)   
			{  
				dateflag=1;
			System.out.println("Both dates are equal");  
			}  
		} catch (Exception e) {
			//
			e.printStackTrace();
		} // Instantiate a Date object
		return dateflag;
	}
	
	public static void main(String args[]) {

		Mfg_date("2023-03-15");
		System.out.println("************");
		exp_date("2023-03-16");
	}
}
