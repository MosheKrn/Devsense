<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Child Update Form</title>

</head>
<section>
<body onload="rr()">
	<form id="form1" action="ChildControllerAjax" method="post" name="tofes">
	<div>
	<label for="id_param" id="idlabel">ID (readonly)</label> <input
	readonly type="text" id="id" name="id_param"
	value="<c:out  value="${someChild.childID}"/>" />
	</div>

	<div>
	<label for="name_param">Child Name</label> <input type="text"
	name="name_param" value="<c:out  value="${someChild.childName }"/>" />
	</div>

	 <input type="submit" value="Add" onclick="{document.tofes.action_type.value=this.value;ins2();}" />
	<input type="submit" value="Update" onclick="{document.tofes.action_type.value=this.value;upd2();}" />
	<input type="hidden" name="action_type" />
	</form>
	</section>
</body>
</html>
