<CFSTOREDPROC PROCEDURE="ADD_ITEMS_USERS" DATASOURCE="bizglo">
  <cfprocparam type="in" cfsqltype="CF_SQL_VARCHAR" variable="IDENTIFIERS" value="#url.identifiers#">
  <cfprocparam type="in" cfsqltype="CF_SQL_INTEGER" variable="ITEMID" value="#url.itemid#">
  <cfprocparam type="in" cfsqltype="CF_SQL_INTEGER" variable="OPT_CONDITIONS" value="#url.opt_conditions#">	
  <cfprocparam type="in" cfsqltype="CF_SQL_INTEGER" variable="OPT_COLORS" value="#url.opt_colors#"> 
  <cfprocparam type="in" cfsqltype="CF_SQL_INTEGER" variable="QTY" value="#url.qty#">
  <cfprocparam type="in" cfsqltype="CF_SQL_VARCHAR" variable="DETAILS" value="#url.details#">
  <cfprocresult name="ADD_ITEMS_USERS">
</CFSTOREDPROC>

<div class="w3-container">
<div class="w3-panel w3-GRIS0" id="top_section" style="width: 100%;">
<h4 style='margin-bottom: 8px;' class='w3-text-AZULPAR'><i class='fa fa-check' style='font-size: 17px;'></i> Inventory sucessfully updated!</h4>
</div>
</div>

 