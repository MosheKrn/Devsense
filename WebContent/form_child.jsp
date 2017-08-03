<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Student Update Form</title>

<script type="text/javascript">

function getQueryParameter ( parameterName ) {
	  var queryString = window.top.location.search.substring(1);
	  var parameterName = parameterName + "=";
	  if ( queryString.length > 0 ) {
	    begin = queryString.indexOf ( parameterName );
	    if ( begin != -1 ) {
	      begin += parameterName.length;
	      end = queryString.indexOf ( "&" , begin );
	        if ( end == -1 ) {
	        end = queryString.length
	      }
	      return unescape ( queryString.substring ( begin, end ) );
	    }
	  }
	  return "null";
	}


function rr()
{
	var x=getQueryParameter( "action" );
	if(x=="insert")
	{
	document.getElementById("id").readOnly=false;
	document.getElementById("idlabel").innerHTML="ID (require)";
	}
	
	}
 
</script>


</head>
<body onload="rr()">
	<form action="ChildControllerAjax" method="post" name="tofes">
	<div>
	<label for="id_param" id="idlabel">ID (readonly)</label> <input
	readonly type="text" id="id" name="id_param"
	value="<c:out  value="${someChild.childID}"/>" />
	</div>

	<div>
	<label for="name_param">Child Name</label> <input type="text"
	name="name_param" value="<c:out  value="${someChild.childName }"/>" />
	</div>

	 <input type="submit" value="Add"
	onclick="{document.tofes.action_type.value=this.value;document.tofes.submit();}" />
	<input type="submit" value="Update"
	onclick="{document.tofes.action_type.value=this.value;document.tofes.submit();}" />
	<input type="hidden" name="action_type" />
	</form>
</body>
</html>