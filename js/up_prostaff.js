function enable_ref() {document.getElementById('ref').disabled = false;
document.getElementById('ref').setAttribute("required", "");}

function disable_ref() {document.getElementById('ref').disabled = true;
document.getElementById('ref').removeAttribute("required");}

function enable_chars() {document.getElementById('arr_chars').style.display = "block";}

function validform(identi){
  var isvalid = validate('upproduct');
  if (isvalid == 1)
  {if (identi == 0){custom_2();}
  else
  {custom_4();}}}



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
get_view_simple("./modules/staff/add_product/description.cfm", "description", parameter,0);}
 else {get_view(view, div_get_view, parameter);}
    update_div(div, data);
document.getElementById('catcancel').value = parameter;
}


function custom_2()
{
    var description = document.getElementById('title').value;
    var reference = document.getElementById('ref').value;
   var ref_boolean = document.getElementById('yes').checked;
   if (ref_boolean)
   {var reference = document.getElementById('ref').value;}
   else {var reference = 'Not applies';
   }
var data = "<div class='w3-container w3-text-AZULPAR'><span>Title: <b>'"+description+"'</b><br>Model, reference or part number: <b>'"+reference+"'</b><div><div style='float:left;'><span onclick='desreset()' style='font-size:12px'><b>(change)</b></span></div><div style='float:right; font-size:16px;' class='w3-text-green'>Selected <i class='fa fa-check'></i></div></div></div>";
var hide = document.getElementById('description_select');
hide.style.display = "none";
var show = document.getElementById('description_confirm');
show.style.display = "block";
update_div('description_confirm', data);
document.getElementById('icon_description').innerHTML = "<h4 style='margin-bottom: 8px;' class='w3-text-AZULPAR'><i class='fa fa-check' style='font-size: 17px;''></i> Description</h4>";
//update_div('description', dataid);
}


function catreset(cat,div,option)
{document.getElementById(div).innerHTML = "";
document.getElementById('icon_category').innerHTML = "<h4 style='margin-bottom: 8px'><i class='fa fa-long-arrow-down' style='font-size: 17px;'></i> Select a category</h4>";
var times = div -1;
document.getElementById('times').value = times;
document.getElementById('catcancel').value = cat;
clear_div("description");
//clear_div("idconfirm");
//clear_div("options_reference");
//clear_div("items_reference");
if (cat == 0)
{get_view("up_prostaff1", "subcats",0);}
else
{get_view("up_prostaff2", "subcats", cat);}
}


function desreset ()
{
document.getElementById('icon_description').innerHTML = "<i class='fa fa-long-arrow-down' style='font-size: 17px;'></i> Please Select Options</h4>";
//clear_div("identifiers");
//clear_div("idconfirm");
//clear_div("options_confirm");
var show = document.getElementById('description_select');
show.style.display = "block";
var hide = document.getElementById('description_confirm');
hide.style.display = "none";
//var show = document.getElementById('identifiers');//Necessary for initializing default values
//show.style.display = "block";
}
