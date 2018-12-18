package com.asay.wetrip.index.controller;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;
import org.springframework.stereotype.Component;


/**
 * 
 * @ClassName:  IndexFilter   
 * @Description:如果用户没有登录，点击别的地方不能跳转，会提示用户先登录   
 * @author: 王慧
 * @date:   2018年12月6日 下午7:32:21
 */
@Component
public class IndexFilter implements Filter {

    /**
     * Default constructor. 
     */
    public IndexFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here
		HttpSession session=((HttpServletRequest) request).getSession();
		String userEmail=(String) session.getAttribute("userEmail");
		if(userEmail!=null) {
			chain.doFilter(request, response);
		}else {
			((HttpServletRequest)request).getRequestDispatcher("main.jsp").forward(request, response);
			//正则表达式过滤器
			JOptionPane.showMessageDialog(null, "请先登录！", "alert", JOptionPane.ERROR_MESSAGE);
//			int pd=JOptionPane.showConfirmDialog(null, "请先登录","提示",JOptionPane.YES_NO_OPTION);
//			System.out.println(pd);
//			System.out.println(JOptionPane.YES_OPTION);
//			if(pd==JOptionPane.YES_OPTION) {
//			((HttpServletRequest)request).getRequestDispatcher("login.jsp").forward(request, response);
//			}
		}
		
		
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
