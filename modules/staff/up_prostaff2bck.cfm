<CFSTOREDPROC PROCEDURE="SUBCATEGORIES" DATASOURCE="bizglo">
  <cfprocparam type="in" cfsqltype="CF_SQL_NUMERIC" variable="ID" value="#url.param1#">
  <cfprocresult name="SUBCATEGORIES">
</CFSTOREDPROC>

<cfif subcategories.recordcount gt 0>

<ul class="w3-ul w3-hoverable w3-animate-opacity">
 <cfoutput query="SUBCATEGORIES" startRow=1>	
  <li onclick="custom_1('#SUBCATEGORIES.name#','#SUBCATEGORIES.last#','up_prostaff2','subcats','#SUBCATEGORIES.ID#',0)">#SUBCATEGORIES.name#</li>
 </cfoutput>
</ul>

<cfelse>
  
 <CFSTOREDPROC PROCEDURE="PRODUCTS_SIMPLE" DATASOURCE="bizglo">
  <cfprocparam type="in" cfsqltype="CF_SQL_NUMERIC" variable="CAT_ID" value="#url.param1#">
  <cfprocresult name="PRODUCTS_SIMPLE">
</CFSTOREDPROC> 

<h3 style="margin-bottom: 8px; margin-top: 14px;">Please classify according to: Reference <i class="fa fa-level-down" style="font-size: 17px;"></i></h3>

<ul class="w3-ul w3-hoverable w3-animate-opacity">
 <cfoutput query="PRODUCTS_SIMPLE" startRow=1>  
  <li onclick="custom_1('#PRODUCTS_SIMPLE.title#')"><h6>#PRODUCTS_SIMPLE.title#</h6>
 </cfoutput>
</ul>


</cfif> 


