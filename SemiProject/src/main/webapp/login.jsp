<%@page import="userDao.UserDao"%>
<%@page import="userDto.UserDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. 폼 읽어오기
	String email = request.getParameter("email");
	String pwd = request.getParameter("pwd");
	//2. UserDao에서 아이디값 얻어오기
	UserDto dto = UserDao.getInstance().getData(email);
	//3. DB에 존재하는 Email 이라면 pwd 일치하는지 비교하여 로그인처리하기
	boolean isMatching = false;
	if( dto != null){
		if(dto.getPwd().equals(pwd)){
			//로그인 처리하기
			session.setAttribute("email", email);
		}
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>