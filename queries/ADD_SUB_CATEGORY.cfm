<CFSTOREDPROC PROCEDURE="ADD_SUB_CATEGORY" DATASOURCE="bizglo">
  <cfprocparam type="in" cfsqltype="CF_SQL_VARCHAR" variable="CATEGORYNAME" value="#url.categoryname#">
   <cfprocparam type="in" cfsqltype="CF_SQL_INTEGER" variable="MOTHERID" value="#url.motherid#">
  <cfprocresult name="ADD_SUB_CATEGORY">
</CFSTOREDPROC>
<cfset url.view="fill_catview">
<cfinclude template="../controller.cfm" runOnce="true">

 