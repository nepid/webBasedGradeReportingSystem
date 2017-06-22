<%-- 
    Document   : assignment_view
    Created on : Aug 14, 2014, 10:56:38 AM
    Author     : Jack Sparrow
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.cab.dao.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Assignment View Page</title>
        <link rel="stylesheet" type="text/css" href="mystyle.css">
    </head>
    <body>
        <table align="center" border="0">
	
                        <tr>
                            <td colspan="7" align="center"><img src="Images/banner.jpg"><hr width="980px"></td>
                        </tr>
                        
                        <tr>
                            <td>Welcome, ${sessionScope['username']}</td>
                        </tr>
                        
                    </table>
                                        
                        
                    
                    
                    <%
                            String semChoice = request.getParameter("sem");  
                            String testChoice = request.getParameter("test");
                            //out.println(choice);
                    %>
<table align ="center" width="59%" border="1">
                            <tr>
                                <td>Subjects</td>
                                <td>Marks</td>
                                
                            </tr>
    <%
         
        Statement stmt = DBConnection.conn.createStatement();
        ResultSet r;
        
        int counter=1;
        int sem = Integer.parseInt(semChoice);
        int test = Integer.parseInt(testChoice);
        String q = "select subjects,marks from assignment where semester="+sem+"&& assignment_no="+test+"&& sid ='"+session.getAttribute("uid")+"'";
        r = stmt.executeQuery(q);
        
        ResultSetMetaData metaData = r.getMetaData();
        while(r.next())
        {
            %>
                <tr>
                 <%
                 for(int i = 1; i<=metaData.getColumnCount();i++)
                    { %>
                     <td>
                     <%= r.getString(i)%>
                     </td>
                <% 
                    }
                %>                   
                </tr>
            <% 
        }
    %>
    
</table>
                    
    
                    <table align ="center" border ="0">
                        <tr>
                             <td><a class="eff" href="welcome.jsp"><b>Go Back</b></a></td>
                        </tr>
                    </table>
    </body>
</html>
