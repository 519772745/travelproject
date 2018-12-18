package com.asay.wetrip.editor.controller;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.asay.wetrip.editor.service.EditorServiceImpl;
import com.asay.wetrip.entity.TagTravelNote;
import com.asay.wetrip.entity.TravelNote;
import com.asay.wetrip.entity.UserDetail;
import com.asay.wetrip.util.ConfigConsts;
import com.asay.wetrip.util.SensitiveWord;

/**
 * 
 * @ClassName:  EditorController   
 * @Description:TODO获取editor页面的数据并将数据传到Service层
 * @author: 赵旭
 * @date:   2018年12月10日 下午3:57:13
 */
@Controller
public class EditorController {

	@Resource
	private EditorServiceImpl editorServiceImpl;
	
	/**
	 * 
	 * @Title: editor   
	 * @Description: TODO <p>跳转到editor页面  顺便清一下session中的imag数据 为新编辑页做准备
	 * @param: @param session
	 * @param: @return      
	 * @return: String      
	 * @throws
	 */
	@RequestMapping(value="/editor", method=RequestMethod.GET)
	public String editor(HttpSession session) {
		session.removeAttribute("newImgPaths");
		return "editor";		
	}
	
	
	/**
	 * map
	 *<p>获得编辑页的数据
	 * @param <b>travelNote
	 * @param session
	 * @param request
	 * @param      
	 * @return String      
	 * @throws
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value="/editor", method=RequestMethod.POST)
	public String map(TravelNote travelNote,HttpSession session,HttpServletRequest request) {
		//通过travelNote对象来接收数据及部分单独通过name属性接收
		//topic_id的获得及set
		String topic=request.getParameter("topicId");
		System.out.println(topic);
		if(topic=="true") {
			travelNote.setTopic(ConfigConsts.TODAY_TOPIC);//从数据库中读的
		}else {
			travelNote.setTopic(null);
		}
		//tag的获得及set
		Set tagset = new HashSet();
		String tags=request.getParameter("tag1");
		String[] tagsplit=tags.split(",");
		for (int i = 0; i < tagsplit.length; i++) {   
			if (tagset.contains(tagsplit[i]) == false){//判断 要拆分的字符串 中是否已经存在于这个tagset中   
				tagset.add(tagsplit[i]);//不存在则添加进tagset
			}
		}
		travelNote.setTagTravelNote(tagset);
		//敏感词的过滤
		long startNumer = System.currentTimeMillis();
		SensitiveWord sw = new SensitiveWord("CensorWords.txt");  
	    sw.InitializationWork();
	    String str=travelNote.getContent();
	    str = sw.filterInfo(str);
	    travelNote.setContent(str);
		//地址解析成省和市
		String province=ARP(travelNote.getProvince());
		String city=ARC(travelNote.getProvince());
		travelNote.setProvince(province);
		travelNote.setCity(city);		
		//遍历tagset集合有条件的存入tag表中
		Iterator<String> it = tagset.iterator();
		while (it.hasNext()) {
			String str1 = it.next();
			System.out.println("遍历的单个标签是："+str1);
			editorServiceImpl.tag(str1,travelNote);
		}
		//通过会话session获得user对象	
		UserDetail user=new UserDetail();
		String email="903639364@qq.com";
		user.setEmail(email);
//		UserDetail user=(UserDetail) session.getAttribute("user");
		//获得imgpaths
		List <String>imgPaths=(List<String>) session.getAttribute("newImgPaths");
		System.out.println(travelNote.getTagTravelNote()+"======tag");
		editorServiceImpl.saveTravelNotesAndImages(travelNote, user, imgPaths); 
		//成功存入后跳转到个人中心页面
		return "Details";

	}
	public static String ARP(String address){
        String regex="(?<province>[^省]+自治区|.*?省|.*?行政区|.*?市)(?<city>[^市]+自治州|.*?地区|.*?行政单位|.+盟|市辖区|.*?市|.*?县)(?<county>[^县]+县|.+区|.+市|.+旗|.+海域|.+岛)?(?<town>[^区]+区|.+镇)?(?<village>.*)";
        Matcher m=Pattern.compile(regex).matcher(address);
        String province=null;//city=null;//county=null,town=null,village=null;
        while(m.find()){
            province=m.group("province");
        }
        return province;
    }
    public static String ARC(String address){
        String regex="(?<province>[^省]+自治区|.*?省|.*?行政区|.*?市)(?<city>[^市]+自治州|.*?地区|.*?行政单位|.+盟|市辖区|.*?市|.*?县)(?<county>[^县]+县|.+区|.+市|.+旗|.+海域|.+岛)?(?<town>[^区]+区|.+镇)?(?<village>.*)";
        Matcher m=Pattern.compile(regex).matcher(address);
        String city=null;//county=null,town=null,village=null;
        while(m.find()){
            city=m.group("city");
        }
        return city;
    }
}
