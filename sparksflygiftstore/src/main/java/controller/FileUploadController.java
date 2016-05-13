package controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
@Controller
public class FileUploadController {

	
	/*@RequestMapping("/")
	public String getMessage(){
		
		return "index";
	}*/
		
	@RequestMapping(value = "/uploadFile", method = RequestMethod.POST)
	public @ResponseBody  String uploadFileHandler(@RequestParam("name") String name,
	        @RequestParam("file") MultipartFile file){
		
		System.out.println("Hello");
		if(!file.isEmpty()){
			
			  try {
				byte[] bytes = file.getBytes();
			//	String rootPath = System.getProperty("E://Eclipse_Workspace/testmvc/src/main/resources/");
				// File dir = new File(rootPath + File.separator + "tmpFiles");
				String rootPath="E:/Eclipse_Workspace/testmvc/src/main/webapp/resources";
				File dir = new File(rootPath);
	             if (!dir.exists())
	                 dir.mkdirs();
	             
	             File serverFile = new File(dir.getAbsolutePath()
	                     + File.separator + name+".jpg");
	             
	             BufferedOutputStream stream = new BufferedOutputStream(
	                     new FileOutputStream(serverFile));
	             stream.write(bytes);
	             stream.close();
	             
	             System.out.println("File Saved "+serverFile.getAbsolutePath()+" "+rootPath);
	             return "You successfully uploaded file=" + name;
	             



				
			} catch (IOException e) {
			
				return "Your file could not be uploaded "+e.getMessage();
			}
			  

		}
		else{
				return "You have not added a file ";
			
		}
				
	}
}
