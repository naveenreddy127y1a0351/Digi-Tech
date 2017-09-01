package com.chat.controller;

import java.io.File;
import java.io.FileOutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.chat.dao.FileDAO;
import com.chat.model.UploadFile;
import com.chat.model.UserDetails;

@RestController
public class FileUploadController {

	@Autowired
	private FileDAO fileUploadDao;

	@RequestMapping(value = "/doUpload", method = RequestMethod.POST)
	public void handleFileUpload(HttpServletRequest request, HttpSession session,
			@RequestParam("fileUpload") MultipartFile fileUpload) throws Exception {
		UserDetails user = (UserDetails) session.getAttribute("currentuser");
		if (user == null)
			throw new RuntimeException("Not logged in");
		System.out.println("USER is " + user.getUserid());

		UploadFile upfile = fileUploadDao.getFile(user.getUserid());
		UploadFile uploadFile;
		if (fileUpload != null) {

			if (upfile != null) {
				//uploadFile=upfile;
				fileUploadDao.deleteImageRecord(upfile);
				try {
					// change according to your workspace path and project name
					String path = "D:/project2/projectchat/src/main/webapp/resources/images/users/"+ user.getUserid() + ".jpg";
					File file = new File(path);
					System.out.println(file.delete());

				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			
				uploadFile = new UploadFile();
				uploadFile.setUserid(user.getUserid());// login details
			

			
			CommonsMultipartFile aFile = (CommonsMultipartFile) fileUpload;

			System.out.println("Saving file: " + aFile.getOriginalFilename());

			 
			uploadFile.setFilename(aFile.getOriginalFilename());
			uploadFile.setData(aFile.getBytes());// image
			
			fileUploadDao.uploadFile(uploadFile);
			// select * from proj2_profie_pics where username='smith'
			UploadFile getUploadFile = fileUploadDao.getFile(user.getUserid());
			String name = getUploadFile.getFilename();
			System.out.println(getUploadFile.getData());
			byte[] imagefiles = getUploadFile.getData(); // image
			System.out.println();
			try {
				// change the path according to your workspace and the name
				// of your project
				// C:\WORKSPACE-DT5\toygroup1\src\main\webapp\WEB-INF\resources\images
				System.out.println("\nin try block");
				String path = "D:/project2/projectchat/src/main/webapp/resources/images/users/"+ user.getUserid() + ".jpg";
				System.out.println(path);
				System.out.println("\nbefore File file");
				File file = new File(path);
				// file.mkdirs();
				FileOutputStream fos = new FileOutputStream(file);
				fos.write(imagefiles);// write the array of bytes in
										// username file.
				fos.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		// return "redirect:/#/displayUsers";
	}

}
