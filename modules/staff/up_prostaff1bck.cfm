
<link rel="stylesheet" href="css/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="js/module.js"></script>
<br><br>



<div class="w3-container" style="width: 600px; border: 1px solid #C8CED3; background-color:#DAFBFA;">
<div class="w3-card w3-panel w3-GRIS0" id="top_section" style="margin-bottom: 8px;"><h3 style="margin-bottom: 8px">Select a category <span id="icon_category"><i class="fa fa-level-down" style="font-size: 17px;"></i></span></h3>
<input type="hidden" name="times" id="times" value="0" autocomplete="off">
<!---This parameter holds the value of the div level necessary for nesting and resetting divs when cancelling---->
<input type="hidden" name="catcancel" id="catcancel" value="0" autocomplete="off">
<!---This parameter holds the value of the parent category---->
<div id="1" style="margin-bottom: 6px;">
	
</div>

<div id="subcats" style="background-color: #F8FAFB; margin-bottom: 16px;">
<cfinclude template="up_prostaff0.cfm">
</div>

</div>
</div>
	

