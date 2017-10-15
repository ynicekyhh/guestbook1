<%@page import="com.bigdata2017.guestbook.dao.GuestbookDao"%>
<%@page import="com.bigdata2017.guestbook.vo.GuestbookVo"%>
<%
	GuestbookDao dao = new GuestbookDao();
	
	dao.delete(Long.parseLong(request.getParameter("no")), request.getParameter("password"));
	
	response.sendRedirect(request.getContextPath());
%>