package com.asay.wetrip.uploader.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
/**
 * <b>uploaderController</b>
 *
 * <p>负责图片上传的controller
 *
 * <p>照片的上传和头像的上传都会调用此controller。根据上传的类型不同，调用不同的service
 *   
 * @author 孙亦璇

 * @date 2018年12月4日下午5:36:21
 * @Version 0.0.1
 */

import com.asay.wetrip.uploader.service.UploaderServiceImpl;

@Controller
public class UploaderController {
	
	/**
	 * {@value #AVATAR_PATH} -记录头像存放路径的常量
	 */
	private static final String AVATAR_PATH ="image\\avatar\\";
	
	/**
	* {@value #PHOTO_PATH}  -记录照片存放路径的常量
	*/
	private static final String PHOTO_PATH="image\\photo\\";
	
	@Resource
	private UploaderServiceImpl uploaderServiceImpl ;
	
	/**
	 * <b> savePhotos</b>   
	 * <p>上传照片时调用的controller
	 * <p>合成图片的真实的存储路径，并将路径传给service层，将图片进行存储
	 * @param Murequest 处理文件流的request     
	 * @return void      
	 */
	@RequestMapping(value="/photoUploader", method=RequestMethod.POST)
	@ResponseBody
	public void savePhotos(HttpServletRequest request,MultipartHttpServletRequest Murequest) {
		/*获取服务器地址
		 * 获取图片集合*/
		String realPath = request.getSession().getServletContext().getRealPath("/");
		Map<String, MultipartFile> newImages = Murequest.getFileMap();
		
		/*创建局部变量newImgPaths
		 * 若request中有newImgPaths，则直接读取
		 * 否则创建一个新的newImgPaths*/
		HttpSession session=request.getSession();
		List<String> newImgPaths;
		if( session.getAttribute("newImgPaths") != null) {
			newImgPaths=(List<String>) session.getAttribute("newImgPaths");
		}
		else {
			newImgPaths=new ArrayList();
		}
		newImgPaths=uploaderServiceImpl.saveImg(newImages, PHOTO_PATH, realPath,newImgPaths);
	
		/*将得到的图片存入session中*/
		session.setAttribute("newImgPaths", newImgPaths);
		
		return ;
	}
	
	@RequestMapping("/avatarUploader")
	public void saveAvatars() {
		//TODO 存头像的方法
	}
}
