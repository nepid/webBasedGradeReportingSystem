<%-- 
    Document   : internal_report
    Created on : Aug 14, 2014, 11:06:21 AM
    Author     : Jack Sparrow
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Internal Marks Page</title>
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
                                        
                        
                    
                    <form name="someForm" action="internalmarks_view.jsp" method="post">
                            <table align ="center" border ="0">
                                            <tr>
                                                <td rowspan ="8"><b>Semester:</b></td>
                                                <td> <input type="radio" name="sem" value="1">First</td>
                                                <td rowspan ="8"><input type="submit" value="Submit"></td>
                                            </tr>
                                            
                                            <tr>
                                                <td> <input type="radio" name="sem" value="2">Second</td>
                                            </tr>
                                            
                                            <tr>
                                                <td> <input type="radio" name="sem" value="3">Third</td>
                                            </tr>
                                            
                                            <tr>
                                                <td> <input type="radio" name="sem" value="4">Fourth</td>
                                            </tr> 
                                            
                                            <tr>
                                                <td> <input type="radio" name="sem" value="5">Fifth</td>
                                            </tr>
                                            
                                            <tr>
                                                <td> <input type="radio" name="sem" value="6">Sixth</td>
                                            </tr>
                                            
                                            <tr>
                                                <td> <input type="radio" name="sem" value="7">Seventh</td>
                                            </tr>
                                            
                                            <tr>
                                                <td> <input type="radio" name="sem" value="8">Eighth</td>
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
