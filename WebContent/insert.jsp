<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<jsp:useBean id="dao" class="product.ProductDAO"/>
<jsp:useBean id="dto" class="product.ProductDTO"/>
<jsp:setProperty property="*" name="dto"/>
<title>Insert title here</title>
</head>
<body>
<%
dao.insert(dto); // 상품 등록을 위한 메소드 호출
%>
<div align="center">
<h2>상품이 등록되었습니다.</h2>
<hr>
<a href="index.html"><button>목록으로</button></a>
</div>
</body>
</html>