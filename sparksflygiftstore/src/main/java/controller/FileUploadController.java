package controller;

import org.springframework.stereotype.Controller;

import model.FileUpload;

@Controller
public class FileUploadController {

	public FileUploadController(){
		setCommandClass(FileUpload.class);
		setCommandName("fileUploadForm");
	}

	private void setCommandName(String string) {
		// TODO Auto-generated method stub
		
	}

	private void setCommandClass(Class<FileUpload> class1) {
		// TODO Auto-generated method stub
		
	}

}
