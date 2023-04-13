<%@ page import="java.nio.file.FileStore" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page import = "javax.servlet.http.HttpSession" %>
<%
  String login_out="로그인";
  String cookieId="";
//
  Cookie[] cookies = request.getCookies(); //쿠키 읽기

  if(cookies != null) {
    for (Cookie c : cookies) {
      String name = c.getName();
     if ("MBR_ID".equals(name)){
        cookieId = c.getValue();
        login_out = "로그아웃";}
    }
  }

  HttpSession session = request.getSession(false); // get existing session if exists, don't create new one
  if(session != null && session.getAttribute("id") != null) {
    login_out = "로그아웃";
  }
%>

<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">


  <title>Main</title>
<%--  <link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-gothic.css" rel="stylesheet">--%>
  <style>
    * {
      margin: 0;
      padding: 0;
    }

    #login_menu span a {text-decoration: none; color: #777777;}
    #login_menu span a:visited { color: #777777; text-decoration: none; }
    #login_menu span a:hover { color: rgb(18, 182, 96); text-decoration: none; }


    #product_cate span a {text-decoration: none; color: #777777;}
    #product_cate span a:visited { color: #777777; text-decoration: none; }

    #login_menu {
      background-color: rgba(231, 230, 230, 0.673);
      height: 40px;
      display: flex;
      align-items: center;
      justify-content: flex-end;
      padding-right: 17%;
      padding-left: 17%;
    }

    #login_menu span {
      color: #777777;
      margin-left: 23px;
      font-size: 14px;
      font-weight: 500;

    }

    #logo_search_box {
      height: 75px;
      display: flex;
      align-items: center;
      justify-content: space-between;
      padding: 0 20px;
      padding-left: 300px;
    }

    #product_cate {
      height: 50px;
      display: flex;
      align-items: center;
      padding-right: 17%;
      padding-left: 16.5%;
      border-bottom: 1px solid #7777779e;
    }

    #product_cate span {
      margin-left: 25px;
      color: #222222;
      font-size: 15px;
      font-weight: 550;
    }

    #logo_search_box{
      padding-right: 17%;
      padding-left: 17%;
    }

    #logo_search_box h1 {
      display: flex;
      align-items: center;
    }

    #logo_search_box h1 a {
      display: flex;
      align-items: center;
    }

    #logo_search_box h1 a img {
      margin-right: 10px;
    }

    #search_box {
      display: flex;
      align-items: center;
      border-radius: 2px;
      border: 1px solid #777777;
    }

    #search_box input[type="text"] {
      width: 300px;
      height: 30px;
      font-size: 15px;
      margin-right: 10px;
      border: 0px;
      outline: none;
      padding-left: 10px;
    }

    #search_box img {
      position: relative;
      width: 17px;
      margin-right: 5px;
    }
  </style>
</head>

<body>
<header>
  <div id="login_menu">
    <span><a href="/cs/notice/list">고객센터</a></span>
    <span><a href="/login"><%=login_out%></a></span>
    <span><a href="/register">회원가입</a></span>
    <span><a href="mypage">마이페이지</a></span>
    <span>장바구니</span>
    <span id="cart_cnt">0</span>
  </div>
  <div id="logo_search_box">
    <h1>
      <a href="/">
        <img src="/img/main/logo.png" width="250px" />
      </a>
      <div id="search_box">
        <input type="text" placeholder="  검색어를 입력하세요.">
        <img src="/img/main/search.png" />
      </div>
    </h1>
  </div>
  <div id="product_cate">
    <span><a href="/product/skincare">스킨케어</a></span>
    <span><a href="/product/makeup">메이크업</a></span>
    <span><a href="/product/hair-body">헤어/바디</a></span>
    <span><a href="/product/men">남성</a></span>
  </div>
</header>
</body>
</html>
