
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ page import = "javax.servlet.http.Cookie"%>
<%@ taglib uri="/struts-tags" prefix="s" %> 


<html>
<head>
 
<!--<meta http-equiv="refresh" content="5" url="notification_service_c/checkTime"/>-->
<meta http-equiv="refresh" content="30" />
</head>
<!--<body onload="f1()" ><div style="margin: 100px 800px">-->
<body style="background-image: url('/new_notify1/img.jpg');background-repeat: no-repeat;background-size: 100%;background-position: center;" >
	
<div style="margin: 10% 25%; background-color:#1ce8df; width:50%; height:400px; padding:30px;border-radius:30px;">
<div style="color: #4086bf; text-align:center;"><h1>NOTIFICATION SERVICE</h1></div><br><br><br><br>

<div class="feed" style="text-align:center;">
   <div class="centered">
   	
 
  
<table align="center" border="1" style="width:50% 50%;">
  <tr>
    <th>FEED</th>
    <th>FEATURE_NAME</th>
  </tr>
	  
	 	
			<s:iterator value="list"> 
			<fieldset>  

			<tr><td><s:property value="FEED"/></td>
			<td><s:property value="FEATURE_NAME"/></td></tr>
	
	
			</fieldset>  
			</s:iterator>  
		
	 
</table> 
	
<br/>
	<form action="fetchRecords" method="post">  
	  	<input type="Submit" id="Button1" value="Refresh" style="display:none;" />
	</form>


	
   </div>
</div>
<div style="display:flex; justify-content:space-between;">
<a href="subscribe">Subscribe</a>
<a href="action">Action</a>
</div>
</div> 

</body>

<script language ="javascript" >
        function f1() {
            setTimeout(callitrept, 1000);
        }
        function callitrept() {
            document.getElementById("Button1").click();
		f1();
        }
f1();
    </script>

<style>
	
</style>


</html>
