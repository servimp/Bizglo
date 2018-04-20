<!--CENTRAL REGION, TWO THIRDS-->
<div id="twothird" class="w3-twothird">
<cfset stack_order = stack_order + 1>
<cfinclude
template = "#stack[stack_order]#"
runOnce = "true">

</div><!-- CLOSING CENTRAL REGION, TWO THIRDS-->


<!-- REGION TO THE RIGHT, ONE THIRD OF MAIN -->
<div id="third" class="w3-third">
<cfset stack_order = stack_order + 1>
<cfinclude
template = "#stack[stack_order]#"
runOnce = "true">
</div>