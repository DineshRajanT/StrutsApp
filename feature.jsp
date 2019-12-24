<%@taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title>Subscribe</title>
<style type="text/css">
.button-register {background-color: green;color: white;}
.button-report {background-color: #004353;color: white;margin-left: 30%;}

</style>
</head>


<body style="background-image: url('/new_notify1/img1.jpg');background-repeat: no-repeat;background-size: 100%;background-position: center;">
	
<div style= "margin: 10% 35%; background-color:#d5fcff; width:30%; height:300px; padding:30px;border-radius:30px;">
	
	<s:form action="addFeature"  method="post" namespace="/" >
		
	<s:select label="FEATURES" 
		headerKey="-1" headerValue="Select feature"
		list="feat" 
		name="feature" />
	
	<s:select label="MODES" 
		headerKey="-1" headerValue="Select mode"
		list="mode" 
		name="mode" />
	
	
		
		
		<s:textfield label="EVENT" name="event" />
		<s:textfield label="MAIL" name="mail" />
		
		<s:submit cssClass="button-register" value="Subscribe Now" />
	</s:form>

	
	<a href="addFeature.jsp" >ADD FEATURE</a>

	</div>
</body>

</html>
