
<link rel="stylesheet" href="css/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="js/module.js"></script>

<form class="validate" id="upproduct" name="upproduct">
<div class="w3-container">
<div class="w3-panel w3-GRIS0" id="top_section" style="width: 100%;"><span id="icon_category"><h4 style="margin-bottom: 8px"><i class="fa fa-long-arrow-down" style="font-size: 17px;"></i> Select a category Staff</h4></span>
<input type="hidden" name="times" id="times" value="0" autocomplete="off">
<!---This parameter holds the value of the div level necessary for nesting and resetting divs when cancelling---->
<input type="hidden" name="catcancel" id="catcancel" value="0" autocomplete="off">
<!---This parameter holds the value of the parent category---->
<div  class='w3-container' id="1"></div>

<div id="subcats" style="padding-bottom: 6px;">
<cfinclude template="up_prostaff1.cfm">
</div>
</div>

<div id="description">
<!---cfinclude template = "./add_product/description.cfm"--->
</div>

<div id="characteristics">
<cfinclude template = "./add_product/characteristics.cfm">
</div>

<div id="additional">
<!---cfinclude template = "./add_product/characteristics2.cfm"--->
</div>

<div id="confirm">
<!---cfinclude template = "./add_product/confirm.cfm"--->
</div>


</div>
</form>
