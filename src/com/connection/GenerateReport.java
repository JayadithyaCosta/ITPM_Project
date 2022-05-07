package com.connection;

import java.io.FileNotFoundException;



import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import com.classes.Exam;
import com.classes.Results;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.Image;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;


public class GenerateReport {
	
public static void generatePDF(String examid) {
		
		
		
		try {
			
			//create a file name
			String file_name="C:\\Users\\jayad\\Documents\\exam.pdf";
			
			//create a document object
			Document document=new Document();
			
			//get the pdf writer instance
			PdfWriter.getInstance(document, new FileOutputStream(file_name));
			document.open();
			
			//add an image to the report
			 Image image = Image.getInstance("D:\\Sliit\\ITPM\\project\\kanampellajuniorschool\\WebContent\\css\\Logo.png");
	          image.setAlignment(Image.MIDDLE);
		      image.setBorder(10);
		      //image.setScaleToFitHeight(true);
		        document.add(image);
					      
		        //add a paragraph to the report
				Paragraph p2= new Paragraph();
				p2.setAlignment(Element.ALIGN_CENTER);
				p2.add("Kanampella Junior School ");
				
				p2.add("\n");
				p2.add("\n");
				p2.add("\n");
				p2.add("\n");

			List <Results> res=ResultsUtil.getStudentResults(examid);
			
			
			//add table
			PdfPTable table= new PdfPTable(4);
			
			PdfPCell c1= new PdfPCell(new Phrase("ExamID"));
			table.addCell(c1);
			
			 c1= new PdfPCell(new Phrase("Total Questions"));
			table.addCell(c1);
			
			 c1= new PdfPCell(new Phrase("Marks"));
			table.addCell(c1);
			
			
			
			c1= new PdfPCell(new Phrase("SubjectID"));
			table.addCell(c1);
			
			table.setHeaderRows(1);
			
			for(Results r1:res) {
				table.addCell(r1.getStid());
				table.addCell(r1.getSubject());
				table.addCell(r1.getStatus());
				table.addCell(Double.toString(r1.getTotal()));
				
				
				
				
			}
			
			document.add(p2);
			
			document.add(table);
		
			
			
			document.close();
			
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (DocumentException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
