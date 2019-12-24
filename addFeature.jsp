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
	
	<div style= "margin: 10% 35%; background-color:#d5fcff; width:20%; height:290px; padding:60px;border-radius:30px;">

	<s:form action="subscribe1.action"  method="post" namespace="/">

		<s:textfield label="FEATURE NAME" name="feature" />

		<s:textfield label="DURATION" type ="number" name="duration" />
		
		
		<s:submit cssClass="button-register" value="AddFeature" />
	</s:form>

	</div>
</body>
</html>
