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
