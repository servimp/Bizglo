<CFSTOREDPROC PROCEDURE="REPRESENTATIVE" DATASOURCE="bizglo">
  <cfprocparam type="in" cfsqltype="CF_SQL_NUMERIC" variable="ITEM_ID" value="#url.param1#">
  <cfprocresult name="REPRESENTATIVE">
</CFSTOREDPROC> 

<CFSTOREDPROC PROCEDURE="CONDITIONS" DATASOURCE="bizglo">
  <cfprocparam type="in" cfsqltype="CF_SQL_NUMERIC" variable="COND_ID" value="#url.param2#">
  <cfprocresult name="CONDITIONS">
</CFSTOREDPROC> 

<div class="w3-animate-opacity w3-panel w3-GRIS0"  style="padding-bottom: 6px;">
<h4 style="margin-bottom: 8px; margin-top: 14px;"><span id="icon_options"><i class="fa fa-long-arrow-down" style="font-size: 17px;"></i> Please Select Options</h4></span>
<div id="options_selected" class="w3-animate-opacity">
<p>
 <select class="w3-select" name="option_conditions" id="option_conditions" required>
  <option value="" disabled selected>Select the Item Condition</option>
<cfoutput query="CONDITIONS" startrow=1>
  <option value="#conditions.ID#">#conditions.DESCRIPTION#</option>
</cfoutput>
</select> 
</p>
<p>
<select class="w3-select" name="option_colors" id="option_colors" required>
  <option value="" disabled selected>Select Item Color</option>
<cfoutput query="REPRESENTATIVE" startrow=1>
  <option value="#representative.ID#">#representative.NAME#</option>
</cfoutput>
</select>

<p>
  <input class="w3-input w3-border w3-round" name="details" type="text" id="details" maxlength="60" pattern="^(?!\s*$).+" placeholder="Additional Details (Optional, max 100 characters)"></p>
<p>

<p>
  <input class="w3-input w3-border w3-round" name="qty" type="number" id="qty" maxlength="60" pattern="[-+]?[0-9]" required placeholder="Quantity (Required, number of units to upload)">
</p>

<p><input type="button" class="w3-button w3-AZULPAR w3-block" value="Continue" onclick="validform()"></p>
</div>
<div id="options_confirm">
  </div>
</div>
