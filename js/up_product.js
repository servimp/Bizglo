
function catreset(cat,div,option)
{document.getElementById(div).innerHTML = "";
document.getElementById('icon_category').innerHTML = "<h4 style='margin-bottom: 8px'><i class='fa fa-long-arrow-down' style='font-size: 17px;'></i> Select a category</h4>";
var times = div -1;
document.getElementById('times').value = times;
document.getElementById('catcancel').value = cat;
clear_div("identifiers");
clear_div("idconfirm");
clear_div("options_reference");
clear_div("items_reference");
if (option ==1){if (cat == 0)
{get_view("up_product1", "subcats",0);}
else
{get_view("up_product2", "subcats", cat);}}
else
{if (cat == 0)
{get_view("up_prostaff0", "subcats",0);}
else
{get_view("up_prostaff2", "subcats", cat);}} 
}

function refreset ()
{var param1 = document.getElementById('refcancel').value;
document.getElementById('icon_reference').innerHTML = "<i class='fa fa-long-arrow-down' style='font-size: 17px;'></i> Please classify according to: Reference</h4>";
clear_div("identifiers");
clear_div("idconfirm");
clear_div("options_reference");
get_view_simple("modules/user/items_per_reference.cfm", "items_reference", param1);
var show = document.getElementById('identifiers');
show.style.display = "block";
}

function optreset ()
{var param1 = document.getElementById('refcancel').value;
document.getElementById('icon_options').innerHTML = "<i class='fa fa-long-arrow-down' style='font-size: 17px;'></i> Please Select Options</h4>";
clear_div("identifiers");
clear_div("idconfirm");
clear_div("options_confirm");
var show = document.getElementById('options_selected');
show.style.display = "block";
var show = document.getElementById('identifiers');
show.style.display = "block";

}

function idsreset()
{clear_div("idconfirm");
var show = document.getElementById('identifiers');
show.style.display = "block";
}

function validform(identi){
var isvalid = validate('upproduct');
if (isvalid == 1)
{
if (identi == 0)
{custom_3();}else{custom_4();}
}}


function custom_1(data, last, view, div_get_view, parameter, option)
{
var times = parseInt(document.getElementById('times').value);
times = times + 1;
next_div  = times + 1;
var contents="<h7 id='level"+times+"' class='w3-text-AZULPAR'></h7><div id='"+next_div+"' style='padding-left: 8px; padding-right: 0px;'><h7 style='margin-top:-4px; margin-bottom:4px;' id='level"+next_div+"' class='w3-text-AZULPAR'></h7></div>";
document.getElementById('times').value = times;
div = 'level'+times;
update_div(times, contents);
catcancel = document.getElementById('catcancel').value;
data = "<span style='font-size:16px'>"+ data +"</span><span onclick='catreset("+catcancel+","+times+","+option+")' style='font-size:12px'>&nbsp;&nbsp;(change)</span>" ;

if (last == 1){ document.getElementById('icon_category').innerHTML = "<h4 style='margin-bottom: 8px;' class='w3-text-AZULPAR'><i class='fa fa-check' style='font-size: 17px;''></i> Category selected</h4>";
data = "<div><b>"+data+"</b><div style='float:right; font-size:16px;' class='w3-text-green'>Selected <i class='fa fa-check'></i></div></div>";
clear_div (div_get_view);
get_view_simple("modules/user/items_per_reference.cfm", "items_reference", parameter,0);}
 else {get_view(view, div_get_view, parameter);}
    update_div(div, data);
document.getElementById('catcancel').value = parameter;

}

function custom_2(title, reference_id, condition_id, name1, op_name1, name2, op_name2)
{data = "<div class='w3-container w3-text-AZULPAR'><div class='w3-cell-row'><div class='w3-cell'><span style='font-size: 15;'><b>"+title+"</b></span></div><div class='w3-cell w3-border-left w3-border-GRIS1' style='padding: 2px;'><div class='w3-small'>"+name1+"</div><span class='w3-tag w3-round-small w3-AZULPAR w3-center'>"+op_name1+"</span></div><div class='w3-cell w3-border-left w3-border-GRIS1' style='padding: 2px;'><div class='w3-small'>"+name2+"</div><span class='w3-tag w3-round-small w3-AZULPAR w3-center'>"+op_name2+"</span></div></div><div><div style='float:left;'><span onclick='refreset()' style='font-size:12px'><b>(change)</b></span></div><div style='float:right; font-size:16px;' class='w3-text-green'>Selected <i class='fa fa-check'></i></div></div></div>";
update_div('selected_item', data);
document.getElementById('icon_reference').innerHTML = "<h4 style='margin-bottom: 8px;' class='w3-text-AZULPAR'><i class='fa fa-check' style='font-size: 17px;''></i> Classification</h4>";
get_view_simple("modules/user/options_reference.cfm","options_reference",reference_id, condition_id);
}


function custom_3()
{
    var details = document.getElementById('details').value;
    var qty = document.getElementById('qty').value;
    var condselected = document.getElementById('option_conditions').selectedIndex;
    var conditionstext =  document.getElementById("option_conditions")[condselected].text;
    var colorselected = document.getElementById('option_colors').selectedIndex;
    var colorstext = document.getElementById("option_colors")[colorselected].text;
   data = "<div class='w3-container w3-text-AZULPAR'><span>Condition: <b>"+conditionstext+"</b><br>Color: <b>"+colorstext+"</b><br>Additional details: <b>"+details+"</b><br>Quantity: <b>"+qty+"</b></span><div><div style='float:left;'><span onclick='optreset()' style='font-size:12px'><b>(change)</b></span></div><div style='float:right; font-size:16px;' class='w3-text-green'>Selected <i class='fa fa-check'></i></div></div></div>";
   var hide = document.getElementById('options_selected');
   hide.style.display = "none";
   var show = document.getElementById('options_confirm');
   show.style.display = "block";
update_div('options_confirm', data);
document.getElementById('icon_options').innerHTML = "<h4 style='margin-bottom: 8px;' class='w3-text-AZULPAR'><i class='fa fa-check' style='font-size: 17px;''></i> Options</h4>";
var dataid = "<div class='w3-animate-opacity w3-panel w3-GRIS0' style='padding-bottom: 6px;'><h4 style='margin-bottom: 8px; margin-top: 14px;'><span id='icon_reference'><i class='fa fa-long-arrow-down' style='font-size: 17px;'></i></span> Please enter the IMEI identifier for each item</h4>";
 for (var i = 0; i < qty; i++) 
 { var n = 1 + i;
    dataid = dataid + "<p><input class='w3-input w3-border w3-round' name='IMEI"+n+"' type='text' id='IMEI"+n+"' maxlength='15'  min='1' pattern='[0-9]{15}' placeholder='IMEI No. "+n+"' required='required'></p>";}
    dataid = dataid + "<p><input type='button' class='w3-button w3-AZULPAR w3-block' value='Enter Identifiers' onclick='validform(1)'></p></div>";
update_div('identifiers', dataid);
}

function custom_4()
{var qty = document.getElementById('qty').value;
data = "<div class='w3-animate-opacity w3-panel w3-GRIS0 w3-text-AZULPAR' style='padding-bottom: 6px;'><h4 style='margin-bottom: 8px;' class='w3-text-AZULPAR'><i class='fa fa-check' style='font-size: 17px;''></i> Identifiers</h4><div class='w3-container'>";
for (var i = 0; i < qty; i++) 
 {var n = 1 + i;
var imei =  document.getElementById('IMEI'+n).value;
data = data + "<span>IMEI No. "+n+": <b>"+imei+"</b></span><br>";}
data = data + "<div style='float:left;'><span onclick='idsreset()' style='font-size:12px'><b>(change)</b></span></div><div style='float:right; font-size:16px;' class='w3-text-green'>Selected <i class='fa fa-check'></i></div></div></div><div class='w3-animate-opacity w3-panel w3-GRIS0' style='padding-bottom: 6px;'><h4 style='margin-bottom: 8px; margin-top: 14px;'><span id='icon_options'><i class='fa fa-long-arrow-down' style='font-size: 17px;'></i> If you are ready click on &quot;Add Items&quot; to confirm</h4></span><p><input type='button' class='w3-button w3-AZULPAR w3-block' value='Add Items' onclick='additems()'></p></div>";
var hide = document.getElementById('identifiers');
hide.style.display = "none";
update_div('idconfirm', data);
}

function additems()
{
var qty = document.getElementById('qty').value; 
alert (qty);
var data = "";
for (var i = 0; i < qty; i++)
{var n = 1 + i;
var imei =  document.getElementById('IMEI'+n).value;
data = data + "," + imei;}
data = data.substr(1); 
alert (data);
var idrep = document.getElementById('item_id').value; 
alert (idrep);
var opt_conditions = document.getElementById('option_conditions').value; 
alert (opt_conditions);
var opt_colors = document.getElementById('option_colors').value; 
alert (opt_colors);
var details = document.getElementById('details').value; 
alert (details);
document.getElementById('up_product').innerHTML = "<div class='w3-display-container' style='height:500px; width:100%;'><img src='images/loading.gif' class='w3-display-middle'></div>";
var url="queries/NEW_ITEMS_USER.cfm?";
    url=url+"itemid="+idrep;
    url=url+"&opt_conditions="+opt_conditions;
    url=url+"&opt_colors="+opt_colors;
    url=url+"&qty="+qty;
    url=url+"&identifiers="+data;
    url=url+"&details="+details;
    alert (url); 
    loadDoc(url, 'up_product');
}