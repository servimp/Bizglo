<cfset stackp_order = stack_order>
<cfset stack_order = stack_order + 1>


<!DOCTYPE html>
<html>
<title>Bizglo Staff Dashboard</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<cfoutput><body class="#stackp[stackp_order][1]#"></cfoutput>

<div id="base">
<cfinclude
template = "#stack[stack_order]#"
runOnce = "true">
</div>

<script>
window.onscroll = function() {myFunction();};

function myFunction() {
  var header = document.getElementById("myHeader");
var sticky = header.offsetTop - 400;
var w = 0.33333 * (window.innerWidth -277);
 //alert(sticky);
  if (window.pageYOffset >= sticky) {
    //alert('saber');
    document.getElementById("myHeader").style.width = ""+w+"px"; 
    header.classList.add("sticky");
  } else {
    header.classList.remove("sticky");
  }
}
</script>
