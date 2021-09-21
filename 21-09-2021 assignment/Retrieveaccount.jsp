<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<sql:setDataSource var="db" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3306/bank" user="vish" password="vishaali"></sql:setDataSource>
<sql:query dataSource="${db}" var="rs">
select*from customer;</sql:query>

            <font size="5" color='green'> Congratulations ! Data are
            displayed sucessfully.</font>
              <a href="index.jsp">Go Home</a> 
<table border="2" width="70%" bgColor="yellow">
<tr>
<th>Name of the customer</th>
<th>Username of the customer</th>
<th>Password of the customer</th>
<th>Mobile number of the customer</th>
<th>Address of the customer</th>
<th>Account number of the customer</th>
<th>Balance amount of the customer</th></tr>
<c:forEach var="bankk" items="${rs.rows }">
<tr>
<td>${bankk.name}</td>
<td>${bankk.usname}</td>
<td>${bankk.password}</td>
<td>${bankk.mobno}</td>
<td>${bankk.address}</td>
<td>${bankk.accountnumber}</td>
<td>${bankk.balanceamount}</td>
</tr></c:forEach></table>
         
        
</body>
</html>