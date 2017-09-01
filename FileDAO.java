package com.chat.dao;

import com.chat.model.UploadFile;

public interface FileDAO {

	public abstract void uploadFile(UploadFile file);	
	public abstract UploadFile getFile(String username);
	public abstract void deleteImageRecord(UploadFile file);
}
