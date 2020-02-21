<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>Ceci est une page générée depuis une JSP.</p>
	<p>
		<%
			String attribut = (String) request.getAttribute("test");
			out.println(attribut);

			String parametre = request.getParameter("auteur");
			out.println(parametre);
		%>
	</p>
	<p>
		Récupération du bean :
		<%
		com.sdzee.beans.Coyote notreBean = (com.sdzee.beans.Coyote) request.getAttribute("coyote");
		out.println(notreBean.getPrenom());
		out.println(notreBean.getNom());
	%>
	</p>
</body>
</html>