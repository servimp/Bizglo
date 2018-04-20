<cfset stackp_order = stack_order>
<cfoutput>
<form class="validate" id="#stackp[stackp_order][1]#" name="#stackp[stackp_order][1]#">
</cfoutput>
<cfset stack_order = stack_order + 1>
<cfinclude template = "#stack[stack_order]#" runOnce = "true">

</form>