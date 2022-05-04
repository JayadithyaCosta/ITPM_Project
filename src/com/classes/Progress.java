package com.classes;

public class Progress {
	
	private String status;
	private String remark;
	private double total;
	private double avg;
	
	
	
	
	
	
	
	
	
	public Progress() {
		super();
	}



	public Progress(String status, String remark, double total, double avg) {
		super();
		this.status = status;
		this.remark = remark;
		this.total = total;
		this.avg = avg;
	}
	
	
	
	public Progress(double avg) {
		super();
		this.avg = avg;
	}






	public String getStatus() {
		return status;
	}
	
	public String getRemark() {
		return remark;
	}
	
	public double getTotal() {
		return total;
	}
	
	public double getAvg() {
		return avg;
	}

}
