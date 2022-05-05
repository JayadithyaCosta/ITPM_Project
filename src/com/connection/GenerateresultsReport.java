package com.connection;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.MalformedURLException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import com.classes.Progress;
import com.classes.Results;
import com.classes.Student;
import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.Font.FontFamily;
import com.itextpdf.text.Image;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;



public class GenerateresultsReport {
	public static final String DATE_FORMAT_NOW = "yyyy-MM-dd HH:mm:ss";
	public static void generatePDF(String stid) {
		
		
		
		try {
			
//			String file_name="D:\\Sliit\\ITPM\\Results PDF\\'"+stid+"'.pdf";
			
			String file_name="D:\\Sliit\\ITPM\\Reports_Genarated\\"+stid+".pdf";

			Document document=new Document();
			PdfWriter.getInstance(document, new FileOutputStream(file_name));
			document.open();
			

			List <Results> res=ResultsUtil.getStudentResults(stid);
			
			List<Progress> re2=resultsUtil2.getStudentProgress(stid);
			
			List<Student> re3=resultsUtil2.getStudentName(stid);
			
			Font f = new Font(FontFamily.TIMES_ROMAN);
	        f.setStyle(Font.BOLD);
	        f.setSize(14);
	        f.setColor(BaseColor.BLACK);
	      

          Image image = Image.getInstance("D:\\Sliit\\ITPM\\Logo.png");
          image.setAlignment(Image.MIDDLE);
	      image.setBorder(10);
	      image.setScaleToFitHeight(true);
	        document.add(image);
				      
	        
			Paragraph p2= new Paragraph();
			p2.setAlignment(Element.ALIGN_CENTER);
			p2.setFont(f);
			for(Student s1:re3) {
				p2.add("Index Number:"+s1.getStudentID()+"     ");
				p2.add("Name:"+s1.getFullname()+"\n");
				p2.add("\n"+"  ");
				
				
			}
			p2.add("\n"+"  ");
			document.add(p2);
			
			PdfPTable table= new PdfPTable(2);
			PdfPCell c1= new PdfPCell(new Phrase("Subject",f));
			c1.setBackgroundColor(BaseColor.LIGHT_GRAY);
			table.addCell(c1);
			
			
			c1= new PdfPCell(new Phrase("Marks",f));
			c1.setBackgroundColor(BaseColor.LIGHT_GRAY);
			table.addCell(c1);
			
			table.setHeaderRows(1);
			
			for(Results r1:res) {
				table.addCell(r1.getSubject());
				table.addCell(Double.toString(r1.getMark()));
				
				
				
			}
			
			
	
			
			  
			
			Paragraph p= new Paragraph();
			p.setAlignment(Element.ALIGN_JUSTIFIED);
			p.setFont(f);
			
			p.add("\n");
			for(Progress p1:re2) {
				p.add("\n");
				
				table.addCell("Total Marks:");
				table.addCell(Double.toString(p1.getTotal()));
				table.addCell("Average marks: ");
				table.addCell(Double.toString(p1.getAvg()));
				
				p.add("Status:"+p1.getStatus()+"\n");
				p.add("Remarks:"+p1.getRemark()+"\n");
				p.add("\n");
				
			}
			
			p.add("\n");
			document.add(table);
			document.add(p);
			
			
			  Calendar cal = Calendar.getInstance();
		        SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT_NOW);
		        sdf.format(cal.getTime());
		       
		        Paragraph paragraphs = new Paragraph();
		        p2.setAlignment(Element.ALIGN_CENTER);
		       
		        paragraphs.add("Generated on : "+sdf.format(cal.getTime())+"\n");
		        document.add(new Paragraph(paragraphs));
			
			document.close();
			
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (DocumentException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	
	public static void generateSubjectReport(String subject) {
		

		try {
			
			
	        
	        
			String file_name="D:\\Sliit\\ITPM\\Results PDF\\'"+subject+"'.pdf";
			Document document=new Document();
			PdfWriter.getInstance(document, new FileOutputStream(file_name));
			document.open();
			
			Font f = new Font(FontFamily.TIMES_ROMAN);
	        f.setStyle(Font.BOLD);
	        f.setSize(14);
	        f.setColor(BaseColor.DARK_GRAY);
			
			List <Results> res=ResultsUtil.getSubjectResults(subject);
			
			 Image image = Image.getInstance("D:\\Sliit\\ITPM\\Results PDF\\logo.png");
	          image.setAlignment(Image.MIDDLE);
		      image.setBorder(10);
		      image.setScaleToFitHeight(true);
		        document.add(image);
					      
			
			Paragraph p2= new Paragraph();
			p2.setAlignment(Element.ALIGN_CENTER);
			p2.setFont(f);
			p2.add(subject+"\n");
			
			p2.add("\n");
			p2.add("Term 1"+"\n");
			
			p2.add("\n");
			document.add(p2);
			
			
			PdfPTable table= new PdfPTable(2);
			PdfPCell c1= new PdfPCell(new Phrase("Student Id",f));
			c1.setBackgroundColor(BaseColor.LIGHT_GRAY);
			table.addCell(c1);
			
			
			c1= new PdfPCell(new Phrase("Marks",f));
			c1.setBackgroundColor(BaseColor.LIGHT_GRAY);
			table.addCell(c1);
			
			table.setHeaderRows(1);
			
			for(Results r1:res) {
				table.addCell(r1.getStid());
				table.addCell(Double.toString(r1.getMark()));
				
				
				
			}
			
			
			document.add(table);

			  Calendar cal = Calendar.getInstance();
		        SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT_NOW);
		        sdf.format(cal.getTime());
		       
		        Paragraph paragraphs = new Paragraph();
		        p2.setAlignment(Element.ALIGN_CENTER);
		       
		        paragraphs.add("Generated on : "+sdf.format(cal.getTime()));
		        document.add(new Paragraph(paragraphs));
			document.close();
			

		
	}catch(Exception e) {
		
		e.printStackTrace();
		}
	}

}
