<CFSTOREDPROC PROCEDURE="DELETE_CATEGORY" DATASOURCE="bizglo">
   <cfprocparam type="in" cfsqltype="CF_SQL_INTEGER" variable="CATEGORYID" value="#url.categoryid#">
   <cfprocparam type="in" cfsqltype="CF_SQL_INTEGER" variable="MOTHERID" value="#url.motherid#">	
   	<cfprocparam type="in" cfsqltype="CF_SQL_INTEGER" variable="MOTHER" value=0>	
  <cfprocresult name="DELETE_CATEGORY">
</CFSTOREDPROC>

<cfif #DELETE_CATEGORY.recordcount# EQ 0>
<CFSTOREDPROC PROCEDURE="RESET_CATEGORY" DATASOURCE="bizglo">
   <cfprocparam type="in" cfsqltype="CF_SQL_INTEGER" variable="MOTHERID" value="#url.motherid#">		
  <cfprocresult name="RESET_CATEGORY">
</CFSTOREDPROC>
</cfif>

<cfset url.view="fill_catview">
<cfinclude template="../controller.cfm" runOnce="true">

 