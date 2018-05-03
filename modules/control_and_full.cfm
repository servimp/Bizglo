
<div class="w3-container">

<cfset stack_order = stack_order + 1>
<cfinclude
template = "#stack[stack_order]#"
runOnce = "true">

<cfset stack_order = stack_order + 1>
<cfinclude
template = "#stack[stack_order]#"
runOnce = "true">

</div>


