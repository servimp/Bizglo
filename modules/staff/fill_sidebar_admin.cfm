<cfset stack_order = stack_order + 1>

<!--header class="w3-container w3-small w3-text-AMATOT w3-right-align">Need Help?</header-->
<!--START HEADER - SIDEBAR-->
<div class="w3-container w3-border-bottom w3-border-GRIS0">
<div class="w3-cell-row" style="margin-bottom:6px; margin-top:8px;">
<div class="w3-cell w3-cell-middle">
<i class="fa fa-user-circle-o" style="font-size:26px;">
</i>
</div>
<div class="w3-cell w3-cell-middle">
<h6 class="w3-text-WHITE">Welcome Staff Member!</h6>
</div>
</div>
</div>
<!--END HEADER - SIDEBAR-->



<!--START - ALERT-->
<div class="w3-container">
<div class="w3-panel w3-leftbar w3-border-AMATOT w3-AMA0" style="margin-bottom:24px; margin-top:16px;">
  <h6 class="w3-text-AZULPRO"><i class="fa fa-truck"></i>  &nbsp;Orders Not Fulfilled <b>6</b></h6>
 </div>
</div>
<!--END - ALERT-->




<!--START SECTION - ACTIONS-->
<div class="w3-container">
 <div class="w3-cell-row" style="margin-bottom:16px; margin-top:8px;">
 
 <div class="w3-cell w3-tooltip " style="text-align:center;">
 <div class="w3-button w3-round-medium w3-AZULPAR w3-border w3-border-GRIS0" style="padding:8px; padding-left:12px; padding-right:12px;">
<i class="fa fa-question-circle" style="font-size:28px;"></i>
<span style="position:absolute;right:-4px;bottom:39px; padding-right:9px; padding-left:5px;" class="w3-AZULPAR w3-round-large w3-text-WHITE w3-small"><b>13</b></span>
 </div>
 </div>
 
 <div class="w3-cell w3-tooltip" style="text-align:center;">
 <div class="w3-button w3-round-medium w3-AZULPAR w3-border w3-border-GRIS0" style="padding:8px; padding-left:9px; padding-right:9px;">
 <i class="fa fa-tags" style="font-size:28px;"></i>
 <span style="position:absolute;right:-4px;bottom:39px; padding-right:9px; padding-left:5px;" class="w3-AZULPAR w3-round-large w3-text-WHITE w3-small"><b>9</b></span>
 </div>
 </div>
 
 <div class="w3-cell w3-tooltip" style="text-align:center;">
 <div class="w3-button w3-round-medium w3-AZULPAR w3-border w3-border-GRIS0" style="padding:8px; padding-left:9px; padding-right:9px;">
 <i class="fa fa-gears" style="font-size:28px;"></i>
 <span style="position:absolute;right:-4px;bottom:39px; padding-right:9px; padding-left:5px;" class="w3-AZULPAR w3-round-large w3-text-WHITE w3-small"><b>112</b></span>
 </div>
 </div>
 
 </div>   
    </div>
<!--END SECTION - ACTIONS-->

<!--START MENU - SIDEBAR-->
<div>
    <ul class="w3-ul-bizglo">
    <li style="border:6px;"><i class="fa fa-money"></i>&nbsp;&nbsp;&nbsp;&nbsp; Reserved Item</li>
    <li style="border:6px;"><i class="fa fa-random"></i><span onclick="get_view('features','central_contents',0,'full_central');">&nbsp;&nbsp;&nbsp;&nbsp; Features</span></li>
    <li style="border:6px;"><span style="padding-left:2px;"><i class="fa fa-gear"></i></span><span onclick="get_view('staff_cat','central_contents',0,'full_central','staff_cat');">&nbsp;&nbsp;&nbsp;&nbsp; Categories</span></li>
    <li style="border:6px;"><span style="padding-left:2px;"><i class="fa fa-star"></i></span><span onclick="get_view('products_staff','central_contents',0,'full_central');">&nbsp;&nbsp;&nbsp;&nbsp; Product View</span></li>
  </ul>
</div>
<!--END MENU - SIDEBAR-->
    
    
    
<!--REPORTS SECTION-->   
<!--TITLE SECTION BUTTON REPORTS-->
<div class="w3-button-bizglo w3-block w3-AZULPRO w3-border-GRIS0" style="margin-top:8px;" onclick="myAccFunc()">
<div class="w3-cell-row" style="margin-bottom:6px; margin-top:4px; padding-right:8px;">
<div class="w3-cell w3-cell-middle" style="text-align:center;">
<i class="fa fa-wpforms" style="font-size:18px">
</i>
</div>

<div class="w3-cell w3-cell-middle" style="text-align:center;">
<h6 class="w3-text-WHITE">REPORTS</h6>
</div>

<div class="w3-cell w3-cell-middle" style="text-align:center;">
<i class="fa fa-caret-down" style="font-size:18px"></i>
</div>
</div>
</div>
<!--END TITLE SECTION BUTTON REPORTS-->

<!--START HIDDEN SECTION-->
<div id="demoAcc" class="w3-hide w3-AZULPRO"> 
<div class="w3-container">
<div class="w3-display-container w3-AZULPRO" style="height:180px;">
  <div class="w3-AZULPRO w3-display-topleft w3-border-WHITE w3-border-right" style="width:50%;height:50%;"><i class="fa fa-table w3-display-middle" style="font-size:28px; padding-bottom:16px;"></i>
  <span class="w3-display-bottommiddle w3-small" style="padding-bottom:16px;">Overall</span>
  </div>
  <div class="w3-AZULPRO w3-display-topright" style="width:50%;height:50%;"><i class="fa fa-barcode w3-display-middle" style="font-size:28px; padding-bottom:16px;"></i>
  <span class="w3-display-bottommiddle w3-small" style="padding-bottom:16px;">Entering</span>
  </div>
  <div class="w3-AZULPRO w3-display-bottomleft w3-border-WHITE w3-border-top w3-border-WHITE w3-border-right" style="width:50%;height:50%;">
  <i class="fa fa-object-group w3-display-middle" style="font-size:28px"></i>
  <span class="w3-display-bottommiddle w3-small">Places</span>
  </div>
  <div class="w3-AZULPRO w3-display-bottomright w3-border-WHITE w3-border-top" style="width:50%;height:50%;"><i class="fa fa-rocket w3-display-middle" style="font-size:28px"></i>
  <span class="w3-display-bottommiddle w3-small">Releases</span>
  </div>
</div> 
</div>
<div class="w3-container w3-AZULPRO" style="height:24px;">
</div>
</div>
<!-- END HIDDEN SECTION - CLOSES <div id="demoAcc" class="w3-hide"> -->



<!--FOOTER SIDEBAR SIGN OUT-->
<div style="margin-top:14px;">
<ul class="w3-ul-bizglo">
<li style="border:6px;"><span style="padding-left:2px;"><i class="fa fa-sign-out"></i></span>&nbsp;&nbsp;&nbsp;&nbsp; Sign-Out
</li>
</ul>
</div>

<!--FOOTER SIDEBAR SIGN OUT-->

<!-END HTML CODE SECTION - BEGINS JS SECTION, FINALLY CLOSING BODY TAG -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------END HTML CODE SECTION - BEGINS JS SECTION, FINALLY CLOSING BODY TAG -->

<script>
function w3_open() {
    document.getElementById("mySidebar").style.display = "block";
}
function w3_close() {
    document.getElementById("mySidebar").style.display = "none";
}
function myAccFunc() {
    var x = document.getElementById("demoAcc");
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
       // x.previousElementSibling.className += " w3-green";
    } else { 
        x.className = x.className.replace(" w3-show", "");
        //x.previousElementSibling.className = 
        //x.previousElementSibling.className.replace(" w3-green", "");
    }
}
</script>
