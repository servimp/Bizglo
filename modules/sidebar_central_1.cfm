<cfset stackp_order = stack_order>

<cfoutput>
<!-- SIDEBAR OPENING DIV -->  
<div class="w3-sidebar  w3-bar-block w3-collapse w3-animate-left w3-card-biz #stackp[stackp_order][3]#" style="width:#stackp[stackp_order][1]#;" id="mySidebar">
<cfset stack_order = stack_order + 1>
<cfinclude
template = "#stack[stack_order]#"
runOnce = "true">
</div><!-- SIDEBAR CLOSING DIV --> 


<!-- DIV OPENING MAIN SECTION -->
<div class="w3-main" style="margin-left:#stackp[stackp_order][2]#;" id="central_1"><!-- DIV OPENING MAIN SECTION -->
<cfset stack_order = stack_order + 1>
<cfinclude
template = "#stack[stack_order]#"
runOnce = "true">
</div><!-- DIV CLOSING MAIN SECTION -->
</cfoutput>