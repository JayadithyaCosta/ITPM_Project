package com.classes;

public class Results {
	

	private double average;
	private double total;
	
	private String status;
	private double mark;
	private String subject;
	
	private String stid;

	


	public Results(double total) {
		super();
		this.total = total;
	}

	



	public Results(double mark, String subject, String stid) {
		super();
		this.mark = mark;
		this.subject = subject;
		this.stid = stid;
	}

	public Results(String subject,double mark) {
		super();
		this.mark = mark;
		this.subject = subject;
	}

	public Results(double average, double total, String status) {
		super();
		this.average = average;
		this.total = total;
		this.status = status;
	}
	public String getStid() {
		return stid;
	}


	public double getMark() {
		return mark;
	}


   public String getSubject() {
		return subject;
	}



	public double getAverage() {
		return average;
	}






	public double getTotal() {
		return total;
	}


    public String getStatus() {
		return status;
	}






	public Results() {
		super();
	}

	
	//calculation to find total marks
	public  double Findtotal(double[] marks) {
		total=0;
		for(int i=0;i<marks.length;i++) {
			total=total+marks[i];
		}
		return total;
		
	}

	
	
	//calculation to find average marks
	public  double FindAvg(double[] marks) {
		
			average=total/marks.length;
			return Math.round(average*100.0)/100.0;
		
	}
	
	//calculation to set status
	public String Setstatus(double total) {
		if(total>=450) {
			status="Pass";
		}
		else {
			status="Fail";
		}
		return status;
	}

	


}
