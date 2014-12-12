

<html>
<head>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<h1>This is my Home Page</h1>
<style type="text/css">
label {
    width:180px;
    clear:left;
    text-align:right;
    padding-right:10px;
}

</style>
</head>

<body id="grad1" >
<div > 
<h1> </h1>
<p><h2>LoginDetails</h2> </p>
<p><label>UserName</label><input type="text" id="Username" size="30" ></p>
<p><label>Password</label><input type="password" id="password" size="30" ></p>
<p><input id="ButtonId"  type="submit" onclick="buttonClick()" style="font-face: 'Comic Sans MS'; font-size: larger; color: teal; background-color: #FFFFC0; border: 3pt ridge lightgrey" value=" Send Me! "></p>

 <div style="width:100%;"id="DivId">
 
 
  
 </div>
 <div id="DivIdOne"> 
</div>
<script >
jQuery.support.cors = true;
function buttonClick()
{
	/*alert("hello");
	console.log("hello");*/
	var uname = $("#Username").val();
	var pwd =$("password").val();
	if(uname!=='' || pwd!=='')
		{
		alert("first");
		$.ajax({
			type : "GET",
			url:"/second",//?query=" + uname ,
			//dataType: "application/json; charset=utf-8",
		     //processData: false,
		     //contentType: "application/json",
		    data: ({ username: uname, password: pwd  }),
		     success: function (data) {
		    	
						//links7 = JSON.parse(data);
		               alert(data);
		         alert("success");
		         window.location="/second";
		     },
		     error: function (xhr, ajaxOptions, thrownError) { //Add these parameters to display the required response
		         alert(xhr.status);
		     alert("failed");
		         alert(xhr.responseText);
		     },
		     
		 });
		}
	else {
		alert("Input value required");
	}
}

</script>

</body>
</html>