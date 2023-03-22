<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ page import="com.khtime.member.vo.Member"%>
<% Member loginUser = session.getAttribute("loginUser");%>  --%>
<% String loginUser = "admin";%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="resources/CSS/header.css">
    <title>Document</title>
</head>
<body>
    <div id="header">
        <div id="header-content">
            <div id="home-logo">
                <img src="<%= request.getContextPath()%>/resources/IMG/로고이미지.png" alt="로고이미지">
            </div>
            <div id="navbar">
                <div>게시판</div>
                <div>친구목록</div>
                <div id="bookstore">중고책방</div>
                <div id="todolist">To Do List</div>
                <% if(loginUser != null && loginUser.equals("admin")) { %>
                <div id="management">관리</div>
                <% } %>
            </div>
            <div id="header-right">
                <% if(loginUser == null){%>
                    <button id="login-btn">로그인</button>
                    <button id="enrollment-btn">회원가입</button>
                <% } else { %>
                    <button id="message-btn"></button>
                    <button id="mypage-btn"></button>
                <% } %>
            </div>
        </div>
    </div>

    <script>
    
	    document.getElementById("home-logo").addEventListener("click",function(){
	        location.href = "<%= request.getContextPath() %>";
	    })
        <% if(loginUser == null) {%> 
        document.getElementById("login-btn").addEventListener("click",function(){
            location.href = "<%= request.getContextPath() %>/login.me";
        })

        document.getElementById("enrollment-btn").addEventListener("click",function(){
            location.href = "<%= request.getContextPath() %>/enroll.me";
        })
        <% } else if(loginUser.equals("admin")) { %>
            
            document.getElementById("management").addEventListener("click",function(){
                location.href = "<%= request.getContextPath() %>/management.do";
            })
        <% } %>

         document.getElementById("todolist").addEventListener("click",function(){
            location.href = "<%= request.getContextPath() %>/todolist.me";
        })
        
        document.getElementById("bookstore").addEventListener("click",function(){
            location.href = "<%= request.getContextPath() %>/bookstore.do";
        })

    </script>
</body>
</html>