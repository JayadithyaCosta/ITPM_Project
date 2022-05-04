package com.connection;

import java.io.FileNotFoundException;

import java.io.FileOutputStream;
import java.io.IOException;
import java.net.MalformedURLException;
import java.util.List;


import com.classes.Question;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.Image;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

public class GenerateQuestionDetailsReport {
	
	public static void generatequestionPDF(String questionID) {
		
	try {
		
		//create a file name
		String file_name="C:\\Users\\ASUS\\Desktop\\QuestionPaper\\exampaper.pdf";
		Document document=new Document();
		
		//get the pdf writer instance
		PdfWriter.getInstance(document, new FileOutputStream(file_name));
		document.open();
		
		Image image;
		try {
			image = Image.getInstance("C:\\Users\\ASUS\\Desktop\\ExamDetails\\logo.jpeg");
			
			 image.setAlignment(Image.MIDDLE);
		      image.setBorder(10);
		      image.setScaleToFitHeight(true);
		        document.add(image);
					      
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
       
	        // add a paragraph to the report
			Paragraph p2= new Paragraph();
			p2.setAlignment(Element.ALIGN_CENTER);
		
			
				p2.add("Kanampella Junior School ");
				
				p2.add("\n");
				p2.add("\n");
				p2.add("\n");

		List <Question> res=ExamsDBUtil.questionDetails();
		
		// add a table
		PdfPTable table= new PdfPTable(7);
		
		PdfPCell c1= new PdfPCell(new Phrase("QuestionID"));
		table.addCell(c1);
		
		 c1= new PdfPCell(new Phrase("Question Statement"));
		table.addCell(c1);
		
		 c1= new PdfPCell(new Phrase("Option 1"));
		table.addCell(c1);
		

		 c1= new PdfPCell(new Phrase("Option 2"));
		table.addCell(c1);

		 c1= new PdfPCell(new Phrase("Option 3"));
		table.addCell(c1);

		 c1= new PdfPCell(new Phrase("Option 4"));
		table.addCell(c1);
		
		c1= new PdfPCell(new Phrase("Answer"));
		table.addCell(c1);
		
		table.setHeaderRows(1);
		
		for(Question r1:res) {
			table.addCell(r1.getQuestionID());
			table.addCell(r1.getQuestion_Statement());
			table.addCell(r1.getOption_1());
			table.addCell(r1.getOption_2());
			table.addCell(r1.getOption_3());
			table.addCell(r1.getOption_4());
			table.addCell(r1.getAnswer());
			
		}
		
		document.add(p2);
		document.add(table);
		
		
		document.close();
		
	} catch (FileNotFoundException e1) {
		// TODO Auto-generated catch block
		e1.printStackTrace();
	} catch (DocumentException e1) {
		// TODO Auto-generated catch block
		e1.printStackTrace();
	}
}
}
