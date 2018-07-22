<cfset TIMES = TIMES + 1>
<cfset STOP = TIMES + 1>	
<cfoutput>	
<cfif catids[#times#] eq catlevels[#TIMES#]>
		<cfif catids[#times#] eq products.ID_CATEGORY>
			<cfinclude template="fill_products_table.cfm">
     	<cfelse>
     		<cfif catids[#stop#] not equal 0>
			<cfinclude template="products_rec_all.cfm">
			</cfif>
     	</cfif>
<cfelse>
	<cfif times eq 1><div style="padding-right: 0px;"><h5 class="w3-text-AZULPRO w3-h5-pro"><b>#Ucase(catnames[#times#])#</b></h5>
	<cfelse>
 	 <div style="padding-left: 10px; padding-right: 0px;"><span class="w3-text-AZULPAR"><b>#catnames[#times#]#</b></span><br>
	</cfif>	
	<cfset catlevels[#TIMES#]= catids[#times#]>
	<cfif catids[#times#] eq products.ID_CATEGORY><!---SECOND LEVEL---->
        <cfinclude template="fill_products_table.cfm">
    <cfelse>
    	<cfif catids[#stop#] not equal 0>
		<cfinclude template="products_rec_else.cfm">
		</cfif>
    </cfif>	
</cfif>
</cfoutput>

