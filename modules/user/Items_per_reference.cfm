<CFSTOREDPROC PROCEDURE="PRODUCTS_SIMPLE" DATASOURCE="bizglo">
  <cfprocparam type="in" cfsqltype="CF_SQL_NUMERIC" variable="CAT_ID" value="#url.param1#">
  <cfprocresult name="PRODUCTS_SIMPLE">
</CFSTOREDPROC> 

<div class="w3-panel w3-GRIS0" style="padding-bottom: 6px;">
<h4 style="margin-bottom: 8px; margin-top: 14px;"><span id="icon_reference"><i class="fa fa-long-arrow-down" style="font-size: 17px;"></i> Please classify according to: Reference</h4></span>
<cfoutput>
<input type="hidden" name="refcancel" id="refcancel" value="#url.param1#" autocomplete="off">
</cfoutput>

<div id="selected_item">

<ul class="w3-ul w3-hoverable w3-animate-opacity">
 <cfoutput query="PRODUCTS_SIMPLE" startRow=1>  
  <li onclick='custom_2("#PRODUCTS_SIMPLE.title#","#PRODUCTS_SIMPLE.ID#","#PRODUCTS_SIMPLE.condition#","#PRODUCTS_SIMPLE.name1#","#PRODUCTS_SIMPLE.op_name1#","#PRODUCTS_SIMPLE.name2#","#PRODUCTS_SIMPLE.op_name2#" )'>

<div class="w3-cell-row">
 <div class="w3-cell"> <span style="font-size: 15;">#PRODUCTS_SIMPLE.title#</span></div>
 <div class="w3-cell w3-border-left w3-border-GRIS1" style="padding: 2px;"><div class="w3-small">#PRODUCTS_SIMPLE.name1#</div> <span class="w3-tag w3-round-small w3-dark-grey w3-center">#PRODUCTS_SIMPLE.op_name1#</span></div> 
 <div class="w3-cell w3-border-left w3-border-GRIS1" style="padding: 2px;"><div class="w3-small">#PRODUCTS_SIMPLE.name2#</div> <span class="w3-tag w3-round-small w3-dark-grey w3-center">#PRODUCTS_SIMPLE.op_name2#</span></div>
</div>

</li>
 </cfoutput>
</ul>
</div>
</div>
