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
	dao.delete(dto); // ��ǰ ������ ���� �޼ҵ� ȣ��
%>
<div align="center">
<h2>�ش� ��ǰ�� �����Ǿ����ϴ�.</h2>
<hr>
<a href="index.html"><button>�������</button></a>
</div>
</body>
</html>