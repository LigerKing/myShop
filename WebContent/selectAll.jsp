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
	ArrayList<ProductDTO> pList = dao.selectAll(); // ��ǰ ����Ʈ ��ü �˻� �޼ҵ� ȣ��
%>
<div align="center">
<h2>��ü ��ǰ ����Ʈ</h2>
<hr>
	<table border="1">
		<tr>
			<th>��ǰ���̵�</th>
			<th>��ǰ����</th>
			<th>��ǰ����</th>
			<th>��ǰ����</th>
		</tr>
		<%
			// �˻��� ����Ʈ ���� ���̺� ����
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
	<a href="index.html"><button>�������</button></a>
</div>
</body>
</html>