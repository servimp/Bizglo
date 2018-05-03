<cfset stackp_order = stack_order>
<cfset stack_order = stack_order + 1>


<!DOCTYPE html>
<html>
<title>Bizglo Staff Dashboard</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!---link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"---->
<cfoutput><body class="#stackp[stackp_order][1]#"></cfoutput>

<div id="base">
<cfinclude
template = "#stack[stack_order]#"
runOnce = "true">
</div>

<script src="js/validation.js"></script>
