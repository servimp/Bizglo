<!DOCTYPE html>
<html>
<title>Bizglo Dev Viewer</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<body class="w3-AMA0">
<div id="base">

<cfparam
name = "url.template"
default = "0">

<cfif url.template neq 0>	
<cfinclude
template = "#url.template#"
runOnce = "true">
</div>
</cfif>

</div>
</body>
</html>

