package com.interyard.tour.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.interyard.member.vo.LoginVO;
import com.interyard.notice.init.NoticeInit;
import com.interyard.notice.vo.NoticeVO;
import com.interyard.util.exe.Execute;
import com.interyard.util.multi.MultiPartUtil;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.webjjang.util.page.PageObject;

public class TourController {
	public String execute(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		int gradeNo = 0;
		
		LoginVO login = (LoginVO) session.getAttribute("login");
		
		if (login != null) {
			gradeNo =login.getGradeNo();
		}
		
		
		String uri = request.getRequestURI();
		
		String jsp = null;
		
		
		// 파일 시스템에서는 절대 저장 위치가 필요하다. - 파일 업로드 시 필요.
		
		try {
			
			switch (uri) {
			case "/tour/airSearch.do":
				// [NoticeController] - (Execute) - NoticeListService - NoticeDAO.list()
				System.out.println("TourController.airSearch uri");
				
				jsp = "tour/airSearch";
				break;

			default:
				jsp = "error/404";
				break;
			} // end of switch
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			
			request.setAttribute("e", e); // e(예외)를 jsp에 보내서 표시한다.
			
			jsp = "error/500";
		} // end of try~catch
		
		return jsp;
		
	}
}
