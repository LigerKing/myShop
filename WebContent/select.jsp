<%@page import="product.ProductDTO"%>
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
<link rel="stylesheet" href="css/myShop.css">
</head>
<body>
<%
	ProductDTO listDTO = dao.select(dto); // 상품 검색을 위한 메소드 호출
%>
<div align="center">
<h2>검색 내용</h2>
<hr>
	<table border="1">
		<tr>
			<th>상품아이디</th>
			<th>상품제목</th>
			<th>상품설명</th>
			<th>상품가격</th>
		</tr>
		<tr>
			<td><%=listDTO.getPid() %></td>
			<td><%=listDTO.getTitle() %></td>
			<td><%=listDTO.getDetail() %></td>
			<td><%=listDTO.getPrice() %></td>
		</tr>
	</table>
	<p>
	<a href="index.html"><button>목록으로</button></a>
</div>
</body>
</html>