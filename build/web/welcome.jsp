<%-- 
    Document   : Welcome
    Created on : Aug 12, 2014, 10:49:03 PM
    Author     : Jack Sparrow
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome To Grade Reporting System</title>
        <link rel="stylesheet" type="text/css" href="mystyle.css">
        
    </head>
    <body>
        <table align="center" border="0">
	
                        <tr>
                            <td colspan="7" align="center"><img src="Images/banner.jpg"><hr width="980px"></td>
                        </tr>
                        
                        <tr>
                            <td id="specialtd"><br><br>Welcome, ${sessionScope['username']}</td>
                        </tr>
                        <tr>
                            <td><a href="logout">Log Out</a></td>
                        </tr>
                    </table>
        
        
         
        <table align='center' border='1'>
            <tr>
                <td align = 'center'><a class="eff" href="personalInfo.jsp"><b>View Personal Information</b></a></td>
                 <td align = 'center'><a class="eff" href="testscore.jsp"><b>View Test Score</b></a></td>
                  <td align = 'center'><a class="eff" href="assignment.jsp"><b>View Assignment Report</b></a></td>
                   <td align = 'center'><a class="eff" href="internal_marks.jsp"><b>View Internal Marks</b></a></td>
                  
            </tr>
        </table>
    </body>
</html>
