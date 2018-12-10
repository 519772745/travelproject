package com.asay.wetrip.editor.service;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.asay.wetrip.editor.dao.EditorDaoImpl;
import com.asay.wetrip.entity.Imgs;
import com.asay.wetrip.entity.TravelNote;
import com.asay.wetrip.entity.UserDetail;

/**
 * 
 * <b>EditorService</b>
 *
 * <p>
 * 负责处理editor.jsp的service
 * 
 * @author: 孙亦璇
 * @date:2018年12月5日下午2:22:14
 * @Version:0.0.1
 */

@Service
public class EditorServiceImpl {
	@Resource
	private EditorDaoImpl editorDaoImpl;

	/**
	 * 
	 * <b>saveTravelNotesAndImages</b>
	 * 
	 * <p>存储游记和对应的图片的方法
	 * <p>初始化了点赞数、评论数、举报数（为0），将游记和图片之间建立了联系
	 * <p>之后将交给{@code EditorDaoImpl} 插入数据库
	 *
	 * @param travelNote   游记对象 
	 * @param user 用户对象（用户名）
	 * @param imgPaths (所上传的图片的路径)
	 * @return void 
	 */
	public void saveTravelNotesAndImages(TravelNote travelNote, UserDetail user, List<String> imgPaths) {
		/* 设置发表用户 */
		travelNote.setUserDetail(user);
		/* 初始化点赞数,评论数,举报数 */
		travelNote.setPraiseCount(0);
		travelNote.setCommentNum(0);
		travelNote.setReportcount(0);
		travelNote.setPublishtime(new Timestamp(System.currentTimeMillis()));

		/*
		 * 得到文章长度 150及以下为说说，150以上为长文章
		 */
		int noteLength = travelNote.getContent().length();
		if (noteLength <= 150)
			travelNote.setIslong(0);
		else
			travelNote.setIslong(1);

		/* 清除该篇文章内附带的照片，为下面重新插入照片做准备 */
		editorDaoImpl.delAllPhotos(travelNote);

		/* 封装Imgs */
		Set<Imgs> imgs = new HashSet();
		for (String imgPath : imgPaths) {
			Imgs img = new Imgs();
			img.setPath(imgPath);
			img.setTravelNote(travelNote);
			imgs.add(img);
		}

		/* 预防没有图片的情况 */
		if (imgs != null) {
			/* 将imgs和travelNote关联 */
			travelNote.setImgs(imgs);

			/* 传给dao */
			editorDaoImpl.savePhotos(imgs);
		}
		editorDaoImpl.saveTravelNotes(travelNote);
	}
}
