<%@page import="com.bigdata2017.guestbook.dao.GuestbookDao"%>
<%@page import="com.bigdata2017.guestbook.vo.GuestbookVo"%>
<%
	request.setCharacterEncoding("UTF-8");

	GuestbookDao dao = new GuestbookDao();
	GuestbookVo vo = new GuestbookVo();
	
	vo.setName( request.getParameter("name") );
	vo.setPassword( request.getParameter("pass") );
	vo.setContent( request.getParameter("content") );
	
	dao.insert(vo);
	
	//redirection!!
	response.sendRedirect(request.getContextPath());
%>
