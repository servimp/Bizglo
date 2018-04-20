<CFSTOREDPROC PROCEDURE="ADD_MAIN_CATEGORY" DATASOURCE="bizglo">
  <cfprocparam type="in" cfsqltype="CF_SQL_VARCHAR" variable="CATEGORYNAME" value="#url.categoryname#">
  <cfprocresult name="ADD_MAIN_CATEGORY">
</CFSTOREDPROC>
<cfset url.view="fill_catview">
<cfinclude template="../controller.cfm" runOnce="true">

 