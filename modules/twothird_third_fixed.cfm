

<link rel="stylesheet" href="css/w3.css"><!-- NO OLVIDAR COMENTAR --> 

<style>
.sticky {
  position: fixed;
  top: 72px;
  right: 0px;
}
</style>


<div class="w3-row">

<!---Template including DIV---->
<div class="w3-twothird w3-container"> 

<cfset stack_order = stack_order + 1>
<cfinclude template = "#stack[stack_order]#" runOnce = "true">

</div>
<!---END Template including DIV---->




<!---Template including DIV---->
<div id="myHeader" class="w3-container w3-third" style="padding-left: 0px;">

<cfset stack_order = stack_order + 1>
<cfinclude template = "#stack[stack_order]#" runOnce = "true">

</div> 
<!---END Template including DIV---->

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
