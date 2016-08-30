<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>session OK!</title>
		<%
			String ids = "leesolge";
			String pws = "oracle";
			String uid = request.getParameter("uid");
			String pwd = request.getParameter("pwd");
			boolean loginState = false;
			/* db연결 확인하고 */
			/* id==pwd 같다면 회원이라고 가정하고 */
		%>
		<%
			if(uid.equals(ids)&&pwd.equals(pws)){
				session.setAttribute("uid", uid);
				loginState = true;
			} else {
				session.setAttribute("uid", null);
			}
			
		%>
	</head>
	
	<body>
		<%String userID = (String)session.getAttribute("uid"); %>
		<%=userID %>
		<hr>
		<%
			if(loginState==true){
				out.print(uid+"님 로그인한 상태");
			}else {
				out.print("로그인 되어 있지 않습니다.");
			}
		%>
	</body>
</html>