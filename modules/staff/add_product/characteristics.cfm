

<div class="w3-panel w3-GRIS0" style="padding-bottom: 6px;">
<h4 style="margin-bottom: 8px; margin-top: 14px;"><span id="icon_reference"><i class="fa fa-long-arrow-down" style="font-size: 17px;"></i> Characteristics</h4></span>

<div id="options_selected" class="w3-animate-opacity">
  <p>
    <span class="w3-text-AZULPAR">Do you wish to enter characteristics for differentiation? - (These apply only for items with the same reference from the factory but different features, i.e: Droid Turbo XT 1254, "Standard version" and "64GB Developer version".)</span>
  &nbsp;&nbsp; Yes <input name="ref_boolean" type="radio" id="yes_chars" onchange="enable_chars()">
  &nbsp;&nbsp; No <input name="ref_boolean" type="radio" id="no_chars" onchange="disable_chars()" checked>
  </p>

<div id="arr_chars" style="display:none;">
<p>
<cfinclude template = "./add_char.cfm">
</p>
<p>
  <span class="w3-text-AZULPAR">Add an additional characteristic (if needed) </span>&nbsp;&nbsp; <i class="fa fa-plus-square w3-text-AZULPRO" style="font-size: 15px;"></i>
</p>

</div>



<p><input type="button" class="w3-button w3-AZULPAR w3-block" value="Continue" onclick="validform(0)"></p>
</div>

</div>

<!--Cuando esta validado-->


<div class="w3-panel w3-GRIS0" style="padding-bottom: 6px;">
<h4 style='margin-bottom: 8px;' class='w3-text-AZULPAR'><i class='fa fa-check' style='font-size: 17px;''></i> Characteristics</h4>
<div class='w3-container w3-text-AZULPAR'>
  Ram memory size: <b>"6 GB"</b><br>
  Type of processor: <b>"Qualcomm Octacore Ex 1000 Mhz"</b><br>
  Storage: <b>"32 GB"</b>

    <div><div style='float:left;'><span onclick='optreset()' style='font-size:12px'><b>(change)</b></span></div><div style='float:right; font-size:16px;' class='w3-text-green'>Selected <i class='fa fa-check'></i></div></div></div>

</div>
