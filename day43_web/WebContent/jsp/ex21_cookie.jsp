<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>쿠키쿠키</title>
	</head>
	
	<body>
		<%
			Cookie newCookie = new Cookie("name", "leesolge");
			newCookie.setMaxAge(0); 	/* 사용 기간을 0으로 만들면 <---바로 소멸 */
			//newCookie.setMaxAge(60);	/* 60초=1분, 30일(60*60*24*30) */
			response.addCookie(newCookie);
		%>
		<hr>
		<%
			Cookie[] cookies = request.getCookies();
			if(cookies!=null){
				for(int i=0;i<cookies.length;i++){
					if(cookies[i].getName().equals("name")){
						Cookie x = new Cookie("name", "5555");
						response.addCookie(x);
					}//in if end
					out.print(cookies[i].getName()+"<br>");
					out.print(cookies[i].getValue()+"<br>");
				}//for end
			} else {
				out.print("쿠키 정보 없네요!");
			  }
		%>
	</body>
</html>