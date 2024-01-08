# PDF-splitter
## Overview
This batch script is designed to facilitate the extraction of specific page ranges from a PDF file. It prompts users to input the name of the PDF file and the desired page range, creating a new PDF with just those pages. The tool is built to be user-friendly and efficient, making it ideal for quickly extracting sections from larger PDF documents.

## Requirements
- Windows Operating System
- pdftk (PDF Toolkit): This tool relies on pdftk to handle PDF operations. Ensure that pdftk is installed and accessible from the command line. You can download it from https://www.pdflabs.com/tools/pdftk-the-pdf-toolkit/ .

## Usage Instructions
- Start the Script: Run the batch file to start the process.
- Enter PDF Name:
      When prompted, enter the name of the PDF file (without the .pdf extension) that you want to extract pages from.
      Ensure that the PDF file is in the same directory as the batch script.
- View Page Count:
      The script will display the total number of pages in the PDF.
- Select Page Range:
      Enter the desired page range (e.g., 1-50) when prompted or just one number for a specific page. 
      The script will create a new PDF with this specific range.
- Extract More Pages (Optional):
    After the first extraction, you can choose to extract another range from the same PDF.
    To do so, enter s when prompted. Otherwise, enter any other key to end the process.
- Output:
    The extracted PDF will be saved in the same directory as the original file.
    The new file's name will include the original name and the specified page range (e.g., document_1-50.pdf).
- Repeat or Exit:
    If you choose to extract more pages, the script will repeat the page range selection process.
    To exit, simply decline to extract more pages when prompted or close the command prompt window.

## Notes
This script assumes that the pdftk command-line tool is already installed and configured in your system path.
The script currently does not support PDFs with password protection or advanced PDF features.
