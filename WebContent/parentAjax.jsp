<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Parents list</title>



</head>
<body>
	<h1>רשימת הורים</h1>
	
	
	<section>
	<table border=3 id="table2" align="center">

	<thead>
	<tr>
	<th>ID</th>
	<th>שם</th>
	<th colspan=2>פעולה</th>
	</tr>
	</thead>

	<tbody>
	<c:forEach items="${Parents}" var="parent">
	<tr>
	<td><c:out value="${parent.parentID }" /></td>
	<td><c:out value="${parent.parentName }" /></td>
	<td>
	<a onclick="del(<c:out  value='${parent.parentID}'/>)" href="#">מחיקה</a>
	</td>
	<td>
	<a onclick="upd(<c:out  value='${parent.parentID}'/>)" href="#">עדכון</a>
	</td>
	</tr>
	</c:forEach>
	</tbody>

	</table>
	</section>

	<p>
	<a href="ParentControllerAjax?action=insert">הוסף הורה</a>
	</p>







</body>
</html>