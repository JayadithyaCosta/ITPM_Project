package com.classes;

public class itmcondition {
	String available;
	String recondition;
	String discurd;
	String using;
	
	public itmcondition(String available, String recondition, String discurd, String using) {
		super();
		this.available = available;
		this.recondition = recondition;
		this.discurd = discurd;
		this.using = using;
	}
	public itmcondition(String available) {
		super();
		this.available = available;
	}
	public String getAvailable() {
		return available;
	}
	
	public String getRecondition() {
		return recondition;
	}
	
	public String getDiscurd() {
		return discurd;
	}
	
	public String getUsing() {
		return using;
	}
	
	

}
