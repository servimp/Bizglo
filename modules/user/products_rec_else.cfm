<cfset TIMES = TIMES + 1>
<cfset STOP = TIMES + 1>
<cfoutput>	
<div style="padding-left: 10px; padding-right: 0px;"><span class="w3-text-AZULPAR"><b>#catnames[#times#]#</b></span><br>
<cfset catlevels[#TIMES#]= catids[#times#]>
	<cfif catids[#times#] eq products.ID_CATEGORY><!---SECOND LEVEL---->
		<cfset item = 1>
       <cfinclude template="fill_products_table.cfm">
    <cfelse>
    	<cfif catids[#stop#] not equal 0>
		<cfinclude template="products_rec_else.cfm">
		</cfif>	
    </cfif>	
</cfoutput>	