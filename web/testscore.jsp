<%-- 
    Document   : testscore
    Created on : Aug 13, 2014, 11:10:25 AM
    Author     : Jack Sparrow
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.cab.dao.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Test Score View</title>
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
                                        
                        
                    
                    <form name="someForm" action="testscore_view.jsp" method="post">
                            <table align ="center" border ="0">
                                            <tr>
                                                <td rowspan ="8"><b>Semester:</b></td>
                                                <td> <input type="radio" name="sem" value="1">First</td>
                                                <td rowspan ="8"><b>Test No.</b></td>
                                                <td> <input type="radio" name="test" value="1">First</td>
                                                <td rowspan ="8"><input type="submit" value="Submit"></td>
                                            </tr>
                                            
                                            <tr>
                                                <td> <input type="radio" name="sem" value="2">Second</td>
                                                <td> <input type="radio" name="test" value="2">Second</td>
                                            </tr>
                                            
                                            <tr>
                                                <td> <input type="radio" name="sem" value="3">Third</td>
                                                <td> <input type="radio" name="test" value="3">Third</td>
                                            </tr>
                                            
                                            <tr>
                                                <td> <input type="radio" name="sem" value="4">Fourth</td>
                                                <td> <input type="radio" name="test" value="4">Fourth</td>
                                            </tr> 
                                            
                                            <tr>
                                                <td> <input type="radio" name="sem" value="5">Fifth</td>
                                                <td> <input type="radio" name="test" value="5">Fifth</td>
                                            </tr>
                                            
                                            <tr>
                                                <td> <input type="radio" name="sem" value="6">Sixth</td>
                                                <td></td>
                                            </tr>
                                            
                                            <tr>
                                                <td> <input type="radio" name="sem" value="7">Seventh</td>
                                                <td></td>
                                            </tr>
                                            
                                            <tr>
                                                <td> <input type="radio" name="sem" value="8">Eighth</td>
                                                <td></td>
                                            </tr>
                                            
                    </table>
                    </form>
                    
                    
    
                    <table align ="center" border ="0">
                        <tr>
                             <td><a class="eff" href="welcome.jsp"><b>Go Back</b></a></td>
                        </tr>
                    </table>
    </body>
</html>
