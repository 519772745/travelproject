package com.asay.wetrip.uploader.service;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;
import org.springframework.web.multipart.MultipartFile;


/**
 * 
 * @ClassName uploaderServiceImpl
 *
 * <p> 用于存储上传的图片到本地服务器的service
 * <p> 将图片更名(名称为其MD5码)，并存到本地服务器中

 * @author: 孙亦璇
 * @since:2018年12月4日下午7:42:07
 * @Version:0.0.1
 */
@Service
public class UploaderServiceImpl {
	/** 
	 * <b>saveImg</b>
	 * <p>将图片存入服务器本地的service
	 * <p>图片将会被存入服务器本地。其中图片的名字为（图片的md5码.原始类型） 
	 * @param newImages {@code uploader.controller.uploaderController} 传来的图片集合
	 * @param relativePath {@code uploader.controller.uploaderController} 传来的图片存储的相对地址
	 * @param realPath {@code uploader.controller.uploaderController} 传来的服务器的绝对地址
	 * 
	 * @return newImgPaths 即图片在服务器中的相对地址的list集合
	 */

	public List<String> saveImg(Map<String, MultipartFile> newImages, String relativePath, 
				String realPath,List<String> newImgPaths) {
		
		/* upaloadPath:记录图片存储的真实的地址，由相对地址path和服务器地址realPath决定 */
		String uploadPath = realPath + relativePath;

		/* 预防文件夹不存在的情况(几乎不可能出现) */
		File dir = new File(uploadPath);
		if (!dir.exists())// 目录不存在则创建
			dir.mkdirs();

		/*
		 * 循环 -将所有来到的图片都存到本地中
		 */
		//TODO 这里改用Stringbuffer？
		String md5="这是默认的值";
		for (MultipartFile file : newImages.values()) {
			/*将文件按照MD5码重命名*/
			try {
				md5 = DigestUtils.md5DigestAsHex(file.getBytes());
			} catch (IOException e1) {
				// TODO 这里没写异常呢...
				e1.printStackTrace();
			}  
			
			
			/* 修改文件的名字
			 * originalName 文件的原名字
			 * fileType 文件的原格式
			 * fileName 文件的新名字(存储时的名字)*/
			String originalName=file.getOriginalFilename();
			String fileType=originalName.substring(originalName.lastIndexOf("."));
			String fileName = md5+fileType;
			
			/*
			 * 在本地创建文件
			 * */
			File tagetFile = new File(uploadPath + fileName);
			if (!tagetFile.exists()) {
				try {
					tagetFile.createNewFile();
					file.transferTo(tagetFile);
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			
			/*将文件的相对路径存入List中*/
			String imgPath =relativePath+fileName;
			/*控制台打印下图片的路径*/
			System.out.println(uploadPath + fileName);
			newImgPaths.add(imgPath);
		}
		return newImgPaths;
	}
}
