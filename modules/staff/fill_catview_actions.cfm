<link rel="stylesheet" href="css/w3.css"><!-- NO OLVIDAR COMENTAR -->
<div class="w3-container w3-card w3-GRIS0">
  <h3>Actions</h3>

  <p>
  <label>Enter Main Category Or Subcategory</label>
  <input class="w3-input w3-border w3-round" name="first" type="text" id="data" maxlength="60" pattern="^(?!\s*$).+" required></p>
  <p>
  <label>Select Action</label>
  <p><input type="button" class="w3-button w3-AZULPAR w3-block" value="Category" onclick="validform()"></p>
  <p><input type="button" class="w3-button w3-AZULPAR w3-block" value="Subcategory" onclick="checksubs()"></p>
  <p><input type="button" class="w3-button w3-AZULPAR w3-block" value="Modify" onclick="checksubs_mod()"></p>
  <p><input type="button" class="w3-button w3-AZULPAR w3-block" value="Delete" onclick="check_delete()"></p>

</div>
