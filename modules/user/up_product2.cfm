<CFSTOREDPROC PROCEDURE="SUBCATEGORIES" DATASOURCE="bizglo">
  <cfprocparam type="in" cfsqltype="CF_SQL_NUMERIC" variable="ID" value="#url.param1#">
  <cfprocresult name="SUBCATEGORIES">
</CFSTOREDPROC>


<ul class="w3-ul w3-hoverable w3-animate-opacity" style="margin-top: 2px;">
 <cfoutput query="SUBCATEGORIES" startRow=1>  
  <li onclick="custom_1('#SUBCATEGORIES.name#','#SUBCATEGORIES.last#','up_product2','subcats','#SUBCATEGORIES.ID#',1)">#SUBCATEGORIES.name#</li>
 </cfoutput>
</ul>

