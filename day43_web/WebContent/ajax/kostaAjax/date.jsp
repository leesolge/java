		<%="최현석입니다.\n"%>
		<% Date date = new Date();SimpleDateFormat sdf = new SimpleDateFormat("YYYY년 MM월 dd일");%>
		<%="오늘의 날짜는 "+sdf.format(date)+" 입니다." %>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>