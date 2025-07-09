<%-- 
    Document   : adminlogin    
    Author     : Subhadeep Dan
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" >
        <title>Login -  Efficient & Secure Data Storage & Access Scheme in Cloud Computing using AES</title>
        <link href="css/style.css" rel="stylesheet" type="text/css">        
        <script type="text/javascript">
            function validation() {
                var userid = document.getElementById('userid');
                if (userid.value.trim() == "") {
                    alert('Please enter your userid');
                    userid.focus();
                    return false;
                }
                var password = document.getElementById('password');
                if (password.value.trim() == "") {
                    alert('Please enter your password');
                    password.focus();
                    return false;
                }
            }

        </script>
    </head>
    <body>
        <table  cellspacing="0" cellpadding="0" align="center" border="0" class="body_content">           
            <tr>
                <td colspan="2"  class="header">
                    <%@include file="header.jsp" %>
                </td>
            </tr>
            <tr>
                <td class="content">                    
                    <div class="form_content">
                        <form method="post" action="adminLogin">
                            <table cellpadding="3" cellspacing="3" width="100%">
                                <tr>
                                    <td>
                                        <div class="expand">
                                            <span>Login</span>
                                        </div>
                                    </td>
                                </tr>      
                                <%
                                    String msg = null;
                                    msg = (String) session.getAttribute("MSG");
                                    if (msg != null) {
                                %>
                                <tr>
                                    <td class="error"><%=msg%></td>
                                </tr>                                    
                                <%
                                        session.removeAttribute("MSG");
                                    } else {
                                        session.setAttribute("MSG", "");

                                    }
                                %>
                                <tr>
                                    <td>
                                        <span class="span"><strong>Userid</strong></span>
                                    </td>
                                </tr>
                                <tr>                                            
                                    <td><input type="text" name="userid" id="userid" placeholder="User ID" class="input"/></td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="span"><strong>Password</strong></span>
                                    </td>
                                </tr>
                                <tr>                                            
                                    <td><input type="password" name="password" id="password" placeholder="Password" class="input"/></td>
                                </tr>                            
                                <tr>
                                    <td align="right">
                                        <input type="submit" name="btnsubmit" id="btnsubmit" value="Submit" onclick="return validation()">
                                    </td>
                                </tr>                        
                            </table>
                        </form>
                    </div>
                </td>
            </tr>
            <tr>
                <td class="footer">
                    <%@include file="footer.jsp" %>
                </td>
            </tr>
        </table>
    </body>
</html>

