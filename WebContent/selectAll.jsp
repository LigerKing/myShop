<%@page import="product.ProductDTO"%>
<%@page import="java.util.ArrayList"%>
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
	ArrayList<ProductDTO> pList = dao.selectAll(); // 상품 리스트 전체 검색 메소드 호출
%>
<div align="center">
<h2>전체 상품 리스트</h2>
<hr>
	<table border="1">
		<tr>
			<th>상품아이디</th>
			<th>상품제목</th>
			<th>상품설명</th>
			<th>상품가격</th>
		</tr>
		<%
			// 검색한 리스트 마다 테이블 생성
			for(int i=0; i<pList.size(); ++i){
				ProductDTO listDTO = new ProductDTO();
				listDTO = pList.get(i);
		%>
		<tr>
			<td><%=listDTO.getPid() %></td>
			<td><%=listDTO.getTitle() %></td>
			<td><%=listDTO.getDetail() %></td>
			<td><%=listDTO.getPrice() %></td>
		</tr>
		<%} %>
	</table>
	<p>
	<a href="index.html"><button>목록으로</button></a>
</div>
</body>
</html>