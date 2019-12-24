
<%@ taglib uri="/struts-tags" prefix="s" %> 

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<title>Send Value to Struts Action Class using Ajax</title>
</head>
<body>
	<!--<s:select label="What's your favor search engine" 
		headerKey="-1" headerValue="Select Search Engines"
		list="features" 
		name="feature" />-->
	<s:select list="%{feature}"></s:select>
	


</body>
</html>
