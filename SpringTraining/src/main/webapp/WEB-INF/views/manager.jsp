<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메니저별 직원명단조회</title>
</head>
<style>
table { border-collapse:collapse}
th,td {border:1px solid black; padding:5px 5px;}
</style>
<body>
<h1>메니저별 직원명단조회</h1>
메니저명 :<select id=selDept>
<option selected>매니저 선택</option>
<c:forEach var="m" items="${ml}">
	<option value=${m.manager_id}>${m.emp_name}</option>
</c:forEach>
</select><br><br>
<table id=tblDept></table>
</body>
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<script>
$(document)
.on('change','#selDept',function(){
	$.ajax({
		url:'/drill/manaview',
		data:{Mid:$('#selDept').val()},
		datatype:'json',
		method:'get',
		beforeSend:function(){
			$('#tblDept').empty();
		},
		success:function(txt){
			console.log(txt);
			$('#tblDept').append("<tr><th>사번</th><th>직원이름</th><th>전화번호</th><th>월급</th></tr>");
			for(i=0; i<txt.length; i++) {
				let str="<tr><td>"+txt[i]['employee_id']+"</td><td>"+txt[i]['emp_name']+"</td><td>"
						+txt[i]['phone_number']+"</td><td>"+txt[i]['salary']+"</td></tr>";
				console.log(str);
				$('#tblDept').append(str);
			}
		}
	});
})
</script>
</html>