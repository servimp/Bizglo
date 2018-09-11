

<div class="w3-panel w3-GRIS0" style="padding-bottom: 6px;">
<h4 style="margin-bottom: 8px; margin-top: 14px;"><span id="icon_description"><i class="fa fa-long-arrow-down" style="font-size: 17px;"></i> Description</h4></span>

<div id="description_select">
  <p>
    <input class="w3-input w3-border w3-round" name="title" type="text" id="title" pattern="^(?!\s*$).+" required maxlength="60" placeholder="Enter product title (max 100 characters)"></p>
  <p>
    <span class="w3-text-AZULPAR">Do you wish to enter model, reference or part number?</span>
  &nbsp;&nbsp; Yes <input name="ref_boolean" type="radio" id="yes" onchange="enable_ref()">
  &nbsp;&nbsp; No <input name="ref_boolean" type="radio" id="no" onchange="disable_ref()" checked>
  </p>
  <p>
    <input class="w3-input w3-border w3-round" name="details" type="text" id="ref" maxlength="60" pattern="^(?!\s*$).+" placeholder="Model, Reference or part number" disabled></p>
<p><input type="button" class="w3-button w3-AZULPAR w3-block" value="Continue" onclick="validform(0)"></p>
</div>

<div id="description_confirm">
</div>

</div>
