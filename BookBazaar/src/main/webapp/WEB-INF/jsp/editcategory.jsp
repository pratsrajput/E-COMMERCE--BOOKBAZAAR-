<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
    
            <h1>EDIT CATEGORY</h1>  
           <form:form method="post" action="/BookBazaar/editsave">    
            <table >    
             <tr>    
              
              <td><form:hidden path="categoryid"  /></td>  
             </tr>    
             <tr>    
              <td>CATEGORY NAME:</td>    
              <td><form:input path="categoryname" /></td>  
             </tr>   
             <tr>    
              <td>CATEGORY DESCRIPTION :</td>    
              <td><form:input path="categorydescription" /></td>  
             </tr>   
             <tr>    
              <td>QUANTITY:</td>    
              <td><form:input path="quantity" /></td>  
             </tr>    
              <td> </td> 
                 
              <td><input type="submit" value="UPDATE" /></td>    
             </tr>    
            </table>    
           </form:form>

</body>
</html>