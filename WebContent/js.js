function generatePDF(){

const element = document.getElementById("report");

  html2pdf().from(element).set({
    filename: 'samplepdf.pdf',
    jsPDF: {orientation: 'landscape', unit: 'in', format: 'letter'}
  }).save();
}