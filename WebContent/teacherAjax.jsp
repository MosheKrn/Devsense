<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Teacher's list</title>

</head>
<body>
	<h1>רשימת מורים</h1>
	
	
	<section>
	<table border=3 id="table3" align="center">

	<thead>
	<tr>
	<th>ID</th>
	<th>שם</th>
	<th colspan=2>פעולה</th>
	</tr>
	</thead>

	<tbody>
	<c:forEach items="${Teachers}" var="teacher">
	<tr>
	<td><c:out value="${teacher.teacherID }" /></td>
	<td><c:out value="${teacher.teacherName }" /></td>
	<td>
	<a onclick="del3(<c:out  value='${teacher.teacherID}'/>)" href="#">מחיקה</a>
	</td>
	<td>
	<a onclick="upd3(<c:out  value='${teacher.teacherID}'/>)" href="#">עדכון</a>
	</td>
	</tr>
	</c:forEach>
	</tbody>

	</table>
	</section>

	<p>
	<a href="TeacherControllerAjax?action=insert">הוסף מורה</a>
	</p>







</body>
</html>