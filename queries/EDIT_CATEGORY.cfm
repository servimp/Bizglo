<CFSTOREDPROC PROCEDURE="EDIT_CATEGORY" DATASOURCE="bizglo">
  <cfprocparam type="in" cfsqltype="CF_SQL_VARCHAR" variable="CATEGORYNAME" value="#url.categoryname#">
   <cfprocparam type="in" cfsqltype="CF_SQL_INTEGER" variable="CATEGORYID" value="#url.categoryid#">
  <cfprocresult name="EDIT_CATEGORY">
</CFSTOREDPROC>
<cfset url.view="fill_catview">
<cfinclude template="../controller.cfm" runOnce="true">

 