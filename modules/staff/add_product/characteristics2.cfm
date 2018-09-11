

<div class="w3-panel w3-GRIS0" style="padding-bottom: 6px;">
<h4 style="margin-bottom: 8px; margin-top: 14px;"><span id="icon_reference"><i class="fa fa-long-arrow-down" style="font-size: 17px;"></i> Additional characteristics</h4></span>

<div id="options_selected" class="w3-animate-opacity">
<p>
 <select class="w3-select" name="option_conditions" id="option_conditions" required>
  <option value="" disabled selected>Product condition</option>

  <option value="conditions.ID">conditions.DESCRIPTION</option>

</select>
</p>
<p>

<p>
    <span class="w3-text-AZULPAR">Pick the available colors for the Item </span>&nbsp;&nbsp; <i class="fa fa-plus-square w3-text-AZULPRO" style="font-size: 15px;"></i>
</p>

<p>
<cfinclude template = "./add_color.cfm">
</p>




<p><input type="button" class="w3-button w3-AZULPAR w3-block" value="Continue" onclick="validform(0)"></p>
</div>

</div>

<!--Cuando esta validado-->


<div class="w3-panel w3-GRIS0" style="padding-bottom: 6px;">
<h4 style='margin-bottom: 8px;' class='w3-text-AZULPAR'><i class='fa fa-check' style='font-size: 17px;''></i> Characteristics</h4>
<div class='w3-container w3-text-AZULPAR'>
  Ram memory size: <b>"6 GB"</b><br>
  Type of processor: <b>"Qualcomm Octacore Ex 1000 Mhz"</b>
    <div><div style='float:left;'><span onclick='optreset()' style='font-size:12px'><b>(change)</b></span></div><div style='float:right; font-size:16px;' class='w3-text-green'>Selected <i class='fa fa-check'></i></div></div></div>

</div>
