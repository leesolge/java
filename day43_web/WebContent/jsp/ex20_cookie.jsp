<%@page import="java.net.URLEncoder"%>
<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>쿠키</title>
	</head>
	
	<body>
		<!-- windows 7 cooke 위치 
		C:\Users\7\AppData\Roaming\Microsoft\Windows\Cookies -->
		<%
			/* Cookie Class */
			/* Cookie cookie = new Cookie("irum", "doyeon");*/
			Cookie cookie = new Cookie("KostaName", URLEncoder.encode("쿠키", "utf-8"));
			/* Client 브라우저에게 Cookie 전달 */
			response.addCookie(cookie);
		%>
		<hr>
			서버 도메인 이름 : <%=cookie.getDomain() %><br>
			쿠키 이름 : <%=cookie.getName() %><br>
			쿠키 값 : <%=cookie.getValue() %><br>
		<hr>
		<%
			Cookie[] cs = request.getCookies();
			if(cs.length>0||cs!=null){
				for(int i=0;i<cs.length;i++){
					/* out.print(cs[i].getName()+"<br>");
					out.print(cs[i].getValue()+"<br>"); */
					out.print(URLDecoder.decode(cs[i].getValue(), "UTF-8")+"<br>");
					
				}
			}
			else {
				out.print("Client에 저장된 쿠키 정보가 없습니다.");
			}
		%>
	</body>
</html>