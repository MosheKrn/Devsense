<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Children list</title>

</head>
<body>
	<h1>רשימת ילדים</h1>
	
	
	<section>
	<table border=3 id="table1" align="center">

	<thead>
	<tr>
	<th>ID</th>
	<th>שם</th>
	<th colspan=2>פעולה</th>
	</tr>
	</thead>

	<tbody>
	<c:forEach items="${Children}" var="child">
	<tr>
	<td><c:out value="${child.childID }" /></td>
	<td><c:out value="${child.childName }" /></td>
	<td>
	<a onclick="del2(<c:out  value='${child.childID}'/>)" href="#">מחיקה</a>
	</td>
	<td>
	<a onclick="upd2(<c:out  value='${child.childID}'/>)" href="#">עדכון</a>
	</td>
	</tr>
	</c:forEach>
	</tbody>

	</table>
	</section>

	<p>
	<a href="ChildControllerAjax?action=insert">הוסף ילד</a>
	</p>







</body>
</html>