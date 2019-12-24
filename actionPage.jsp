
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<html>
<body style="background-image: url('/new_notify1/code_img.jpg');background-repeat: no-repeat;background-size: 100%;background-position: center;">
<div style="margin: 300px 600px;">
<div style="margin: 5% -50%; background-color:#a0065a; width:50%; height:400px; padding:30px;border-radius:30px;">
<s:form action="raiseEvents" method="post" namespace="/">

	<s:select  label="FEATURES"
		headerKey="-1" headerValue="Select feature"
		list="feat" id="f_id" 
		name="feature" onchange="show_details()"/><br>

 	<s:select label="EVENTS"
		headerKey="-1" headerValue="Select events"
		list="eve" 
		name="event" />
    	
<s:textfield label="CONTENT" name="content" placeholder="contents here" /><br>

<s:submit cssClass="button-register" value="Raise_events"  name="Raise_events" style="background-color: orange;"/>

<s:submit cssClass="button-register" value="Unsubscribe"   name="Unsubscribe" style="background-color: red;"/>

<s:submit cssClass="button-register" value="Resubscribe"   name="Resubscribe" style="background-color: yellow;"/>
<!--<input type="Submit" name="Raise_events" value="Raise_events" style="background-color: orange;" />

<input type="Submit" name="Unsubscribe" value="Unsubscribe" style="background-color: red;" />-->
</s:form>
</div>
</div>

</body>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"
			  integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
			  crossorigin="anonymous"></script>
<script>

function show_details() {
let temp = document.getElementById("f_id");
		let postData = {
			feature: temp.options[temp.selectedIndex].value		
		}
		console.log(postData);
		$.post('/new_notify/action',postData).then(res => {
			//console.log(res);
			$("body").html(res);	
		}).catch(err => {
			console.log(err);
		});
		
}
</script>


</html>
