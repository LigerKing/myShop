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
	ProductDTO listDTO = dao.select(dto); // ��ǰ �˻��� ���� �޼ҵ� ȣ��
%>
<div align="center">
<h2>�˻� ����</h2>
<hr>
	<table border="1">
		<tr>
			<th>��ǰ���̵�</th>
			<th>��ǰ����</th>
			<th>��ǰ����</th>
			<th>��ǰ����</th>
		</tr>
		<tr>
			<td><%=listDTO.getPid() %></td>
			<td><%=listDTO.getTitle() %></td>
			<td><%=listDTO.getDetail() %></td>
			<td><%=listDTO.getPrice() %></td>
		</tr>
	</table>
	<p>
	<a href="index.html"><button>�������</button></a>
</div>
</body>
</html>